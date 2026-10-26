# frozen_string_literal: true

# This is generated code!

module Aws::ConnectHealth
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    ActivateSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ActivateSubscriptionInput", name: "ActivateSubscriptionInput")
    ActivateSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ActivateSubscriptionOutput", name: "ActivateSubscriptionOutput")
    ArtifactDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ArtifactDetails", name: "ArtifactDetails")
    AudioChunk = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.connecthealth#AudioChunk", name: "AudioChunk")
    AudioOffset = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.connecthealth#AudioOffset", name: "AudioOffset")
    ClinicalNoteGenerationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ClinicalNoteGenerationResult", name: "ClinicalNoteGenerationResult")
    ClinicalNoteGenerationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ClinicalNoteGenerationSettings", name: "ClinicalNoteGenerationSettings")
    ClinicalNoteGenerationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ClinicalNoteGenerationSettingsResponse", name: "ClinicalNoteGenerationSettingsResponse")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#CreateDomainInput", name: "CreateDomainInput")
    CreateDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#CreateDomainOutput", name: "CreateDomainOutput")
    CreateSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#CreateSubscriptionInput", name: "CreateSubscriptionInput")
    CreateSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#CreateSubscriptionOutput", name: "CreateSubscriptionOutput")
    CreateWebAppConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#CreateWebAppConfiguration", name: "CreateWebAppConfiguration")
    CustomTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#CustomTemplate", name: "CustomTemplate")
    CustomTemplateBase = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#CustomTemplateBase", name: "CustomTemplateBase")
    CustomTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#CustomTemplateResponse", name: "CustomTemplateResponse")
    DeactivateSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#DeactivateSubscriptionInput", name: "DeactivateSubscriptionInput")
    DeactivateSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#DeactivateSubscriptionOutput", name: "DeactivateSubscriptionOutput")
    DeleteDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#DeleteDomainInput", name: "DeleteDomainInput")
    DeleteDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#DeleteDomainOutput", name: "DeleteDomainOutput")
    DomainArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#DomainArn", name: "DomainArn", traits: {"smithy.api#pattern" => "^arn:aws:health-agent:[a-z0-9-]+:[0-9]{12}:domain/(hai-|dom-)[a-z0-9]+$"})
    DomainId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#DomainId", name: "DomainId", traits: {"aws.api#arnReference" => {"type" => "AWS::HealthAgent::Domain"}, "smithy.api#length" => {"min" => 20, "max" => 25}, "smithy.api#pattern" => "^(hai-|dom-)[a-z0-9]+$"})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#DomainStatus", name: "DomainStatus")
    DomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#DomainSummary", name: "DomainSummary")
    DomainSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connecthealth#DomainSummaryList", name: "DomainSummaryList")
    EncounterContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#EncounterContext", name: "EncounterContext")
    EncryptionContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#EncryptionContext", name: "EncryptionContext")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#EncryptionType", name: "EncryptionType")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    FHIRServer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#FHIRServer", name: "FHIRServer")
    GetDomainInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#GetDomainInput", name: "GetDomainInput")
    GetDomainOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#GetDomainOutput", name: "GetDomainOutput")
    GetMedicalScribeListeningSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#GetMedicalScribeListeningSessionInput", name: "GetMedicalScribeListeningSessionInput")
    GetMedicalScribeListeningSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#GetMedicalScribeListeningSessionOutput", name: "GetMedicalScribeListeningSessionOutput")
    GetPatientInsightsJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#GetPatientInsightsJobRequest", name: "GetPatientInsightsJobRequest")
    GetPatientInsightsJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#GetPatientInsightsJobResponse", name: "GetPatientInsightsJobResponse")
    GetSubscriptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#GetSubscriptionInput", name: "GetSubscriptionInput")
    GetSubscriptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#GetSubscriptionOutput", name: "GetSubscriptionOutput")
    InputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#InputDataConfig", name: "InputDataConfig")
    InsightsContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#InsightsContext", name: "InsightsContext")
    InsightsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#InsightsOutput", name: "InsightsOutput")
    InsightsType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#InsightsType", name: "InsightsType")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    JobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#JobArn", name: "JobArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 200}, "smithy.api#pattern" => "^arn:aws[-a-z]*:health-agent:[-a-z0-9]+:[0-9]{12}:domain/[-a-zA-Z0-9-]+/patient-insights-job/[-a-zA-Z0-9_/.]+$"})
    JobId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#JobId", name: "JobId", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    JobStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#JobStatus", name: "JobStatus")
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#pattern" => "^arn:aws:kms:[a-z0-9-]+:[0-9]{12}:key/[a-f0-9-]+$"})
    ListDomainsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ListDomainsInput", name: "ListDomainsInput")
    ListDomainsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ListDomainsOutput", name: "ListDomainsOutput")
    ListSubscriptionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ListSubscriptionsInput", name: "ListSubscriptionsInput")
    ListSubscriptionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ListSubscriptionsOutput", name: "ListSubscriptionsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ManagedNoteTemplate = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#ManagedNoteTemplate", name: "ManagedNoteTemplate")
    ManagedTemplate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ManagedTemplate", name: "ManagedTemplate")
    ManagedTemplateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ManagedTemplateResponse", name: "ManagedTemplateResponse")
    MedicalScribeAudioEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribeAudioEvent", name: "MedicalScribeAudioEvent")
    MedicalScribeBinaryAudioEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribeBinaryAudioEvent", name: "MedicalScribeBinaryAudioEvent")
    MedicalScribeChannelDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribeChannelDefinition", name: "MedicalScribeChannelDefinition")
    MedicalScribeChannelDefinitions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connecthealth#MedicalScribeChannelDefinitions", name: "MedicalScribeChannelDefinitions", traits: {"smithy.api#length" => {"min" => 2, "max" => 2}})
    MedicalScribeChannelId = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.connecthealth#MedicalScribeChannelId", name: "MedicalScribeChannelId", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    MedicalScribeConfigurationEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribeConfigurationEvent", name: "MedicalScribeConfigurationEvent")
    MedicalScribeInputStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.connecthealth#MedicalScribeInputStream", name: "MedicalScribeInputStream", traits: {"smithy.api#streaming" => {}})
    MedicalScribeLanguageCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#MedicalScribeLanguageCode", name: "MedicalScribeLanguageCode")
    MedicalScribeListeningSessionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribeListeningSessionDetails", name: "MedicalScribeListeningSessionDetails")
    MedicalScribeMediaEncoding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#MedicalScribeMediaEncoding", name: "MedicalScribeMediaEncoding")
    MedicalScribeMediaSampleRateHertz = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.connecthealth#MedicalScribeMediaSampleRateHertz", name: "MedicalScribeMediaSampleRateHertz", traits: {"smithy.api#range" => {"min" => 8000, "max" => 48000}})
    MedicalScribeOutputStream = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.connecthealth#MedicalScribeOutputStream", name: "MedicalScribeOutputStream", traits: {"smithy.api#streaming" => {}})
    MedicalScribeParticipantRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#MedicalScribeParticipantRole", name: "MedicalScribeParticipantRole")
    MedicalScribePostStreamActionSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribePostStreamActionSettings", name: "MedicalScribePostStreamActionSettings")
    MedicalScribePostStreamActionSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribePostStreamActionSettingsResponse", name: "MedicalScribePostStreamActionSettingsResponse")
    MedicalScribePostStreamActionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribePostStreamActionsResult", name: "MedicalScribePostStreamActionsResult")
    MedicalScribeSessionControlEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribeSessionControlEvent", name: "MedicalScribeSessionControlEvent")
    MedicalScribeSessionControlEventType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#MedicalScribeSessionControlEventType", name: "MedicalScribeSessionControlEventType")
    MedicalScribeStreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#MedicalScribeStreamStatus", name: "MedicalScribeStreamStatus")
    MedicalScribeTranscriptEvent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribeTranscriptEvent", name: "MedicalScribeTranscriptEvent")
    MedicalScribeTranscriptSegment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#MedicalScribeTranscriptSegment", name: "MedicalScribeTranscriptSegment")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#pattern" => "[\\s\\S]*\\S[\\s\\S]*"})
    NonNullBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.connecthealth#NonNullBoolean", name: "NonNullBoolean")
    NoteTemplateSettings = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.connecthealth#NoteTemplateSettings", name: "NoteTemplateSettings")
    NoteTemplateSettingsResponse = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.connecthealth#NoteTemplateSettingsResponse", name: "NoteTemplateSettingsResponse")
    OutputDataConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#OutputDataConfig", name: "OutputDataConfig")
    PatientInsightsEncounterContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#PatientInsightsEncounterContext", name: "PatientInsightsEncounterContext")
    PatientInsightsPatientContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#PatientInsightsPatientContext", name: "PatientInsightsPatientContext")
    PostStreamArtifactGenerationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#PostStreamArtifactGenerationStatus", name: "PostStreamArtifactGenerationStatus")
    Pronouns = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#Pronouns", name: "Pronouns", traits: {"smithy.api#sensitive" => {}})
    ProviderRole = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#ProviderRole", name: "ProviderRole")
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#RequestId", name: "RequestId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Source = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#S3Source", name: "S3Source")
    S3Sources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connecthealth#S3Sources", name: "S3Sources", traits: {"smithy.api#length" => {"max" => 10}})
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"max" => 1024}, "smithy.api#pattern" => "^s3://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/.*)?$"})
    ScribeSessionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#ScribeSessionId", name: "ScribeSessionId", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}"})
    SensitiveIsoDateString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#SensitiveIsoDateString", name: "SensitiveIsoDateString", traits: {"smithy.api#pattern" => "^\\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01])$", "smithy.api#sensitive" => {}})
    SensitiveMarkdownString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#SensitiveMarkdownString", name: "SensitiveMarkdownString", traits: {"smithy.api#pattern" => "^[\\p{L}\\p{N}\\s\\*_\\-#\\[\\]\\(\\)\\.,:;!?'\"`<>~/|+=&%@\\\\{}^]+$", "smithy.api#sensitive" => {}})
    SensitiveNonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#SensitiveNonEmptyString", name: "SensitiveNonEmptyString", traits: {"smithy.api#pattern" => "[\\s\\S]*\\S[\\s\\S]*", "smithy.api#sensitive" => {}})
    SensitiveSectionHeaderString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#SensitiveSectionHeaderString", name: "SensitiveSectionHeaderString", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_]+$", "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Specialty = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#Specialty", name: "Specialty")
    StartMedicalScribeListeningSessionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#StartMedicalScribeListeningSessionInput", name: "StartMedicalScribeListeningSessionInput")
    StartMedicalScribeListeningSessionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#StartMedicalScribeListeningSessionOutput", name: "StartMedicalScribeListeningSessionOutput")
    StartPatientInsightsJobRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#StartPatientInsightsJobRequest", name: "StartPatientInsightsJobRequest")
    StartPatientInsightsJobResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#StartPatientInsightsJobResponse", name: "StartPatientInsightsJobResponse")
    SubscriptionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#SubscriptionArn", name: "SubscriptionArn", traits: {"smithy.api#pattern" => "^arn:aws:health-agent:[a-z0-9-]+:[0-9]{12}:domain/(hai-|dom-)[a-z0-9]+/subscription/sub-[a-zA-Z0-9]{21}$"})
    SubscriptionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#SubscriptionDescription", name: "SubscriptionDescription")
    SubscriptionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#SubscriptionId", name: "SubscriptionId", traits: {"smithy.api#length" => {"min" => 25, "max" => 25}, "smithy.api#pattern" => "^sub-[a-zA-Z0-9]{21}$"})
    SubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connecthealth#SubscriptionList", name: "SubscriptionList")
    SubscriptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.connecthealth#SubscriptionStatus", name: "SubscriptionStatus")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connecthealth#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.connecthealth#TagMap", name: "TagMap")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#TagResourceInput", name: "TagResourceInput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TemplateInstructions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.connecthealth#TemplateInstructions", name: "TemplateInstructions", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    TemplateSectionInstruction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#TemplateSectionInstruction", name: "TemplateSectionInstruction")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#UntagResourceInput", name: "UntagResourceInput")
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#Uri", name: "Uri", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "(s3://|http(s*)://).+"})
    UserContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#UserContext", name: "UserContext")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WebAppConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.connecthealth#WebAppConfiguration", name: "WebAppConfiguration")
    WebAppUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.connecthealth#WebAppUrl", name: "WebAppUrl")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateSubscriptionInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "domainId"}))
    ActivateSubscriptionInput.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "subscriptionId"}))
    ActivateSubscriptionInput.type = Types::ActivateSubscriptionInput
    ActivateSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDescription, name: "subscription", traits: {"smithy.api#notProperty" => {}}))
    ActivateSubscriptionOutput.type = Types::ActivateSubscriptionOutput
    ArtifactDetails.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "outputLocation"))
    ArtifactDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PostStreamArtifactGenerationStatus, name: "status"))
    ArtifactDetails.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "failureReason"))
    ArtifactDetails.type = Types::ArtifactDetails
    ClinicalNoteGenerationResult.add_member(:note_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetails, name: "noteResult"))
    ClinicalNoteGenerationResult.add_member(:transcript_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetails, name: "transcriptResult"))
    ClinicalNoteGenerationResult.add_member(:after_visit_summary_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ArtifactDetails, name: "afterVisitSummaryResult"))
    ClinicalNoteGenerationResult.type = Types::ClinicalNoteGenerationResult
    ClinicalNoteGenerationSettings.add_member(:note_template_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NoteTemplateSettings, name: "noteTemplateSettings", traits: {"smithy.api#required" => {}}))
    ClinicalNoteGenerationSettings.type = Types::ClinicalNoteGenerationSettings
    ClinicalNoteGenerationSettingsResponse.add_member(:note_template_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: NoteTemplateSettingsResponse, name: "noteTemplateSettings"))
    ClinicalNoteGenerationSettingsResponse.type = Types::ClinicalNoteGenerationSettingsResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateDomainInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDomainInput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateDomainInput.add_member(:web_app_setup_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateWebAppConfiguration, name: "webAppSetupConfiguration", traits: {"smithy.api#notProperty" => {}}))
    CreateDomainInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    CreateDomainInput.type = Types::CreateDomainInput
    CreateDomainOutput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    CreateDomainOutput.add_member(:encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContext, name: "encryptionContext"))
    CreateDomainOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.add_member(:web_app_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAppUrl, name: "webAppUrl"))
    CreateDomainOutput.add_member(:web_app_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAppConfiguration, name: "webAppConfiguration"))
    CreateDomainOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateDomainOutput.type = Types::CreateDomainOutput
    CreateSubscriptionInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSubscriptionInput.type = Types::CreateSubscriptionInput
    CreateSubscriptionOutput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "domainId"}))
    CreateSubscriptionOutput.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "subscriptionId"}))
    CreateSubscriptionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionOutput.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    CreateSubscriptionOutput.add_member(:activated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "activatedAt"))
    CreateSubscriptionOutput.add_member(:deactivated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "deactivatedAt"))
    CreateSubscriptionOutput.type = Types::CreateSubscriptionOutput
    CreateWebAppConfiguration.add_member(:ehr_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ehrRole", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/.+$", "smithy.api#required" => {}}))
    CreateWebAppConfiguration.add_member(:idc_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "idcInstanceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    CreateWebAppConfiguration.add_member(:idc_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "idcRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    CreateWebAppConfiguration.type = Types::CreateWebAppConfiguration
    CustomTemplate.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTemplateBase, name: "templateType", traits: {"smithy.api#required" => {}}))
    CustomTemplate.add_member(:template_instructions, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateInstructions, name: "templateInstructions", traits: {"smithy.api#required" => {}}))
    CustomTemplate.type = Types::CustomTemplate
    CustomTemplateBase.add_member(:history_and_physical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HISTORY_AND_PHYSICAL", traits: {"smithy.api#enumValue" => "HISTORY_AND_PHYSICAL"}))
    CustomTemplateBase.add_member(:girpp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIRPP", traits: {"smithy.api#enumValue" => "GIRPP"}))
    CustomTemplateBase.add_member(:dap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAP", traits: {"smithy.api#enumValue" => "DAP"}))
    CustomTemplateBase.add_member(:sirp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIRP", traits: {"smithy.api#enumValue" => "SIRP"}))
    CustomTemplateBase.add_member(:birp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIRP", traits: {"smithy.api#enumValue" => "BIRP"}))
    CustomTemplateBase.add_member(:behavioral_soap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEHAVIORAL_SOAP", traits: {"smithy.api#enumValue" => "BEHAVIORAL_SOAP"}))
    CustomTemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTemplateBase, name: "templateType"))
    CustomTemplateResponse.type = Types::CustomTemplateResponse
    DeactivateSubscriptionInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "domainId"}))
    DeactivateSubscriptionInput.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "subscriptionId"}))
    DeactivateSubscriptionInput.type = Types::DeactivateSubscriptionInput
    DeactivateSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDescription, name: "subscription", traits: {"smithy.api#notProperty" => {}}))
    DeactivateSubscriptionOutput.type = Types::DeactivateSubscriptionOutput
    DeleteDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDomainInput.type = Types::DeleteDomainInput
    DeleteDomainOutput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    DeleteDomainOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DeleteDomainOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DeleteDomainOutput.type = Types::DeleteDomainOutput
    DomainStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DomainStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DomainStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    DomainSummary.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainArn, name: "arn", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status", traits: {"smithy.api#required" => {}}))
    DomainSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    DomainSummary.type = Types::DomainSummary
    DomainSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummary, name: "member"))
    EncounterContext.add_member(:unstructured_context, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveMarkdownString, name: "unstructuredContext"))
    EncounterContext.type = Types::EncounterContext
    EncryptionContext.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "encryptionType", traits: {"smithy.api#required" => {}}))
    EncryptionContext.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    EncryptionContext.type = Types::EncryptionContext
    EncryptionType.add_member(:aws_owned_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_KEY", traits: {"smithy.api#enumValue" => "AWS_OWNED_KEY"}))
    EncryptionType.add_member(:customer_managed_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_KEY", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_KEY"}))
    FHIRServer.add_member(:fhir_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fhirEndpoint", traits: {"smithy.api#pattern" => "^https?://[a-zA-Z0-9\\-._~:/?#\\[\\]@!$&'()*+,;=%]+$", "smithy.api#required" => {}}))
    FHIRServer.add_member(:oauth_token, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "oauthToken"))
    FHIRServer.type = Types::FHIRServer
    GetDomainInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDomainInput.type = Types::GetDomainInput
    GetDomainOutput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name", traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "kmsKeyArn"))
    GetDomainOutput.add_member(:encryption_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionContext, name: "encryptionContext"))
    GetDomainOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status", traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:web_app_url, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAppUrl, name: "webAppUrl"))
    GetDomainOutput.add_member(:web_app_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WebAppConfiguration, name: "webAppConfiguration"))
    GetDomainOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    GetDomainOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#notProperty" => {}}))
    GetDomainOutput.type = Types::GetDomainOutput
    GetMedicalScribeListeningSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScribeSessionId, name: "sessionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMedicalScribeListeningSessionInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMedicalScribeListeningSessionInput.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetMedicalScribeListeningSessionInput.type = Types::GetMedicalScribeListeningSessionInput
    GetMedicalScribeListeningSessionOutput.add_member(:medical_scribe_listening_session_details, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeListeningSessionDetails, name: "medicalScribeListeningSessionDetails"))
    GetMedicalScribeListeningSessionOutput.type = Types::GetMedicalScribeListeningSessionOutput
    GetPatientInsightsJobRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPatientInsightsJobRequest.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPatientInsightsJobRequest.type = Types::GetPatientInsightsJobRequest
    GetPatientInsightsJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.add_member(:job_status, ::Smithy::Schema::Shapes::MemberShape.new(target: JobStatus, name: "jobStatus", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetPatientInsightsJobResponse.add_member(:updated_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "updatedTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetPatientInsightsJobResponse.add_member(:insights_output, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsOutput, name: "insightsOutput"))
    GetPatientInsightsJobResponse.add_member(:status_details, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "statusDetails"))
    GetPatientInsightsJobResponse.add_member(:patient_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PatientInsightsPatientContext, name: "patientContext", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.add_member(:insights_context, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsContext, name: "insightsContext", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.add_member(:encounter_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PatientInsightsEncounterContext, name: "encounterContext", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "userContext", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "inputDataConfig", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    GetPatientInsightsJobResponse.type = Types::GetPatientInsightsJobResponse
    GetSubscriptionInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "domainId"}))
    GetSubscriptionInput.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "subscriptionId"}))
    GetSubscriptionInput.type = Types::GetSubscriptionInput
    GetSubscriptionOutput.add_member(:subscription, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDescription, name: "subscription", traits: {"smithy.api#notProperty" => {}}))
    GetSubscriptionOutput.type = Types::GetSubscriptionOutput
    InputDataConfig.add_member(:fhir_server, ::Smithy::Schema::Shapes::MemberShape.new(target: FHIRServer, name: "fhirServer"))
    InputDataConfig.add_member(:s3_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Sources, name: "s3Sources"))
    InputDataConfig.type = Types::InputDataConfig
    InsightsContext.add_member(:insights_type, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsType, name: "insightsType", traits: {"smithy.api#required" => {}}))
    InsightsContext.type = Types::InsightsContext
    InsightsOutput.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    InsightsOutput.type = Types::InsightsOutput
    InsightsType.add_member(:pre_visit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRE_VISIT", traits: {"smithy.api#enumValue" => "PRE_VISIT"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    InternalServerException.type = Types::InternalServerException
    JobStatus.add_member(:submitted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBMITTED", traits: {"smithy.api#enumValue" => "SUBMITTED"}))
    JobStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    JobStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    JobStatus.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCEEDED", traits: {"smithy.api#enumValue" => "SUCCEEDED"}))
    ListDomainsInput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListDomainsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#notProperty" => {}, "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListDomainsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken", "smithy.api#notProperty" => {}}))
    ListDomainsInput.type = Types::ListDomainsInput
    ListDomainsOutput.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummaryList, name: "domains", traits: {"smithy.api#required" => {}}))
    ListDomainsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListDomainsOutput.type = Types::ListDomainsOutput
    ListSubscriptionsInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListSubscriptionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSubscriptionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSubscriptionsInput.type = Types::ListSubscriptionsInput
    ListSubscriptionsOutput.add_member(:subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionList, name: "subscriptions", traits: {"smithy.api#required" => {}}))
    ListSubscriptionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    ListSubscriptionsOutput.type = Types::ListSubscriptionsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ManagedNoteTemplate.add_member(:history_and_physical, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HISTORY_AND_PHYSICAL", traits: {"smithy.api#enumValue" => "HISTORY_AND_PHYSICAL"}))
    ManagedNoteTemplate.add_member(:girpp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GIRPP", traits: {"smithy.api#enumValue" => "GIRPP"}))
    ManagedNoteTemplate.add_member(:dap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAP", traits: {"smithy.api#enumValue" => "DAP"}))
    ManagedNoteTemplate.add_member(:sirp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SIRP", traits: {"smithy.api#enumValue" => "SIRP"}))
    ManagedNoteTemplate.add_member(:birp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BIRP", traits: {"smithy.api#enumValue" => "BIRP"}))
    ManagedNoteTemplate.add_member(:behavioral_soap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEHAVIORAL_SOAP", traits: {"smithy.api#enumValue" => "BEHAVIORAL_SOAP"}))
    ManagedNoteTemplate.add_member(:physical_soap, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PHYSICAL_SOAP", traits: {"smithy.api#enumValue" => "PHYSICAL_SOAP"}))
    ManagedTemplate.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedNoteTemplate, name: "templateType", traits: {"smithy.api#required" => {}}))
    ManagedTemplate.type = Types::ManagedTemplate
    ManagedTemplateResponse.add_member(:template_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedNoteTemplate, name: "templateType"))
    ManagedTemplateResponse.type = Types::ManagedTemplateResponse
    MedicalScribeAudioEvent.add_member(:audio_chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioChunk, name: "audioChunk", traits: {"smithy.api#required" => {}}))
    MedicalScribeAudioEvent.type = Types::MedicalScribeAudioEvent
    MedicalScribeBinaryAudioEvent.add_member(:audio_chunk, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioChunk, name: "audioChunk", traits: {"smithy.api#eventPayload" => {}, "smithy.api#required" => {}}))
    MedicalScribeBinaryAudioEvent.type = Types::MedicalScribeBinaryAudioEvent
    MedicalScribeChannelDefinition.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeChannelId, name: "channelId", traits: {"smithy.api#required" => {}}))
    MedicalScribeChannelDefinition.add_member(:participant_role, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeParticipantRole, name: "participantRole", traits: {"smithy.api#required" => {}}))
    MedicalScribeChannelDefinition.type = Types::MedicalScribeChannelDefinition
    MedicalScribeChannelDefinitions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeChannelDefinition, name: "member"))
    MedicalScribeConfigurationEvent.add_member(:post_stream_action_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribePostStreamActionSettings, name: "postStreamActionSettings", traits: {"smithy.api#required" => {}}))
    MedicalScribeConfigurationEvent.add_member(:channel_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeChannelDefinitions, name: "channelDefinitions"))
    MedicalScribeConfigurationEvent.add_member(:encounter_context, ::Smithy::Schema::Shapes::MemberShape.new(target: EncounterContext, name: "encounterContext"))
    MedicalScribeConfigurationEvent.type = Types::MedicalScribeConfigurationEvent
    MedicalScribeInputStream.add_member(:audio_event, Types::MedicalScribeInputStream::AudioEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeAudioEvent, name: "audioEvent"))
    MedicalScribeInputStream.add_member(:binary_audio_event, Types::MedicalScribeInputStream::BinaryAudioEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeBinaryAudioEvent, name: "binaryAudioEvent"))
    MedicalScribeInputStream.add_member(:session_control_event, Types::MedicalScribeInputStream::SessionControlEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeSessionControlEvent, name: "sessionControlEvent"))
    MedicalScribeInputStream.add_member(:configuration_event, Types::MedicalScribeInputStream::ConfigurationEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeConfigurationEvent, name: "configurationEvent"))
    MedicalScribeInputStream.add_member(:unknown, Types::MedicalScribeInputStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MedicalScribeInputStream.type = Types::MedicalScribeInputStream
    MedicalScribeLanguageCode.add_member(:en_us, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EN_US", traits: {"smithy.api#enumValue" => "en-US"}))
    MedicalScribeLanguageCode.add_member(:multi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MULTI", traits: {"smithy.api#enumValue" => "multi"}))
    MedicalScribeListeningSessionDetails.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScribeSessionId, name: "sessionId"))
    MedicalScribeListeningSessionDetails.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId"))
    MedicalScribeListeningSessionDetails.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId"))
    MedicalScribeListeningSessionDetails.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeLanguageCode, name: "languageCode"))
    MedicalScribeListeningSessionDetails.add_member(:media_sample_rate_hertz, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeMediaSampleRateHertz, name: "mediaSampleRateHertz"))
    MedicalScribeListeningSessionDetails.add_member(:media_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeMediaEncoding, name: "mediaEncoding"))
    MedicalScribeListeningSessionDetails.add_member(:channel_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeChannelDefinitions, name: "channelDefinitions"))
    MedicalScribeListeningSessionDetails.add_member(:post_stream_action_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribePostStreamActionSettingsResponse, name: "postStreamActionSettings"))
    MedicalScribeListeningSessionDetails.add_member(:post_stream_action_result, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribePostStreamActionsResult, name: "postStreamActionResult"))
    MedicalScribeListeningSessionDetails.add_member(:encounter_context_provided, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNullBoolean, name: "encounterContextProvided"))
    MedicalScribeListeningSessionDetails.add_member(:stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeStreamStatus, name: "streamStatus"))
    MedicalScribeListeningSessionDetails.add_member(:stream_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "streamCreationTime"))
    MedicalScribeListeningSessionDetails.add_member(:stream_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "streamEndTime"))
    MedicalScribeListeningSessionDetails.type = Types::MedicalScribeListeningSessionDetails
    MedicalScribeMediaEncoding.add_member(:pcm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PCM", traits: {"smithy.api#enumValue" => "pcm"}))
    MedicalScribeMediaEncoding.add_member(:flac, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLAC", traits: {"smithy.api#enumValue" => "flac"}))
    MedicalScribeOutputStream.add_member(:transcript_event, Types::MedicalScribeOutputStream::TranscriptEvent, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeTranscriptEvent, name: "transcriptEvent"))
    MedicalScribeOutputStream.add_member(:internal_failure_exception, Types::MedicalScribeOutputStream::InternalFailureException, ::Smithy::Schema::Shapes::MemberShape.new(target: InternalServerException, name: "internalFailureException"))
    MedicalScribeOutputStream.add_member(:validation_exception, Types::MedicalScribeOutputStream::ValidationException, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationException, name: "validationException"))
    MedicalScribeOutputStream.add_member(:unknown, Types::MedicalScribeOutputStream::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    MedicalScribeOutputStream.type = Types::MedicalScribeOutputStream
    MedicalScribeParticipantRole.add_member(:patient, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PATIENT", traits: {"smithy.api#enumValue" => "PATIENT"}))
    MedicalScribeParticipantRole.add_member(:clinician, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLINICIAN", traits: {"smithy.api#enumValue" => "CLINICIAN"}))
    MedicalScribePostStreamActionSettings.add_member(:output_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "outputS3Uri", traits: {"smithy.api#required" => {}}))
    MedicalScribePostStreamActionSettings.add_member(:clinical_note_generation_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClinicalNoteGenerationSettings, name: "clinicalNoteGenerationSettings", traits: {"smithy.api#required" => {}}))
    MedicalScribePostStreamActionSettings.type = Types::MedicalScribePostStreamActionSettings
    MedicalScribePostStreamActionSettingsResponse.add_member(:output_s3_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "outputS3Uri", traits: {"smithy.api#required" => {}}))
    MedicalScribePostStreamActionSettingsResponse.add_member(:clinical_note_generation_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ClinicalNoteGenerationSettingsResponse, name: "clinicalNoteGenerationSettings", traits: {"smithy.api#required" => {}}))
    MedicalScribePostStreamActionSettingsResponse.type = Types::MedicalScribePostStreamActionSettingsResponse
    MedicalScribePostStreamActionsResult.add_member(:clinical_note_generation_result, ::Smithy::Schema::Shapes::MemberShape.new(target: ClinicalNoteGenerationResult, name: "clinicalNoteGenerationResult"))
    MedicalScribePostStreamActionsResult.type = Types::MedicalScribePostStreamActionsResult
    MedicalScribeSessionControlEvent.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeSessionControlEventType, name: "type"))
    MedicalScribeSessionControlEvent.type = Types::MedicalScribeSessionControlEvent
    MedicalScribeSessionControlEventType.add_member(:end_of_session, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "END_OF_SESSION", traits: {"smithy.api#enumValue" => "END_OF_SESSION"}))
    MedicalScribeStreamStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    MedicalScribeStreamStatus.add_member(:paused, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PAUSED", traits: {"smithy.api#enumValue" => "PAUSED"}))
    MedicalScribeStreamStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    MedicalScribeStreamStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    MedicalScribeTranscriptEvent.add_member(:transcript_segment, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeTranscriptSegment, name: "transcriptSegment"))
    MedicalScribeTranscriptEvent.type = Types::MedicalScribeTranscriptEvent
    MedicalScribeTranscriptSegment.add_member(:segment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "segmentId"))
    MedicalScribeTranscriptSegment.add_member(:audio_begin_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioOffset, name: "audioBeginOffset"))
    MedicalScribeTranscriptSegment.add_member(:audio_end_offset, ::Smithy::Schema::Shapes::MemberShape.new(target: AudioOffset, name: "audioEndOffset"))
    MedicalScribeTranscriptSegment.add_member(:is_partial, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNullBoolean, name: "isPartial"))
    MedicalScribeTranscriptSegment.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "channelId"))
    MedicalScribeTranscriptSegment.add_member(:content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "content"))
    MedicalScribeTranscriptSegment.type = Types::MedicalScribeTranscriptSegment
    NoteTemplateSettings.add_member(:managed_template, Types::NoteTemplateSettings::ManagedTemplate, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTemplate, name: "managedTemplate"))
    NoteTemplateSettings.add_member(:custom_template, Types::NoteTemplateSettings::CustomTemplate, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTemplate, name: "customTemplate"))
    NoteTemplateSettings.add_member(:unknown, Types::NoteTemplateSettings::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NoteTemplateSettings.type = Types::NoteTemplateSettings
    NoteTemplateSettingsResponse.add_member(:managed_template, Types::NoteTemplateSettingsResponse::ManagedTemplate, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedTemplateResponse, name: "managedTemplate"))
    NoteTemplateSettingsResponse.add_member(:custom_template, Types::NoteTemplateSettingsResponse::CustomTemplate, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTemplateResponse, name: "customTemplate"))
    NoteTemplateSettingsResponse.add_member(:unknown, Types::NoteTemplateSettingsResponse::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    NoteTemplateSettingsResponse.type = Types::NoteTemplateSettingsResponse
    OutputDataConfig.add_member(:s3_output_path, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "s3OutputPath", traits: {"smithy.api#required" => {}}))
    OutputDataConfig.type = Types::OutputDataConfig
    PatientInsightsEncounterContext.add_member(:encounter_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "encounterReason", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9 .,-]+$", "smithy.api#required" => {}}))
    PatientInsightsEncounterContext.type = Types::PatientInsightsEncounterContext
    PatientInsightsPatientContext.add_member(:patient_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "patientId", traits: {"smithy.api#required" => {}}))
    PatientInsightsPatientContext.add_member(:date_of_birth, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveIsoDateString, name: "dateOfBirth"))
    PatientInsightsPatientContext.add_member(:pronouns, ::Smithy::Schema::Shapes::MemberShape.new(target: Pronouns, name: "pronouns"))
    PatientInsightsPatientContext.type = Types::PatientInsightsPatientContext
    PostStreamArtifactGenerationStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    PostStreamArtifactGenerationStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    PostStreamArtifactGenerationStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    Pronouns.add_member(:he_him, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HE_HIM", traits: {"smithy.api#enumValue" => "HE_HIM"}))
    Pronouns.add_member(:she_her, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHE_HER", traits: {"smithy.api#enumValue" => "SHE_HER"}))
    Pronouns.add_member(:they_them, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THEY_THEM", traits: {"smithy.api#enumValue" => "THEY_THEM"}))
    ProviderRole.add_member(:clinician, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLINICIAN", traits: {"smithy.api#enumValue" => "CLINICIAN"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Source.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    S3Source.type = Types::S3Source
    S3Sources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Source, name: "member"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Specialty.add_member(:primary_care, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIMARY_CARE", traits: {"smithy.api#enumValue" => "PRIMARY_CARE"}))
    StartMedicalScribeListeningSessionInput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScribeSessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-session-id", "smithy.api#required" => {}}))
    StartMedicalScribeListeningSessionInput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-domain-id", "smithy.api#required" => {}}))
    StartMedicalScribeListeningSessionInput.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-subscription-id", "smithy.api#required" => {}}))
    StartMedicalScribeListeningSessionInput.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeLanguageCode, name: "languageCode", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-language-code", "smithy.api#required" => {}}))
    StartMedicalScribeListeningSessionInput.add_member(:media_sample_rate_hertz, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeMediaSampleRateHertz, name: "mediaSampleRateHertz", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-sample-rate", "smithy.api#required" => {}}))
    StartMedicalScribeListeningSessionInput.add_member(:media_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeMediaEncoding, name: "mediaEncoding", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-media-encoding", "smithy.api#required" => {}}))
    StartMedicalScribeListeningSessionInput.add_member(:input_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeInputStream, name: "inputStream", traits: {"smithy.api#httpPayload" => {}}))
    StartMedicalScribeListeningSessionInput[:http_payload] = :input_stream
    StartMedicalScribeListeningSessionInput[:http_payload_member] = StartMedicalScribeListeningSessionInput.member(:input_stream)
    StartMedicalScribeListeningSessionInput.type = Types::StartMedicalScribeListeningSessionInput
    StartMedicalScribeListeningSessionOutput.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ScribeSessionId, name: "sessionId", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-session-id"}))
    StartMedicalScribeListeningSessionOutput.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-domain-id"}))
    StartMedicalScribeListeningSessionOutput.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-subscription-id"}))
    StartMedicalScribeListeningSessionOutput.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestId, name: "requestId", traits: {"smithy.api#httpHeader" => "x-amzn-request-id"}))
    StartMedicalScribeListeningSessionOutput.add_member(:language_code, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeLanguageCode, name: "languageCode", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-language-code"}))
    StartMedicalScribeListeningSessionOutput.add_member(:media_sample_rate_hertz, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeMediaSampleRateHertz, name: "mediaSampleRateHertz", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-sample-rate"}))
    StartMedicalScribeListeningSessionOutput.add_member(:media_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeMediaEncoding, name: "mediaEncoding", traits: {"smithy.api#httpHeader" => "x-amzn-medscribe-media-encoding"}))
    StartMedicalScribeListeningSessionOutput.add_member(:response_stream, ::Smithy::Schema::Shapes::MemberShape.new(target: MedicalScribeOutputStream, name: "responseStream", traits: {"smithy.api#httpPayload" => {}}))
    StartMedicalScribeListeningSessionOutput[:http_payload] = :response_stream
    StartMedicalScribeListeningSessionOutput[:http_payload_member] = StartMedicalScribeListeningSessionOutput.member(:response_stream)
    StartMedicalScribeListeningSessionOutput.type = Types::StartMedicalScribeListeningSessionOutput
    StartPatientInsightsJobRequest.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartPatientInsightsJobRequest.add_member(:patient_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PatientInsightsPatientContext, name: "patientContext", traits: {"smithy.api#required" => {}}))
    StartPatientInsightsJobRequest.add_member(:insights_context, ::Smithy::Schema::Shapes::MemberShape.new(target: InsightsContext, name: "insightsContext", traits: {"smithy.api#required" => {}}))
    StartPatientInsightsJobRequest.add_member(:encounter_context, ::Smithy::Schema::Shapes::MemberShape.new(target: PatientInsightsEncounterContext, name: "encounterContext", traits: {"smithy.api#required" => {}}))
    StartPatientInsightsJobRequest.add_member(:user_context, ::Smithy::Schema::Shapes::MemberShape.new(target: UserContext, name: "userContext", traits: {"smithy.api#required" => {}}))
    StartPatientInsightsJobRequest.add_member(:input_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: InputDataConfig, name: "inputDataConfig", traits: {"smithy.api#required" => {}}))
    StartPatientInsightsJobRequest.add_member(:output_data_config, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputDataConfig, name: "outputDataConfig", traits: {"smithy.api#required" => {}}))
    StartPatientInsightsJobRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    StartPatientInsightsJobRequest.type = Types::StartPatientInsightsJobRequest
    StartPatientInsightsJobResponse.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "jobArn", traits: {"smithy.api#required" => {}}))
    StartPatientInsightsJobResponse.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobId, name: "jobId", traits: {"smithy.api#required" => {}}))
    StartPatientInsightsJobResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "creationTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    StartPatientInsightsJobResponse.type = Types::StartPatientInsightsJobResponse
    SubscriptionDescription.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, name: "domainId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "domainId"}))
    SubscriptionDescription.add_member(:subscription_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionId, name: "subscriptionId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "subscriptionId"}))
    SubscriptionDescription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionArn, name: "arn", traits: {"smithy.api#required" => {}}))
    SubscriptionDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    SubscriptionDescription.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}}))
    SubscriptionDescription.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastUpdatedAt", traits: {"smithy.api#required" => {}}))
    SubscriptionDescription.add_member(:activated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "activatedAt"))
    SubscriptionDescription.add_member(:deactivated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "deactivatedAt"))
    SubscriptionDescription.type = Types::SubscriptionDescription
    SubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubscriptionDescription, name: "member"))
    SubscriptionStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SubscriptionStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    SubscriptionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TemplateInstructions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TemplateSectionInstruction, name: "member"))
    TemplateSectionInstruction.add_member(:section_header, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveSectionHeaderString, name: "sectionHeader", traits: {"smithy.api#required" => {}}))
    TemplateSectionInstruction.add_member(:section_instruction, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveMarkdownString, name: "sectionInstruction", traits: {"smithy.api#required" => {}}))
    TemplateSectionInstruction.type = Types::TemplateSectionInstruction
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UserContext.add_member(:role, ::Smithy::Schema::Shapes::MemberShape.new(target: ProviderRole, name: "role", traits: {"smithy.api#required" => {}}))
    UserContext.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveNonEmptyString, name: "userId", traits: {"smithy.api#required" => {}}))
    UserContext.add_member(:specialty, ::Smithy::Schema::Shapes::MemberShape.new(target: Specialty, name: "specialty"))
    UserContext.type = Types::UserContext
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message"))
    ValidationException.type = Types::ValidationException
    WebAppConfiguration.add_member(:ehr_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ehrRole", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:aws:iam::[0-9]{12}:role/.+$", "smithy.api#required" => {}}))
    WebAppConfiguration.add_member(:idc_application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "idcApplicationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#required" => {}}))
    WebAppConfiguration.add_member(:idc_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "idcRegion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#required" => {}}))
    WebAppConfiguration.type = Types::WebAppConfiguration

    ConnectHealth = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.connecthealth#ConnectHealth"
      service.name = "ConnectHealth"
      service.version = "2025-01-29"
      service.traits = {"aws.api#service" => {"sdkId" => "ConnectHealth", "arnNamespace" => "health-agent", "endpointPrefix" => "health-agent", "cloudTrailEventSource" => "health-agent.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "health-agent"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {"http" => ["h2", "http/1.1"], "eventStreamHttp" => ["h2"]}, "smithy.api#cors" => {"origin" => "*", "additionalAllowedHeaders" => ["*", "content-type", "content-length", "authorization", "x-amz-date", "x-amz-security-token", "x-amz-content-sha256", "x-amz-user-agent", "x-api-key"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "Access-Control-Allow-Origin"], "maxAge" => 86400}, "smithy.api#title" => "Connect Health", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://health-agent-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://health-agent.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QMF9eEEAAAAAwX14QEF9eEC"}}
      service.add_operation(:activate_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#ActivateSubscription"
        operation.name = "ActivateSubscription"
        operation.input = ActivateSubscriptionInput
        operation.output = ActivateSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{domainId}/subscriptions/{subscriptionId}/activate", "code" => 200}}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = CreateDomainInput
        operation.output = CreateDomainOutput
        operation.errors << ServiceQuotaExceededException
        operation.traits = {"aws.iam#requiredActions" => ["health-agent:TagResource", "iam:PassRole"], "smithy.api#http" => {"method" => "POST", "uri" => "/domain", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#CreateSubscription"
        operation.name = "CreateSubscription"
        operation.input = CreateSubscriptionInput
        operation.output = CreateSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{domainId}/subscriptions", "code" => 201}}
      end)
      service.add_operation(:deactivate_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#DeactivateSubscription"
        operation.name = "DeactivateSubscription"
        operation.input = DeactivateSubscriptionInput
        operation.output = DeactivateSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/domains/{domainId}/subscriptions/{subscriptionId}/deactivate", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = DeleteDomainInput
        operation.output = DeleteDomainOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/domain/{domainId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#GetDomain"
        operation.name = "GetDomain"
        operation.input = GetDomainInput
        operation.output = GetDomainOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domain/{domainId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_medical_scribe_listening_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#GetMedicalScribeListeningSession"
        operation.name = "GetMedicalScribeListeningSession"
        operation.input = GetMedicalScribeListeningSessionInput
        operation.output = GetMedicalScribeListeningSessionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "streaming."}, "smithy.api#http" => {"uri" => "/medical-scribe-stream/domain/{domainId}/subscription/{subscriptionId}/session/{sessionId}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_patient_insights_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#GetPatientInsightsJob"
        operation.name = "GetPatientInsightsJob"
        operation.input = GetPatientInsightsJobRequest
        operation.output = GetPatientInsightsJobResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"resources" => {"required" => {"DomainResource" => {}, "PatientInsightsJobResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "runtime."}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/domain/{domainId}/patient-insights-job/{jobId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#GetSubscription"
        operation.name = "GetSubscription"
        operation.input = GetSubscriptionInput
        operation.output = GetSubscriptionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{domainId}/subscriptions/{subscriptionId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#ListDomains"
        operation.name = "ListDomains"
        operation.input = ListDomainsInput
        operation.output = ListDomainsOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domain"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListDomainsSuccess", "params" => {}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#ListSubscriptions"
        operation.name = "ListSubscriptions"
        operation.input = ListSubscriptionsInput
        operation.output = ListSubscriptionsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/domains/{domainId}/subscriptions"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubscriptions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list the tags for the specified resource", "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_medical_scribe_listening_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#StartMedicalScribeListeningSession"
        operation.name = "StartMedicalScribeListeningSession"
        operation.input = StartMedicalScribeListeningSessionInput
        operation.output = StartMedicalScribeListeningSessionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "streaming."}, "smithy.api#http" => {"uri" => "/medical-scribe-stream/", "method" => "POST"}}
      end)
      service.add_operation(:start_patient_insights_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#StartPatientInsightsJob"
        operation.name = "StartPatientInsightsJob"
        operation.input = StartPatientInsightsJobRequest
        operation.output = StartPatientInsightsJobResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"aws.api#dataPlane" => {}, "aws.iam#iamAction" => {"resources" => {"required" => {"DomainResource" => {}, "PatientInsightsJobResource" => {}}}}, "smithy.api#endpoint" => {"hostPrefix" => "runtime."}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/domain/{domainId}/patient-insights-job"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to add the specified tags to the specified resource", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.connecthealth#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove the specified tags from the specified resource", "aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE", "code" => 204}, "smithy.api#idempotent" => {}}
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
