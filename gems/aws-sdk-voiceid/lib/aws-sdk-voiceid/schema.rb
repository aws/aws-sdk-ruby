# frozen_string_literal: true

# This is generated code!

module Aws::VoiceID
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:voiceid.+:[0-9]{12}:domain/[a-zA-Z0-9]{22}$"})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:voiceid.+:[0-9]{12}:domain/[a-zA-Z0-9]{22}$"})
    AssociateFraudsterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AssociateFraudsterInput', name: 'AssociateFraudsterInput')
    AssociateFraudsterOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AssociateFraudsterOutput', name: 'AssociateFraudsterOutput')
    AuthenticationConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AuthenticationConfiguration', name: 'AuthenticationConfiguration')
    AuthenticationDecision = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#AuthenticationDecision', name: 'AuthenticationDecision', traits: {"smithy.api#enum" => [{"value" => "ACCEPT", "name" => "ACCEPT"}, {"value" => "REJECT", "name" => "REJECT"}, {"value" => "NOT_ENOUGH_SPEECH", "name" => "NOT_ENOUGH_SPEECH"}, {"value" => "SPEAKER_NOT_ENROLLED", "name" => "SPEAKER_NOT_ENROLLED"}, {"value" => "SPEAKER_OPTED_OUT", "name" => "SPEAKER_OPTED_OUT"}, {"value" => "SPEAKER_ID_NOT_PROVIDED", "name" => "SPEAKER_ID_NOT_PROVIDED"}, {"value" => "SPEAKER_EXPIRED", "name" => "SPEAKER_EXPIRED"}]})
    AuthenticationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AuthenticationResult', name: 'AuthenticationResult')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.voiceid#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ClientTokenString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ClientTokenString', name: 'ClientTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ConflictType', name: 'ConflictType', traits: {"smithy.api#enum" => [{"value" => "ANOTHER_ACTIVE_STREAM", "name" => "ANOTHER_ACTIVE_STREAM"}, {"value" => "DOMAIN_NOT_ACTIVE", "name" => "DOMAIN_NOT_ACTIVE"}, {"value" => "CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT", "name" => "CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT"}, {"value" => "ENROLLMENT_ALREADY_EXISTS", "name" => "ENROLLMENT_ALREADY_EXISTS"}, {"value" => "SPEAKER_NOT_SET", "name" => "SPEAKER_NOT_SET"}, {"value" => "SPEAKER_OPTED_OUT", "name" => "SPEAKER_OPTED_OUT"}, {"value" => "CONCURRENT_CHANGES", "name" => "CONCURRENT_CHANGES"}, {"value" => "DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES", "name" => "DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES"}, {"value" => "CANNOT_DELETE_NON_EMPTY_WATCHLIST", "name" => "CANNOT_DELETE_NON_EMPTY_WATCHLIST"}, {"value" => "FRAUDSTER_MUST_BELONG_TO_AT_LEAST_ONE_WATCHLIST", "name" => "FRAUDSTER_MUST_BELONG_TO_AT_LEAST_ONE_WATCHLIST"}]})
    CreateDomainInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#CreateDomainInput', name: 'CreateDomainInput')
    CreateDomainOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#CreateDomainOutput', name: 'CreateDomainOutput')
    CreateWatchlistInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#CreateWatchlistInput', name: 'CreateWatchlistInput')
    CreateWatchlistOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#CreateWatchlistOutput', name: 'CreateWatchlistOutput')
    CustomerSpeakerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#CustomerSpeakerId', name: 'CustomerSpeakerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    DeleteDomainInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DeleteDomainInput', name: 'DeleteDomainInput')
    DeleteFraudsterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DeleteFraudsterInput', name: 'DeleteFraudsterInput')
    DeleteSpeakerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DeleteSpeakerInput', name: 'DeleteSpeakerInput')
    DeleteWatchlistInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DeleteWatchlistInput', name: 'DeleteWatchlistInput')
    DescribeDomainInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeDomainInput', name: 'DescribeDomainInput')
    DescribeDomainOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeDomainOutput', name: 'DescribeDomainOutput')
    DescribeFraudsterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeFraudsterInput', name: 'DescribeFraudsterInput')
    DescribeFraudsterOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeFraudsterOutput', name: 'DescribeFraudsterOutput')
    DescribeFraudsterRegistrationJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeFraudsterRegistrationJobInput', name: 'DescribeFraudsterRegistrationJobInput')
    DescribeFraudsterRegistrationJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeFraudsterRegistrationJobOutput', name: 'DescribeFraudsterRegistrationJobOutput')
    DescribeSpeakerEnrollmentJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeSpeakerEnrollmentJobInput', name: 'DescribeSpeakerEnrollmentJobInput')
    DescribeSpeakerEnrollmentJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeSpeakerEnrollmentJobOutput', name: 'DescribeSpeakerEnrollmentJobOutput')
    DescribeSpeakerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeSpeakerInput', name: 'DescribeSpeakerInput')
    DescribeSpeakerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeSpeakerOutput', name: 'DescribeSpeakerOutput')
    DescribeWatchlistInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeWatchlistInput', name: 'DescribeWatchlistInput')
    DescribeWatchlistOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeWatchlistOutput', name: 'DescribeWatchlistOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$", "smithy.api#sensitive" => {}})
    DisassociateFraudsterInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DisassociateFraudsterInput', name: 'DisassociateFraudsterInput')
    DisassociateFraudsterOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DisassociateFraudsterOutput', name: 'DisassociateFraudsterOutput')
    Domain = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Domain', name: 'Domain')
    DomainId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#DomainId', name: 'DomainId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-zA-Z0-9]{22}$"})
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    DomainStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#DomainStatus', name: 'DomainStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "SUSPENDED", "name" => "SUSPENDED"}]})
    DomainSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#DomainSummaries', name: 'DomainSummaries')
    DomainSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DomainSummary', name: 'DomainSummary')
    DuplicateRegistrationAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#DuplicateRegistrationAction', name: 'DuplicateRegistrationAction', traits: {"smithy.api#enum" => [{"value" => "SKIP", "name" => "SKIP"}, {"value" => "REGISTER_AS_NEW", "name" => "REGISTER_AS_NEW"}]})
    EnrollmentConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#EnrollmentConfig', name: 'EnrollmentConfig')
    EnrollmentJobFraudDetectionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#EnrollmentJobFraudDetectionConfig', name: 'EnrollmentJobFraudDetectionConfig')
    EnrollmentJobFraudDetectionConfigWatchlistIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#EnrollmentJobFraudDetectionConfigWatchlistIds', name: 'EnrollmentJobFraudDetectionConfigWatchlistIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EvaluateSessionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#EvaluateSessionInput', name: 'EvaluateSessionInput')
    EvaluateSessionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#EvaluateSessionOutput', name: 'EvaluateSessionOutput')
    ExistingEnrollmentAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ExistingEnrollmentAction', name: 'ExistingEnrollmentAction', traits: {"smithy.api#enum" => [{"value" => "SKIP", "name" => "SKIP"}, {"value" => "OVERWRITE", "name" => "OVERWRITE"}]})
    FailureDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FailureDetails', name: 'FailureDetails')
    FraudDetectionAction = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudDetectionAction', name: 'FraudDetectionAction', traits: {"smithy.api#enum" => [{"value" => "IGNORE", "name" => "IGNORE"}, {"value" => "FAIL", "name" => "FAIL"}]})
    FraudDetectionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudDetectionConfiguration', name: 'FraudDetectionConfiguration')
    FraudDetectionDecision = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudDetectionDecision', name: 'FraudDetectionDecision', traits: {"smithy.api#enum" => [{"value" => "HIGH_RISK", "name" => "HIGH_RISK"}, {"value" => "LOW_RISK", "name" => "LOW_RISK"}, {"value" => "NOT_ENOUGH_SPEECH", "name" => "NOT_ENOUGH_SPEECH"}]})
    FraudDetectionReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudDetectionReason', name: 'FraudDetectionReason', traits: {"smithy.api#enum" => [{"value" => "KNOWN_FRAUDSTER", "name" => "KNOWN_FRAUDSTER"}, {"value" => "VOICE_SPOOFING", "name" => "VOICE_SPOOFING"}]})
    FraudDetectionReasons = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#FraudDetectionReasons', name: 'FraudDetectionReasons', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    FraudDetectionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudDetectionResult', name: 'FraudDetectionResult')
    FraudRiskDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudRiskDetails', name: 'FraudRiskDetails')
    Fraudster = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Fraudster', name: 'Fraudster')
    FraudsterId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudsterId', name: 'FraudsterId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^id#[a-zA-Z0-9]{22}$", "smithy.api#sensitive" => {}})
    FraudsterRegistrationJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudsterRegistrationJob', name: 'FraudsterRegistrationJob')
    FraudsterRegistrationJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudsterRegistrationJobStatus', name: 'FraudsterRegistrationJobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_ERRORS", "name" => "COMPLETED_WITH_ERRORS"}, {"value" => "FAILED", "name" => "FAILED"}]})
    FraudsterRegistrationJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#FraudsterRegistrationJobSummaries', name: 'FraudsterRegistrationJobSummaries')
    FraudsterRegistrationJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudsterRegistrationJobSummary', name: 'FraudsterRegistrationJobSummary')
    FraudsterSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#FraudsterSummaries', name: 'FraudsterSummaries')
    FraudsterSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudsterSummary', name: 'FraudsterSummary')
    GeneratedFraudsterId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#GeneratedFraudsterId', name: 'GeneratedFraudsterId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^id#[a-zA-Z0-9]{22}$"})
    GeneratedSpeakerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#GeneratedSpeakerId', name: 'GeneratedSpeakerId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^id#[a-zA-Z0-9]{22}$"})
    IamRoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    InputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#InputDataConfig', name: 'InputDataConfig')
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.voiceid#Integer', name: 'Integer')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-zA-Z0-9]{22}$"})
    JobName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    JobProgress = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#JobProgress', name: 'JobProgress')
    KmsKeyId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KnownFraudsterRisk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#KnownFraudsterRisk', name: 'KnownFraudsterRisk')
    ListDomainsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListDomainsInput', name: 'ListDomainsInput')
    ListDomainsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListDomainsOutput', name: 'ListDomainsOutput')
    ListFraudsterRegistrationJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListFraudsterRegistrationJobsInput', name: 'ListFraudsterRegistrationJobsInput')
    ListFraudsterRegistrationJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListFraudsterRegistrationJobsOutput', name: 'ListFraudsterRegistrationJobsOutput')
    ListFraudstersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListFraudstersInput', name: 'ListFraudstersInput')
    ListFraudstersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListFraudstersOutput', name: 'ListFraudstersOutput')
    ListSpeakerEnrollmentJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListSpeakerEnrollmentJobsInput', name: 'ListSpeakerEnrollmentJobsInput')
    ListSpeakerEnrollmentJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListSpeakerEnrollmentJobsOutput', name: 'ListSpeakerEnrollmentJobsOutput')
    ListSpeakersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListSpeakersInput', name: 'ListSpeakersInput')
    ListSpeakersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListSpeakersOutput', name: 'ListSpeakersOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListWatchlistsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListWatchlistsInput', name: 'ListWatchlistsInput')
    ListWatchlistsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListWatchlistsOutput', name: 'ListWatchlistsOutput')
    MaxResultsForList = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.voiceid#MaxResultsForList', name: 'MaxResultsForList', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsForListDomainFe = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.voiceid#MaxResultsForListDomainFe', name: 'MaxResultsForListDomainFe', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    OptOutSpeakerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#OptOutSpeakerInput', name: 'OptOutSpeakerInput')
    OptOutSpeakerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#OptOutSpeakerOutput', name: 'OptOutSpeakerOutput')
    OutputDataConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#OutputDataConfig', name: 'OutputDataConfig')
    RegistrationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#RegistrationConfig', name: 'RegistrationConfig')
    RegistrationConfigWatchlistIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#RegistrationConfigWatchlistIds', name: 'RegistrationConfigWatchlistIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "BATCH_JOB", "name" => "BATCH_JOB"}, {"value" => "COMPLIANCE_CONSENT", "name" => "COMPLIANCE_CONSENT"}, {"value" => "DOMAIN", "name" => "DOMAIN"}, {"value" => "FRAUDSTER", "name" => "FRAUDSTER"}, {"value" => "SESSION", "name" => "SESSION"}, {"value" => "SPEAKER", "name" => "SPEAKER"}, {"value" => "WATCHLIST", "name" => "WATCHLIST"}]})
    ResponseWatchlistIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#ResponseWatchlistIds', name: 'ResponseWatchlistIds')
    S3Uri = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#S3Uri', name: 'S3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    Score = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.voiceid#Score', name: 'Score', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ServerSideEncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ServerSideEncryptionConfiguration', name: 'ServerSideEncryptionConfiguration')
    ServerSideEncryptionUpdateDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ServerSideEncryptionUpdateDetails', name: 'ServerSideEncryptionUpdateDetails')
    ServerSideEncryptionUpdateStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ServerSideEncryptionUpdateStatus', name: 'ServerSideEncryptionUpdateStatus', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^id#[a-zA-Z0-9]{22}$"})
    SessionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SessionName', name: 'SessionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    SessionNameOrId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SessionNameOrId', name: 'SessionNameOrId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^(id#[a-zA-Z0-9]{22}|[a-zA-Z0-9][a-zA-Z0-9_-]*)$"})
    Speaker = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Speaker', name: 'Speaker')
    SpeakerEnrollmentJob = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#SpeakerEnrollmentJob', name: 'SpeakerEnrollmentJob')
    SpeakerEnrollmentJobStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SpeakerEnrollmentJobStatus', name: 'SpeakerEnrollmentJobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_ERRORS", "name" => "COMPLETED_WITH_ERRORS"}, {"value" => "FAILED", "name" => "FAILED"}]})
    SpeakerEnrollmentJobSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#SpeakerEnrollmentJobSummaries', name: 'SpeakerEnrollmentJobSummaries')
    SpeakerEnrollmentJobSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#SpeakerEnrollmentJobSummary', name: 'SpeakerEnrollmentJobSummary')
    SpeakerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SpeakerId', name: 'SpeakerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(id#[a-zA-Z0-9]{22}|[a-zA-Z0-9][a-zA-Z0-9_-]*)$", "smithy.api#sensitive" => {}})
    SpeakerStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SpeakerStatus', name: 'SpeakerStatus', traits: {"smithy.api#enum" => [{"value" => "ENROLLED", "name" => "ENROLLED"}, {"value" => "EXPIRED", "name" => "EXPIRED"}, {"value" => "OPTED_OUT", "name" => "OPTED_OUT"}, {"value" => "PENDING", "name" => "PENDING"}]})
    SpeakerSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#SpeakerSummaries', name: 'SpeakerSummaries')
    SpeakerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#SpeakerSummary', name: 'SpeakerSummary')
    StartFraudsterRegistrationJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#StartFraudsterRegistrationJobInput', name: 'StartFraudsterRegistrationJobInput')
    StartFraudsterRegistrationJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#StartFraudsterRegistrationJobOutput', name: 'StartFraudsterRegistrationJobOutput')
    StartSpeakerEnrollmentJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#StartSpeakerEnrollmentJobInput', name: 'StartSpeakerEnrollmentJobInput')
    StartSpeakerEnrollmentJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#StartSpeakerEnrollmentJobOutput', name: 'StartSpeakerEnrollmentJobOutput')
    StreamingStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#StreamingStatus', name: 'StreamingStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING_CONFIGURATION", "name" => "PENDING_CONFIGURATION"}, {"value" => "ONGOING", "name" => "ONGOING"}, {"value" => "ENDED", "name" => "ENDED"}]})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.voiceid#Timestamp', name: 'Timestamp')
    UniqueIdLarge = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#UniqueIdLarge', name: 'UniqueIdLarge', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-zA-Z0-9]{22}$"})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateDomainInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UpdateDomainInput', name: 'UpdateDomainInput')
    UpdateDomainOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UpdateDomainOutput', name: 'UpdateDomainOutput')
    UpdateWatchlistInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UpdateWatchlistInput', name: 'UpdateWatchlistInput')
    UpdateWatchlistOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UpdateWatchlistOutput', name: 'UpdateWatchlistOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VoiceSpoofingRisk = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#VoiceSpoofingRisk', name: 'VoiceSpoofingRisk')
    Watchlist = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Watchlist', name: 'Watchlist')
    WatchlistDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#WatchlistDescription', name: 'WatchlistDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$", "smithy.api#sensitive" => {}})
    WatchlistDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#WatchlistDetails', name: 'WatchlistDetails')
    WatchlistId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#WatchlistId', name: 'WatchlistId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-zA-Z0-9]{22}$"})
    WatchlistName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#WatchlistName', name: 'WatchlistName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    WatchlistSummaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#WatchlistSummaries', name: 'WatchlistSummaries')
    WatchlistSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#WatchlistSummary', name: 'WatchlistSummary')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateFraudsterInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster.</p>", "smithy.api#required" => {}}))
    AssociateFraudsterInput.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist you want to associate with the fraudster.</p>", "smithy.api#required" => {}}))
    AssociateFraudsterInput.add_member(:fraudster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterId, location_name: 'FraudsterId', traits: {"smithy.api#documentation" => "<p>The identifier of the fraudster to be associated with the watchlist.</p>", "smithy.api#required" => {}}))
    AssociateFraudsterInput.type = Types::AssociateFraudsterInput
    AssociateFraudsterOutput.add_member(:fraudster, Smithy::Schema::Shapes::ShapeRef.new(shape: Fraudster, location_name: 'Fraudster'))
    AssociateFraudsterOutput.type = Types::AssociateFraudsterOutput
    AuthenticationConfiguration.add_member(:acceptance_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'AcceptanceThreshold', traits: {"smithy.api#documentation" => "<p>The minimum threshold needed to successfully authenticate a speaker.</p>", "smithy.api#required" => {}}))
    AuthenticationConfiguration.type = Types::AuthenticationConfiguration
    AuthenticationResult.add_member(:authentication_result_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueIdLarge, location_name: 'AuthenticationResultId', traits: {"smithy.api#documentation" => "<p>The unique identifier for this authentication result. Because there can be multiple\n            authentications for a given session, this field helps to identify if the returned result\n            is from a previous streaming activity or a new result. Note that in absence of any new\n            streaming activity, <code>AcceptanceThreshold</code> changes, or <code>SpeakerId</code>\n            changes, Voice ID always returns cached Authentication Result for this API.</p>"}))
    AuthenticationResult.add_member(:audio_aggregation_started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AudioAggregationStartedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when audio aggregation started for this authentication\n            result.</p>"}))
    AuthenticationResult.add_member(:audio_aggregation_ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AudioAggregationEndedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when audio aggregation ended for this authentication\n            result.</p>"}))
    AuthenticationResult.add_member(:customer_speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: 'CustomerSpeakerId', traits: {"smithy.api#documentation" => "<p>The client-provided identifier for the speaker whose authentication result is\n            produced. Only present if a <code>SpeakerId</code> is provided for the session.</p>"}))
    AuthenticationResult.add_member(:generated_speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: 'GeneratedSpeakerId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the speaker whose authentication result is\n            produced.</p>"}))
    AuthenticationResult.add_member(:decision, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationDecision, location_name: 'Decision', traits: {"smithy.api#documentation" => "<p>The authentication decision produced by Voice ID, processed against the current\n            session state and streamed audio of the speaker.</p>"}))
    AuthenticationResult.add_member(:score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'Score', traits: {"smithy.api#documentation" => "<p>The authentication score for the speaker whose authentication result is produced. This\n            value is only present if the authentication decision is either <code>ACCEPT</code> or\n                <code>REJECT</code>.</p>"}))
    AuthenticationResult.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The <code>AuthenticationConfiguration</code> used to generate this authentication\n            result.</p>"}))
    AuthenticationResult.type = Types::AuthenticationResult
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.add_member(:conflict_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictType, location_name: 'ConflictType', traits: {"smithy.api#documentation" => "<p>The type of conflict which caused a ConflictException. Possible types and the\n            corresponding error messages are as follows:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>DOMAIN_NOT_ACTIVE</code>: The domain is not active.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT</code>: You cannot change the\n                    speaker ID after an enrollment has been requested.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ENROLLMENT_ALREADY_EXISTS</code>: There is already an enrollment for\n                    this session.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SPEAKER_NOT_SET</code>: You must set the speaker ID before requesting an\n                    enrollment.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SPEAKER_OPTED_OUT</code>: You cannot request an enrollment for an opted\n                    out speaker.</p>\n            </li>\n            <li>\n               <p>\n                  <code>CONCURRENT_CHANGES</code>: The request could not be processed as the\n                    resource was modified by another request during execution.</p>\n            </li>\n         </ul>"}))
    ConflictException.type = Types::ConflictException
    CreateDomainInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#required" => {}}))
    CreateDomainInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A brief description of this domain.</p>"}))
    CreateDomainInput.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration, containing the KMS key identifier, to be used by\n            Voice ID for the server-side encryption of your data. Refer to <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid\">\n                Amazon Connect Voice ID encryption at rest</a> for more details on how the KMS key is used. </p>", "smithy.api#required" => {}}))
    CreateDomainInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateDomainInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#documentation" => "<p>A list of tags you want added to the domain.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateDomainInput.type = Types::CreateDomainInput
    CreateDomainOutput.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>Information about the newly created domain.</p>"}))
    CreateDomainOutput.type = Types::CreateDomainOutput
    CreateWatchlistInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the watchlist.</p>", "smithy.api#required" => {}}))
    CreateWatchlistInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the watchlist.</p>", "smithy.api#required" => {}}))
    CreateWatchlistInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A brief description of this watchlist.</p>"}))
    CreateWatchlistInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateWatchlistInput.type = Types::CreateWatchlistInput
    CreateWatchlistOutput.add_member(:watchlist, Smithy::Schema::Shapes::ShapeRef.new(shape: Watchlist, location_name: 'Watchlist', traits: {"smithy.api#documentation" => "<p>Information about the newly created watchlist.</p>"}))
    CreateWatchlistOutput.type = Types::CreateWatchlistOutput
    DeleteDomainInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteDomainInput.type = Types::DeleteDomainInput
    DeleteFraudsterInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster.</p>", "smithy.api#required" => {}}))
    DeleteFraudsterInput.add_member(:fraudster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterId, location_name: 'FraudsterId', traits: {"smithy.api#documentation" => "<p>The identifier of the fraudster you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteFraudsterInput.type = Types::DeleteFraudsterInput
    DeleteSpeakerInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker.</p>", "smithy.api#required" => {}}))
    DeleteSpeakerInput.add_member(:speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerId, location_name: 'SpeakerId', traits: {"smithy.api#documentation" => "<p>The identifier of the speaker you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteSpeakerInput.type = Types::DeleteSpeakerInput
    DeleteWatchlistInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the watchlist.</p>", "smithy.api#required" => {}}))
    DeleteWatchlistInput.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist to be deleted.</p>", "smithy.api#required" => {}}))
    DeleteWatchlistInput.type = Types::DeleteWatchlistInput
    DescribeDomainInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that you are describing.</p>", "smithy.api#required" => {}}))
    DescribeDomainInput.type = Types::DescribeDomainInput
    DescribeDomainOutput.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#documentation" => "<p>Information about the specified domain.</p>", "smithy.api#suppress" => ["UnstableTrait"]}))
    DescribeDomainOutput.type = Types::DescribeDomainOutput
    DescribeFraudsterInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster.</p>", "smithy.api#required" => {}}))
    DescribeFraudsterInput.add_member(:fraudster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterId, location_name: 'FraudsterId', traits: {"smithy.api#documentation" => "<p>The identifier of the fraudster you are describing.</p>", "smithy.api#required" => {}}))
    DescribeFraudsterInput.type = Types::DescribeFraudsterInput
    DescribeFraudsterOutput.add_member(:fraudster, Smithy::Schema::Shapes::ShapeRef.new(shape: Fraudster, location_name: 'Fraudster', traits: {"smithy.api#documentation" => "<p>Information about the specified fraudster.</p>"}))
    DescribeFraudsterOutput.type = Types::DescribeFraudsterOutput
    DescribeFraudsterRegistrationJobInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster registration job.</p>", "smithy.api#required" => {}}))
    DescribeFraudsterRegistrationJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the fraudster registration job you are describing.</p>", "smithy.api#required" => {}}))
    DescribeFraudsterRegistrationJobInput.type = Types::DescribeFraudsterRegistrationJobInput
    DescribeFraudsterRegistrationJobOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJob, location_name: 'Job', traits: {"smithy.api#documentation" => "<p>Contains details about the specified fraudster registration job.</p>"}))
    DescribeFraudsterRegistrationJobOutput.type = Types::DescribeFraudsterRegistrationJobOutput
    DescribeSpeakerEnrollmentJobInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker enrollment job.</p>", "smithy.api#required" => {}}))
    DescribeSpeakerEnrollmentJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The identifier of the speaker enrollment job you are describing.</p>", "smithy.api#required" => {}}))
    DescribeSpeakerEnrollmentJobInput.type = Types::DescribeSpeakerEnrollmentJobInput
    DescribeSpeakerEnrollmentJobOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJob, location_name: 'Job', traits: {"smithy.api#documentation" => "<p>Contains details about the specified speaker enrollment job.</p>"}))
    DescribeSpeakerEnrollmentJobOutput.type = Types::DescribeSpeakerEnrollmentJobOutput
    DescribeSpeakerInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker.</p>", "smithy.api#required" => {}}))
    DescribeSpeakerInput.add_member(:speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerId, location_name: 'SpeakerId', traits: {"smithy.api#documentation" => "<p>The identifier of the speaker you are describing.</p>", "smithy.api#required" => {}}))
    DescribeSpeakerInput.type = Types::DescribeSpeakerInput
    DescribeSpeakerOutput.add_member(:speaker, Smithy::Schema::Shapes::ShapeRef.new(shape: Speaker, location_name: 'Speaker', traits: {"smithy.api#documentation" => "<p>Information about the specified speaker.</p>"}))
    DescribeSpeakerOutput.type = Types::DescribeSpeakerOutput
    DescribeWatchlistInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the watchlist.</p>", "smithy.api#required" => {}}))
    DescribeWatchlistInput.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist that you are describing.</p>", "smithy.api#required" => {}}))
    DescribeWatchlistInput.type = Types::DescribeWatchlistInput
    DescribeWatchlistOutput.add_member(:watchlist, Smithy::Schema::Shapes::ShapeRef.new(shape: Watchlist, location_name: 'Watchlist', traits: {"smithy.api#documentation" => "<p>Information about the specified watchlist.</p>"}))
    DescribeWatchlistOutput.type = Types::DescribeWatchlistOutput
    DisassociateFraudsterInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster.</p>", "smithy.api#required" => {}}))
    DisassociateFraudsterInput.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist that you want to disassociate from the fraudster.</p>", "smithy.api#required" => {}}))
    DisassociateFraudsterInput.add_member(:fraudster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterId, location_name: 'FraudsterId', traits: {"smithy.api#documentation" => "<p>The identifier of the fraudster to be disassociated from the watchlist.</p>", "smithy.api#required" => {}}))
    DisassociateFraudsterInput.type = Types::DisassociateFraudsterInput
    DisassociateFraudsterOutput.add_member(:fraudster, Smithy::Schema::Shapes::ShapeRef.new(shape: Fraudster, location_name: 'Fraudster'))
    DisassociateFraudsterOutput.type = Types::DisassociateFraudsterOutput
    Domain.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain.</p>"}))
    Domain.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the domain.</p>"}))
    Domain.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the domain.</p>"}))
    Domain.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the domain.</p>"}))
    Domain.add_member(:domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus', traits: {"smithy.api#documentation" => "<p>The current status of the domain.</p>"}))
    Domain.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The server-side encryption configuration containing the KMS key\n            identifier you want Voice ID to use to encrypt your data.</p>"}))
    Domain.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the domain was created.</p>"}))
    Domain.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the domain was last update.</p>"}))
    Domain.add_member(:server_side_encryption_update_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionUpdateDetails, location_name: 'ServerSideEncryptionUpdateDetails', traits: {"smithy.api#documentation" => "<p>Details about the most recent server-side encryption configuration update. When the\n            server-side encryption configuration is changed, dependency on the old KMS key is removed through an asynchronous process. When this update is\n            complete, the domain's data can only be accessed using the new KMS key.</p>"}))
    Domain.add_member(:watchlist_details, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDetails, location_name: 'WatchlistDetails', traits: {"smithy.api#documentation" => "<p>The watchlist details of a domain. Contains the default watchlist ID of the domain.</p>"}))
    Domain.type = Types::Domain
    DomainSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummary)
    DomainSummary.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain.</p>"}))
    DomainSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the domain.</p>"}))
    DomainSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The client-provided name for the domain.</p>"}))
    DomainSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the domain.</p>"}))
    DomainSummary.add_member(:domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus', traits: {"smithy.api#documentation" => "<p>The current status of the domain.</p>"}))
    DomainSummary.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The server-side encryption configuration containing the KMS key\n            identifier you want Voice ID to use to encrypt your data.</p>"}))
    DomainSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the domain was created.</p>"}))
    DomainSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the domain was last updated.</p>"}))
    DomainSummary.add_member(:server_side_encryption_update_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionUpdateDetails, location_name: 'ServerSideEncryptionUpdateDetails', traits: {"smithy.api#documentation" => "<p>Details about the most recent server-side encryption configuration update. When the\n            server-side encryption configuration is changed, dependency on the old KMS key is removed through an asynchronous process. When this update is\n            complete, the domain's data can only be accessed using the new KMS key.</p>"}))
    DomainSummary.add_member(:watchlist_details, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDetails, location_name: 'WatchlistDetails', traits: {"smithy.api#documentation" => "<p>Provides information about <code>watchlistDetails</code> and <code>DefaultWatchlistID</code>. </p>"}))
    DomainSummary.type = Types::DomainSummary
    EnrollmentConfig.add_member(:existing_enrollment_action, Smithy::Schema::Shapes::ShapeRef.new(shape: ExistingEnrollmentAction, location_name: 'ExistingEnrollmentAction', traits: {"smithy.api#documentation" => "<p> The action to take when the specified speaker is already enrolled in the specified\n            domain. The default value is <code>SKIP</code>, which skips the enrollment for the\n            existing speaker. Setting the value to <code>OVERWRITE</code> replaces the existing\n            voice prints and enrollment audio stored for that speaker with new data generated from\n            the latest audio.</p>"}))
    EnrollmentConfig.add_member(:fraud_detection_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentJobFraudDetectionConfig, location_name: 'FraudDetectionConfig', traits: {"smithy.api#documentation" => "<p>The fraud detection configuration to use for the speaker enrollment job.</p>"}))
    EnrollmentConfig.type = Types::EnrollmentConfig
    EnrollmentJobFraudDetectionConfig.add_member(:fraud_detection_action, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionAction, location_name: 'FraudDetectionAction', traits: {"smithy.api#documentation" => "<p>The action to take when the given speaker is flagged by the fraud detection system.\n            The default value is <code>FAIL</code>, which fails the speaker enrollment. Changing\n            this value to <code>IGNORE</code> results in the speaker being enrolled even if they are\n            flagged by the fraud detection system.</p>"}))
    EnrollmentJobFraudDetectionConfig.add_member(:risk_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'RiskThreshold', traits: {"smithy.api#documentation" => "<p>Threshold value for determining whether the speaker is a high risk to be fraudulent.\n            If the detected risk score calculated by Voice ID is greater than or equal to the\n            threshold, the speaker is considered a fraudster.</p>"}))
    EnrollmentJobFraudDetectionConfig.add_member(:watchlist_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentJobFraudDetectionConfigWatchlistIds, location_name: 'WatchlistIds', traits: {"smithy.api#documentation" => "<p>The identifier of watchlists against which fraud detection is performed.\n        </p>"}))
    EnrollmentJobFraudDetectionConfig.type = Types::EnrollmentJobFraudDetectionConfig
    EnrollmentJobFraudDetectionConfigWatchlistIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId)
    EvaluateSessionInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain where the session started.</p>", "smithy.api#required" => {}}))
    EvaluateSessionInput.add_member(:session_name_or_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionNameOrId, location_name: 'SessionNameOrId', traits: {"smithy.api#documentation" => "<p>The session identifier, or name of the session, that you want to evaluate. In\n            Voice ID integration, this is the Contact-Id.</p>", "smithy.api#required" => {}}))
    EvaluateSessionInput.type = Types::EvaluateSessionInput
    EvaluateSessionOutput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the session.</p>"}))
    EvaluateSessionOutput.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier of the session.</p>"}))
    EvaluateSessionOutput.add_member(:session_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionName, location_name: 'SessionName', traits: {"smithy.api#documentation" => "<p>The client-provided name of the session.</p>"}))
    EvaluateSessionOutput.add_member(:streaming_status, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingStatus, location_name: 'StreamingStatus', traits: {"smithy.api#documentation" => "<p>The current status of audio streaming for this session. This field is useful to infer\n            next steps when the Authentication or Fraud Detection results are empty or the decision\n            is <code>NOT_ENOUGH_SPEECH</code>. In this situation, if the\n                <code>StreamingStatus</code> is <code>ONGOING/PENDING_CONFIGURATION</code>, it can\n            mean that the client should call the API again later, after Voice ID has enough audio\n            to produce a result. If the decision remains <code>NOT_ENOUGH_SPEECH</code> even after\n                <code>StreamingStatus</code> is <code>ENDED</code>, it means that the previously\n            streamed session did not have enough speech to perform evaluation, and a new streaming\n            session is needed to try again.</p>"}))
    EvaluateSessionOutput.add_member(:authentication_result, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationResult, location_name: 'AuthenticationResult', traits: {"smithy.api#documentation" => "<p>Details resulting from the authentication process, such as authentication decision and\n            authentication score.</p>"}))
    EvaluateSessionOutput.add_member(:fraud_detection_result, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionResult, location_name: 'FraudDetectionResult', traits: {"smithy.api#documentation" => "<p>Details resulting from the fraud detection process, such as fraud detection decision\n            and risk score.</p>"}))
    EvaluateSessionOutput.type = Types::EvaluateSessionOutput
    FailureDetails.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>An HTTP status code representing the nature of the error.</p>"}))
    FailureDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A description of the error that caused the batch job failure.</p>"}))
    FailureDetails.type = Types::FailureDetails
    FraudDetectionConfiguration.add_member(:risk_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'RiskThreshold', traits: {"smithy.api#documentation" => "<p>Threshold value for determining whether the speaker is a fraudster. If the detected\n            risk score calculated by Voice ID is higher than the threshold, the speaker is\n            considered a fraudster.</p>"}))
    FraudDetectionConfiguration.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist against which fraud detection is performed.\n        </p>"}))
    FraudDetectionConfiguration.type = Types::FraudDetectionConfiguration
    FraudDetectionReasons.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionReason)
    FraudDetectionResult.add_member(:fraud_detection_result_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueIdLarge, location_name: 'FraudDetectionResultId', traits: {"smithy.api#documentation" => "<p>The unique identifier for this fraud detection result. Given there can be multiple\n            fraud detections for a given session, this field helps in identifying if the returned\n            result is from previous streaming activity or a new result. Note that in the absence of\n            any new streaming activity or risk threshold changes, Voice ID always returns cached\n            Fraud Detection result for this API.</p>"}))
    FraudDetectionResult.add_member(:audio_aggregation_started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AudioAggregationStartedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when audio aggregation started for this fraud detection\n            result.</p>"}))
    FraudDetectionResult.add_member(:audio_aggregation_ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AudioAggregationEndedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when audio aggregation ended for this fraud detection\n            result.</p>"}))
    FraudDetectionResult.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionConfiguration, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The <code>FraudDetectionConfiguration</code> used to generate this fraud detection\n            result.</p>"}))
    FraudDetectionResult.add_member(:decision, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionDecision, location_name: 'Decision', traits: {"smithy.api#documentation" => "<p>The fraud detection decision produced by Voice ID, processed against the current\n            session state and streamed audio of the speaker.</p>"}))
    FraudDetectionResult.add_member(:reasons, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionReasons, location_name: 'Reasons', traits: {"smithy.api#documentation" => "<p>The reason speaker was flagged by the fraud detection system. This is only be\n            populated if fraud detection Decision is <code>HIGH_RISK</code>, and the following\n            possible values: <code>KNOWN_FRAUDSTER</code> and <code>VOICE_SPOOFING</code>.</p>"}))
    FraudDetectionResult.add_member(:risk_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudRiskDetails, location_name: 'RiskDetails', traits: {"smithy.api#documentation" => "<p>Details about each risk analyzed for this speaker. Currently, this contains\n            KnownFraudsterRisk and VoiceSpoofingRisk details.</p>"}))
    FraudDetectionResult.type = Types::FraudDetectionResult
    FraudRiskDetails.add_member(:known_fraudster_risk, Smithy::Schema::Shapes::ShapeRef.new(shape: KnownFraudsterRisk, location_name: 'KnownFraudsterRisk', traits: {"smithy.api#documentation" => "<p>The details resulting from 'Known Fraudster Risk' analysis of the speaker.</p>", "smithy.api#required" => {}}))
    FraudRiskDetails.add_member(:voice_spoofing_risk, Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceSpoofingRisk, location_name: 'VoiceSpoofingRisk', traits: {"smithy.api#documentation" => "<p>The details resulting from 'Voice Spoofing Risk' analysis of the speaker.</p>", "smithy.api#required" => {}}))
    FraudRiskDetails.type = Types::FraudRiskDetails
    Fraudster.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster.</p>"}))
    Fraudster.add_member(:generated_fraudster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFraudsterId, location_name: 'GeneratedFraudsterId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the fraudster.</p>"}))
    Fraudster.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when Voice ID identified the fraudster.</p>"}))
    Fraudster.add_member(:watchlist_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseWatchlistIds, location_name: 'WatchlistIds', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlists the fraudster is a part of.</p>"}))
    Fraudster.type = Types::Fraudster
    FraudsterRegistrationJob.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The client-provided name for the fraudster registration job.</p>"}))
    FraudsterRegistrationJob.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the fraudster registration job.</p>"}))
    FraudsterRegistrationJob.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the fraudster registration job.</p>"}))
    FraudsterRegistrationJob.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster registration job.</p>"}))
    FraudsterRegistrationJob.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access\n            customer's buckets to read the input manifest file and write the job output file.</p>"}))
    FraudsterRegistrationJob.add_member(:registration_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: 'RegistrationConfig', traits: {"smithy.api#documentation" => "<p>The registration config containing details such as the action to take when a duplicate\n            fraudster is detected, and the similarity threshold to use for detecting a duplicate\n            fraudster.</p>"}))
    FraudsterRegistrationJob.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data config containing an S3 URI for the input manifest file that contains\n            the list of fraudster registration job requests.</p>"}))
    FraudsterRegistrationJob.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data config containing the S3 location where you want Voice ID to write\n            your job output file; you must also include a KMS key ID in order to\n            encrypt the file.</p>"}))
    FraudsterRegistrationJob.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the fraudster registration job was created.</p>"}))
    FraudsterRegistrationJob.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the fraudster registration job ended.</p>"}))
    FraudsterRegistrationJob.add_member(:failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails', traits: {"smithy.api#documentation" => "<p>Contains details that are populated when an entire batch job fails. In cases of\n            individual registration job failures, the batch job as a whole doesn't fail; it is\n            completed with a <code>JobStatus</code> of <code>COMPLETED_WITH_ERRORS</code>. You can\n            use the job output file to identify the individual registration requests that\n            failed.</p>"}))
    FraudsterRegistrationJob.add_member(:job_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgress, location_name: 'JobProgress', traits: {"smithy.api#documentation" => "<p>Shows the completed percentage of registration requests listed in the input\n            file.</p>"}))
    FraudsterRegistrationJob.type = Types::FraudsterRegistrationJob
    FraudsterRegistrationJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobSummary)
    FraudsterRegistrationJobSummary.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The client-provided name for the fraudster registration job.</p>"}))
    FraudsterRegistrationJobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the fraudster registration job.</p>"}))
    FraudsterRegistrationJobSummary.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the fraudster registration job.</p>"}))
    FraudsterRegistrationJobSummary.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster registration job.</p>"}))
    FraudsterRegistrationJobSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the fraudster registration job was created. </p>"}))
    FraudsterRegistrationJobSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the fraudster registration job ended.</p>"}))
    FraudsterRegistrationJobSummary.add_member(:failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails', traits: {"smithy.api#documentation" => "<p>Contains details that are populated when an entire batch job fails. In cases of\n            individual registration job failures, the batch job as a whole doesn't fail; it is\n            completed with a <code>JobStatus</code> of <code>COMPLETED_WITH_ERRORS</code>. You can\n            use the job output file to identify the individual registration requests that\n            failed.</p>"}))
    FraudsterRegistrationJobSummary.add_member(:job_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgress, location_name: 'JobProgress', traits: {"smithy.api#documentation" => "<p>Shows the completed percentage of registration requests listed in the input\n            file.</p>"}))
    FraudsterRegistrationJobSummary.type = Types::FraudsterRegistrationJobSummary
    FraudsterSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterSummary)
    FraudsterSummary.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster summary.</p>"}))
    FraudsterSummary.add_member(:generated_fraudster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFraudsterId, location_name: 'GeneratedFraudsterId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the fraudster.</p>"}))
    FraudsterSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the fraudster summary was created.</p>"}))
    FraudsterSummary.add_member(:watchlist_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseWatchlistIds, location_name: 'WatchlistIds', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlists the fraudster is a part of.</p>"}))
    FraudsterSummary.type = Types::FraudsterSummary
    InputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The S3 location for the input manifest file that contains the list of individual\n            enrollment or registration job requests.</p>", "smithy.api#required" => {}}))
    InputDataConfig.type = Types::InputDataConfig
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    JobProgress.add_member(:percent_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'PercentComplete', traits: {"smithy.api#documentation" => "<p>Shows the completed percentage of enrollment or registration requests listed in the\n            input file.</p>"}))
    JobProgress.type = Types::JobProgress
    KnownFraudsterRisk.add_member(:risk_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'RiskScore', traits: {"smithy.api#documentation" => "<p>The score indicating the likelihood the speaker is a known fraudster.</p>", "smithy.api#required" => {}}))
    KnownFraudsterRisk.add_member(:generated_fraudster_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFraudsterId, location_name: 'GeneratedFraudsterId', traits: {"smithy.api#documentation" => "<p>The identifier of the fraudster that is the closest match to the speaker. If there are\n            no fraudsters registered in a given domain, or if there are no fraudsters with a\n            non-zero RiskScore, this value is <code>null</code>.</p>"}))
    KnownFraudsterRisk.type = Types::KnownFraudsterRisk
    ListDomainsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForListDomainFe, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use\n            <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.</p>"}))
    ListDomainsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.</p>"}))
    ListDomainsInput.type = Types::ListDomainsInput
    ListDomainsOutput.add_member(:domain_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummaries, location_name: 'DomainSummaries', traits: {"smithy.api#documentation" => "<p>A list containing details about each domain in the Amazon Web Services account.</p>"}))
    ListDomainsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.</p>"}))
    ListDomainsOutput.type = Types::ListDomainsOutput
    ListFraudsterRegistrationJobsInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster registration Jobs.</p>", "smithy.api#required" => {}}))
    ListFraudsterRegistrationJobsInput.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Provides the status of your fraudster registration job.</p>"}))
    ListFraudsterRegistrationJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use\n            <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100. </p>"}))
    ListFraudsterRegistrationJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.</p>"}))
    ListFraudsterRegistrationJobsInput.type = Types::ListFraudsterRegistrationJobsInput
    ListFraudsterRegistrationJobsOutput.add_member(:job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobSummaries, location_name: 'JobSummaries', traits: {"smithy.api#documentation" => "<p>A list containing details about each specified fraudster registration job.</p>"}))
    ListFraudsterRegistrationJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.</p>"}))
    ListFraudsterRegistrationJobsOutput.type = Types::ListFraudsterRegistrationJobsOutput
    ListFraudstersInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain. </p>", "smithy.api#required" => {}}))
    ListFraudstersInput.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist. If provided, all fraudsters in the watchlist are listed. If not provided, all fraudsters in the domain are listed.</p>"}))
    ListFraudstersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use\n            <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.    </p>"}))
    ListFraudstersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.\n        </p>"}))
    ListFraudstersInput.type = Types::ListFraudstersInput
    ListFraudstersOutput.add_member(:fraudster_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterSummaries, location_name: 'FraudsterSummaries', traits: {"smithy.api#documentation" => "<p>A list that contains details about each fraudster in the Amazon Web Services account.\n        </p>"}))
    ListFraudstersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.\n        </p>"}))
    ListFraudstersOutput.type = Types::ListFraudstersOutput
    ListSpeakerEnrollmentJobsInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker enrollment jobs.</p>", "smithy.api#required" => {}}))
    ListSpeakerEnrollmentJobsInput.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>Provides the status of your speaker enrollment Job.</p>"}))
    ListSpeakerEnrollmentJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use\n            <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.</p>"}))
    ListSpeakerEnrollmentJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.</p>"}))
    ListSpeakerEnrollmentJobsInput.type = Types::ListSpeakerEnrollmentJobsInput
    ListSpeakerEnrollmentJobsOutput.add_member(:job_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobSummaries, location_name: 'JobSummaries', traits: {"smithy.api#documentation" => "<p>A list containing details about each specified speaker enrollment job.</p>"}))
    ListSpeakerEnrollmentJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours. </p>"}))
    ListSpeakerEnrollmentJobsOutput.type = Types::ListSpeakerEnrollmentJobsOutput
    ListSpeakersInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain.</p>", "smithy.api#required" => {}}))
    ListSpeakersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use\n            <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100. </p>"}))
    ListSpeakersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.</p>"}))
    ListSpeakersInput.type = Types::ListSpeakersInput
    ListSpeakersOutput.add_member(:speaker_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSummaries, location_name: 'SpeakerSummaries', traits: {"smithy.api#documentation" => "<p>A list containing details about each speaker in the Amazon Web Services account.\n        </p>"}))
    ListSpeakersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours. </p>"}))
    ListSpeakersOutput.type = Types::ListSpeakersOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Voice ID resource for which you want to list\n            the tags.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags associated with the specified resource.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWatchlistsInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain.</p>", "smithy.api#required" => {}}))
    ListWatchlistsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results that are returned per call. You can use\n            <code>NextToken</code> to obtain more pages of results. The default is 100; the maximum allowed page size is also 100.\n        </p>"}))
    ListWatchlistsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.\n        </p>"}))
    ListWatchlistsInput.type = Types::ListWatchlistsInput
    ListWatchlistsOutput.add_member(:watchlist_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistSummaries, location_name: 'WatchlistSummaries', traits: {"smithy.api#documentation" => "<p>A list that contains details about each watchlist in the Amazon Web Services account.\n        </p>"}))
    ListWatchlistsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> is returned, there are more results available. The value of\n            <code>NextToken</code> is a unique pagination token for each page. Make the call\n            again using the returned token to retrieve the next page. Keep all other arguments\n            unchanged. Each pagination token expires after 24 hours.\n        </p>"}))
    ListWatchlistsOutput.type = Types::ListWatchlistsOutput
    OptOutSpeakerInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker.</p>", "smithy.api#required" => {}}))
    OptOutSpeakerInput.add_member(:speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerId, location_name: 'SpeakerId', traits: {"smithy.api#documentation" => "<p>The identifier of the speaker you want opted-out.</p>", "smithy.api#required" => {}}))
    OptOutSpeakerInput.type = Types::OptOutSpeakerInput
    OptOutSpeakerOutput.add_member(:speaker, Smithy::Schema::Shapes::ShapeRef.new(shape: Speaker, location_name: 'Speaker', traits: {"smithy.api#documentation" => "<p>Details about the opted-out speaker.</p>"}))
    OptOutSpeakerOutput.type = Types::OptOutSpeakerOutput
    OutputDataConfig.add_member(:s3_uri, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#documentation" => "<p>The S3 path of the folder where Voice ID writes the job output file. It has a\n                <code>*.out</code> extension. For example, if the input file name is\n                <code>input-file.json</code> and the output folder path is\n                <code>s3://output-bucket/output-folder</code>, the full output file path is\n                <code>s3://output-bucket/output-folder/job-Id/input-file.json.out</code>.</p>", "smithy.api#required" => {}}))
    OutputDataConfig.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS key you want Voice ID to use to encrypt the\n            output file of a speaker enrollment job/fraudster registration job.\n            </p>"}))
    OutputDataConfig.type = Types::OutputDataConfig
    RegistrationConfig.add_member(:duplicate_registration_action, Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRegistrationAction, location_name: 'DuplicateRegistrationAction', traits: {"smithy.api#documentation" => "<p>The action to take when a fraudster is identified as a duplicate. The default action\n            is <code>SKIP</code>, which skips registering the duplicate fraudster. Setting the value\n            to <code>REGISTER_AS_NEW</code> always registers a new fraudster into the specified\n            domain.</p>"}))
    RegistrationConfig.add_member(:fraudster_similarity_threshold, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'FraudsterSimilarityThreshold', traits: {"smithy.api#documentation" => "<p>The minimum similarity score between the new and old fraudsters in order to consider\n            the new fraudster a duplicate.</p>"}))
    RegistrationConfig.add_member(:watchlist_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationConfigWatchlistIds, location_name: 'WatchlistIds', traits: {"smithy.api#documentation" => "<p>The identifiers of watchlists that a fraudster is registered to. If a watchlist isn't provided, the fraudsters are registered to the default watchlist.\n        </p>"}))
    RegistrationConfig.type = Types::RegistrationConfig
    RegistrationConfigWatchlistIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource which cannot not be found. Possible types are\n                <code>BATCH_JOB</code>, <code>COMPLIANCE_CONSENT</code>, <code>DOMAIN</code>,\n                <code>FRAUDSTER</code>, <code>SESSION</code> and <code>SPEAKER</code>.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseWatchlistIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId)
    ServerSideEncryptionConfiguration.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#documentation" => "<p>The identifier of the KMS key to use to encrypt data stored by\n            Voice ID. Voice ID doesn't support asymmetric customer managed keys. </p>", "smithy.api#required" => {}}))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServerSideEncryptionUpdateDetails.add_member(:old_kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'OldKmsKeyId', traits: {"smithy.api#documentation" => "<p>The previous KMS key ID the domain was encrypted with, before\n            ServerSideEncryptionConfiguration was updated to a new KMS key ID.</p>"}))
    ServerSideEncryptionUpdateDetails.add_member(:update_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionUpdateStatus, location_name: 'UpdateStatus', traits: {"smithy.api#documentation" => "<p>Status of the server-side encryption update. During an update, if there is an issue\n            with the domain's current or old KMS key ID, such as an inaccessible or\n            disabled key, then the status is FAILED. In order to resolve this, the key needs to be\n            made accessible, and then an UpdateDomain call with the existing server-side encryption\n            configuration will re-attempt this update process.</p>"}))
    ServerSideEncryptionUpdateDetails.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Message explaining the current UpdateStatus. When the UpdateStatus is FAILED, this\n            message explains the cause of the failure.</p>"}))
    ServerSideEncryptionUpdateDetails.type = Types::ServerSideEncryptionUpdateDetails
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Speaker.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker.</p>"}))
    Speaker.add_member(:customer_speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: 'CustomerSpeakerId', traits: {"smithy.api#documentation" => "<p>The client-provided identifier for the speaker.</p>"}))
    Speaker.add_member(:generated_speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: 'GeneratedSpeakerId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the speaker.</p>"}))
    Speaker.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the speaker.</p>"}))
    Speaker.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the speaker was created. </p>"}))
    Speaker.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of the speaker's last update.</p>"}))
    Speaker.add_member(:last_accessed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAccessedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the speaker was last accessed for enrollment, re-enrollment or a\n            successful authentication. This timestamp is accurate to one hour.</p>"}))
    Speaker.type = Types::Speaker
    SpeakerEnrollmentJob.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The client-provided name for the speaker enrollment job.</p>"}))
    SpeakerEnrollmentJob.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the speaker enrollment job.</p>"}))
    SpeakerEnrollmentJob.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the speaker enrollment job.</p>"}))
    SpeakerEnrollmentJob.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker enrollment job.</p>"}))
    SpeakerEnrollmentJob.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access\n            customer's buckets to read the input manifest file and write the job output file.</p>"}))
    SpeakerEnrollmentJob.add_member(:enrollment_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentConfig, location_name: 'EnrollmentConfig', traits: {"smithy.api#documentation" => "<p>The configuration that defines the action to take when the speaker is already enrolled\n            in Voice ID, and the <code>FraudDetectionConfig</code> to use.</p>"}))
    SpeakerEnrollmentJob.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data config containing an S3 URI for the input manifest file that contains\n            the list of speaker enrollment job requests.</p>"}))
    SpeakerEnrollmentJob.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data config containing the S3 location where Voice ID writes the job\n            output file; you must also include a KMS key ID to encrypt the\n            file.</p>"}))
    SpeakerEnrollmentJob.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the speaker enrollment job was created.</p>"}))
    SpeakerEnrollmentJob.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the speaker enrollment job ended. </p>"}))
    SpeakerEnrollmentJob.add_member(:failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails', traits: {"smithy.api#documentation" => "<p>Contains details that are populated when an entire batch job fails. In cases of\n            individual registration job failures, the batch job as a whole doesn't fail; it is\n            completed with a <code>JobStatus</code> of <code>COMPLETED_WITH_ERRORS</code>. You can\n            use the job output file to identify the individual registration requests that\n            failed.</p>"}))
    SpeakerEnrollmentJob.add_member(:job_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgress, location_name: 'JobProgress', traits: {"smithy.api#documentation" => "<p>Provides details on job progress. This field shows the completed percentage of\n            registration requests listed in the input file.</p>"}))
    SpeakerEnrollmentJob.type = Types::SpeakerEnrollmentJob
    SpeakerEnrollmentJobSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobSummary)
    SpeakerEnrollmentJobSummary.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The client-provided name for the speaker enrollment job.</p>"}))
    SpeakerEnrollmentJobSummary.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the speaker enrollment job.</p>"}))
    SpeakerEnrollmentJobSummary.add_member(:job_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: 'JobStatus', traits: {"smithy.api#documentation" => "<p>The current status of the speaker enrollment job.</p>"}))
    SpeakerEnrollmentJobSummary.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker enrollment job.</p>"}))
    SpeakerEnrollmentJobSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when of the speaker enrollment job was created.</p>"}))
    SpeakerEnrollmentJobSummary.add_member(:ended_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the speaker enrollment job ended.</p>"}))
    SpeakerEnrollmentJobSummary.add_member(:failure_details, Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails', traits: {"smithy.api#documentation" => "<p>Contains details that are populated when an entire batch job fails. In cases of\n            individual registration job failures, the batch job as a whole doesn't fail; it is\n            completed with a <code>JobStatus</code> of <code>COMPLETED_WITH_ERRORS</code>. You can\n            use the job output file to identify the individual registration requests that\n            failed.</p>"}))
    SpeakerEnrollmentJobSummary.add_member(:job_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgress, location_name: 'JobProgress', traits: {"smithy.api#documentation" => "<p>Provides details regarding job progress. This field shows the completed percentage of\n            enrollment requests listed in the input file.</p>"}))
    SpeakerEnrollmentJobSummary.type = Types::SpeakerEnrollmentJobSummary
    SpeakerSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSummary)
    SpeakerSummary.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker.</p>"}))
    SpeakerSummary.add_member(:customer_speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: 'CustomerSpeakerId', traits: {"smithy.api#documentation" => "<p>The client-provided identifier for the speaker.</p>"}))
    SpeakerSummary.add_member(:generated_speaker_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: 'GeneratedSpeakerId', traits: {"smithy.api#documentation" => "<p>The service-generated identifier for the speaker. </p>"}))
    SpeakerSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of the speaker.</p>"}))
    SpeakerSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp showing the speaker's creation time. </p>"}))
    SpeakerSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp showing the speaker's last update.</p>"}))
    SpeakerSummary.add_member(:last_accessed_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAccessedAt', traits: {"smithy.api#documentation" => "<p>The timestamp when the speaker was last accessed for enrollment, re-enrollment or a\n            successful authentication. This timestamp is accurate to one hour.</p>"}))
    SpeakerSummary.type = Types::SpeakerSummary
    StartFraudsterRegistrationJobInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    StartFraudsterRegistrationJobInput.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>The name of the new fraudster registration job.</p>"}))
    StartFraudsterRegistrationJobInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the fraudster registration job and in which\n            the fraudsters are registered.</p>", "smithy.api#required" => {}}))
    StartFraudsterRegistrationJobInput.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access\n            customer's buckets to read the input manifest file and write the Job output file. Refer\n            to the <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-fraudster-watchlist.html\">Create and edit a\n                fraudster watchlist</a> documentation for the permissions needed in this\n            role.</p>", "smithy.api#required" => {}}))
    StartFraudsterRegistrationJobInput.add_member(:registration_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: 'RegistrationConfig', traits: {"smithy.api#documentation" => "<p>The registration config containing details such as the action to take when a duplicate\n            fraudster is detected, and the similarity threshold to use for detecting a duplicate\n            fraudster. </p>"}))
    StartFraudsterRegistrationJobInput.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data config containing an S3 URI for the input manifest file that contains\n            the list of fraudster registration requests.</p>", "smithy.api#required" => {}}))
    StartFraudsterRegistrationJobInput.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data config containing the S3 location where Voice ID writes the job\n            output file; you must also include a KMS key ID to encrypt the\n            file.</p>", "smithy.api#required" => {}}))
    StartFraudsterRegistrationJobInput.type = Types::StartFraudsterRegistrationJobInput
    StartFraudsterRegistrationJobOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJob, location_name: 'Job', traits: {"smithy.api#documentation" => "<p>Details about the started fraudster registration job.</p>"}))
    StartFraudsterRegistrationJobOutput.type = Types::StartFraudsterRegistrationJobOutput
    StartSpeakerEnrollmentJobInput.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the\n            request. If not provided, the Amazon Web Services\n            SDK populates this field. For more information about idempotency, see\n            <a href=\"https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/\">Making retries safe with idempotent APIs</a>.</p>", "smithy.api#idempotencyToken" => {}}))
    StartSpeakerEnrollmentJobInput.add_member(:job_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName', traits: {"smithy.api#documentation" => "<p>A name for your speaker enrollment job.</p>"}))
    StartSpeakerEnrollmentJobInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the speaker enrollment job and in which the\n            speakers are enrolled. </p>", "smithy.api#required" => {}}))
    StartSpeakerEnrollmentJobInput.add_member(:data_access_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role Amazon Resource Name (ARN) that grants Voice ID permissions to access\n            customer's buckets to read the input manifest file and write the job output file. Refer\n            to <a href=\"https://docs.aws.amazon.com/connect/latest/adminguide/voiceid-batch-enrollment.html\">Batch enrollment using\n                audio data from prior calls</a> for the permissions needed in this role.</p>", "smithy.api#required" => {}}))
    StartSpeakerEnrollmentJobInput.add_member(:enrollment_config, Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentConfig, location_name: 'EnrollmentConfig', traits: {"smithy.api#documentation" => "<p>The enrollment config that contains details such as the action to take when a speaker\n            is already enrolled in Voice ID or when a speaker is identified as a fraudster.</p>"}))
    StartSpeakerEnrollmentJobInput.add_member(:input_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#documentation" => "<p>The input data config containing the S3 location for the input manifest file that\n            contains the list of speaker enrollment requests.</p>", "smithy.api#required" => {}}))
    StartSpeakerEnrollmentJobInput.add_member(:output_data_config, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#documentation" => "<p>The output data config containing the S3 location where Voice ID writes the job\n            output file; you must also include a KMS key ID to encrypt the\n            file.</p>", "smithy.api#required" => {}}))
    StartSpeakerEnrollmentJobInput.type = Types::StartSpeakerEnrollmentJobInput
    StartSpeakerEnrollmentJobOutput.add_member(:job, Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJob, location_name: 'Job', traits: {"smithy.api#documentation" => "<p>Details about the started speaker enrollment job.</p>"}))
    StartSpeakerEnrollmentJobOutput.type = Types::StartSpeakerEnrollmentJobOutput
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The first part of a key:value pair that forms a tag associated with a given resource.\n            For example, in the tag 'Department':'Sales', the key is 'Department'. </p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>The second part of a key:value pair that forms a tag associated with a given resource.\n            For example, in the tag 'Department':'Sales', the value is 'Sales'. </p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Voice ID resource you want to tag.</p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tags to assign to the specified resource.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Voice ID resource you want to remove tags\n            from.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys you want to remove from the specified resource.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateDomainInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain to be updated.</p>", "smithy.api#required" => {}}))
    UpdateDomainInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the domain.</p>", "smithy.api#required" => {}}))
    UpdateDomainInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A brief description about this domain.</p>"}))
    UpdateDomainInput.add_member(:server_side_encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration, containing the KMS key identifier, to be used by\n            Voice ID for the server-side encryption of your data. Changing the domain's associated\n                KMS key immediately triggers an asynchronous process to remove\n            dependency on the old KMS key, such that the domain's data can only be\n            accessed using the new KMS key. The domain's\n                <code>ServerSideEncryptionUpdateDetails</code> contains the details for this\n            process.</p>", "smithy.api#required" => {}}))
    UpdateDomainInput.type = Types::UpdateDomainInput
    UpdateDomainOutput.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"smithy.api#documentation" => "<p>Details about the updated domain</p>"}))
    UpdateDomainOutput.type = Types::UpdateDomainOutput
    UpdateWatchlistInput.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the watchlist.</p>", "smithy.api#required" => {}}))
    UpdateWatchlistInput.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist to be updated.</p>", "smithy.api#required" => {}}))
    UpdateWatchlistInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the watchlist.</p>"}))
    UpdateWatchlistInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A brief description about this watchlist.</p>"}))
    UpdateWatchlistInput.type = Types::UpdateWatchlistInput
    UpdateWatchlistOutput.add_member(:watchlist, Smithy::Schema::Shapes::ShapeRef.new(shape: Watchlist, location_name: 'Watchlist', traits: {"smithy.api#documentation" => "<p>Details about the updated watchlist.</p>"}))
    UpdateWatchlistOutput.type = Types::UpdateWatchlistOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    VoiceSpoofingRisk.add_member(:risk_score, Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'RiskScore', traits: {"smithy.api#documentation" => "<p>The score indicating the likelihood of speaker’s voice being spoofed.</p>", "smithy.api#required" => {}}))
    VoiceSpoofingRisk.type = Types::VoiceSpoofingRisk
    Watchlist.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the watchlist.</p>"}))
    Watchlist.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist.</p>"}))
    Watchlist.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the watchlist.</p>"}))
    Watchlist.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the watchlist.</p>"}))
    Watchlist.add_member(:default_watchlist, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultWatchlist', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the specified watchlist is the default watchlist of a domain.</p>"}))
    Watchlist.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the watchlist was created.</p>"}))
    Watchlist.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the watchlist was updated.</p>"}))
    Watchlist.type = Types::Watchlist
    WatchlistDetails.add_member(:default_watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'DefaultWatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the default watchlist.</p>", "smithy.api#required" => {}}))
    WatchlistDetails.type = Types::WatchlistDetails
    WatchlistSummaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistSummary)
    WatchlistSummary.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#documentation" => "<p>The identifier of the domain that contains the watchlist.</p>"}))
    WatchlistSummary.add_member(:watchlist_id, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#documentation" => "<p>The identifier of the watchlist.</p>"}))
    WatchlistSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the watchlist.</p>"}))
    WatchlistSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the watchlist.</p>"}))
    WatchlistSummary.add_member(:default_watchlist, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultWatchlist', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Whether the specified watchlist is the default watchlist of a domain.</p>"}))
    WatchlistSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the watchlist was created.</p>"}))
    WatchlistSummary.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the watchlist was last updated.</p>"}))
    WatchlistSummary.type = Types::WatchlistSummary

    VoiceID = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.voiceid#VoiceID"
      service.name = "VoiceID"
      service.version = "2021-09-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Voice ID", "arnNamespace" => "voiceid", "cloudFormationName" => "VoiceID", "cloudTrailEventSource" => "voiceid.amazonaws.com", "endpointPrefix" => "voiceid"}, "aws.auth#sigv4" => {"name" => "voiceid"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Voice ID"}
      service.add_operation(:associate_fraudster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#AssociateFraudster"
        operation.name = "AssociateFraudster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFraudsterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFraudsterOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_watchlist, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#CreateWatchlist"
        operation.name = "CreateWatchlist"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWatchlistInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWatchlistOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_fraudster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DeleteFraudster"
        operation.name = "DeleteFraudster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFraudsterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_speaker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DeleteSpeaker"
        operation.name = "DeleteSpeaker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSpeakerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_watchlist, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DeleteWatchlist"
        operation.name = "DeleteWatchlist"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWatchlistInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeDomain"
        operation.name = "DescribeDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_fraudster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeFraudster"
        operation.name = "DescribeFraudster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFraudsterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFraudsterOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_fraudster_registration_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeFraudsterRegistrationJob"
        operation.name = "DescribeFraudsterRegistrationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFraudsterRegistrationJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFraudsterRegistrationJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_speaker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeSpeaker"
        operation.name = "DescribeSpeaker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpeakerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpeakerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_speaker_enrollment_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeSpeakerEnrollmentJob"
        operation.name = "DescribeSpeakerEnrollmentJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpeakerEnrollmentJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpeakerEnrollmentJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_watchlist, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeWatchlist"
        operation.name = "DescribeWatchlist"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWatchlistInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWatchlistOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_fraudster, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DisassociateFraudster"
        operation.name = "DisassociateFraudster"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFraudsterInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFraudsterOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:evaluate_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#EvaluateSession"
        operation.name = "EvaluateSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateSessionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateSessionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListDomains"
        operation.name = "ListDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_fraudster_registration_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListFraudsterRegistrationJobs"
        operation.name = "ListFraudsterRegistrationJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFraudsterRegistrationJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFraudsterRegistrationJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFraudsterRegistrationJobs.new
      end)
      service.add_operation(:list_fraudsters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListFraudsters"
        operation.name = "ListFraudsters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFraudstersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListFraudstersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFraudsters.new
      end)
      service.add_operation(:list_speaker_enrollment_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListSpeakerEnrollmentJobs"
        operation.name = "ListSpeakerEnrollmentJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeakerEnrollmentJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeakerEnrollmentJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSpeakerEnrollmentJobs.new
      end)
      service.add_operation(:list_speakers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListSpeakers"
        operation.name = "ListSpeakers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeakersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeakersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSpeakers.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_watchlists, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListWatchlists"
        operation.name = "ListWatchlists"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWatchlistsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListWatchlistsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListWatchlists.new
      end)
      service.add_operation(:opt_out_speaker, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#OptOutSpeaker"
        operation.name = "OptOutSpeaker"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutSpeakerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutSpeakerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_fraudster_registration_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#StartFraudsterRegistrationJob"
        operation.name = "StartFraudsterRegistrationJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFraudsterRegistrationJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFraudsterRegistrationJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_speaker_enrollment_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#StartSpeakerEnrollmentJob"
        operation.name = "StartSpeakerEnrollmentJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeakerEnrollmentJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeakerEnrollmentJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#UpdateDomain"
        operation.name = "UpdateDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_watchlist, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#UpdateWatchlist"
        operation.name = "UpdateWatchlist"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWatchlistInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWatchlistOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
