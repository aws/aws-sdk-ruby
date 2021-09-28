# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::VoiceID
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AuthenticationConfiguration = Shapes::StructureShape.new(name: 'AuthenticationConfiguration')
    AuthenticationDecision = Shapes::StringShape.new(name: 'AuthenticationDecision')
    AuthenticationResult = Shapes::StructureShape.new(name: 'AuthenticationResult')
    ClientTokenString = Shapes::StringShape.new(name: 'ClientTokenString')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictType = Shapes::StringShape.new(name: 'ConflictType')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    CustomerSpeakerId = Shapes::StringShape.new(name: 'CustomerSpeakerId')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteFraudsterRequest = Shapes::StructureShape.new(name: 'DeleteFraudsterRequest')
    DeleteSpeakerRequest = Shapes::StructureShape.new(name: 'DeleteSpeakerRequest')
    DescribeDomainRequest = Shapes::StructureShape.new(name: 'DescribeDomainRequest')
    DescribeDomainResponse = Shapes::StructureShape.new(name: 'DescribeDomainResponse')
    DescribeFraudsterRegistrationJobRequest = Shapes::StructureShape.new(name: 'DescribeFraudsterRegistrationJobRequest')
    DescribeFraudsterRegistrationJobResponse = Shapes::StructureShape.new(name: 'DescribeFraudsterRegistrationJobResponse')
    DescribeFraudsterRequest = Shapes::StructureShape.new(name: 'DescribeFraudsterRequest')
    DescribeFraudsterResponse = Shapes::StructureShape.new(name: 'DescribeFraudsterResponse')
    DescribeSpeakerEnrollmentJobRequest = Shapes::StructureShape.new(name: 'DescribeSpeakerEnrollmentJobRequest')
    DescribeSpeakerEnrollmentJobResponse = Shapes::StructureShape.new(name: 'DescribeSpeakerEnrollmentJobResponse')
    DescribeSpeakerRequest = Shapes::StructureShape.new(name: 'DescribeSpeakerRequest')
    DescribeSpeakerResponse = Shapes::StructureShape.new(name: 'DescribeSpeakerResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    Domain = Shapes::StructureShape.new(name: 'Domain')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainSummaries = Shapes::ListShape.new(name: 'DomainSummaries')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DuplicateRegistrationAction = Shapes::StringShape.new(name: 'DuplicateRegistrationAction')
    EnrollmentConfig = Shapes::StructureShape.new(name: 'EnrollmentConfig')
    EnrollmentJobFraudDetectionConfig = Shapes::StructureShape.new(name: 'EnrollmentJobFraudDetectionConfig')
    EvaluateSessionRequest = Shapes::StructureShape.new(name: 'EvaluateSessionRequest')
    EvaluateSessionResponse = Shapes::StructureShape.new(name: 'EvaluateSessionResponse')
    ExistingEnrollmentAction = Shapes::StringShape.new(name: 'ExistingEnrollmentAction')
    FailureDetails = Shapes::StructureShape.new(name: 'FailureDetails')
    FraudDetectionAction = Shapes::StringShape.new(name: 'FraudDetectionAction')
    FraudDetectionConfiguration = Shapes::StructureShape.new(name: 'FraudDetectionConfiguration')
    FraudDetectionDecision = Shapes::StringShape.new(name: 'FraudDetectionDecision')
    FraudDetectionReason = Shapes::StringShape.new(name: 'FraudDetectionReason')
    FraudDetectionReasons = Shapes::ListShape.new(name: 'FraudDetectionReasons')
    FraudDetectionResult = Shapes::StructureShape.new(name: 'FraudDetectionResult')
    FraudRiskDetails = Shapes::StructureShape.new(name: 'FraudRiskDetails')
    Fraudster = Shapes::StructureShape.new(name: 'Fraudster')
    FraudsterId = Shapes::StringShape.new(name: 'FraudsterId')
    FraudsterRegistrationJob = Shapes::StructureShape.new(name: 'FraudsterRegistrationJob')
    FraudsterRegistrationJobStatus = Shapes::StringShape.new(name: 'FraudsterRegistrationJobStatus')
    FraudsterRegistrationJobSummaries = Shapes::ListShape.new(name: 'FraudsterRegistrationJobSummaries')
    FraudsterRegistrationJobSummary = Shapes::StructureShape.new(name: 'FraudsterRegistrationJobSummary')
    GeneratedFraudsterId = Shapes::StringShape.new(name: 'GeneratedFraudsterId')
    GeneratedSpeakerId = Shapes::StringShape.new(name: 'GeneratedSpeakerId')
    IamRoleArn = Shapes::StringShape.new(name: 'IamRoleArn')
    InputDataConfig = Shapes::StructureShape.new(name: 'InputDataConfig')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobName = Shapes::StringShape.new(name: 'JobName')
    JobProgress = Shapes::StructureShape.new(name: 'JobProgress')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    KnownFraudsterRisk = Shapes::StructureShape.new(name: 'KnownFraudsterRisk')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListFraudsterRegistrationJobsRequest = Shapes::StructureShape.new(name: 'ListFraudsterRegistrationJobsRequest')
    ListFraudsterRegistrationJobsResponse = Shapes::StructureShape.new(name: 'ListFraudsterRegistrationJobsResponse')
    ListSpeakerEnrollmentJobsRequest = Shapes::StructureShape.new(name: 'ListSpeakerEnrollmentJobsRequest')
    ListSpeakerEnrollmentJobsResponse = Shapes::StructureShape.new(name: 'ListSpeakerEnrollmentJobsResponse')
    ListSpeakersRequest = Shapes::StructureShape.new(name: 'ListSpeakersRequest')
    ListSpeakersResponse = Shapes::StructureShape.new(name: 'ListSpeakersResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResultsForList = Shapes::IntegerShape.new(name: 'MaxResultsForList')
    MaxResultsForListDomainFe = Shapes::IntegerShape.new(name: 'MaxResultsForListDomainFe')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OptOutSpeakerRequest = Shapes::StructureShape.new(name: 'OptOutSpeakerRequest')
    OptOutSpeakerResponse = Shapes::StructureShape.new(name: 'OptOutSpeakerResponse')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    RegistrationConfig = Shapes::StructureShape.new(name: 'RegistrationConfig')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    Score = Shapes::IntegerShape.new(name: 'Score')
    ServerSideEncryptionConfiguration = Shapes::StructureShape.new(name: 'ServerSideEncryptionConfiguration')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    SessionName = Shapes::StringShape.new(name: 'SessionName')
    SessionNameOrId = Shapes::StringShape.new(name: 'SessionNameOrId')
    Speaker = Shapes::StructureShape.new(name: 'Speaker')
    SpeakerEnrollmentJob = Shapes::StructureShape.new(name: 'SpeakerEnrollmentJob')
    SpeakerEnrollmentJobStatus = Shapes::StringShape.new(name: 'SpeakerEnrollmentJobStatus')
    SpeakerEnrollmentJobSummaries = Shapes::ListShape.new(name: 'SpeakerEnrollmentJobSummaries')
    SpeakerEnrollmentJobSummary = Shapes::StructureShape.new(name: 'SpeakerEnrollmentJobSummary')
    SpeakerId = Shapes::StringShape.new(name: 'SpeakerId')
    SpeakerStatus = Shapes::StringShape.new(name: 'SpeakerStatus')
    SpeakerSummaries = Shapes::ListShape.new(name: 'SpeakerSummaries')
    SpeakerSummary = Shapes::StructureShape.new(name: 'SpeakerSummary')
    StartFraudsterRegistrationJobRequest = Shapes::StructureShape.new(name: 'StartFraudsterRegistrationJobRequest')
    StartFraudsterRegistrationJobResponse = Shapes::StructureShape.new(name: 'StartFraudsterRegistrationJobResponse')
    StartSpeakerEnrollmentJobRequest = Shapes::StructureShape.new(name: 'StartSpeakerEnrollmentJobRequest')
    StartSpeakerEnrollmentJobResponse = Shapes::StructureShape.new(name: 'StartSpeakerEnrollmentJobResponse')
    StreamingStatus = Shapes::StringShape.new(name: 'StreamingStatus')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UniqueIdLarge = Shapes::StringShape.new(name: 'UniqueIdLarge')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDomainRequest = Shapes::StructureShape.new(name: 'UpdateDomainRequest')
    UpdateDomainResponse = Shapes::StructureShape.new(name: 'UpdateDomainResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AuthenticationConfiguration.add_member(:acceptance_threshold, Shapes::ShapeRef.new(shape: Score, required: true, location_name: "AcceptanceThreshold"))
    AuthenticationConfiguration.struct_class = Types::AuthenticationConfiguration

    AuthenticationResult.add_member(:audio_aggregation_ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AudioAggregationEndedAt"))
    AuthenticationResult.add_member(:audio_aggregation_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AudioAggregationStartedAt"))
    AuthenticationResult.add_member(:authentication_result_id, Shapes::ShapeRef.new(shape: UniqueIdLarge, location_name: "AuthenticationResultId"))
    AuthenticationResult.add_member(:configuration, Shapes::ShapeRef.new(shape: AuthenticationConfiguration, location_name: "Configuration"))
    AuthenticationResult.add_member(:customer_speaker_id, Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: "CustomerSpeakerId"))
    AuthenticationResult.add_member(:decision, Shapes::ShapeRef.new(shape: AuthenticationDecision, location_name: "Decision"))
    AuthenticationResult.add_member(:generated_speaker_id, Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: "GeneratedSpeakerId"))
    AuthenticationResult.add_member(:score, Shapes::ShapeRef.new(shape: Score, location_name: "Score"))
    AuthenticationResult.struct_class = Types::AuthenticationResult

    ConflictException.add_member(:conflict_type, Shapes::ShapeRef.new(shape: ConflictType, location_name: "ConflictType"))
    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateDomainRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateDomainRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateDomainRequest.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "Name"))
    CreateDomainRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, required: true, location_name: "ServerSideEncryptionConfiguration"))
    CreateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    DeleteDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteFraudsterRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DeleteFraudsterRequest.add_member(:fraudster_id, Shapes::ShapeRef.new(shape: FraudsterId, required: true, location_name: "FraudsterId"))
    DeleteFraudsterRequest.struct_class = Types::DeleteFraudsterRequest

    DeleteSpeakerRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DeleteSpeakerRequest.add_member(:speaker_id, Shapes::ShapeRef.new(shape: SpeakerId, required: true, location_name: "SpeakerId"))
    DeleteSpeakerRequest.struct_class = Types::DeleteSpeakerRequest

    DescribeDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DescribeDomainRequest.struct_class = Types::DescribeDomainRequest

    DescribeDomainResponse.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    DescribeDomainResponse.struct_class = Types::DescribeDomainResponse

    DescribeFraudsterRegistrationJobRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DescribeFraudsterRegistrationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeFraudsterRegistrationJobRequest.struct_class = Types::DescribeFraudsterRegistrationJobRequest

    DescribeFraudsterRegistrationJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: FraudsterRegistrationJob, location_name: "Job"))
    DescribeFraudsterRegistrationJobResponse.struct_class = Types::DescribeFraudsterRegistrationJobResponse

    DescribeFraudsterRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DescribeFraudsterRequest.add_member(:fraudster_id, Shapes::ShapeRef.new(shape: FraudsterId, required: true, location_name: "FraudsterId"))
    DescribeFraudsterRequest.struct_class = Types::DescribeFraudsterRequest

    DescribeFraudsterResponse.add_member(:fraudster, Shapes::ShapeRef.new(shape: Fraudster, location_name: "Fraudster"))
    DescribeFraudsterResponse.struct_class = Types::DescribeFraudsterResponse

    DescribeSpeakerEnrollmentJobRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DescribeSpeakerEnrollmentJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "JobId"))
    DescribeSpeakerEnrollmentJobRequest.struct_class = Types::DescribeSpeakerEnrollmentJobRequest

    DescribeSpeakerEnrollmentJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: SpeakerEnrollmentJob, location_name: "Job"))
    DescribeSpeakerEnrollmentJobResponse.struct_class = Types::DescribeSpeakerEnrollmentJobResponse

    DescribeSpeakerRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DescribeSpeakerRequest.add_member(:speaker_id, Shapes::ShapeRef.new(shape: SpeakerId, required: true, location_name: "SpeakerId"))
    DescribeSpeakerRequest.struct_class = Types::DescribeSpeakerRequest

    DescribeSpeakerResponse.add_member(:speaker, Shapes::ShapeRef.new(shape: Speaker, location_name: "Speaker"))
    DescribeSpeakerResponse.struct_class = Types::DescribeSpeakerResponse

    Domain.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Domain.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Domain.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Domain.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    Domain.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    Domain.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, location_name: "Name"))
    Domain.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "ServerSideEncryptionConfiguration"))
    Domain.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Domain.struct_class = Types::Domain

    DomainSummaries.member = Shapes::ShapeRef.new(shape: DomainSummary)

    DomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DomainSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    DomainSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    DomainSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    DomainSummary.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, location_name: "Name"))
    DomainSummary.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: "ServerSideEncryptionConfiguration"))
    DomainSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    DomainSummary.struct_class = Types::DomainSummary

    EnrollmentConfig.add_member(:existing_enrollment_action, Shapes::ShapeRef.new(shape: ExistingEnrollmentAction, location_name: "ExistingEnrollmentAction"))
    EnrollmentConfig.add_member(:fraud_detection_config, Shapes::ShapeRef.new(shape: EnrollmentJobFraudDetectionConfig, location_name: "FraudDetectionConfig"))
    EnrollmentConfig.struct_class = Types::EnrollmentConfig

    EnrollmentJobFraudDetectionConfig.add_member(:fraud_detection_action, Shapes::ShapeRef.new(shape: FraudDetectionAction, location_name: "FraudDetectionAction"))
    EnrollmentJobFraudDetectionConfig.add_member(:risk_threshold, Shapes::ShapeRef.new(shape: Score, location_name: "RiskThreshold"))
    EnrollmentJobFraudDetectionConfig.struct_class = Types::EnrollmentJobFraudDetectionConfig

    EvaluateSessionRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    EvaluateSessionRequest.add_member(:session_name_or_id, Shapes::ShapeRef.new(shape: SessionNameOrId, required: true, location_name: "SessionNameOrId"))
    EvaluateSessionRequest.struct_class = Types::EvaluateSessionRequest

    EvaluateSessionResponse.add_member(:authentication_result, Shapes::ShapeRef.new(shape: AuthenticationResult, location_name: "AuthenticationResult"))
    EvaluateSessionResponse.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    EvaluateSessionResponse.add_member(:fraud_detection_result, Shapes::ShapeRef.new(shape: FraudDetectionResult, location_name: "FraudDetectionResult"))
    EvaluateSessionResponse.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "SessionId"))
    EvaluateSessionResponse.add_member(:session_name, Shapes::ShapeRef.new(shape: SessionName, location_name: "SessionName"))
    EvaluateSessionResponse.add_member(:streaming_status, Shapes::ShapeRef.new(shape: StreamingStatus, location_name: "StreamingStatus"))
    EvaluateSessionResponse.struct_class = Types::EvaluateSessionResponse

    FailureDetails.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    FailureDetails.add_member(:status_code, Shapes::ShapeRef.new(shape: Integer, location_name: "StatusCode"))
    FailureDetails.struct_class = Types::FailureDetails

    FraudDetectionConfiguration.add_member(:risk_threshold, Shapes::ShapeRef.new(shape: Score, required: true, location_name: "RiskThreshold"))
    FraudDetectionConfiguration.struct_class = Types::FraudDetectionConfiguration

    FraudDetectionReasons.member = Shapes::ShapeRef.new(shape: FraudDetectionReason)

    FraudDetectionResult.add_member(:audio_aggregation_ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AudioAggregationEndedAt"))
    FraudDetectionResult.add_member(:audio_aggregation_started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "AudioAggregationStartedAt"))
    FraudDetectionResult.add_member(:configuration, Shapes::ShapeRef.new(shape: FraudDetectionConfiguration, location_name: "Configuration"))
    FraudDetectionResult.add_member(:decision, Shapes::ShapeRef.new(shape: FraudDetectionDecision, location_name: "Decision"))
    FraudDetectionResult.add_member(:fraud_detection_result_id, Shapes::ShapeRef.new(shape: UniqueIdLarge, location_name: "FraudDetectionResultId"))
    FraudDetectionResult.add_member(:reasons, Shapes::ShapeRef.new(shape: FraudDetectionReasons, location_name: "Reasons"))
    FraudDetectionResult.add_member(:risk_details, Shapes::ShapeRef.new(shape: FraudRiskDetails, location_name: "RiskDetails"))
    FraudDetectionResult.struct_class = Types::FraudDetectionResult

    FraudRiskDetails.add_member(:known_fraudster_risk, Shapes::ShapeRef.new(shape: KnownFraudsterRisk, required: true, location_name: "KnownFraudsterRisk"))
    FraudRiskDetails.struct_class = Types::FraudRiskDetails

    Fraudster.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Fraudster.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    Fraudster.add_member(:generated_fraudster_id, Shapes::ShapeRef.new(shape: GeneratedFraudsterId, location_name: "GeneratedFraudsterId"))
    Fraudster.struct_class = Types::Fraudster

    FraudsterRegistrationJob.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    FraudsterRegistrationJob.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    FraudsterRegistrationJob.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    FraudsterRegistrationJob.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    FraudsterRegistrationJob.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    FraudsterRegistrationJob.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    FraudsterRegistrationJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    FraudsterRegistrationJob.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    FraudsterRegistrationJob.add_member(:job_progress, Shapes::ShapeRef.new(shape: JobProgress, location_name: "JobProgress"))
    FraudsterRegistrationJob.add_member(:job_status, Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: "JobStatus"))
    FraudsterRegistrationJob.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    FraudsterRegistrationJob.add_member(:registration_config, Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: "RegistrationConfig"))
    FraudsterRegistrationJob.struct_class = Types::FraudsterRegistrationJob

    FraudsterRegistrationJobSummaries.member = Shapes::ShapeRef.new(shape: FraudsterRegistrationJobSummary)

    FraudsterRegistrationJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    FraudsterRegistrationJobSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    FraudsterRegistrationJobSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    FraudsterRegistrationJobSummary.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    FraudsterRegistrationJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    FraudsterRegistrationJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    FraudsterRegistrationJobSummary.add_member(:job_progress, Shapes::ShapeRef.new(shape: JobProgress, location_name: "JobProgress"))
    FraudsterRegistrationJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: "JobStatus"))
    FraudsterRegistrationJobSummary.struct_class = Types::FraudsterRegistrationJobSummary

    InputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    InputDataConfig.struct_class = Types::InputDataConfig

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    JobProgress.add_member(:percent_complete, Shapes::ShapeRef.new(shape: Score, location_name: "PercentComplete"))
    JobProgress.struct_class = Types::JobProgress

    KnownFraudsterRisk.add_member(:generated_fraudster_id, Shapes::ShapeRef.new(shape: GeneratedFraudsterId, location_name: "GeneratedFraudsterId"))
    KnownFraudsterRisk.add_member(:risk_score, Shapes::ShapeRef.new(shape: Score, required: true, location_name: "RiskScore"))
    KnownFraudsterRisk.struct_class = Types::KnownFraudsterRisk

    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsForListDomainFe, location_name: "MaxResults"))
    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:domain_summaries, Shapes::ShapeRef.new(shape: DomainSummaries, location_name: "DomainSummaries"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListFraudsterRegistrationJobsRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    ListFraudsterRegistrationJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: "JobStatus"))
    ListFraudsterRegistrationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: "MaxResults"))
    ListFraudsterRegistrationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListFraudsterRegistrationJobsRequest.struct_class = Types::ListFraudsterRegistrationJobsRequest

    ListFraudsterRegistrationJobsResponse.add_member(:job_summaries, Shapes::ShapeRef.new(shape: FraudsterRegistrationJobSummaries, location_name: "JobSummaries"))
    ListFraudsterRegistrationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFraudsterRegistrationJobsResponse.struct_class = Types::ListFraudsterRegistrationJobsResponse

    ListSpeakerEnrollmentJobsRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    ListSpeakerEnrollmentJobsRequest.add_member(:job_status, Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: "JobStatus"))
    ListSpeakerEnrollmentJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: "MaxResults"))
    ListSpeakerEnrollmentJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSpeakerEnrollmentJobsRequest.struct_class = Types::ListSpeakerEnrollmentJobsRequest

    ListSpeakerEnrollmentJobsResponse.add_member(:job_summaries, Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobSummaries, location_name: "JobSummaries"))
    ListSpeakerEnrollmentJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSpeakerEnrollmentJobsResponse.struct_class = Types::ListSpeakerEnrollmentJobsResponse

    ListSpeakersRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    ListSpeakersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: "MaxResults"))
    ListSpeakersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListSpeakersRequest.struct_class = Types::ListSpeakersRequest

    ListSpeakersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListSpeakersResponse.add_member(:speaker_summaries, Shapes::ShapeRef.new(shape: SpeakerSummaries, location_name: "SpeakerSummaries"))
    ListSpeakersResponse.struct_class = Types::ListSpeakersResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    OptOutSpeakerRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    OptOutSpeakerRequest.add_member(:speaker_id, Shapes::ShapeRef.new(shape: SpeakerId, required: true, location_name: "SpeakerId"))
    OptOutSpeakerRequest.struct_class = Types::OptOutSpeakerRequest

    OptOutSpeakerResponse.add_member(:speaker, Shapes::ShapeRef.new(shape: Speaker, location_name: "Speaker"))
    OptOutSpeakerResponse.struct_class = Types::OptOutSpeakerResponse

    OutputDataConfig.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "KmsKeyId"))
    OutputDataConfig.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "S3Uri"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    RegistrationConfig.add_member(:duplicate_registration_action, Shapes::ShapeRef.new(shape: DuplicateRegistrationAction, location_name: "DuplicateRegistrationAction"))
    RegistrationConfig.add_member(:fraudster_similarity_threshold, Shapes::ShapeRef.new(shape: Score, location_name: "FraudsterSimilarityThreshold"))
    RegistrationConfig.struct_class = Types::RegistrationConfig

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServerSideEncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, required: true, location_name: "KmsKeyId"))
    ServerSideEncryptionConfiguration.struct_class = Types::ServerSideEncryptionConfiguration

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    Speaker.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    Speaker.add_member(:customer_speaker_id, Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: "CustomerSpeakerId"))
    Speaker.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    Speaker.add_member(:generated_speaker_id, Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: "GeneratedSpeakerId"))
    Speaker.add_member(:status, Shapes::ShapeRef.new(shape: SpeakerStatus, location_name: "Status"))
    Speaker.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    Speaker.struct_class = Types::Speaker

    SpeakerEnrollmentJob.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    SpeakerEnrollmentJob.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, location_name: "DataAccessRoleArn"))
    SpeakerEnrollmentJob.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    SpeakerEnrollmentJob.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    SpeakerEnrollmentJob.add_member(:enrollment_config, Shapes::ShapeRef.new(shape: EnrollmentConfig, location_name: "EnrollmentConfig"))
    SpeakerEnrollmentJob.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    SpeakerEnrollmentJob.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, location_name: "InputDataConfig"))
    SpeakerEnrollmentJob.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    SpeakerEnrollmentJob.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    SpeakerEnrollmentJob.add_member(:job_progress, Shapes::ShapeRef.new(shape: JobProgress, location_name: "JobProgress"))
    SpeakerEnrollmentJob.add_member(:job_status, Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: "JobStatus"))
    SpeakerEnrollmentJob.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: "OutputDataConfig"))
    SpeakerEnrollmentJob.struct_class = Types::SpeakerEnrollmentJob

    SpeakerEnrollmentJobSummaries.member = Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobSummary)

    SpeakerEnrollmentJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    SpeakerEnrollmentJobSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    SpeakerEnrollmentJobSummary.add_member(:ended_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "EndedAt"))
    SpeakerEnrollmentJobSummary.add_member(:failure_details, Shapes::ShapeRef.new(shape: FailureDetails, location_name: "FailureDetails"))
    SpeakerEnrollmentJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, location_name: "JobId"))
    SpeakerEnrollmentJobSummary.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    SpeakerEnrollmentJobSummary.add_member(:job_progress, Shapes::ShapeRef.new(shape: JobProgress, location_name: "JobProgress"))
    SpeakerEnrollmentJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: "JobStatus"))
    SpeakerEnrollmentJobSummary.struct_class = Types::SpeakerEnrollmentJobSummary

    SpeakerSummaries.member = Shapes::ShapeRef.new(shape: SpeakerSummary)

    SpeakerSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedAt"))
    SpeakerSummary.add_member(:customer_speaker_id, Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: "CustomerSpeakerId"))
    SpeakerSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "DomainId"))
    SpeakerSummary.add_member(:generated_speaker_id, Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: "GeneratedSpeakerId"))
    SpeakerSummary.add_member(:status, Shapes::ShapeRef.new(shape: SpeakerStatus, location_name: "Status"))
    SpeakerSummary.add_member(:updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "UpdatedAt"))
    SpeakerSummary.struct_class = Types::SpeakerSummary

    StartFraudsterRegistrationJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartFraudsterRegistrationJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartFraudsterRegistrationJobRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    StartFraudsterRegistrationJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartFraudsterRegistrationJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartFraudsterRegistrationJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartFraudsterRegistrationJobRequest.add_member(:registration_config, Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: "RegistrationConfig"))
    StartFraudsterRegistrationJobRequest.struct_class = Types::StartFraudsterRegistrationJobRequest

    StartFraudsterRegistrationJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: FraudsterRegistrationJob, location_name: "Job"))
    StartFraudsterRegistrationJobResponse.struct_class = Types::StartFraudsterRegistrationJobResponse

    StartSpeakerEnrollmentJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientTokenString, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    StartSpeakerEnrollmentJobRequest.add_member(:data_access_role_arn, Shapes::ShapeRef.new(shape: IamRoleArn, required: true, location_name: "DataAccessRoleArn"))
    StartSpeakerEnrollmentJobRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    StartSpeakerEnrollmentJobRequest.add_member(:enrollment_config, Shapes::ShapeRef.new(shape: EnrollmentConfig, location_name: "EnrollmentConfig"))
    StartSpeakerEnrollmentJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "InputDataConfig"))
    StartSpeakerEnrollmentJobRequest.add_member(:job_name, Shapes::ShapeRef.new(shape: JobName, location_name: "JobName"))
    StartSpeakerEnrollmentJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "OutputDataConfig"))
    StartSpeakerEnrollmentJobRequest.struct_class = Types::StartSpeakerEnrollmentJobRequest

    StartSpeakerEnrollmentJobResponse.add_member(:job, Shapes::ShapeRef.new(shape: SpeakerEnrollmentJob, location_name: "Job"))
    StartSpeakerEnrollmentJobResponse.struct_class = Types::StartSpeakerEnrollmentJobResponse

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDomainRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateDomainRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    UpdateDomainRequest.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "Name"))
    UpdateDomainRequest.add_member(:server_side_encryption_configuration, Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, required: true, location_name: "ServerSideEncryptionConfiguration"))
    UpdateDomainRequest.struct_class = Types::UpdateDomainRequest

    UpdateDomainResponse.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, location_name: "Domain"))
    UpdateDomainResponse.struct_class = Types::UpdateDomainResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-09-27"

      api.metadata = {
        "apiVersion" => "2021-09-27",
        "endpointPrefix" => "voiceid",
        "jsonVersion" => "1.0",
        "protocol" => "json",
        "serviceFullName" => "Amazon Voice ID",
        "serviceId" => "Voice ID",
        "signatureVersion" => "v4",
        "signingName" => "voiceid",
        "targetPrefix" => "VoiceID",
        "uid" => "voice-id-2021-09-27",
      }

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_fraudster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFraudster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteFraudsterRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_speaker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSpeaker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSpeakerRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_fraudster, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFraudster"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFraudsterRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFraudsterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_fraudster_registration_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFraudsterRegistrationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeFraudsterRegistrationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFraudsterRegistrationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_speaker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSpeaker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSpeakerRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSpeakerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:describe_speaker_enrollment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSpeakerEnrollmentJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSpeakerEnrollmentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSpeakerEnrollmentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:evaluate_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EvaluateSession"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EvaluateSessionRequest)
        o.output = Shapes::ShapeRef.new(shape: EvaluateSessionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_fraudster_registration_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFraudsterRegistrationJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListFraudsterRegistrationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFraudsterRegistrationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_speaker_enrollment_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSpeakerEnrollmentJobs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSpeakerEnrollmentJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSpeakerEnrollmentJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_speakers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSpeakers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListSpeakersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSpeakersResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:opt_out_speaker, Seahorse::Model::Operation.new.tap do |o|
        o.name = "OptOutSpeaker"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: OptOutSpeakerRequest)
        o.output = Shapes::ShapeRef.new(shape: OptOutSpeakerResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_fraudster_registration_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFraudsterRegistrationJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartFraudsterRegistrationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFraudsterRegistrationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:start_speaker_enrollment_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSpeakerEnrollmentJob"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartSpeakerEnrollmentJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSpeakerEnrollmentJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
