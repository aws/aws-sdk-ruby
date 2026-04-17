# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ConnectHealth
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ActivateSubscriptionInput = Shapes::StructureShape.new(name: 'ActivateSubscriptionInput')
    ActivateSubscriptionOutput = Shapes::StructureShape.new(name: 'ActivateSubscriptionOutput')
    ArtifactDetails = Shapes::StructureShape.new(name: 'ArtifactDetails')
    AudioChunk = Shapes::BlobShape.new(name: 'AudioChunk')
    AudioOffset = Shapes::FloatShape.new(name: 'AudioOffset')
    ClinicalNoteGenerationResult = Shapes::StructureShape.new(name: 'ClinicalNoteGenerationResult')
    ClinicalNoteGenerationSettings = Shapes::StructureShape.new(name: 'ClinicalNoteGenerationSettings')
    ClinicalNoteGenerationSettingsResponse = Shapes::StructureShape.new(name: 'ClinicalNoteGenerationSettingsResponse')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateDomainInput = Shapes::StructureShape.new(name: 'CreateDomainInput')
    CreateDomainOutput = Shapes::StructureShape.new(name: 'CreateDomainOutput')
    CreateSubscriptionInput = Shapes::StructureShape.new(name: 'CreateSubscriptionInput')
    CreateSubscriptionOutput = Shapes::StructureShape.new(name: 'CreateSubscriptionOutput')
    CreateWebAppConfiguration = Shapes::StructureShape.new(name: 'CreateWebAppConfiguration')
    CreateWebAppConfigurationEhrRoleString = Shapes::StringShape.new(name: 'CreateWebAppConfigurationEhrRoleString')
    CreateWebAppConfigurationIdcInstanceIdString = Shapes::StringShape.new(name: 'CreateWebAppConfigurationIdcInstanceIdString')
    CreateWebAppConfigurationIdcRegionString = Shapes::StringShape.new(name: 'CreateWebAppConfigurationIdcRegionString')
    CustomTemplate = Shapes::StructureShape.new(name: 'CustomTemplate')
    CustomTemplateBase = Shapes::StringShape.new(name: 'CustomTemplateBase')
    CustomTemplateResponse = Shapes::StructureShape.new(name: 'CustomTemplateResponse')
    DeactivateSubscriptionInput = Shapes::StructureShape.new(name: 'DeactivateSubscriptionInput')
    DeactivateSubscriptionOutput = Shapes::StructureShape.new(name: 'DeactivateSubscriptionOutput')
    DeleteDomainInput = Shapes::StructureShape.new(name: 'DeleteDomainInput')
    DeleteDomainOutput = Shapes::StructureShape.new(name: 'DeleteDomainOutput')
    DomainArn = Shapes::StringShape.new(name: 'DomainArn')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    EncounterContext = Shapes::StructureShape.new(name: 'EncounterContext')
    EncryptionContext = Shapes::StructureShape.new(name: 'EncryptionContext')
    EncryptionType = Shapes::StringShape.new(name: 'EncryptionType')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FHIRServer = Shapes::StructureShape.new(name: 'FHIRServer')
    FHIRServerFhirEndpointString = Shapes::StringShape.new(name: 'FHIRServerFhirEndpointString')
    GetDomainInput = Shapes::StructureShape.new(name: 'GetDomainInput')
    GetDomainOutput = Shapes::StructureShape.new(name: 'GetDomainOutput')
    GetMedicalScribeListeningSessionInput = Shapes::StructureShape.new(name: 'GetMedicalScribeListeningSessionInput')
    GetMedicalScribeListeningSessionOutput = Shapes::StructureShape.new(name: 'GetMedicalScribeListeningSessionOutput')
    GetPatientInsightsJobRequest = Shapes::StructureShape.new(name: 'GetPatientInsightsJobRequest')
    GetPatientInsightsJobResponse = Shapes::StructureShape.new(name: 'GetPatientInsightsJobResponse')
    GetSubscriptionInput = Shapes::StructureShape.new(name: 'GetSubscriptionInput')
    GetSubscriptionOutput = Shapes::StructureShape.new(name: 'GetSubscriptionOutput')
    InputDataConfig = Shapes::StructureShape.new(name: 'InputDataConfig')
    InsightsContext = Shapes::StructureShape.new(name: 'InsightsContext')
    InsightsOutput = Shapes::StructureShape.new(name: 'InsightsOutput')
    InsightsType = Shapes::StringShape.new(name: 'InsightsType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    JobArn = Shapes::StringShape.new(name: 'JobArn')
    JobId = Shapes::StringShape.new(name: 'JobId')
    JobStatus = Shapes::StringShape.new(name: 'JobStatus')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListDomainsInput = Shapes::StructureShape.new(name: 'ListDomainsInput')
    ListDomainsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListDomainsInputMaxResultsInteger')
    ListDomainsOutput = Shapes::StructureShape.new(name: 'ListDomainsOutput')
    ListSubscriptionsInput = Shapes::StructureShape.new(name: 'ListSubscriptionsInput')
    ListSubscriptionsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSubscriptionsInputMaxResultsInteger')
    ListSubscriptionsOutput = Shapes::StructureShape.new(name: 'ListSubscriptionsOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    ManagedNoteTemplate = Shapes::StringShape.new(name: 'ManagedNoteTemplate')
    ManagedTemplate = Shapes::StructureShape.new(name: 'ManagedTemplate')
    ManagedTemplateResponse = Shapes::StructureShape.new(name: 'ManagedTemplateResponse')
    MedicalScribeAudioEvent = Shapes::StructureShape.new(name: 'MedicalScribeAudioEvent')
    MedicalScribeChannelDefinition = Shapes::StructureShape.new(name: 'MedicalScribeChannelDefinition')
    MedicalScribeChannelDefinitions = Shapes::ListShape.new(name: 'MedicalScribeChannelDefinitions')
    MedicalScribeChannelId = Shapes::IntegerShape.new(name: 'MedicalScribeChannelId')
    MedicalScribeConfigurationEvent = Shapes::StructureShape.new(name: 'MedicalScribeConfigurationEvent')
    MedicalScribeInputStream = Shapes::StructureShape.new(name: 'MedicalScribeInputStream')
    MedicalScribeLanguageCode = Shapes::StringShape.new(name: 'MedicalScribeLanguageCode')
    MedicalScribeListeningSessionDetails = Shapes::StructureShape.new(name: 'MedicalScribeListeningSessionDetails')
    MedicalScribeMediaEncoding = Shapes::StringShape.new(name: 'MedicalScribeMediaEncoding')
    MedicalScribeMediaSampleRateHertz = Shapes::IntegerShape.new(name: 'MedicalScribeMediaSampleRateHertz')
    MedicalScribeOutputStream = Shapes::StructureShape.new(name: 'MedicalScribeOutputStream')
    MedicalScribeParticipantRole = Shapes::StringShape.new(name: 'MedicalScribeParticipantRole')
    MedicalScribePostStreamActionSettings = Shapes::StructureShape.new(name: 'MedicalScribePostStreamActionSettings')
    MedicalScribePostStreamActionSettingsResponse = Shapes::StructureShape.new(name: 'MedicalScribePostStreamActionSettingsResponse')
    MedicalScribePostStreamActionsResult = Shapes::StructureShape.new(name: 'MedicalScribePostStreamActionsResult')
    MedicalScribeSessionControlEvent = Shapes::StructureShape.new(name: 'MedicalScribeSessionControlEvent')
    MedicalScribeSessionControlEventType = Shapes::StringShape.new(name: 'MedicalScribeSessionControlEventType')
    MedicalScribeStreamStatus = Shapes::StringShape.new(name: 'MedicalScribeStreamStatus')
    MedicalScribeTranscriptEvent = Shapes::StructureShape.new(name: 'MedicalScribeTranscriptEvent')
    MedicalScribeTranscriptSegment = Shapes::StructureShape.new(name: 'MedicalScribeTranscriptSegment')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonNullBoolean = Shapes::BooleanShape.new(name: 'NonNullBoolean')
    NoteTemplateSettings = Shapes::UnionShape.new(name: 'NoteTemplateSettings')
    NoteTemplateSettingsResponse = Shapes::UnionShape.new(name: 'NoteTemplateSettingsResponse')
    OutputDataConfig = Shapes::StructureShape.new(name: 'OutputDataConfig')
    PatientInsightsEncounterContext = Shapes::StructureShape.new(name: 'PatientInsightsEncounterContext')
    PatientInsightsEncounterContextEncounterReasonString = Shapes::StringShape.new(name: 'PatientInsightsEncounterContextEncounterReasonString')
    PatientInsightsPatientContext = Shapes::StructureShape.new(name: 'PatientInsightsPatientContext')
    PostStreamArtifactGenerationStatus = Shapes::StringShape.new(name: 'PostStreamArtifactGenerationStatus')
    Pronouns = Shapes::StringShape.new(name: 'Pronouns')
    ProviderRole = Shapes::StringShape.new(name: 'ProviderRole')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3Source = Shapes::StructureShape.new(name: 'S3Source')
    S3Sources = Shapes::ListShape.new(name: 'S3Sources')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SensitiveAlphanumericString = Shapes::StringShape.new(name: 'SensitiveAlphanumericString')
    SensitiveIsoDateString = Shapes::StringShape.new(name: 'SensitiveIsoDateString')
    SensitiveMarkdownString = Shapes::StringShape.new(name: 'SensitiveMarkdownString')
    SensitiveNonEmptyString = Shapes::StringShape.new(name: 'SensitiveNonEmptyString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SessionId = Shapes::StringShape.new(name: 'SessionId')
    Specialty = Shapes::StringShape.new(name: 'Specialty')
    StartMedicalScribeListeningSessionInput = Shapes::StructureShape.new(name: 'StartMedicalScribeListeningSessionInput')
    StartMedicalScribeListeningSessionOutput = Shapes::StructureShape.new(name: 'StartMedicalScribeListeningSessionOutput')
    StartPatientInsightsJobRequest = Shapes::StructureShape.new(name: 'StartPatientInsightsJobRequest')
    StartPatientInsightsJobResponse = Shapes::StructureShape.new(name: 'StartPatientInsightsJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubscriptionArn = Shapes::StringShape.new(name: 'SubscriptionArn')
    SubscriptionDescription = Shapes::StructureShape.new(name: 'SubscriptionDescription')
    SubscriptionId = Shapes::StringShape.new(name: 'SubscriptionId')
    SubscriptionList = Shapes::ListShape.new(name: 'SubscriptionList')
    SubscriptionStatus = Shapes::StringShape.new(name: 'SubscriptionStatus')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TemplateInstructions = Shapes::ListShape.new(name: 'TemplateInstructions')
    TemplateSectionInstruction = Shapes::StructureShape.new(name: 'TemplateSectionInstruction')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    Uri = Shapes::StringShape.new(name: 'Uri')
    UserContext = Shapes::StructureShape.new(name: 'UserContext')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    WebAppConfiguration = Shapes::StructureShape.new(name: 'WebAppConfiguration')
    WebAppConfigurationEhrRoleString = Shapes::StringShape.new(name: 'WebAppConfigurationEhrRoleString')
    WebAppConfigurationIdcApplicationIdString = Shapes::StringShape.new(name: 'WebAppConfigurationIdcApplicationIdString')
    WebAppConfigurationIdcRegionString = Shapes::StringShape.new(name: 'WebAppConfigurationIdcRegionString')
    WebAppUrl = Shapes::StringShape.new(name: 'WebAppUrl')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ActivateSubscriptionInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    ActivateSubscriptionInput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "subscriptionId"))
    ActivateSubscriptionInput.struct_class = Types::ActivateSubscriptionInput

    ActivateSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: SubscriptionDescription, location_name: "subscription"))
    ActivateSubscriptionOutput.struct_class = Types::ActivateSubscriptionOutput

    ArtifactDetails.add_member(:output_location, Shapes::ShapeRef.new(shape: Uri, location_name: "outputLocation"))
    ArtifactDetails.add_member(:status, Shapes::ShapeRef.new(shape: PostStreamArtifactGenerationStatus, location_name: "status"))
    ArtifactDetails.add_member(:failure_reason, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "failureReason"))
    ArtifactDetails.struct_class = Types::ArtifactDetails

    ClinicalNoteGenerationResult.add_member(:note_result, Shapes::ShapeRef.new(shape: ArtifactDetails, location_name: "noteResult"))
    ClinicalNoteGenerationResult.add_member(:transcript_result, Shapes::ShapeRef.new(shape: ArtifactDetails, location_name: "transcriptResult"))
    ClinicalNoteGenerationResult.add_member(:after_visit_summary_result, Shapes::ShapeRef.new(shape: ArtifactDetails, location_name: "afterVisitSummaryResult"))
    ClinicalNoteGenerationResult.struct_class = Types::ClinicalNoteGenerationResult

    ClinicalNoteGenerationSettings.add_member(:note_template_settings, Shapes::ShapeRef.new(shape: NoteTemplateSettings, required: true, location_name: "noteTemplateSettings"))
    ClinicalNoteGenerationSettings.struct_class = Types::ClinicalNoteGenerationSettings

    ClinicalNoteGenerationSettingsResponse.add_member(:note_template_settings, Shapes::ShapeRef.new(shape: NoteTemplateSettingsResponse, location_name: "noteTemplateSettings"))
    ClinicalNoteGenerationSettingsResponse.struct_class = Types::ClinicalNoteGenerationSettingsResponse

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateDomainInput.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    CreateDomainInput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateDomainInput.add_member(:web_app_setup_configuration, Shapes::ShapeRef.new(shape: CreateWebAppConfiguration, location_name: "webAppSetupConfiguration"))
    CreateDomainInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDomainInput.struct_class = Types::CreateDomainInput

    CreateDomainOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateDomainOutput.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "arn"))
    CreateDomainOutput.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    CreateDomainOutput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    CreateDomainOutput.add_member(:encryption_context, Shapes::ShapeRef.new(shape: EncryptionContext, location_name: "encryptionContext"))
    CreateDomainOutput.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    CreateDomainOutput.add_member(:web_app_url, Shapes::ShapeRef.new(shape: WebAppUrl, location_name: "webAppUrl"))
    CreateDomainOutput.add_member(:web_app_configuration, Shapes::ShapeRef.new(shape: WebAppConfiguration, location_name: "webAppConfiguration"))
    CreateDomainOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateDomainOutput.struct_class = Types::CreateDomainOutput

    CreateSubscriptionInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    CreateSubscriptionInput.struct_class = Types::CreateSubscriptionInput

    CreateSubscriptionOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    CreateSubscriptionOutput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location_name: "subscriptionId"))
    CreateSubscriptionOutput.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    CreateSubscriptionOutput.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionStatus, required: true, location_name: "status"))
    CreateSubscriptionOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    CreateSubscriptionOutput.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    CreateSubscriptionOutput.add_member(:activated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "activatedAt"))
    CreateSubscriptionOutput.add_member(:deactivated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "deactivatedAt"))
    CreateSubscriptionOutput.struct_class = Types::CreateSubscriptionOutput

    CreateWebAppConfiguration.add_member(:ehr_role, Shapes::ShapeRef.new(shape: CreateWebAppConfigurationEhrRoleString, required: true, location_name: "ehrRole"))
    CreateWebAppConfiguration.add_member(:idc_instance_id, Shapes::ShapeRef.new(shape: CreateWebAppConfigurationIdcInstanceIdString, required: true, location_name: "idcInstanceId"))
    CreateWebAppConfiguration.add_member(:idc_region, Shapes::ShapeRef.new(shape: CreateWebAppConfigurationIdcRegionString, required: true, location_name: "idcRegion"))
    CreateWebAppConfiguration.struct_class = Types::CreateWebAppConfiguration

    CustomTemplate.add_member(:template_type, Shapes::ShapeRef.new(shape: CustomTemplateBase, required: true, location_name: "templateType"))
    CustomTemplate.add_member(:template_instructions, Shapes::ShapeRef.new(shape: TemplateInstructions, required: true, location_name: "templateInstructions"))
    CustomTemplate.struct_class = Types::CustomTemplate

    CustomTemplateResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: CustomTemplateBase, location_name: "templateType"))
    CustomTemplateResponse.struct_class = Types::CustomTemplateResponse

    DeactivateSubscriptionInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    DeactivateSubscriptionInput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "subscriptionId"))
    DeactivateSubscriptionInput.struct_class = Types::DeactivateSubscriptionInput

    DeactivateSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: SubscriptionDescription, location_name: "subscription"))
    DeactivateSubscriptionOutput.struct_class = Types::DeactivateSubscriptionOutput

    DeleteDomainInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    DeleteDomainInput.struct_class = Types::DeleteDomainInput

    DeleteDomainOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DeleteDomainOutput.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "arn"))
    DeleteDomainOutput.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    DeleteDomainOutput.struct_class = Types::DeleteDomainOutput

    DomainSummary.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    DomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "arn"))
    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    DomainSummary.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    DomainSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    EncounterContext.add_member(:unstructured_context, Shapes::ShapeRef.new(shape: SensitiveMarkdownString, location_name: "unstructuredContext"))
    EncounterContext.struct_class = Types::EncounterContext

    EncryptionContext.add_member(:encryption_type, Shapes::ShapeRef.new(shape: EncryptionType, required: true, location_name: "encryptionType"))
    EncryptionContext.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    EncryptionContext.struct_class = Types::EncryptionContext

    FHIRServer.add_member(:fhir_endpoint, Shapes::ShapeRef.new(shape: FHIRServerFhirEndpointString, required: true, location_name: "fhirEndpoint"))
    FHIRServer.add_member(:oauth_token, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, location_name: "oauthToken"))
    FHIRServer.struct_class = Types::FHIRServer

    GetDomainInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetDomainInput.struct_class = Types::GetDomainInput

    GetDomainOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    GetDomainOutput.add_member(:arn, Shapes::ShapeRef.new(shape: DomainArn, required: true, location_name: "arn"))
    GetDomainOutput.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "name"))
    GetDomainOutput.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "kmsKeyArn"))
    GetDomainOutput.add_member(:encryption_context, Shapes::ShapeRef.new(shape: EncryptionContext, location_name: "encryptionContext"))
    GetDomainOutput.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, required: true, location_name: "status"))
    GetDomainOutput.add_member(:web_app_url, Shapes::ShapeRef.new(shape: WebAppUrl, location_name: "webAppUrl"))
    GetDomainOutput.add_member(:web_app_configuration, Shapes::ShapeRef.new(shape: WebAppConfiguration, location_name: "webAppConfiguration"))
    GetDomainOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    GetDomainOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetDomainOutput.struct_class = Types::GetDomainOutput

    GetMedicalScribeListeningSessionInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "uri", location_name: "sessionId"))
    GetMedicalScribeListeningSessionInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetMedicalScribeListeningSessionInput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "subscriptionId"))
    GetMedicalScribeListeningSessionInput.struct_class = Types::GetMedicalScribeListeningSessionInput

    GetMedicalScribeListeningSessionOutput.add_member(:medical_scribe_listening_session_details, Shapes::ShapeRef.new(shape: MedicalScribeListeningSessionDetails, location_name: "medicalScribeListeningSessionDetails"))
    GetMedicalScribeListeningSessionOutput.struct_class = Types::GetMedicalScribeListeningSessionOutput

    GetPatientInsightsJobRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetPatientInsightsJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location: "uri", location_name: "jobId"))
    GetPatientInsightsJobRequest.struct_class = Types::GetPatientInsightsJobRequest

    GetPatientInsightsJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    GetPatientInsightsJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "jobArn"))
    GetPatientInsightsJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: JobStatus, required: true, location_name: "jobStatus"))
    GetPatientInsightsJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "creationTime"))
    GetPatientInsightsJobResponse.add_member(:updated_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedTime"))
    GetPatientInsightsJobResponse.add_member(:insights_output, Shapes::ShapeRef.new(shape: InsightsOutput, location_name: "insightsOutput"))
    GetPatientInsightsJobResponse.add_member(:status_details, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "statusDetails"))
    GetPatientInsightsJobResponse.add_member(:patient_context, Shapes::ShapeRef.new(shape: PatientInsightsPatientContext, required: true, location_name: "patientContext"))
    GetPatientInsightsJobResponse.add_member(:insights_context, Shapes::ShapeRef.new(shape: InsightsContext, required: true, location_name: "insightsContext"))
    GetPatientInsightsJobResponse.add_member(:encounter_context, Shapes::ShapeRef.new(shape: PatientInsightsEncounterContext, required: true, location_name: "encounterContext"))
    GetPatientInsightsJobResponse.add_member(:user_context, Shapes::ShapeRef.new(shape: UserContext, required: true, location_name: "userContext"))
    GetPatientInsightsJobResponse.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "inputDataConfig"))
    GetPatientInsightsJobResponse.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    GetPatientInsightsJobResponse.struct_class = Types::GetPatientInsightsJobResponse

    GetSubscriptionInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    GetSubscriptionInput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "uri", location_name: "subscriptionId"))
    GetSubscriptionInput.struct_class = Types::GetSubscriptionInput

    GetSubscriptionOutput.add_member(:subscription, Shapes::ShapeRef.new(shape: SubscriptionDescription, location_name: "subscription"))
    GetSubscriptionOutput.struct_class = Types::GetSubscriptionOutput

    InputDataConfig.add_member(:fhir_server, Shapes::ShapeRef.new(shape: FHIRServer, location_name: "fhirServer"))
    InputDataConfig.add_member(:s3_sources, Shapes::ShapeRef.new(shape: S3Sources, location_name: "s3Sources"))
    InputDataConfig.struct_class = Types::InputDataConfig

    InsightsContext.add_member(:insights_type, Shapes::ShapeRef.new(shape: InsightsType, required: true, location_name: "insightsType"))
    InsightsContext.struct_class = Types::InsightsContext

    InsightsOutput.add_member(:uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "uri"))
    InsightsOutput.struct_class = Types::InsightsOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDomainsInput.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, location: "querystring", location_name: "status"))
    ListDomainsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDomainsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListDomainsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListDomainsInput.struct_class = Types::ListDomainsInput

    ListDomainsOutput.add_member(:domains, Shapes::ShapeRef.new(shape: DomainSummaryList, required: true, location_name: "domains"))
    ListDomainsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListDomainsOutput.struct_class = Types::ListDomainsOutput

    ListSubscriptionsInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    ListSubscriptionsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSubscriptionsInputMaxResultsInteger, location: "querystring", location_name: "maxResults"))
    ListSubscriptionsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSubscriptionsInput.struct_class = Types::ListSubscriptionsInput

    ListSubscriptionsOutput.add_member(:subscriptions, Shapes::ShapeRef.new(shape: SubscriptionList, required: true, location_name: "subscriptions"))
    ListSubscriptionsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSubscriptionsOutput.struct_class = Types::ListSubscriptionsOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    ManagedTemplate.add_member(:template_type, Shapes::ShapeRef.new(shape: ManagedNoteTemplate, required: true, location_name: "templateType"))
    ManagedTemplate.struct_class = Types::ManagedTemplate

    ManagedTemplateResponse.add_member(:template_type, Shapes::ShapeRef.new(shape: ManagedNoteTemplate, location_name: "templateType"))
    ManagedTemplateResponse.struct_class = Types::ManagedTemplateResponse

    MedicalScribeAudioEvent.add_member(:audio_chunk, Shapes::ShapeRef.new(shape: AudioChunk, required: true, location_name: "audioChunk"))
    MedicalScribeAudioEvent.struct_class = Types::MedicalScribeAudioEvent

    MedicalScribeChannelDefinition.add_member(:channel_id, Shapes::ShapeRef.new(shape: MedicalScribeChannelId, required: true, location_name: "channelId"))
    MedicalScribeChannelDefinition.add_member(:participant_role, Shapes::ShapeRef.new(shape: MedicalScribeParticipantRole, required: true, location_name: "participantRole"))
    MedicalScribeChannelDefinition.struct_class = Types::MedicalScribeChannelDefinition

    MedicalScribeChannelDefinitions.member = Shapes::ShapeRef.new(shape: MedicalScribeChannelDefinition)

    MedicalScribeConfigurationEvent.add_member(:post_stream_action_settings, Shapes::ShapeRef.new(shape: MedicalScribePostStreamActionSettings, required: true, location_name: "postStreamActionSettings"))
    MedicalScribeConfigurationEvent.add_member(:channel_definitions, Shapes::ShapeRef.new(shape: MedicalScribeChannelDefinitions, location_name: "channelDefinitions"))
    MedicalScribeConfigurationEvent.add_member(:encounter_context, Shapes::ShapeRef.new(shape: EncounterContext, location_name: "encounterContext"))
    MedicalScribeConfigurationEvent.struct_class = Types::MedicalScribeConfigurationEvent

    MedicalScribeInputStream.add_member(:audio_event, Shapes::ShapeRef.new(shape: MedicalScribeAudioEvent, event: true, location_name: "audioEvent"))
    MedicalScribeInputStream.add_member(:session_control_event, Shapes::ShapeRef.new(shape: MedicalScribeSessionControlEvent, event: true, location_name: "sessionControlEvent"))
    MedicalScribeInputStream.add_member(:configuration_event, Shapes::ShapeRef.new(shape: MedicalScribeConfigurationEvent, event: true, location_name: "configurationEvent"))
    MedicalScribeInputStream.struct_class = Types::MedicalScribeInputStream

    MedicalScribeListeningSessionDetails.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location_name: "sessionId"))
    MedicalScribeListeningSessionDetails.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location_name: "domainId"))
    MedicalScribeListeningSessionDetails.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location_name: "subscriptionId"))
    MedicalScribeListeningSessionDetails.add_member(:language_code, Shapes::ShapeRef.new(shape: MedicalScribeLanguageCode, location_name: "languageCode"))
    MedicalScribeListeningSessionDetails.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MedicalScribeMediaSampleRateHertz, location_name: "mediaSampleRateHertz"))
    MedicalScribeListeningSessionDetails.add_member(:media_encoding, Shapes::ShapeRef.new(shape: MedicalScribeMediaEncoding, location_name: "mediaEncoding"))
    MedicalScribeListeningSessionDetails.add_member(:channel_definitions, Shapes::ShapeRef.new(shape: MedicalScribeChannelDefinitions, location_name: "channelDefinitions"))
    MedicalScribeListeningSessionDetails.add_member(:post_stream_action_settings, Shapes::ShapeRef.new(shape: MedicalScribePostStreamActionSettingsResponse, location_name: "postStreamActionSettings"))
    MedicalScribeListeningSessionDetails.add_member(:post_stream_action_result, Shapes::ShapeRef.new(shape: MedicalScribePostStreamActionsResult, location_name: "postStreamActionResult"))
    MedicalScribeListeningSessionDetails.add_member(:encounter_context_provided, Shapes::ShapeRef.new(shape: NonNullBoolean, location_name: "encounterContextProvided"))
    MedicalScribeListeningSessionDetails.add_member(:stream_status, Shapes::ShapeRef.new(shape: MedicalScribeStreamStatus, location_name: "streamStatus"))
    MedicalScribeListeningSessionDetails.add_member(:stream_creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "streamCreationTime"))
    MedicalScribeListeningSessionDetails.add_member(:stream_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "streamEndTime"))
    MedicalScribeListeningSessionDetails.struct_class = Types::MedicalScribeListeningSessionDetails

    MedicalScribeOutputStream.add_member(:transcript_event, Shapes::ShapeRef.new(shape: MedicalScribeTranscriptEvent, event: true, location_name: "transcriptEvent"))
    MedicalScribeOutputStream.add_member(:internal_failure_exception, Shapes::ShapeRef.new(shape: InternalServerException, event: true, location_name: "internalFailureException"))
    MedicalScribeOutputStream.add_member(:validation_exception, Shapes::ShapeRef.new(shape: ValidationException, event: true, location_name: "validationException"))
    MedicalScribeOutputStream.struct_class = Types::MedicalScribeOutputStream

    MedicalScribePostStreamActionSettings.add_member(:output_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "outputS3Uri"))
    MedicalScribePostStreamActionSettings.add_member(:clinical_note_generation_settings, Shapes::ShapeRef.new(shape: ClinicalNoteGenerationSettings, required: true, location_name: "clinicalNoteGenerationSettings"))
    MedicalScribePostStreamActionSettings.struct_class = Types::MedicalScribePostStreamActionSettings

    MedicalScribePostStreamActionSettingsResponse.add_member(:output_s3_uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "outputS3Uri"))
    MedicalScribePostStreamActionSettingsResponse.add_member(:clinical_note_generation_settings, Shapes::ShapeRef.new(shape: ClinicalNoteGenerationSettingsResponse, required: true, location_name: "clinicalNoteGenerationSettings"))
    MedicalScribePostStreamActionSettingsResponse.struct_class = Types::MedicalScribePostStreamActionSettingsResponse

    MedicalScribePostStreamActionsResult.add_member(:clinical_note_generation_result, Shapes::ShapeRef.new(shape: ClinicalNoteGenerationResult, location_name: "clinicalNoteGenerationResult"))
    MedicalScribePostStreamActionsResult.struct_class = Types::MedicalScribePostStreamActionsResult

    MedicalScribeSessionControlEvent.add_member(:type, Shapes::ShapeRef.new(shape: MedicalScribeSessionControlEventType, location_name: "type"))
    MedicalScribeSessionControlEvent.struct_class = Types::MedicalScribeSessionControlEvent

    MedicalScribeTranscriptEvent.add_member(:transcript_segment, Shapes::ShapeRef.new(shape: MedicalScribeTranscriptSegment, location_name: "transcriptSegment"))
    MedicalScribeTranscriptEvent.struct_class = Types::MedicalScribeTranscriptEvent

    MedicalScribeTranscriptSegment.add_member(:segment_id, Shapes::ShapeRef.new(shape: String, location_name: "segmentId"))
    MedicalScribeTranscriptSegment.add_member(:audio_begin_offset, Shapes::ShapeRef.new(shape: AudioOffset, location_name: "audioBeginOffset"))
    MedicalScribeTranscriptSegment.add_member(:audio_end_offset, Shapes::ShapeRef.new(shape: AudioOffset, location_name: "audioEndOffset"))
    MedicalScribeTranscriptSegment.add_member(:is_partial, Shapes::ShapeRef.new(shape: NonNullBoolean, location_name: "isPartial"))
    MedicalScribeTranscriptSegment.add_member(:channel_id, Shapes::ShapeRef.new(shape: String, location_name: "channelId"))
    MedicalScribeTranscriptSegment.add_member(:content, Shapes::ShapeRef.new(shape: String, location_name: "content"))
    MedicalScribeTranscriptSegment.struct_class = Types::MedicalScribeTranscriptSegment

    NoteTemplateSettings.add_member(:managed_template, Shapes::ShapeRef.new(shape: ManagedTemplate, location_name: "managedTemplate"))
    NoteTemplateSettings.add_member(:custom_template, Shapes::ShapeRef.new(shape: CustomTemplate, location_name: "customTemplate"))
    NoteTemplateSettings.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NoteTemplateSettings.add_member_subclass(:managed_template, Types::NoteTemplateSettings::ManagedTemplate)
    NoteTemplateSettings.add_member_subclass(:custom_template, Types::NoteTemplateSettings::CustomTemplate)
    NoteTemplateSettings.add_member_subclass(:unknown, Types::NoteTemplateSettings::Unknown)
    NoteTemplateSettings.struct_class = Types::NoteTemplateSettings

    NoteTemplateSettingsResponse.add_member(:managed_template, Shapes::ShapeRef.new(shape: ManagedTemplateResponse, location_name: "managedTemplate"))
    NoteTemplateSettingsResponse.add_member(:custom_template, Shapes::ShapeRef.new(shape: CustomTemplateResponse, location_name: "customTemplate"))
    NoteTemplateSettingsResponse.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NoteTemplateSettingsResponse.add_member_subclass(:managed_template, Types::NoteTemplateSettingsResponse::ManagedTemplate)
    NoteTemplateSettingsResponse.add_member_subclass(:custom_template, Types::NoteTemplateSettingsResponse::CustomTemplate)
    NoteTemplateSettingsResponse.add_member_subclass(:unknown, Types::NoteTemplateSettingsResponse::Unknown)
    NoteTemplateSettingsResponse.struct_class = Types::NoteTemplateSettingsResponse

    OutputDataConfig.add_member(:s3_output_path, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "s3OutputPath"))
    OutputDataConfig.struct_class = Types::OutputDataConfig

    PatientInsightsEncounterContext.add_member(:encounter_reason, Shapes::ShapeRef.new(shape: PatientInsightsEncounterContextEncounterReasonString, required: true, location_name: "encounterReason"))
    PatientInsightsEncounterContext.struct_class = Types::PatientInsightsEncounterContext

    PatientInsightsPatientContext.add_member(:patient_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "patientId"))
    PatientInsightsPatientContext.add_member(:date_of_birth, Shapes::ShapeRef.new(shape: SensitiveIsoDateString, location_name: "dateOfBirth"))
    PatientInsightsPatientContext.add_member(:pronouns, Shapes::ShapeRef.new(shape: Pronouns, location_name: "pronouns"))
    PatientInsightsPatientContext.struct_class = Types::PatientInsightsPatientContext

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3Source.add_member(:uri, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "uri"))
    S3Source.struct_class = Types::S3Source

    S3Sources.member = Shapes::ShapeRef.new(shape: S3Source)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartMedicalScribeListeningSessionInput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, required: true, location: "header", location_name: "x-amzn-medscribe-session-id"))
    StartMedicalScribeListeningSessionInput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "header", location_name: "x-amzn-medscribe-domain-id"))
    StartMedicalScribeListeningSessionInput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location: "header", location_name: "x-amzn-medscribe-subscription-id"))
    StartMedicalScribeListeningSessionInput.add_member(:language_code, Shapes::ShapeRef.new(shape: MedicalScribeLanguageCode, required: true, location: "header", location_name: "x-amzn-medscribe-language-code"))
    StartMedicalScribeListeningSessionInput.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MedicalScribeMediaSampleRateHertz, required: true, location: "header", location_name: "x-amzn-medscribe-sample-rate"))
    StartMedicalScribeListeningSessionInput.add_member(:media_encoding, Shapes::ShapeRef.new(shape: MedicalScribeMediaEncoding, required: true, location: "header", location_name: "x-amzn-medscribe-media-encoding"))
    StartMedicalScribeListeningSessionInput.add_member(:input_stream, Shapes::ShapeRef.new(shape: MedicalScribeInputStream, eventstream: true, location_name: "inputStream"))
    StartMedicalScribeListeningSessionInput.struct_class = Types::StartMedicalScribeListeningSessionInput
    StartMedicalScribeListeningSessionInput[:payload] = :input_stream
    StartMedicalScribeListeningSessionInput[:payload_member] = StartMedicalScribeListeningSessionInput.member(:input_stream)

    StartMedicalScribeListeningSessionOutput.add_member(:session_id, Shapes::ShapeRef.new(shape: SessionId, location: "header", location_name: "x-amzn-medscribe-session-id"))
    StartMedicalScribeListeningSessionOutput.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, location: "header", location_name: "x-amzn-medscribe-domain-id"))
    StartMedicalScribeListeningSessionOutput.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, location: "header", location_name: "x-amzn-medscribe-subscription-id"))
    StartMedicalScribeListeningSessionOutput.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location: "header", location_name: "x-amzn-request-id"))
    StartMedicalScribeListeningSessionOutput.add_member(:language_code, Shapes::ShapeRef.new(shape: MedicalScribeLanguageCode, location: "header", location_name: "x-amzn-medscribe-language-code"))
    StartMedicalScribeListeningSessionOutput.add_member(:media_sample_rate_hertz, Shapes::ShapeRef.new(shape: MedicalScribeMediaSampleRateHertz, location: "header", location_name: "x-amzn-medscribe-sample-rate"))
    StartMedicalScribeListeningSessionOutput.add_member(:media_encoding, Shapes::ShapeRef.new(shape: MedicalScribeMediaEncoding, location: "header", location_name: "x-amzn-medscribe-media-encoding"))
    StartMedicalScribeListeningSessionOutput.add_member(:response_stream, Shapes::ShapeRef.new(shape: MedicalScribeOutputStream, eventstream: true, location_name: "responseStream"))
    StartMedicalScribeListeningSessionOutput.struct_class = Types::StartMedicalScribeListeningSessionOutput
    StartMedicalScribeListeningSessionOutput[:payload] = :response_stream
    StartMedicalScribeListeningSessionOutput[:payload_member] = StartMedicalScribeListeningSessionOutput.member(:response_stream)

    StartPatientInsightsJobRequest.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location: "uri", location_name: "domainId"))
    StartPatientInsightsJobRequest.add_member(:patient_context, Shapes::ShapeRef.new(shape: PatientInsightsPatientContext, required: true, location_name: "patientContext"))
    StartPatientInsightsJobRequest.add_member(:insights_context, Shapes::ShapeRef.new(shape: InsightsContext, required: true, location_name: "insightsContext"))
    StartPatientInsightsJobRequest.add_member(:encounter_context, Shapes::ShapeRef.new(shape: PatientInsightsEncounterContext, required: true, location_name: "encounterContext"))
    StartPatientInsightsJobRequest.add_member(:user_context, Shapes::ShapeRef.new(shape: UserContext, required: true, location_name: "userContext"))
    StartPatientInsightsJobRequest.add_member(:input_data_config, Shapes::ShapeRef.new(shape: InputDataConfig, required: true, location_name: "inputDataConfig"))
    StartPatientInsightsJobRequest.add_member(:output_data_config, Shapes::ShapeRef.new(shape: OutputDataConfig, required: true, location_name: "outputDataConfig"))
    StartPatientInsightsJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartPatientInsightsJobRequest.struct_class = Types::StartPatientInsightsJobRequest

    StartPatientInsightsJobResponse.add_member(:job_arn, Shapes::ShapeRef.new(shape: JobArn, required: true, location_name: "jobArn"))
    StartPatientInsightsJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: JobId, required: true, location_name: "jobId"))
    StartPatientInsightsJobResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "creationTime"))
    StartPatientInsightsJobResponse.struct_class = Types::StartPatientInsightsJobResponse

    SubscriptionDescription.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "domainId"))
    SubscriptionDescription.add_member(:subscription_id, Shapes::ShapeRef.new(shape: SubscriptionId, required: true, location_name: "subscriptionId"))
    SubscriptionDescription.add_member(:arn, Shapes::ShapeRef.new(shape: SubscriptionArn, required: true, location_name: "arn"))
    SubscriptionDescription.add_member(:status, Shapes::ShapeRef.new(shape: SubscriptionStatus, required: true, location_name: "status"))
    SubscriptionDescription.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "createdAt"))
    SubscriptionDescription.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdatedAt"))
    SubscriptionDescription.add_member(:activated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "activatedAt"))
    SubscriptionDescription.add_member(:deactivated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "deactivatedAt"))
    SubscriptionDescription.struct_class = Types::SubscriptionDescription

    SubscriptionList.member = Shapes::ShapeRef.new(shape: SubscriptionDescription)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TemplateInstructions.member = Shapes::ShapeRef.new(shape: TemplateSectionInstruction)

    TemplateSectionInstruction.add_member(:section_header, Shapes::ShapeRef.new(shape: SensitiveAlphanumericString, required: true, location_name: "sectionHeader"))
    TemplateSectionInstruction.add_member(:section_instruction, Shapes::ShapeRef.new(shape: SensitiveMarkdownString, required: true, location_name: "sectionInstruction"))
    TemplateSectionInstruction.struct_class = Types::TemplateSectionInstruction

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UserContext.add_member(:role, Shapes::ShapeRef.new(shape: ProviderRole, required: true, location_name: "role"))
    UserContext.add_member(:user_id, Shapes::ShapeRef.new(shape: SensitiveNonEmptyString, required: true, location_name: "userId"))
    UserContext.add_member(:specialty, Shapes::ShapeRef.new(shape: Specialty, location_name: "specialty"))
    UserContext.struct_class = Types::UserContext

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WebAppConfiguration.add_member(:ehr_role, Shapes::ShapeRef.new(shape: WebAppConfigurationEhrRoleString, required: true, location_name: "ehrRole"))
    WebAppConfiguration.add_member(:idc_application_id, Shapes::ShapeRef.new(shape: WebAppConfigurationIdcApplicationIdString, required: true, location_name: "idcApplicationId"))
    WebAppConfiguration.add_member(:idc_region, Shapes::ShapeRef.new(shape: WebAppConfigurationIdcRegionString, required: true, location_name: "idcRegion"))
    WebAppConfiguration.struct_class = Types::WebAppConfiguration


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2025-01-29"

      api.metadata = {
        "apiVersion" => "2025-01-29",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "health-agent",
        "protocol" => "rest-json",
        "protocolSettings" => {"h2" => "eventstream"},
        "protocols" => ["rest-json"],
        "serviceFullName" => "Connect Health",
        "serviceId" => "ConnectHealth",
        "signatureVersion" => "v4",
        "signingName" => "health-agent",
        "uid" => "connecthealth-2025-01-29",
      }

      api.add_operation(:activate_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ActivateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/subscriptions/{subscriptionId}/activate"
        o.input = Shapes::ShapeRef.new(shape: ActivateSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: ActivateSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/domain"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:deactivate_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeactivateSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{domainId}/subscriptions/{subscriptionId}/deactivate"
        o.input = Shapes::ShapeRef.new(shape: DeactivateSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: DeactivateSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/domain/{domainId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomain"
        o.http_method = "GET"
        o.http_request_uri = "/domain/{domainId}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainInput)
        o.output = Shapes::ShapeRef.new(shape: GetDomainOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_medical_scribe_listening_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMedicalScribeListeningSession"
        o.http_method = "GET"
        o.http_request_uri = "/medical-scribe-stream/domain/{domainId}/subscription/{subscriptionId}/session/{sessionId}"
        o.endpoint_pattern = {
          "hostPrefix" => "streaming.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetMedicalScribeListeningSessionInput)
        o.output = Shapes::ShapeRef.new(shape: GetMedicalScribeListeningSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:get_patient_insights_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPatientInsightsJob"
        o.http_method = "GET"
        o.http_request_uri = "/domain/{domainId}/patient-insights-job/{jobId}"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime.",
        }
        o.input = Shapes::ShapeRef.new(shape: GetPatientInsightsJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPatientInsightsJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscription"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{domainId}/subscriptions/{subscriptionId}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriptionInput)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriptionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "GET"
        o.http_request_uri = "/domain"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsOutput)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subscriptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscriptions"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{domainId}/subscriptions"
        o.input = Shapes::ShapeRef.new(shape: ListSubscriptionsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSubscriptionsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
      end)

      api.add_operation(:start_medical_scribe_listening_session, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartMedicalScribeListeningSession"
        o.http_method = "POST"
        o.http_request_uri = "/medical-scribe-stream/"
        o.endpoint_pattern = {
          "hostPrefix" => "streaming.",
        }
        o.input = Shapes::ShapeRef.new(shape: StartMedicalScribeListeningSessionInput)
        o.output = Shapes::ShapeRef.new(shape: StartMedicalScribeListeningSessionOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.async = true
      end)

      api.add_operation(:start_patient_insights_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartPatientInsightsJob"
        o.http_method = "POST"
        o.http_request_uri = "/domain/{domainId}/patient-insights-job"
        o.endpoint_pattern = {
          "hostPrefix" => "runtime.",
        }
        o.input = Shapes::ShapeRef.new(shape: StartPatientInsightsJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartPatientInsightsJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)
    end

  end
end
