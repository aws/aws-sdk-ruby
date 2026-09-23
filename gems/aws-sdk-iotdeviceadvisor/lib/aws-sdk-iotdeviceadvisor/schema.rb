# frozen_string_literal: true

# This is generated code!

module Aws::IotDeviceAdvisor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AuthenticationMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotdeviceadvisor#AuthenticationMethod", name: "AuthenticationMethod")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\u0021-\\u007E]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateSuiteDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#CreateSuiteDefinitionRequest", name: "CreateSuiteDefinitionRequest")
    CreateSuiteDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#CreateSuiteDefinitionResponse", name: "CreateSuiteDefinitionResponse")
    DeleteSuiteDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#DeleteSuiteDefinitionRequest", name: "DeleteSuiteDefinitionRequest")
    DeleteSuiteDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#DeleteSuiteDefinitionResponse", name: "DeleteSuiteDefinitionResponse")
    DeviceUnderTest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#DeviceUnderTest", name: "DeviceUnderTest")
    DeviceUnderTestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdeviceadvisor#DeviceUnderTestList", name: "DeviceUnderTestList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#Endpoint", name: "Endpoint", traits: {"smithy.api#length" => {"min" => 45, "max" => 75}})
    ErrorReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#ErrorReason", name: "ErrorReason")
    Failure = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#Failure", name: "Failure")
    GetEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GetEndpointRequest", name: "GetEndpointRequest")
    GetEndpointResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GetEndpointResponse", name: "GetEndpointResponse")
    GetSuiteDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GetSuiteDefinitionRequest", name: "GetSuiteDefinitionRequest")
    GetSuiteDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GetSuiteDefinitionResponse", name: "GetSuiteDefinitionResponse")
    GetSuiteRunReportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GetSuiteRunReportRequest", name: "GetSuiteRunReportRequest")
    GetSuiteRunReportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GetSuiteRunReportResponse", name: "GetSuiteRunReportResponse")
    GetSuiteRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GetSuiteRunRequest", name: "GetSuiteRunRequest")
    GetSuiteRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GetSuiteRunResponse", name: "GetSuiteRunResponse")
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#GroupName", name: "GroupName")
    GroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#GroupResult", name: "GroupResult")
    GroupResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdeviceadvisor#GroupResultList", name: "GroupResultList")
    IntendedForQualificationBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdeviceadvisor#IntendedForQualificationBoolean", name: "IntendedForQualificationBoolean")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsLongDurationTestBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdeviceadvisor#IsLongDurationTestBoolean", name: "IsLongDurationTestBoolean")
    ListSuiteDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ListSuiteDefinitionsRequest", name: "ListSuiteDefinitionsRequest")
    ListSuiteDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ListSuiteDefinitionsResponse", name: "ListSuiteDefinitionsResponse")
    ListSuiteRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ListSuiteRunsRequest", name: "ListSuiteRunsRequest")
    ListSuiteRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ListSuiteRunsResponse", name: "ListSuiteRunsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LogUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#LogUrl", name: "LogUrl")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdeviceadvisor#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Message = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#Message", name: "Message", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ParallelRun = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.iotdeviceadvisor#ParallelRun", name: "ParallelRun")
    Protocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotdeviceadvisor#Protocol", name: "Protocol")
    QualificationReportDownloadUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#QualificationReportDownloadUrl", name: "QualificationReportDownloadUrl")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RootGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#RootGroup", name: "RootGroup", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SelectedTestList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdeviceadvisor#SelectedTestList", name: "SelectedTestList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartSuiteRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#StartSuiteRunRequest", name: "StartSuiteRunRequest")
    StartSuiteRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#StartSuiteRunResponse", name: "StartSuiteRunResponse")
    Status = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotdeviceadvisor#Status", name: "Status")
    StopSuiteRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#StopSuiteRunRequest", name: "StopSuiteRunRequest")
    StopSuiteRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#StopSuiteRunResponse", name: "StopSuiteRunResponse")
    String128 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#String128", name: "String128", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    String256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#String256", name: "String256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SuiteDefinitionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteDefinitionConfiguration", name: "SuiteDefinitionConfiguration")
    SuiteDefinitionInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteDefinitionInformation", name: "SuiteDefinitionInformation")
    SuiteDefinitionInformationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteDefinitionInformationList", name: "SuiteDefinitionInformationList")
    SuiteDefinitionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteDefinitionName", name: "SuiteDefinitionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SuiteDefinitionVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteDefinitionVersion", name: "SuiteDefinitionVersion", traits: {"smithy.api#length" => {"min" => 2, "max" => 255}})
    SuiteRunConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteRunConfiguration", name: "SuiteRunConfiguration")
    SuiteRunInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteRunInformation", name: "SuiteRunInformation")
    SuiteRunResultCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteRunResultCount", name: "SuiteRunResultCount", traits: {"smithy.api#range" => {"min" => 0, "max" => 500}})
    SuiteRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteRunStatus", name: "SuiteRunStatus")
    SuiteRunsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdeviceadvisor#SuiteRunsList", name: "SuiteRunsList")
    SystemMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#SystemMessage", name: "SystemMessage")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdeviceadvisor#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotdeviceadvisor#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#TagResourceResponse", name: "TagResourceResponse")
    TestCaseDefinitionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#TestCaseDefinitionName", name: "TestCaseDefinitionName")
    TestCaseRun = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#TestCaseRun", name: "TestCaseRun")
    TestCaseRuns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdeviceadvisor#TestCaseRuns", name: "TestCaseRuns")
    TestCaseScenario = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#TestCaseScenario", name: "TestCaseScenario")
    TestCaseScenarioId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#TestCaseScenarioId", name: "TestCaseScenarioId")
    TestCaseScenarioStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotdeviceadvisor#TestCaseScenarioStatus", name: "TestCaseScenarioStatus")
    TestCaseScenarioType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotdeviceadvisor#TestCaseScenarioType", name: "TestCaseScenarioType")
    TestCaseScenariosList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotdeviceadvisor#TestCaseScenariosList", name: "TestCaseScenariosList")
    TestResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#TestResult", name: "TestResult")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.iotdeviceadvisor#Timestamp", name: "Timestamp")
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#Token", name: "Token", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#UUID", name: "UUID", traits: {"smithy.api#length" => {"min" => 12, "max" => 36}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateSuiteDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#UpdateSuiteDefinitionRequest", name: "UpdateSuiteDefinitionRequest")
    UpdateSuiteDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#UpdateSuiteDefinitionResponse", name: "UpdateSuiteDefinitionResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotdeviceadvisor#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Warnings = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotdeviceadvisor#Warnings", name: "Warnings")

    AuthenticationMethod.add_member(:x509_client_certificate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "X509ClientCertificate", traits: {"smithy.api#enumValue" => "X509ClientCertificate"}))
    AuthenticationMethod.add_member(:signature_version4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SignatureVersion4", traits: {"smithy.api#enumValue" => "SignatureVersion4"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateSuiteDefinitionRequest.add_member(:suite_definition_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionConfiguration, name: "suiteDefinitionConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateSuiteDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSuiteDefinitionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateSuiteDefinitionRequest.type = Types::CreateSuiteDefinitionRequest
    CreateSuiteDefinitionResponse.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId"))
    CreateSuiteDefinitionResponse.add_member(:suite_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "suiteDefinitionArn"))
    CreateSuiteDefinitionResponse.add_member(:suite_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionName, name: "suiteDefinitionName"))
    CreateSuiteDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    CreateSuiteDefinitionResponse.type = Types::CreateSuiteDefinitionResponse
    DeleteSuiteDefinitionRequest.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSuiteDefinitionRequest.type = Types::DeleteSuiteDefinitionRequest
    DeleteSuiteDefinitionResponse.type = Types::DeleteSuiteDefinitionResponse
    DeviceUnderTest.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "thingArn"))
    DeviceUnderTest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "certificateArn"))
    DeviceUnderTest.add_member(:device_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "deviceRoleArn"))
    DeviceUnderTest.type = Types::DeviceUnderTest
    DeviceUnderTestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceUnderTest, name: "member"))
    GetEndpointRequest.add_member(:thing_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "thingArn", traits: {"smithy.api#httpQuery" => "thingArn"}))
    GetEndpointRequest.add_member(:certificate_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "certificateArn", traits: {"smithy.api#httpQuery" => "certificateArn"}))
    GetEndpointRequest.add_member(:device_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "deviceRoleArn", traits: {"smithy.api#httpQuery" => "deviceRoleArn"}))
    GetEndpointRequest.add_member(:authentication_method, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationMethod, name: "authenticationMethod", traits: {"smithy.api#httpQuery" => "authenticationMethod"}))
    GetEndpointRequest.type = Types::GetEndpointRequest
    GetEndpointResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "endpoint"))
    GetEndpointResponse.type = Types::GetEndpointResponse
    GetSuiteDefinitionRequest.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteDefinitionRequest.add_member(:suite_definition_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionVersion, name: "suiteDefinitionVersion", traits: {"smithy.api#httpQuery" => "suiteDefinitionVersion"}))
    GetSuiteDefinitionRequest.type = Types::GetSuiteDefinitionRequest
    GetSuiteDefinitionResponse.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId"))
    GetSuiteDefinitionResponse.add_member(:suite_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "suiteDefinitionArn"))
    GetSuiteDefinitionResponse.add_member(:suite_definition_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionVersion, name: "suiteDefinitionVersion"))
    GetSuiteDefinitionResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionVersion, name: "latestVersion"))
    GetSuiteDefinitionResponse.add_member(:suite_definition_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionConfiguration, name: "suiteDefinitionConfiguration"))
    GetSuiteDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    GetSuiteDefinitionResponse.add_member(:last_modified_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastModifiedAt"))
    GetSuiteDefinitionResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetSuiteDefinitionResponse.type = Types::GetSuiteDefinitionResponse
    GetSuiteRunReportRequest.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteRunReportRequest.add_member(:suite_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteRunReportRequest.type = Types::GetSuiteRunReportRequest
    GetSuiteRunReportResponse.add_member(:qualification_report_download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: QualificationReportDownloadUrl, name: "qualificationReportDownloadUrl"))
    GetSuiteRunReportResponse.type = Types::GetSuiteRunReportResponse
    GetSuiteRunRequest.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteRunRequest.add_member(:suite_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteRunRequest.type = Types::GetSuiteRunRequest
    GetSuiteRunResponse.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId"))
    GetSuiteRunResponse.add_member(:suite_definition_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionVersion, name: "suiteDefinitionVersion"))
    GetSuiteRunResponse.add_member(:suite_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteRunId"))
    GetSuiteRunResponse.add_member(:suite_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "suiteRunArn"))
    GetSuiteRunResponse.add_member(:suite_run_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteRunConfiguration, name: "suiteRunConfiguration"))
    GetSuiteRunResponse.add_member(:test_result, ::Smithy::Schema::Shapes::MemberShape.new(target: TestResult, name: "testResult"))
    GetSuiteRunResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    GetSuiteRunResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    GetSuiteRunResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteRunStatus, name: "status"))
    GetSuiteRunResponse.add_member(:error_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorReason, name: "errorReason"))
    GetSuiteRunResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetSuiteRunResponse.type = Types::GetSuiteRunResponse
    GroupResult.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "groupId"))
    GroupResult.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "groupName"))
    GroupResult.add_member(:tests, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseRuns, name: "tests"))
    GroupResult.type = Types::GroupResult
    GroupResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupResult, name: "member"))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListSuiteDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSuiteDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSuiteDefinitionsRequest.type = Types::ListSuiteDefinitionsRequest
    ListSuiteDefinitionsResponse.add_member(:suite_definition_information_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionInformationList, name: "suiteDefinitionInformationList"))
    ListSuiteDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListSuiteDefinitionsResponse.type = Types::ListSuiteDefinitionsResponse
    ListSuiteRunsRequest.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId", traits: {"smithy.api#httpQuery" => "suiteDefinitionId"}))
    ListSuiteRunsRequest.add_member(:suite_definition_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionVersion, name: "suiteDefinitionVersion", traits: {"smithy.api#httpQuery" => "suiteDefinitionVersion"}))
    ListSuiteRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListSuiteRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSuiteRunsRequest.type = Types::ListSuiteRunsRequest
    ListSuiteRunsResponse.add_member(:suite_runs_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteRunsList, name: "suiteRunsList"))
    ListSuiteRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: Token, name: "nextToken"))
    ListSuiteRunsResponse.type = Types::ListSuiteRunsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Protocol.add_member(:mqtt_v3_1_1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MqttV3_1_1", traits: {"smithy.api#enumValue" => "MqttV3_1_1"}))
    Protocol.add_member(:mqtt_v5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MqttV5", traits: {"smithy.api#enumValue" => "MqttV5"}))
    Protocol.add_member(:mqtt_v3_1_1_over_web_socket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MqttV3_1_1_OverWebSocket", traits: {"smithy.api#enumValue" => "MqttV3_1_1_OverWebSocket"}))
    Protocol.add_member(:mqtt_v5_over_web_socket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MqttV5_OverWebSocket", traits: {"smithy.api#enumValue" => "MqttV5_OverWebSocket"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SelectedTestList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "member"))
    StartSuiteRunRequest.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSuiteRunRequest.add_member(:suite_definition_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionVersion, name: "suiteDefinitionVersion"))
    StartSuiteRunRequest.add_member(:suite_run_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteRunConfiguration, name: "suiteRunConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartSuiteRunRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    StartSuiteRunRequest.type = Types::StartSuiteRunRequest
    StartSuiteRunResponse.add_member(:suite_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteRunId"))
    StartSuiteRunResponse.add_member(:suite_run_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "suiteRunArn"))
    StartSuiteRunResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    StartSuiteRunResponse.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "endpoint"))
    StartSuiteRunResponse.type = Types::StartSuiteRunResponse
    Status.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    Status.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    Status.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    Status.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    Status.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    Status.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    Status.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    Status.add_member(:pass_with_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS_WITH_WARNINGS", traits: {"smithy.api#enumValue" => "PASS_WITH_WARNINGS"}))
    Status.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    StopSuiteRunRequest.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSuiteRunRequest.add_member(:suite_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSuiteRunRequest.type = Types::StopSuiteRunRequest
    StopSuiteRunResponse.type = Types::StopSuiteRunResponse
    SuiteDefinitionConfiguration.add_member(:suite_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionName, name: "suiteDefinitionName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SuiteDefinitionConfiguration.add_member(:devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceUnderTestList, name: "devices"))
    SuiteDefinitionConfiguration.add_member(:intended_for_qualification, ::Smithy::Schema::Shapes::MemberShape.new(target: IntendedForQualificationBoolean, name: "intendedForQualification"))
    SuiteDefinitionConfiguration.add_member(:is_long_duration_test, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLongDurationTestBoolean, name: "isLongDurationTest"))
    SuiteDefinitionConfiguration.add_member(:root_group, ::Smithy::Schema::Shapes::MemberShape.new(target: RootGroup, name: "rootGroup", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SuiteDefinitionConfiguration.add_member(:device_permission_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "devicePermissionRoleArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SuiteDefinitionConfiguration.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "protocol"))
    SuiteDefinitionConfiguration.type = Types::SuiteDefinitionConfiguration
    SuiteDefinitionInformation.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId"))
    SuiteDefinitionInformation.add_member(:suite_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionName, name: "suiteDefinitionName"))
    SuiteDefinitionInformation.add_member(:default_devices, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceUnderTestList, name: "defaultDevices"))
    SuiteDefinitionInformation.add_member(:intended_for_qualification, ::Smithy::Schema::Shapes::MemberShape.new(target: IntendedForQualificationBoolean, name: "intendedForQualification"))
    SuiteDefinitionInformation.add_member(:is_long_duration_test, ::Smithy::Schema::Shapes::MemberShape.new(target: IsLongDurationTestBoolean, name: "isLongDurationTest"))
    SuiteDefinitionInformation.add_member(:protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: Protocol, name: "protocol"))
    SuiteDefinitionInformation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    SuiteDefinitionInformation.type = Types::SuiteDefinitionInformation
    SuiteDefinitionInformationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionInformation, name: "member"))
    SuiteRunConfiguration.add_member(:primary_device, ::Smithy::Schema::Shapes::MemberShape.new(target: DeviceUnderTest, name: "primaryDevice", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SuiteRunConfiguration.add_member(:selected_test_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectedTestList, name: "selectedTestList"))
    SuiteRunConfiguration.add_member(:parallel_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelRun, name: "parallelRun"))
    SuiteRunConfiguration.type = Types::SuiteRunConfiguration
    SuiteRunInformation.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId"))
    SuiteRunInformation.add_member(:suite_definition_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionVersion, name: "suiteDefinitionVersion"))
    SuiteRunInformation.add_member(:suite_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionName, name: "suiteDefinitionName"))
    SuiteRunInformation.add_member(:suite_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteRunId"))
    SuiteRunInformation.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    SuiteRunInformation.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startedAt"))
    SuiteRunInformation.add_member(:end_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endAt"))
    SuiteRunInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteRunStatus, name: "status"))
    SuiteRunInformation.add_member(:passed, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteRunResultCount, name: "passed"))
    SuiteRunInformation.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteRunResultCount, name: "failed"))
    SuiteRunInformation.type = Types::SuiteRunInformation
    SuiteRunStatus.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    SuiteRunStatus.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    SuiteRunStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    SuiteRunStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    SuiteRunStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    SuiteRunStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    SuiteRunStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    SuiteRunStatus.add_member(:pass_with_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS_WITH_WARNINGS", traits: {"smithy.api#enumValue" => "PASS_WITH_WARNINGS"}))
    SuiteRunStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    SuiteRunsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteRunInformation, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String128, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TestCaseRun.add_member(:test_case_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "testCaseRunId"))
    TestCaseRun.add_member(:test_case_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "testCaseDefinitionId"))
    TestCaseRun.add_member(:test_case_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseDefinitionName, name: "testCaseDefinitionName"))
    TestCaseRun.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, name: "status"))
    TestCaseRun.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime"))
    TestCaseRun.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    TestCaseRun.add_member(:log_url, ::Smithy::Schema::Shapes::MemberShape.new(target: LogUrl, name: "logUrl"))
    TestCaseRun.add_member(:warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: Warnings, name: "warnings"))
    TestCaseRun.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: Failure, name: "failure"))
    TestCaseRun.add_member(:test_scenarios, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseScenariosList, name: "testScenarios"))
    TestCaseRun.type = Types::TestCaseRun
    TestCaseRuns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseRun, name: "member"))
    TestCaseScenario.add_member(:test_case_scenario_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseScenarioId, name: "testCaseScenarioId"))
    TestCaseScenario.add_member(:test_case_scenario_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseScenarioType, name: "testCaseScenarioType"))
    TestCaseScenario.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseScenarioStatus, name: "status"))
    TestCaseScenario.add_member(:failure, ::Smithy::Schema::Shapes::MemberShape.new(target: Failure, name: "failure"))
    TestCaseScenario.add_member(:system_message, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemMessage, name: "systemMessage"))
    TestCaseScenario.type = Types::TestCaseScenario
    TestCaseScenarioStatus.add_member(:pass, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS", traits: {"smithy.api#enumValue" => "PASS"}))
    TestCaseScenarioStatus.add_member(:fail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAIL", traits: {"smithy.api#enumValue" => "FAIL"}))
    TestCaseScenarioStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    TestCaseScenarioStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    TestCaseScenarioStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    TestCaseScenarioStatus.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    TestCaseScenarioStatus.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    TestCaseScenarioStatus.add_member(:pass_with_warnings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PASS_WITH_WARNINGS", traits: {"smithy.api#enumValue" => "PASS_WITH_WARNINGS"}))
    TestCaseScenarioStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TestCaseScenarioType.add_member(:advanced, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Advanced", traits: {"smithy.api#enumValue" => "Advanced"}))
    TestCaseScenarioType.add_member(:basic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Basic", traits: {"smithy.api#enumValue" => "Basic"}))
    TestCaseScenariosList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TestCaseScenario, name: "member"))
    TestResult.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupResultList, name: "groups"))
    TestResult.type = Types::TestResult
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateSuiteDefinitionRequest.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSuiteDefinitionRequest.add_member(:suite_definition_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionConfiguration, name: "suiteDefinitionConfiguration", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateSuiteDefinitionRequest.type = Types::UpdateSuiteDefinitionRequest
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UUID, name: "suiteDefinitionId"))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "suiteDefinitionArn"))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionName, name: "suiteDefinitionName"))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SuiteDefinitionVersion, name: "suiteDefinitionVersion"))
    UpdateSuiteDefinitionResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    UpdateSuiteDefinitionResponse.add_member(:last_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "lastUpdatedAt"))
    UpdateSuiteDefinitionResponse.type = Types::UpdateSuiteDefinitionResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: Message, name: "message"))
    ValidationException.type = Types::ValidationException

    IotSenateService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotdeviceadvisor#IotSenateService"
      service.name = "IotSenateService"
      service.version = "2020-09-18"
      service.traits = {"aws.api#service" => {"sdkId" => "IotDeviceAdvisor", "arnNamespace" => "iotdeviceadvisor", "cloudFormationName" => "IotDeviceAdvisor", "cloudTrailEventSource" => "iotdeviceadvisor.amazonaws.com", "endpointPrefix" => "api.iotdeviceadvisor"}, "aws.auth#sigv4" => {"name" => "iotdeviceadvisor"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Core Device Advisor"}
      service.add_operation(:create_suite_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#CreateSuiteDefinition"
        operation.name = "CreateSuiteDefinition"
        operation.input = CreateSuiteDefinitionRequest
        operation.output = CreateSuiteDefinitionResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/suiteDefinitions", "code" => 200}}
      end)
      service.add_operation(:delete_suite_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#DeleteSuiteDefinition"
        operation.name = "DeleteSuiteDefinition"
        operation.input = DeleteSuiteDefinitionRequest
        operation.output = DeleteSuiteDefinitionResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/suiteDefinitions/{suiteDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#GetEndpoint"
        operation.name = "GetEndpoint"
        operation.input = GetEndpointRequest
        operation.output = GetEndpointResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/endpoint", "code" => 200}}
      end)
      service.add_operation(:get_suite_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#GetSuiteDefinition"
        operation.name = "GetSuiteDefinition"
        operation.input = GetSuiteDefinitionRequest
        operation.output = GetSuiteDefinitionResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteDefinitions/{suiteDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_suite_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#GetSuiteRun"
        operation.name = "GetSuiteRun"
        operation.input = GetSuiteRunRequest
        operation.output = GetSuiteRunResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}", "code" => 200}}
      end)
      service.add_operation(:get_suite_run_report, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#GetSuiteRunReport"
        operation.name = "GetSuiteRunReport"
        operation.input = GetSuiteRunReportRequest
        operation.output = GetSuiteRunReportResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/report", "code" => 200}}
      end)
      service.add_operation(:list_suite_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#ListSuiteDefinitions"
        operation.name = "ListSuiteDefinitions"
        operation.input = ListSuiteDefinitionsRequest
        operation.output = ListSuiteDefinitionsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteDefinitions", "code" => 200}}
        operation[:paginator] = Paginators::ListSuiteDefinitions.new
      end)
      service.add_operation(:list_suite_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#ListSuiteRuns"
        operation.name = "ListSuiteRuns"
        operation.input = ListSuiteRunsRequest
        operation.output = ListSuiteRunsResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteRuns", "code" => 200}}
        operation[:paginator] = Paginators::ListSuiteRuns.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_suite_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#StartSuiteRun"
        operation.name = "StartSuiteRun"
        operation.input = StartSuiteRunRequest
        operation.output = StartSuiteRunResponse
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/suiteDefinitions/{suiteDefinitionId}/suiteRuns", "code" => 200}}
      end)
      service.add_operation(:stop_suite_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#StopSuiteRun"
        operation.name = "StopSuiteRun"
        operation.input = StopSuiteRunRequest
        operation.output = StopSuiteRunResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_suite_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#UpdateSuiteDefinition"
        operation.name = "UpdateSuiteDefinition"
        operation.input = UpdateSuiteDefinitionRequest
        operation.output = UpdateSuiteDefinitionResponse
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/suiteDefinitions/{suiteDefinitionId}", "code" => 200}}
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
