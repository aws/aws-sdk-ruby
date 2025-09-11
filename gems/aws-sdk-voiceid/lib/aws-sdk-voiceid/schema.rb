# frozen_string_literal: true

# This is generated code!

module Aws::VoiceID
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:voiceid.+:[0-9]{12}:domain/[a-zA-Z0-9]{22}$"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:aws(-[^:]+)?:voiceid.+:[0-9]{12}:domain/[a-zA-Z0-9]{22}$"})
    AssociateFraudsterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AssociateFraudsterInput', name: 'AssociateFraudsterInput')
    AssociateFraudsterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AssociateFraudsterOutput', name: 'AssociateFraudsterOutput')
    AuthenticationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AuthenticationConfiguration', name: 'AuthenticationConfiguration')
    AuthenticationDecision = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#AuthenticationDecision', name: 'AuthenticationDecision', traits: {"smithy.api#enum" => [{"value" => "ACCEPT", "name" => "ACCEPT"}, {"value" => "REJECT", "name" => "REJECT"}, {"value" => "NOT_ENOUGH_SPEECH", "name" => "NOT_ENOUGH_SPEECH"}, {"value" => "SPEAKER_NOT_ENROLLED", "name" => "SPEAKER_NOT_ENROLLED"}, {"value" => "SPEAKER_OPTED_OUT", "name" => "SPEAKER_OPTED_OUT"}, {"value" => "SPEAKER_ID_NOT_PROVIDED", "name" => "SPEAKER_ID_NOT_PROVIDED"}, {"value" => "SPEAKER_EXPIRED", "name" => "SPEAKER_EXPIRED"}]})
    AuthenticationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#AuthenticationResult', name: 'AuthenticationResult')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.voiceid#Boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    ClientTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ClientTokenString', name: 'ClientTokenString', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ConflictType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ConflictType', name: 'ConflictType', traits: {"smithy.api#enum" => [{"value" => "ANOTHER_ACTIVE_STREAM", "name" => "ANOTHER_ACTIVE_STREAM"}, {"value" => "DOMAIN_NOT_ACTIVE", "name" => "DOMAIN_NOT_ACTIVE"}, {"value" => "CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT", "name" => "CANNOT_CHANGE_SPEAKER_AFTER_ENROLLMENT"}, {"value" => "ENROLLMENT_ALREADY_EXISTS", "name" => "ENROLLMENT_ALREADY_EXISTS"}, {"value" => "SPEAKER_NOT_SET", "name" => "SPEAKER_NOT_SET"}, {"value" => "SPEAKER_OPTED_OUT", "name" => "SPEAKER_OPTED_OUT"}, {"value" => "CONCURRENT_CHANGES", "name" => "CONCURRENT_CHANGES"}, {"value" => "DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES", "name" => "DOMAIN_LOCKED_FROM_ENCRYPTION_UPDATES"}, {"value" => "CANNOT_DELETE_NON_EMPTY_WATCHLIST", "name" => "CANNOT_DELETE_NON_EMPTY_WATCHLIST"}, {"value" => "FRAUDSTER_MUST_BELONG_TO_AT_LEAST_ONE_WATCHLIST", "name" => "FRAUDSTER_MUST_BELONG_TO_AT_LEAST_ONE_WATCHLIST"}]})
    CreateDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#CreateDomainInput', name: 'CreateDomainInput')
    CreateDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#CreateDomainOutput', name: 'CreateDomainOutput')
    CreateWatchlistInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#CreateWatchlistInput', name: 'CreateWatchlistInput')
    CreateWatchlistOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#CreateWatchlistOutput', name: 'CreateWatchlistOutput')
    CustomerSpeakerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#CustomerSpeakerId', name: 'CustomerSpeakerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    DeleteDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DeleteDomainInput', name: 'DeleteDomainInput')
    DeleteFraudsterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DeleteFraudsterInput', name: 'DeleteFraudsterInput')
    DeleteSpeakerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DeleteSpeakerInput', name: 'DeleteSpeakerInput')
    DeleteWatchlistInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DeleteWatchlistInput', name: 'DeleteWatchlistInput')
    DescribeDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeDomainInput', name: 'DescribeDomainInput')
    DescribeDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeDomainOutput', name: 'DescribeDomainOutput')
    DescribeFraudsterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeFraudsterInput', name: 'DescribeFraudsterInput')
    DescribeFraudsterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeFraudsterOutput', name: 'DescribeFraudsterOutput')
    DescribeFraudsterRegistrationJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeFraudsterRegistrationJobInput', name: 'DescribeFraudsterRegistrationJobInput')
    DescribeFraudsterRegistrationJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeFraudsterRegistrationJobOutput', name: 'DescribeFraudsterRegistrationJobOutput')
    DescribeSpeakerEnrollmentJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeSpeakerEnrollmentJobInput', name: 'DescribeSpeakerEnrollmentJobInput')
    DescribeSpeakerEnrollmentJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeSpeakerEnrollmentJobOutput', name: 'DescribeSpeakerEnrollmentJobOutput')
    DescribeSpeakerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeSpeakerInput', name: 'DescribeSpeakerInput')
    DescribeSpeakerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeSpeakerOutput', name: 'DescribeSpeakerOutput')
    DescribeWatchlistInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeWatchlistInput', name: 'DescribeWatchlistInput')
    DescribeWatchlistOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DescribeWatchlistOutput', name: 'DescribeWatchlistOutput')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$", "smithy.api#sensitive" => {}})
    DisassociateFraudsterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DisassociateFraudsterInput', name: 'DisassociateFraudsterInput')
    DisassociateFraudsterOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DisassociateFraudsterOutput', name: 'DisassociateFraudsterOutput')
    Domain = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Domain', name: 'Domain')
    DomainId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#DomainId', name: 'DomainId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-zA-Z0-9]{22}$"})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    DomainStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#DomainStatus', name: 'DomainStatus', traits: {"smithy.api#enum" => [{"value" => "ACTIVE", "name" => "ACTIVE"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "SUSPENDED", "name" => "SUSPENDED"}]})
    DomainSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#DomainSummaries', name: 'DomainSummaries')
    DomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#DomainSummary', name: 'DomainSummary')
    DuplicateRegistrationAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#DuplicateRegistrationAction', name: 'DuplicateRegistrationAction', traits: {"smithy.api#enum" => [{"value" => "SKIP", "name" => "SKIP"}, {"value" => "REGISTER_AS_NEW", "name" => "REGISTER_AS_NEW"}]})
    EnrollmentConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#EnrollmentConfig', name: 'EnrollmentConfig')
    EnrollmentJobFraudDetectionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#EnrollmentJobFraudDetectionConfig', name: 'EnrollmentJobFraudDetectionConfig')
    EnrollmentJobFraudDetectionConfigWatchlistIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#EnrollmentJobFraudDetectionConfigWatchlistIds', name: 'EnrollmentJobFraudDetectionConfigWatchlistIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    EvaluateSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#EvaluateSessionInput', name: 'EvaluateSessionInput')
    EvaluateSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#EvaluateSessionOutput', name: 'EvaluateSessionOutput')
    ExistingEnrollmentAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ExistingEnrollmentAction', name: 'ExistingEnrollmentAction', traits: {"smithy.api#enum" => [{"value" => "SKIP", "name" => "SKIP"}, {"value" => "OVERWRITE", "name" => "OVERWRITE"}]})
    FailureDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FailureDetails', name: 'FailureDetails')
    FraudDetectionAction = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudDetectionAction', name: 'FraudDetectionAction', traits: {"smithy.api#enum" => [{"value" => "IGNORE", "name" => "IGNORE"}, {"value" => "FAIL", "name" => "FAIL"}]})
    FraudDetectionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudDetectionConfiguration', name: 'FraudDetectionConfiguration')
    FraudDetectionDecision = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudDetectionDecision', name: 'FraudDetectionDecision', traits: {"smithy.api#enum" => [{"value" => "HIGH_RISK", "name" => "HIGH_RISK"}, {"value" => "LOW_RISK", "name" => "LOW_RISK"}, {"value" => "NOT_ENOUGH_SPEECH", "name" => "NOT_ENOUGH_SPEECH"}]})
    FraudDetectionReason = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudDetectionReason', name: 'FraudDetectionReason', traits: {"smithy.api#enum" => [{"value" => "KNOWN_FRAUDSTER", "name" => "KNOWN_FRAUDSTER"}, {"value" => "VOICE_SPOOFING", "name" => "VOICE_SPOOFING"}]})
    FraudDetectionReasons = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#FraudDetectionReasons', name: 'FraudDetectionReasons', traits: {"smithy.api#length" => {"min" => 0, "max" => 3}})
    FraudDetectionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudDetectionResult', name: 'FraudDetectionResult')
    FraudRiskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudRiskDetails', name: 'FraudRiskDetails')
    Fraudster = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Fraudster', name: 'Fraudster')
    FraudsterId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudsterId', name: 'FraudsterId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^id#[a-zA-Z0-9]{22}$", "smithy.api#sensitive" => {}})
    FraudsterRegistrationJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudsterRegistrationJob', name: 'FraudsterRegistrationJob')
    FraudsterRegistrationJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#FraudsterRegistrationJobStatus', name: 'FraudsterRegistrationJobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_ERRORS", "name" => "COMPLETED_WITH_ERRORS"}, {"value" => "FAILED", "name" => "FAILED"}]})
    FraudsterRegistrationJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#FraudsterRegistrationJobSummaries', name: 'FraudsterRegistrationJobSummaries')
    FraudsterRegistrationJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudsterRegistrationJobSummary', name: 'FraudsterRegistrationJobSummary')
    FraudsterSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#FraudsterSummaries', name: 'FraudsterSummaries')
    FraudsterSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#FraudsterSummary', name: 'FraudsterSummary')
    GeneratedFraudsterId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#GeneratedFraudsterId', name: 'GeneratedFraudsterId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^id#[a-zA-Z0-9]{22}$"})
    GeneratedSpeakerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#GeneratedSpeakerId', name: 'GeneratedSpeakerId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^id#[a-zA-Z0-9]{22}$"})
    IamRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#IamRoleArn', name: 'IamRoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:aws(-[^:]+)?:iam::[0-9]{12}:role/.+$"})
    InputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#InputDataConfig', name: 'InputDataConfig')
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.voiceid#Integer', name: 'Integer')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#JobId', name: 'JobId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-zA-Z0-9]{22}$"})
    JobName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#JobName', name: 'JobName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    JobProgress = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#JobProgress', name: 'JobProgress')
    KmsKeyId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#KmsKeyId', name: 'KmsKeyId', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KnownFraudsterRisk = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#KnownFraudsterRisk', name: 'KnownFraudsterRisk')
    ListDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListDomainsInput', name: 'ListDomainsInput')
    ListDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListDomainsOutput', name: 'ListDomainsOutput')
    ListFraudsterRegistrationJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListFraudsterRegistrationJobsInput', name: 'ListFraudsterRegistrationJobsInput')
    ListFraudsterRegistrationJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListFraudsterRegistrationJobsOutput', name: 'ListFraudsterRegistrationJobsOutput')
    ListFraudstersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListFraudstersInput', name: 'ListFraudstersInput')
    ListFraudstersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListFraudstersOutput', name: 'ListFraudstersOutput')
    ListSpeakerEnrollmentJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListSpeakerEnrollmentJobsInput', name: 'ListSpeakerEnrollmentJobsInput')
    ListSpeakerEnrollmentJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListSpeakerEnrollmentJobsOutput', name: 'ListSpeakerEnrollmentJobsOutput')
    ListSpeakersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListSpeakersInput', name: 'ListSpeakersInput')
    ListSpeakersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListSpeakersOutput', name: 'ListSpeakersOutput')
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    ListWatchlistsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListWatchlistsInput', name: 'ListWatchlistsInput')
    ListWatchlistsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ListWatchlistsOutput', name: 'ListWatchlistsOutput')
    MaxResultsForList = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.voiceid#MaxResultsForList', name: 'MaxResultsForList', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsForListDomainFe = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.voiceid#MaxResultsForListDomainFe', name: 'MaxResultsForListDomainFe', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^\\p{ASCII}{0,8192}$"})
    OptOutSpeakerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#OptOutSpeakerInput', name: 'OptOutSpeakerInput')
    OptOutSpeakerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#OptOutSpeakerOutput', name: 'OptOutSpeakerOutput')
    OutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#OutputDataConfig', name: 'OutputDataConfig')
    RegistrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#RegistrationConfig', name: 'RegistrationConfig')
    RegistrationConfigWatchlistIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#RegistrationConfigWatchlistIds', name: 'RegistrationConfigWatchlistIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "BATCH_JOB", "name" => "BATCH_JOB"}, {"value" => "COMPLIANCE_CONSENT", "name" => "COMPLIANCE_CONSENT"}, {"value" => "DOMAIN", "name" => "DOMAIN"}, {"value" => "FRAUDSTER", "name" => "FRAUDSTER"}, {"value" => "SESSION", "name" => "SESSION"}, {"value" => "SPEAKER", "name" => "SPEAKER"}, {"value" => "WATCHLIST", "name" => "WATCHLIST"}]})
    ResponseWatchlistIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#ResponseWatchlistIds', name: 'ResponseWatchlistIds')
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#S3Uri', name: 'S3Uri', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    Score = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.voiceid#Score', name: 'Score', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ServerSideEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ServerSideEncryptionConfiguration', name: 'ServerSideEncryptionConfiguration')
    ServerSideEncryptionUpdateDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ServerSideEncryptionUpdateDetails', name: 'ServerSideEncryptionUpdateDetails')
    ServerSideEncryptionUpdateStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#ServerSideEncryptionUpdateStatus', name: 'ServerSideEncryptionUpdateStatus', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "FAILED", "name" => "FAILED"}]})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SessionId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SessionId', name: 'SessionId', traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^id#[a-zA-Z0-9]{22}$"})
    SessionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SessionName', name: 'SessionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$"})
    SessionNameOrId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SessionNameOrId', name: 'SessionNameOrId', traits: {"smithy.api#length" => {"min" => 1, "max" => 36}, "smithy.api#pattern" => "^(id#[a-zA-Z0-9]{22}|[a-zA-Z0-9][a-zA-Z0-9_-]*)$"})
    Speaker = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Speaker', name: 'Speaker')
    SpeakerEnrollmentJob = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#SpeakerEnrollmentJob', name: 'SpeakerEnrollmentJob')
    SpeakerEnrollmentJobStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SpeakerEnrollmentJobStatus', name: 'SpeakerEnrollmentJobStatus', traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "COMPLETED_WITH_ERRORS", "name" => "COMPLETED_WITH_ERRORS"}, {"value" => "FAILED", "name" => "FAILED"}]})
    SpeakerEnrollmentJobSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#SpeakerEnrollmentJobSummaries', name: 'SpeakerEnrollmentJobSummaries')
    SpeakerEnrollmentJobSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#SpeakerEnrollmentJobSummary', name: 'SpeakerEnrollmentJobSummary')
    SpeakerId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SpeakerId', name: 'SpeakerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(id#[a-zA-Z0-9]{22}|[a-zA-Z0-9][a-zA-Z0-9_-]*)$", "smithy.api#sensitive" => {}})
    SpeakerStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#SpeakerStatus', name: 'SpeakerStatus', traits: {"smithy.api#enum" => [{"value" => "ENROLLED", "name" => "ENROLLED"}, {"value" => "EXPIRED", "name" => "EXPIRED"}, {"value" => "OPTED_OUT", "name" => "OPTED_OUT"}, {"value" => "PENDING", "name" => "PENDING"}]})
    SpeakerSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#SpeakerSummaries', name: 'SpeakerSummaries')
    SpeakerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#SpeakerSummary', name: 'SpeakerSummary')
    StartFraudsterRegistrationJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#StartFraudsterRegistrationJobInput', name: 'StartFraudsterRegistrationJobInput')
    StartFraudsterRegistrationJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#StartFraudsterRegistrationJobOutput', name: 'StartFraudsterRegistrationJobOutput')
    StartSpeakerEnrollmentJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#StartSpeakerEnrollmentJobInput', name: 'StartSpeakerEnrollmentJobInput')
    StartSpeakerEnrollmentJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#StartSpeakerEnrollmentJobOutput', name: 'StartSpeakerEnrollmentJobOutput')
    StreamingStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#StreamingStatus', name: 'StreamingStatus', traits: {"smithy.api#enum" => [{"value" => "PENDING_CONFIGURATION", "name" => "PENDING_CONFIGURATION"}, {"value" => "ONGOING", "name" => "ONGOING"}, {"value" => "ENDED", "name" => "ENDED"}]})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$", "smithy.api#sensitive" => {}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.voiceid#Timestamp', name: 'Timestamp')
    UniqueIdLarge = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#UniqueIdLarge', name: 'UniqueIdLarge', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-zA-Z0-9]{22}$"})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UntagResourceOutput', name: 'UntagResourceOutput')
    UpdateDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UpdateDomainInput', name: 'UpdateDomainInput')
    UpdateDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UpdateDomainOutput', name: 'UpdateDomainOutput')
    UpdateWatchlistInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UpdateWatchlistInput', name: 'UpdateWatchlistInput')
    UpdateWatchlistOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#UpdateWatchlistOutput', name: 'UpdateWatchlistOutput')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VoiceSpoofingRisk = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#VoiceSpoofingRisk', name: 'VoiceSpoofingRisk')
    Watchlist = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#Watchlist', name: 'Watchlist')
    WatchlistDescription = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#WatchlistDescription', name: 'WatchlistDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-%@]*)$", "smithy.api#sensitive" => {}})
    WatchlistDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#WatchlistDetails', name: 'WatchlistDetails')
    WatchlistId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#WatchlistId', name: 'WatchlistId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[a-zA-Z0-9]{22}$"})
    WatchlistName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.voiceid#WatchlistName', name: 'WatchlistName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_-]*$", "smithy.api#sensitive" => {}})
    WatchlistSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.voiceid#WatchlistSummaries', name: 'WatchlistSummaries')
    WatchlistSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.voiceid#WatchlistSummary', name: 'WatchlistSummary')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AssociateFraudsterInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    AssociateFraudsterInput.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#required" => {}}))
    AssociateFraudsterInput.add_member(:fraudster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterId, location_name: 'FraudsterId', traits: {"smithy.api#required" => {}}))
    AssociateFraudsterInput.type = Types::AssociateFraudsterInput
    AssociateFraudsterOutput.add_member(:fraudster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fraudster, location_name: 'Fraudster'))
    AssociateFraudsterOutput.type = Types::AssociateFraudsterOutput
    AuthenticationConfiguration.add_member(:acceptance_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'AcceptanceThreshold', traits: {"smithy.api#required" => {}}))
    AuthenticationConfiguration.type = Types::AuthenticationConfiguration
    AuthenticationResult.add_member(:authentication_result_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueIdLarge, location_name: 'AuthenticationResultId'))
    AuthenticationResult.add_member(:audio_aggregation_started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AudioAggregationStartedAt'))
    AuthenticationResult.add_member(:audio_aggregation_ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AudioAggregationEndedAt'))
    AuthenticationResult.add_member(:customer_speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: 'CustomerSpeakerId'))
    AuthenticationResult.add_member(:generated_speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: 'GeneratedSpeakerId'))
    AuthenticationResult.add_member(:decision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationDecision, location_name: 'Decision'))
    AuthenticationResult.add_member(:score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'Score'))
    AuthenticationResult.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationConfiguration, location_name: 'Configuration'))
    AuthenticationResult.type = Types::AuthenticationResult
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ConflictException.add_member(:conflict_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictType, location_name: 'ConflictType'))
    ConflictException.type = Types::ConflictException
    CreateDomainInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateDomainInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    CreateDomainInput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration', traits: {"smithy.api#required" => {}}))
    CreateDomainInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateDomainInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"aws.cloudformation#cfnMutability" => "full", "smithy.api#suppress" => ["UnstableTrait"]}))
    CreateDomainInput.type = Types::CreateDomainInput
    CreateDomainOutput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain'))
    CreateDomainOutput.type = Types::CreateDomainOutput
    CreateWatchlistInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    CreateWatchlistInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateWatchlistInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDescription, location_name: 'Description'))
    CreateWatchlistInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    CreateWatchlistInput.type = Types::CreateWatchlistInput
    CreateWatchlistOutput.add_member(:watchlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Watchlist, location_name: 'Watchlist'))
    CreateWatchlistOutput.type = Types::CreateWatchlistOutput
    DeleteDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DeleteDomainInput.type = Types::DeleteDomainInput
    DeleteFraudsterInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DeleteFraudsterInput.add_member(:fraudster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterId, location_name: 'FraudsterId', traits: {"smithy.api#required" => {}}))
    DeleteFraudsterInput.type = Types::DeleteFraudsterInput
    DeleteSpeakerInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DeleteSpeakerInput.add_member(:speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerId, location_name: 'SpeakerId', traits: {"smithy.api#required" => {}}))
    DeleteSpeakerInput.type = Types::DeleteSpeakerInput
    DeleteWatchlistInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DeleteWatchlistInput.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#required" => {}}))
    DeleteWatchlistInput.type = Types::DeleteWatchlistInput
    DescribeDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DescribeDomainInput.type = Types::DescribeDomainInput
    DescribeDomainOutput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain', traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#suppress" => ["UnstableTrait"]}))
    DescribeDomainOutput.type = Types::DescribeDomainOutput
    DescribeFraudsterInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DescribeFraudsterInput.add_member(:fraudster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterId, location_name: 'FraudsterId', traits: {"smithy.api#required" => {}}))
    DescribeFraudsterInput.type = Types::DescribeFraudsterInput
    DescribeFraudsterOutput.add_member(:fraudster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fraudster, location_name: 'Fraudster'))
    DescribeFraudsterOutput.type = Types::DescribeFraudsterOutput
    DescribeFraudsterRegistrationJobInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DescribeFraudsterRegistrationJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#required" => {}}))
    DescribeFraudsterRegistrationJobInput.type = Types::DescribeFraudsterRegistrationJobInput
    DescribeFraudsterRegistrationJobOutput.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJob, location_name: 'Job'))
    DescribeFraudsterRegistrationJobOutput.type = Types::DescribeFraudsterRegistrationJobOutput
    DescribeSpeakerEnrollmentJobInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DescribeSpeakerEnrollmentJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId', traits: {"smithy.api#required" => {}}))
    DescribeSpeakerEnrollmentJobInput.type = Types::DescribeSpeakerEnrollmentJobInput
    DescribeSpeakerEnrollmentJobOutput.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJob, location_name: 'Job'))
    DescribeSpeakerEnrollmentJobOutput.type = Types::DescribeSpeakerEnrollmentJobOutput
    DescribeSpeakerInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DescribeSpeakerInput.add_member(:speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerId, location_name: 'SpeakerId', traits: {"smithy.api#required" => {}}))
    DescribeSpeakerInput.type = Types::DescribeSpeakerInput
    DescribeSpeakerOutput.add_member(:speaker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Speaker, location_name: 'Speaker'))
    DescribeSpeakerOutput.type = Types::DescribeSpeakerOutput
    DescribeWatchlistInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DescribeWatchlistInput.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#required" => {}}))
    DescribeWatchlistInput.type = Types::DescribeWatchlistInput
    DescribeWatchlistOutput.add_member(:watchlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Watchlist, location_name: 'Watchlist'))
    DescribeWatchlistOutput.type = Types::DescribeWatchlistOutput
    DisassociateFraudsterInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DisassociateFraudsterInput.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#required" => {}}))
    DisassociateFraudsterInput.add_member(:fraudster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterId, location_name: 'FraudsterId', traits: {"smithy.api#required" => {}}))
    DisassociateFraudsterInput.type = Types::DisassociateFraudsterInput
    DisassociateFraudsterOutput.add_member(:fraudster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Fraudster, location_name: 'Fraudster'))
    DisassociateFraudsterOutput.type = Types::DisassociateFraudsterOutput
    Domain.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    Domain.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    Domain.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'Name'))
    Domain.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    Domain.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus'))
    Domain.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration'))
    Domain.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    Domain.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    Domain.add_member(:server_side_encryption_update_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionUpdateDetails, location_name: 'ServerSideEncryptionUpdateDetails'))
    Domain.add_member(:watchlist_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDetails, location_name: 'WatchlistDetails'))
    Domain.type = Types::Domain
    DomainSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummary)
    DomainSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    DomainSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn'))
    DomainSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'Name'))
    DomainSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    DomainSummary.add_member(:domain_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus'))
    DomainSummary.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration'))
    DomainSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    DomainSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    DomainSummary.add_member(:server_side_encryption_update_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionUpdateDetails, location_name: 'ServerSideEncryptionUpdateDetails'))
    DomainSummary.add_member(:watchlist_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDetails, location_name: 'WatchlistDetails'))
    DomainSummary.type = Types::DomainSummary
    EnrollmentConfig.add_member(:existing_enrollment_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExistingEnrollmentAction, location_name: 'ExistingEnrollmentAction'))
    EnrollmentConfig.add_member(:fraud_detection_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentJobFraudDetectionConfig, location_name: 'FraudDetectionConfig'))
    EnrollmentConfig.type = Types::EnrollmentConfig
    EnrollmentJobFraudDetectionConfig.add_member(:fraud_detection_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionAction, location_name: 'FraudDetectionAction'))
    EnrollmentJobFraudDetectionConfig.add_member(:risk_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'RiskThreshold'))
    EnrollmentJobFraudDetectionConfig.add_member(:watchlist_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentJobFraudDetectionConfigWatchlistIds, location_name: 'WatchlistIds'))
    EnrollmentJobFraudDetectionConfig.type = Types::EnrollmentJobFraudDetectionConfig
    EnrollmentJobFraudDetectionConfigWatchlistIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId)
    EvaluateSessionInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    EvaluateSessionInput.add_member(:session_name_or_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionNameOrId, location_name: 'SessionNameOrId', traits: {"smithy.api#required" => {}}))
    EvaluateSessionInput.type = Types::EvaluateSessionInput
    EvaluateSessionOutput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    EvaluateSessionOutput.add_member(:session_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionId, location_name: 'SessionId'))
    EvaluateSessionOutput.add_member(:session_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SessionName, location_name: 'SessionName'))
    EvaluateSessionOutput.add_member(:streaming_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingStatus, location_name: 'StreamingStatus'))
    EvaluateSessionOutput.add_member(:authentication_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationResult, location_name: 'AuthenticationResult'))
    EvaluateSessionOutput.add_member(:fraud_detection_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionResult, location_name: 'FraudDetectionResult'))
    EvaluateSessionOutput.type = Types::EvaluateSessionOutput
    FailureDetails.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'StatusCode'))
    FailureDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    FailureDetails.type = Types::FailureDetails
    FraudDetectionConfiguration.add_member(:risk_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'RiskThreshold'))
    FraudDetectionConfiguration.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId'))
    FraudDetectionConfiguration.type = Types::FraudDetectionConfiguration
    FraudDetectionReasons.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionReason)
    FraudDetectionResult.add_member(:fraud_detection_result_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueIdLarge, location_name: 'FraudDetectionResultId'))
    FraudDetectionResult.add_member(:audio_aggregation_started_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AudioAggregationStartedAt'))
    FraudDetectionResult.add_member(:audio_aggregation_ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AudioAggregationEndedAt'))
    FraudDetectionResult.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionConfiguration, location_name: 'Configuration'))
    FraudDetectionResult.add_member(:decision, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionDecision, location_name: 'Decision'))
    FraudDetectionResult.add_member(:reasons, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudDetectionReasons, location_name: 'Reasons'))
    FraudDetectionResult.add_member(:risk_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudRiskDetails, location_name: 'RiskDetails'))
    FraudDetectionResult.type = Types::FraudDetectionResult
    FraudRiskDetails.add_member(:known_fraudster_risk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KnownFraudsterRisk, location_name: 'KnownFraudsterRisk', traits: {"smithy.api#required" => {}}))
    FraudRiskDetails.add_member(:voice_spoofing_risk, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VoiceSpoofingRisk, location_name: 'VoiceSpoofingRisk', traits: {"smithy.api#required" => {}}))
    FraudRiskDetails.type = Types::FraudRiskDetails
    Fraudster.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    Fraudster.add_member(:generated_fraudster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFraudsterId, location_name: 'GeneratedFraudsterId'))
    Fraudster.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    Fraudster.add_member(:watchlist_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseWatchlistIds, location_name: 'WatchlistIds'))
    Fraudster.type = Types::Fraudster
    FraudsterRegistrationJob.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName'))
    FraudsterRegistrationJob.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId'))
    FraudsterRegistrationJob.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: 'JobStatus'))
    FraudsterRegistrationJob.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    FraudsterRegistrationJob.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn'))
    FraudsterRegistrationJob.add_member(:registration_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: 'RegistrationConfig'))
    FraudsterRegistrationJob.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig'))
    FraudsterRegistrationJob.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig'))
    FraudsterRegistrationJob.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    FraudsterRegistrationJob.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt'))
    FraudsterRegistrationJob.add_member(:failure_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails'))
    FraudsterRegistrationJob.add_member(:job_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgress, location_name: 'JobProgress'))
    FraudsterRegistrationJob.type = Types::FraudsterRegistrationJob
    FraudsterRegistrationJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobSummary)
    FraudsterRegistrationJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName'))
    FraudsterRegistrationJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId'))
    FraudsterRegistrationJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: 'JobStatus'))
    FraudsterRegistrationJobSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    FraudsterRegistrationJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    FraudsterRegistrationJobSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt'))
    FraudsterRegistrationJobSummary.add_member(:failure_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails'))
    FraudsterRegistrationJobSummary.add_member(:job_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgress, location_name: 'JobProgress'))
    FraudsterRegistrationJobSummary.type = Types::FraudsterRegistrationJobSummary
    FraudsterSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterSummary)
    FraudsterSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    FraudsterSummary.add_member(:generated_fraudster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFraudsterId, location_name: 'GeneratedFraudsterId'))
    FraudsterSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    FraudsterSummary.add_member(:watchlist_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseWatchlistIds, location_name: 'WatchlistIds'))
    FraudsterSummary.type = Types::FraudsterSummary
    InputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#required" => {}}))
    InputDataConfig.type = Types::InputDataConfig
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    JobProgress.add_member(:percent_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'PercentComplete'))
    JobProgress.type = Types::JobProgress
    KnownFraudsterRisk.add_member(:risk_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'RiskScore', traits: {"smithy.api#required" => {}}))
    KnownFraudsterRisk.add_member(:generated_fraudster_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedFraudsterId, location_name: 'GeneratedFraudsterId'))
    KnownFraudsterRisk.type = Types::KnownFraudsterRisk
    ListDomainsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForListDomainFe, location_name: 'MaxResults'))
    ListDomainsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListDomainsInput.type = Types::ListDomainsInput
    ListDomainsOutput.add_member(:domain_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummaries, location_name: 'DomainSummaries'))
    ListDomainsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListDomainsOutput.type = Types::ListDomainsOutput
    ListFraudsterRegistrationJobsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    ListFraudsterRegistrationJobsInput.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobStatus, location_name: 'JobStatus'))
    ListFraudsterRegistrationJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults'))
    ListFraudsterRegistrationJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListFraudsterRegistrationJobsInput.type = Types::ListFraudsterRegistrationJobsInput
    ListFraudsterRegistrationJobsOutput.add_member(:job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJobSummaries, location_name: 'JobSummaries'))
    ListFraudsterRegistrationJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListFraudsterRegistrationJobsOutput.type = Types::ListFraudsterRegistrationJobsOutput
    ListFraudstersInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    ListFraudstersInput.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId'))
    ListFraudstersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults'))
    ListFraudstersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListFraudstersInput.type = Types::ListFraudstersInput
    ListFraudstersOutput.add_member(:fraudster_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterSummaries, location_name: 'FraudsterSummaries'))
    ListFraudstersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListFraudstersOutput.type = Types::ListFraudstersOutput
    ListSpeakerEnrollmentJobsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    ListSpeakerEnrollmentJobsInput.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: 'JobStatus'))
    ListSpeakerEnrollmentJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults'))
    ListSpeakerEnrollmentJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListSpeakerEnrollmentJobsInput.type = Types::ListSpeakerEnrollmentJobsInput
    ListSpeakerEnrollmentJobsOutput.add_member(:job_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobSummaries, location_name: 'JobSummaries'))
    ListSpeakerEnrollmentJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListSpeakerEnrollmentJobsOutput.type = Types::ListSpeakerEnrollmentJobsOutput
    ListSpeakersInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    ListSpeakersInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults'))
    ListSpeakersInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListSpeakersInput.type = Types::ListSpeakersInput
    ListSpeakersOutput.add_member(:speaker_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSummaries, location_name: 'SpeakerSummaries'))
    ListSpeakersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListSpeakersOutput.type = Types::ListSpeakersOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags'))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ListWatchlistsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    ListWatchlistsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsForList, location_name: 'MaxResults'))
    ListWatchlistsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    ListWatchlistsInput.type = Types::ListWatchlistsInput
    ListWatchlistsOutput.add_member(:watchlist_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistSummaries, location_name: 'WatchlistSummaries'))
    ListWatchlistsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken'))
    ListWatchlistsOutput.type = Types::ListWatchlistsOutput
    OptOutSpeakerInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    OptOutSpeakerInput.add_member(:speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerId, location_name: 'SpeakerId', traits: {"smithy.api#required" => {}}))
    OptOutSpeakerInput.type = Types::OptOutSpeakerInput
    OptOutSpeakerOutput.add_member(:speaker, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Speaker, location_name: 'Speaker'))
    OptOutSpeakerOutput.type = Types::OptOutSpeakerOutput
    OutputDataConfig.add_member(:s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: 'S3Uri', traits: {"smithy.api#required" => {}}))
    OutputDataConfig.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId'))
    OutputDataConfig.type = Types::OutputDataConfig
    RegistrationConfig.add_member(:duplicate_registration_action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DuplicateRegistrationAction, location_name: 'DuplicateRegistrationAction'))
    RegistrationConfig.add_member(:fraudster_similarity_threshold, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'FraudsterSimilarityThreshold'))
    RegistrationConfig.add_member(:watchlist_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationConfigWatchlistIds, location_name: 'WatchlistIds'))
    RegistrationConfig.type = Types::RegistrationConfig
    RegistrationConfigWatchlistIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseWatchlistIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId)
    ServerSideEncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'KmsKeyId', traits: {"smithy.api#required" => {}}))
    ServerSideEncryptionConfiguration.type = Types::ServerSideEncryptionConfiguration
    ServerSideEncryptionUpdateDetails.add_member(:old_kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyId, location_name: 'OldKmsKeyId'))
    ServerSideEncryptionUpdateDetails.add_member(:update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionUpdateStatus, location_name: 'UpdateStatus'))
    ServerSideEncryptionUpdateDetails.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServerSideEncryptionUpdateDetails.type = Types::ServerSideEncryptionUpdateDetails
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Speaker.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    Speaker.add_member(:customer_speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: 'CustomerSpeakerId'))
    Speaker.add_member(:generated_speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: 'GeneratedSpeakerId'))
    Speaker.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerStatus, location_name: 'Status'))
    Speaker.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    Speaker.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    Speaker.add_member(:last_accessed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAccessedAt'))
    Speaker.type = Types::Speaker
    SpeakerEnrollmentJob.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName'))
    SpeakerEnrollmentJob.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId'))
    SpeakerEnrollmentJob.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: 'JobStatus'))
    SpeakerEnrollmentJob.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    SpeakerEnrollmentJob.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn'))
    SpeakerEnrollmentJob.add_member(:enrollment_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentConfig, location_name: 'EnrollmentConfig'))
    SpeakerEnrollmentJob.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig'))
    SpeakerEnrollmentJob.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig'))
    SpeakerEnrollmentJob.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    SpeakerEnrollmentJob.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt'))
    SpeakerEnrollmentJob.add_member(:failure_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails'))
    SpeakerEnrollmentJob.add_member(:job_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgress, location_name: 'JobProgress'))
    SpeakerEnrollmentJob.type = Types::SpeakerEnrollmentJob
    SpeakerEnrollmentJobSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobSummary)
    SpeakerEnrollmentJobSummary.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName'))
    SpeakerEnrollmentJobSummary.add_member(:job_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobId, location_name: 'JobId'))
    SpeakerEnrollmentJobSummary.add_member(:job_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJobStatus, location_name: 'JobStatus'))
    SpeakerEnrollmentJobSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    SpeakerEnrollmentJobSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    SpeakerEnrollmentJobSummary.add_member(:ended_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndedAt'))
    SpeakerEnrollmentJobSummary.add_member(:failure_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureDetails, location_name: 'FailureDetails'))
    SpeakerEnrollmentJobSummary.add_member(:job_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobProgress, location_name: 'JobProgress'))
    SpeakerEnrollmentJobSummary.type = Types::SpeakerEnrollmentJobSummary
    SpeakerSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerSummary)
    SpeakerSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    SpeakerSummary.add_member(:customer_speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomerSpeakerId, location_name: 'CustomerSpeakerId'))
    SpeakerSummary.add_member(:generated_speaker_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GeneratedSpeakerId, location_name: 'GeneratedSpeakerId'))
    SpeakerSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerStatus, location_name: 'Status'))
    SpeakerSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    SpeakerSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    SpeakerSummary.add_member(:last_accessed_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastAccessedAt'))
    SpeakerSummary.type = Types::SpeakerSummary
    StartFraudsterRegistrationJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartFraudsterRegistrationJobInput.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName'))
    StartFraudsterRegistrationJobInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    StartFraudsterRegistrationJobInput.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#required" => {}}))
    StartFraudsterRegistrationJobInput.add_member(:registration_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegistrationConfig, location_name: 'RegistrationConfig'))
    StartFraudsterRegistrationJobInput.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#required" => {}}))
    StartFraudsterRegistrationJobInput.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#required" => {}}))
    StartFraudsterRegistrationJobInput.type = Types::StartFraudsterRegistrationJobInput
    StartFraudsterRegistrationJobOutput.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FraudsterRegistrationJob, location_name: 'Job'))
    StartFraudsterRegistrationJobOutput.type = Types::StartFraudsterRegistrationJobOutput
    StartSpeakerEnrollmentJobInput.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientTokenString, location_name: 'ClientToken', traits: {"smithy.api#idempotencyToken" => {}}))
    StartSpeakerEnrollmentJobInput.add_member(:job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: JobName, location_name: 'JobName'))
    StartSpeakerEnrollmentJobInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    StartSpeakerEnrollmentJobInput.add_member(:data_access_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IamRoleArn, location_name: 'DataAccessRoleArn', traits: {"smithy.api#required" => {}}))
    StartSpeakerEnrollmentJobInput.add_member(:enrollment_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnrollmentConfig, location_name: 'EnrollmentConfig'))
    StartSpeakerEnrollmentJobInput.add_member(:input_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputDataConfig, location_name: 'InputDataConfig', traits: {"smithy.api#required" => {}}))
    StartSpeakerEnrollmentJobInput.add_member(:output_data_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputDataConfig, location_name: 'OutputDataConfig', traits: {"smithy.api#required" => {}}))
    StartSpeakerEnrollmentJobInput.type = Types::StartSpeakerEnrollmentJobInput
    StartSpeakerEnrollmentJobOutput.add_member(:job, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SpeakerEnrollmentJob, location_name: 'Job'))
    StartSpeakerEnrollmentJobOutput.type = Types::StartSpeakerEnrollmentJobOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    UpdateDomainInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    UpdateDomainInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description'))
    UpdateDomainInput.add_member(:server_side_encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionConfiguration, location_name: 'ServerSideEncryptionConfiguration', traits: {"smithy.api#required" => {}}))
    UpdateDomainInput.type = Types::UpdateDomainInput
    UpdateDomainOutput.add_member(:domain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Domain, location_name: 'Domain'))
    UpdateDomainOutput.type = Types::UpdateDomainOutput
    UpdateWatchlistInput.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    UpdateWatchlistInput.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId', traits: {"smithy.api#required" => {}}))
    UpdateWatchlistInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistName, location_name: 'Name'))
    UpdateWatchlistInput.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDescription, location_name: 'Description'))
    UpdateWatchlistInput.type = Types::UpdateWatchlistInput
    UpdateWatchlistOutput.add_member(:watchlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Watchlist, location_name: 'Watchlist'))
    UpdateWatchlistOutput.type = Types::UpdateWatchlistOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    VoiceSpoofingRisk.add_member(:risk_score, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Score, location_name: 'RiskScore', traits: {"smithy.api#required" => {}}))
    VoiceSpoofingRisk.type = Types::VoiceSpoofingRisk
    Watchlist.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    Watchlist.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId'))
    Watchlist.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistName, location_name: 'Name'))
    Watchlist.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDescription, location_name: 'Description'))
    Watchlist.add_member(:default_watchlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultWatchlist', traits: {"smithy.api#default" => false}))
    Watchlist.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    Watchlist.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    Watchlist.type = Types::Watchlist
    WatchlistDetails.add_member(:default_watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'DefaultWatchlistId', traits: {"smithy.api#required" => {}}))
    WatchlistDetails.type = Types::WatchlistDetails
    WatchlistSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistSummary)
    WatchlistSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId'))
    WatchlistSummary.add_member(:watchlist_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistId, location_name: 'WatchlistId'))
    WatchlistSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistName, location_name: 'Name'))
    WatchlistSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: WatchlistDescription, location_name: 'Description'))
    WatchlistSummary.add_member(:default_watchlist, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DefaultWatchlist', traits: {"smithy.api#default" => false}))
    WatchlistSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt'))
    WatchlistSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt'))
    WatchlistSummary.type = Types::WatchlistSummary

    VoiceID = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.voiceid#VoiceID"
      service.name = "VoiceID"
      service.version = "2021-09-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Voice ID", "arnNamespace" => "voiceid", "cloudFormationName" => "VoiceID", "cloudTrailEventSource" => "voiceid.amazonaws.com", "endpointPrefix" => "voiceid"}, "aws.auth#sigv4" => {"name" => "voiceid"}, "aws.protocols#awsJson1_0" => {}, "smithy.api#title" => "Amazon Voice ID"}
      service.add_operation(:associate_fraudster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#AssociateFraudster"
        operation.name = "AssociateFraudster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFraudsterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFraudsterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_watchlist, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#CreateWatchlist"
        operation.name = "CreateWatchlist"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWatchlistInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateWatchlistOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_fraudster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DeleteFraudster"
        operation.name = "DeleteFraudster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFraudsterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_speaker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DeleteSpeaker"
        operation.name = "DeleteSpeaker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSpeakerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_watchlist, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DeleteWatchlist"
        operation.name = "DeleteWatchlist"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteWatchlistInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeDomain"
        operation.name = "DescribeDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
      end)
      service.add_operation(:describe_fraudster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeFraudster"
        operation.name = "DescribeFraudster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFraudsterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFraudsterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_fraudster_registration_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeFraudsterRegistrationJob"
        operation.name = "DescribeFraudsterRegistrationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFraudsterRegistrationJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFraudsterRegistrationJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_speaker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeSpeaker"
        operation.name = "DescribeSpeaker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpeakerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpeakerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_speaker_enrollment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeSpeakerEnrollmentJob"
        operation.name = "DescribeSpeakerEnrollmentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpeakerEnrollmentJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSpeakerEnrollmentJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_watchlist, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DescribeWatchlist"
        operation.name = "DescribeWatchlist"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWatchlistInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeWatchlistOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_fraudster, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#DisassociateFraudster"
        operation.name = "DisassociateFraudster"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFraudsterInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFraudsterOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:evaluate_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#EvaluateSession"
        operation.name = "EvaluateSession"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateSessionInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EvaluateSessionOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListDomains"
        operation.name = "ListDomains"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_fraudster_registration_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListFraudsterRegistrationJobs"
        operation.name = "ListFraudsterRegistrationJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFraudsterRegistrationJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFraudsterRegistrationJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFraudsterRegistrationJobs.new
      end)
      service.add_operation(:list_fraudsters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListFraudsters"
        operation.name = "ListFraudsters"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFraudstersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListFraudstersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListFraudsters.new
      end)
      service.add_operation(:list_speaker_enrollment_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListSpeakerEnrollmentJobs"
        operation.name = "ListSpeakerEnrollmentJobs"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeakerEnrollmentJobsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeakerEnrollmentJobsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSpeakerEnrollmentJobs.new
      end)
      service.add_operation(:list_speakers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListSpeakers"
        operation.name = "ListSpeakers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeakersInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSpeakersOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSpeakers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_watchlists, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#ListWatchlists"
        operation.name = "ListWatchlists"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWatchlistsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListWatchlistsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListWatchlists.new
      end)
      service.add_operation(:opt_out_speaker, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#OptOutSpeaker"
        operation.name = "OptOutSpeaker"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutSpeakerInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OptOutSpeakerOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:start_fraudster_registration_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#StartFraudsterRegistrationJob"
        operation.name = "StartFraudsterRegistrationJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFraudsterRegistrationJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartFraudsterRegistrationJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_speaker_enrollment_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#StartSpeakerEnrollmentJob"
        operation.name = "StartSpeakerEnrollmentJob"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeakerEnrollmentJobInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartSpeakerEnrollmentJobOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#UpdateDomain"
        operation.name = "UpdateDomain"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_watchlist, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.voiceid#UpdateWatchlist"
        operation.name = "UpdateWatchlist"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWatchlistInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateWatchlistOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
