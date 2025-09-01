# frozen_string_literal: true

# This is generated code!

module Aws::IotDeviceAdvisor
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}})
    AuthenticationMethod = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotdeviceadvisor#AuthenticationMethod', name: 'AuthenticationMethod')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\u0021-\\u007E]+$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CreateSuiteDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#CreateSuiteDefinitionRequest', name: 'CreateSuiteDefinitionRequest')
    CreateSuiteDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#CreateSuiteDefinitionResponse', name: 'CreateSuiteDefinitionResponse')
    DeleteSuiteDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#DeleteSuiteDefinitionRequest', name: 'DeleteSuiteDefinitionRequest')
    DeleteSuiteDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#DeleteSuiteDefinitionResponse', name: 'DeleteSuiteDefinitionResponse')
    DeviceUnderTest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#DeviceUnderTest', name: 'DeviceUnderTest')
    DeviceUnderTestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdeviceadvisor#DeviceUnderTestList', name: 'DeviceUnderTestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    Endpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#Endpoint', name: 'Endpoint', traits: {"smithy.api#length" => {"min" => 45, "max" => 75}})
    ErrorReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#ErrorReason', name: 'ErrorReason')
    Failure = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#Failure', name: 'Failure')
    GetEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GetEndpointRequest', name: 'GetEndpointRequest')
    GetEndpointResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GetEndpointResponse', name: 'GetEndpointResponse')
    GetSuiteDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GetSuiteDefinitionRequest', name: 'GetSuiteDefinitionRequest')
    GetSuiteDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GetSuiteDefinitionResponse', name: 'GetSuiteDefinitionResponse')
    GetSuiteRunReportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GetSuiteRunReportRequest', name: 'GetSuiteRunReportRequest')
    GetSuiteRunReportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GetSuiteRunReportResponse', name: 'GetSuiteRunReportResponse')
    GetSuiteRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GetSuiteRunRequest', name: 'GetSuiteRunRequest')
    GetSuiteRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GetSuiteRunResponse', name: 'GetSuiteRunResponse')
    GroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#GroupName', name: 'GroupName')
    GroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#GroupResult', name: 'GroupResult')
    GroupResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdeviceadvisor#GroupResultList', name: 'GroupResultList')
    IntendedForQualificationBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotdeviceadvisor#IntendedForQualificationBoolean', name: 'IntendedForQualificationBoolean')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    IsLongDurationTestBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotdeviceadvisor#IsLongDurationTestBoolean', name: 'IsLongDurationTestBoolean')
    ListSuiteDefinitionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ListSuiteDefinitionsRequest', name: 'ListSuiteDefinitionsRequest')
    ListSuiteDefinitionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ListSuiteDefinitionsResponse', name: 'ListSuiteDefinitionsResponse')
    ListSuiteRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ListSuiteRunsRequest', name: 'ListSuiteRunsRequest')
    ListSuiteRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ListSuiteRunsResponse', name: 'ListSuiteRunsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LogUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#LogUrl', name: 'LogUrl')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotdeviceadvisor#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    Message = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#Message', name: 'Message', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ParallelRun = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotdeviceadvisor#ParallelRun', name: 'ParallelRun')
    Protocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotdeviceadvisor#Protocol', name: 'Protocol')
    QualificationReportDownloadUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#QualificationReportDownloadUrl', name: 'QualificationReportDownloadUrl')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RootGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#RootGroup', name: 'RootGroup', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    SelectedTestList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdeviceadvisor#SelectedTestList', name: 'SelectedTestList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    StartSuiteRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#StartSuiteRunRequest', name: 'StartSuiteRunRequest')
    StartSuiteRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#StartSuiteRunResponse', name: 'StartSuiteRunResponse')
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotdeviceadvisor#Status', name: 'Status')
    StopSuiteRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#StopSuiteRunRequest', name: 'StopSuiteRunRequest')
    StopSuiteRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#StopSuiteRunResponse', name: 'StopSuiteRunResponse')
    String128 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#String128', name: 'String128', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    String256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#String256', name: 'String256', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SuiteDefinitionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteDefinitionConfiguration', name: 'SuiteDefinitionConfiguration')
    SuiteDefinitionInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteDefinitionInformation', name: 'SuiteDefinitionInformation')
    SuiteDefinitionInformationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteDefinitionInformationList', name: 'SuiteDefinitionInformationList')
    SuiteDefinitionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteDefinitionName', name: 'SuiteDefinitionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    SuiteDefinitionVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteDefinitionVersion', name: 'SuiteDefinitionVersion', traits: {"smithy.api#length" => {"min" => 2, "max" => 255}})
    SuiteRunConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteRunConfiguration', name: 'SuiteRunConfiguration')
    SuiteRunInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteRunInformation', name: 'SuiteRunInformation')
    SuiteRunResultCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteRunResultCount', name: 'SuiteRunResultCount', traits: {"smithy.api#range" => {"min" => 0, "max" => 500}})
    SuiteRunStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteRunStatus', name: 'SuiteRunStatus')
    SuiteRunsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdeviceadvisor#SuiteRunsList', name: 'SuiteRunsList')
    SystemMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#SystemMessage', name: 'SystemMessage')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdeviceadvisor#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.iotdeviceadvisor#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#TagResourceResponse', name: 'TagResourceResponse')
    TestCaseDefinitionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestCaseDefinitionName', name: 'TestCaseDefinitionName')
    TestCaseRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestCaseRun', name: 'TestCaseRun')
    TestCaseRuns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestCaseRuns', name: 'TestCaseRuns')
    TestCaseScenario = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestCaseScenario', name: 'TestCaseScenario')
    TestCaseScenarioId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestCaseScenarioId', name: 'TestCaseScenarioId')
    TestCaseScenarioStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestCaseScenarioStatus', name: 'TestCaseScenarioStatus')
    TestCaseScenarioType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestCaseScenarioType', name: 'TestCaseScenarioType')
    TestCaseScenariosList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestCaseScenariosList', name: 'TestCaseScenariosList')
    TestResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#TestResult', name: 'TestResult')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotdeviceadvisor#Timestamp', name: 'Timestamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#UUID', name: 'UUID', traits: {"smithy.api#length" => {"min" => 12, "max" => 36}})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateSuiteDefinitionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#UpdateSuiteDefinitionRequest', name: 'UpdateSuiteDefinitionRequest')
    UpdateSuiteDefinitionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#UpdateSuiteDefinitionResponse', name: 'UpdateSuiteDefinitionResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotdeviceadvisor#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Warnings = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotdeviceadvisor#Warnings', name: 'Warnings')

    AuthenticationMethod.add_member(:x509_client_certificate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'X509ClientCertificate', traits: {"smithy.api#enumValue" => "X509ClientCertificate"}))
    AuthenticationMethod.add_member(:signature_version4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SignatureVersion4', traits: {"smithy.api#enumValue" => "SignatureVersion4"}))
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Sends a Conflict Exception message.</p>"}))
    ConflictException.type = Types::ConflictException
    CreateSuiteDefinitionRequest.add_member(:suite_definition_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionConfiguration, location_name: 'suiteDefinitionConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Creates a Device Advisor test suite with suite definition configuration.</p>", "smithy.api#required" => {}}))
    CreateSuiteDefinitionRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be attached to the suite definition.</p>"}))
    CreateSuiteDefinitionRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'clientToken', traits: {"smithy.api#documentation" => "<p>The client token for the test suite definition creation. \n            This token is used for tracking test suite definition creation \n            using retries and obtaining its status. This parameter is optional.</p>", "smithy.api#idempotencyToken" => {}}))
    CreateSuiteDefinitionRequest.type = Types::CreateSuiteDefinitionRequest
    CreateSuiteDefinitionResponse.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>The UUID of the test suite created.</p>"}))
    CreateSuiteDefinitionResponse.add_member(:suite_definition_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'suiteDefinitionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the test suite.</p>"}))
    CreateSuiteDefinitionResponse.add_member(:suite_definition_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: 'suiteDefinitionName', traits: {"smithy.api#documentation" => "<p>The suite definition name of the test suite. This is a required parameter.</p>"}))
    CreateSuiteDefinitionResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the test suite was created.</p>"}))
    CreateSuiteDefinitionResponse.type = Types::CreateSuiteDefinitionResponse
    DeleteSuiteDefinitionRequest.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the test suite to be deleted.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSuiteDefinitionRequest.type = Types::DeleteSuiteDefinitionRequest
    DeleteSuiteDefinitionResponse.type = Types::DeleteSuiteDefinitionResponse
    DeviceUnderTest.add_member(:thing_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'thingArn', traits: {"smithy.api#documentation" => "<p>Lists device's thing ARN.</p>"}))
    DeviceUnderTest.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>Lists device's certificate ARN.</p>"}))
    DeviceUnderTest.add_member(:device_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'deviceRoleArn', traits: {"smithy.api#documentation" => "<p>Lists device's role ARN.</p>"}))
    DeviceUnderTest.type = Types::DeviceUnderTest
    DeviceUnderTestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUnderTest)
    GetEndpointRequest.add_member(:thing_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'thingArn', traits: {"smithy.api#documentation" => "<p>The thing ARN of the device. This is an optional parameter.</p>", "smithy.api#httpQuery" => "thingArn"}))
    GetEndpointRequest.add_member(:certificate_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'certificateArn', traits: {"smithy.api#documentation" => "<p>The certificate ARN of the device. This is an optional parameter.</p>", "smithy.api#httpQuery" => "certificateArn"}))
    GetEndpointRequest.add_member(:device_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'deviceRoleArn', traits: {"smithy.api#documentation" => "<p>The device role ARN of the device. This is an optional parameter.</p>", "smithy.api#httpQuery" => "deviceRoleArn"}))
    GetEndpointRequest.add_member(:authentication_method, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationMethod, location_name: 'authenticationMethod', traits: {"smithy.api#documentation" => "<p>The authentication method used during the device connection.</p>", "smithy.api#httpQuery" => "authenticationMethod"}))
    GetEndpointRequest.type = Types::GetEndpointRequest
    GetEndpointResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The response of an Device Advisor endpoint.</p>"}))
    GetEndpointResponse.type = Types::GetEndpointResponse
    GetSuiteDefinitionRequest.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the test suite to get.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteDefinitionRequest.add_member(:suite_definition_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: 'suiteDefinitionVersion', traits: {"smithy.api#documentation" => "<p>Suite definition version of the test suite to get.</p>", "smithy.api#httpQuery" => "suiteDefinitionVersion"}))
    GetSuiteDefinitionRequest.type = Types::GetSuiteDefinitionRequest
    GetSuiteDefinitionResponse.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the suite definition.</p>"}))
    GetSuiteDefinitionResponse.add_member(:suite_definition_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'suiteDefinitionArn', traits: {"smithy.api#documentation" => "<p>The ARN of the suite definition.</p>"}))
    GetSuiteDefinitionResponse.add_member(:suite_definition_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: 'suiteDefinitionVersion', traits: {"smithy.api#documentation" => "<p>Suite definition version of the suite definition.</p>"}))
    GetSuiteDefinitionResponse.add_member(:latest_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: 'latestVersion', traits: {"smithy.api#documentation" => "<p>Latest suite definition version of the suite definition.</p>"}))
    GetSuiteDefinitionResponse.add_member(:suite_definition_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionConfiguration, location_name: 'suiteDefinitionConfiguration', traits: {"smithy.api#documentation" => "<p>Suite configuration of the suite definition.</p>"}))
    GetSuiteDefinitionResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>Date (in Unix epoch time) when the suite definition was created.</p>"}))
    GetSuiteDefinitionResponse.add_member(:last_modified_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastModifiedAt', traits: {"smithy.api#documentation" => "<p>Date (in Unix epoch time) when the suite definition was last modified.</p>"}))
    GetSuiteDefinitionResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>Tags attached to the suite definition.</p>"}))
    GetSuiteDefinitionResponse.type = Types::GetSuiteDefinitionResponse
    GetSuiteRunReportRequest.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the test suite.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteRunReportRequest.add_member(:suite_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteRunId', traits: {"smithy.api#documentation" => "<p>Suite run ID of the test suite run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteRunReportRequest.type = Types::GetSuiteRunReportRequest
    GetSuiteRunReportResponse.add_member(:qualification_report_download_url, Smithy::Schema::Shapes::ShapeRef.new(shape: QualificationReportDownloadUrl, location_name: 'qualificationReportDownloadUrl', traits: {"smithy.api#documentation" => "<p>Download URL of the qualification report.</p>"}))
    GetSuiteRunReportResponse.type = Types::GetSuiteRunReportResponse
    GetSuiteRunRequest.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID for the test suite run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteRunRequest.add_member(:suite_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteRunId', traits: {"smithy.api#documentation" => "<p>Suite run ID for the test suite run.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSuiteRunRequest.type = Types::GetSuiteRunRequest
    GetSuiteRunResponse.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID for the test suite run.</p>"}))
    GetSuiteRunResponse.add_member(:suite_definition_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: 'suiteDefinitionVersion', traits: {"smithy.api#documentation" => "<p>Suite definition version for the test suite run.</p>"}))
    GetSuiteRunResponse.add_member(:suite_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteRunId', traits: {"smithy.api#documentation" => "<p>Suite run ID for the test suite run.</p>"}))
    GetSuiteRunResponse.add_member(:suite_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'suiteRunArn', traits: {"smithy.api#documentation" => "<p>The ARN of the suite run.</p>"}))
    GetSuiteRunResponse.add_member(:suite_run_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteRunConfiguration, location_name: 'suiteRunConfiguration', traits: {"smithy.api#documentation" => "<p>Suite run configuration for the test suite run.</p>"}))
    GetSuiteRunResponse.add_member(:test_result, Smithy::Schema::Shapes::ShapeRef.new(shape: TestResult, location_name: 'testResult', traits: {"smithy.api#documentation" => "<p>Test results for the test suite run.</p>"}))
    GetSuiteRunResponse.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Date (in Unix epoch time) when the test suite run started.</p>"}))
    GetSuiteRunResponse.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>Date (in Unix epoch time) when the test suite run ended.</p>"}))
    GetSuiteRunResponse.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteRunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status for the test suite run.</p>"}))
    GetSuiteRunResponse.add_member(:error_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorReason, location_name: 'errorReason', traits: {"smithy.api#documentation" => "<p>Error reason for any test suite run failure.</p>"}))
    GetSuiteRunResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags attached to the suite run.</p>"}))
    GetSuiteRunResponse.type = Types::GetSuiteRunResponse
    GroupResult.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'groupId', traits: {"smithy.api#documentation" => "<p>Group result ID.</p>"}))
    GroupResult.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'groupName', traits: {"smithy.api#documentation" => "<p>Group Result Name.</p>"}))
    GroupResult.add_member(:tests, Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseRuns, location_name: 'tests', traits: {"smithy.api#documentation" => "<p>Tests under Group Result.</p>"}))
    GroupResult.type = Types::GroupResult
    GroupResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupResult)
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Sends an Internal Failure Exception message.</p>"}))
    InternalServerException.type = Types::InternalServerException
    ListSuiteDefinitionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return at once.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSuiteDefinitionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used to get the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSuiteDefinitionsRequest.type = Types::ListSuiteDefinitionsRequest
    ListSuiteDefinitionsResponse.add_member(:suite_definition_information_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionInformationList, location_name: 'suiteDefinitionInformationList', traits: {"smithy.api#documentation" => "<p>An array of objects that provide summaries of information about the suite definitions\n            in the list.</p>"}))
    ListSuiteDefinitionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token used to get the next set of results.</p>"}))
    ListSuiteDefinitionsResponse.type = Types::ListSuiteDefinitionsResponse
    ListSuiteRunsRequest.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Lists the test suite runs of the specified test suite based on suite definition\n            ID.</p>", "smithy.api#httpQuery" => "suiteDefinitionId"}))
    ListSuiteRunsRequest.add_member(:suite_definition_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: 'suiteDefinitionVersion', traits: {"smithy.api#documentation" => "<p>Must be passed along with <code>suiteDefinitionId</code>. Lists the test suite runs of\n            the specified test suite based on suite definition version.</p>", "smithy.api#httpQuery" => "suiteDefinitionVersion"}))
    ListSuiteRunsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return at once.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListSuiteRunsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to retrieve the next set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListSuiteRunsRequest.type = Types::ListSuiteRunsRequest
    ListSuiteRunsResponse.add_member(:suite_runs_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteRunsList, location_name: 'suiteRunsList', traits: {"smithy.api#documentation" => "<p>An array of objects that provide summaries of information about the suite runs in the\n            list.</p>"}))
    ListSuiteRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>A token to retrieve the next set of results.</p>"}))
    ListSuiteRunsResponse.type = Types::ListSuiteRunsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN of the IoT Device Advisor resource. This can be SuiteDefinition ARN or\n            SuiteRun ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags attached to the IoT Device Advisor resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    Protocol.add_member(:mqtt_v3_1_1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MqttV3_1_1', traits: {"smithy.api#enumValue" => "MqttV3_1_1"}))
    Protocol.add_member(:mqtt_v5, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MqttV5', traits: {"smithy.api#enumValue" => "MqttV5"}))
    Protocol.add_member(:mqtt_v3_1_1_over_web_socket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MqttV3_1_1_OverWebSocket', traits: {"smithy.api#enumValue" => "MqttV3_1_1_OverWebSocket"}))
    Protocol.add_member(:mqtt_v5_over_web_socket, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MqttV5_OverWebSocket', traits: {"smithy.api#enumValue" => "MqttV5_OverWebSocket"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Sends a Resource Not Found Exception message.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SelectedTestList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UUID)
    StartSuiteRunRequest.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the test suite.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartSuiteRunRequest.add_member(:suite_definition_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: 'suiteDefinitionVersion', traits: {"smithy.api#documentation" => "<p>Suite definition version of the test suite.</p>"}))
    StartSuiteRunRequest.add_member(:suite_run_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteRunConfiguration, location_name: 'suiteRunConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Suite run configuration.</p>", "smithy.api#required" => {}}))
    StartSuiteRunRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags to be attached to the suite run.</p>"}))
    StartSuiteRunRequest.type = Types::StartSuiteRunRequest
    StartSuiteRunResponse.add_member(:suite_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteRunId', traits: {"smithy.api#documentation" => "<p>Suite Run ID of the started suite run.</p>"}))
    StartSuiteRunResponse.add_member(:suite_run_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'suiteRunArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the started suite run.</p>"}))
    StartSuiteRunResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>Starts a Device Advisor test suite run based on suite create time.</p>"}))
    StartSuiteRunResponse.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'endpoint', traits: {"smithy.api#documentation" => "<p>The response of an Device Advisor test endpoint.</p>"}))
    StartSuiteRunResponse.type = Types::StartSuiteRunResponse
    Status.add_member(:pass, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASS', traits: {"smithy.api#enumValue" => "PASS"}))
    Status.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "FAIL"}))
    Status.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    Status.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    Status.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    Status.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    Status.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    Status.add_member(:pass_with_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASS_WITH_WARNINGS', traits: {"smithy.api#enumValue" => "PASS_WITH_WARNINGS"}))
    Status.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    StopSuiteRunRequest.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the test suite run to be stopped.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSuiteRunRequest.add_member(:suite_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteRunId', traits: {"smithy.api#documentation" => "<p>Suite run ID of the test suite run to be stopped.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopSuiteRunRequest.type = Types::StopSuiteRunRequest
    StopSuiteRunResponse.type = Types::StopSuiteRunResponse
    SuiteDefinitionConfiguration.add_member(:suite_definition_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: 'suiteDefinitionName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Gets the suite definition name. This is a required parameter.</p>", "smithy.api#required" => {}}))
    SuiteDefinitionConfiguration.add_member(:devices, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUnderTestList, location_name: 'devices', traits: {"smithy.api#documentation" => "<p>Gets the devices configured.</p>"}))
    SuiteDefinitionConfiguration.add_member(:intended_for_qualification, Smithy::Schema::Shapes::ShapeRef.new(shape: IntendedForQualificationBoolean, location_name: 'intendedForQualification', traits: {"smithy.api#documentation" => "<p>Gets the tests intended for qualification in a suite.</p>"}))
    SuiteDefinitionConfiguration.add_member(:is_long_duration_test, Smithy::Schema::Shapes::ShapeRef.new(shape: IsLongDurationTestBoolean, location_name: 'isLongDurationTest', traits: {"smithy.api#documentation" => "<p>Verifies if the test suite is a long duration test.</p>"}))
    SuiteDefinitionConfiguration.add_member(:root_group, Smithy::Schema::Shapes::ShapeRef.new(shape: RootGroup, location_name: 'rootGroup', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Gets the test suite root group. This is a required parameter.\n            For updating or creating the latest qualification suite, \n            if <code>intendedForQualification</code> is set to true, \n            <code>rootGroup</code> can be an empty string. If <code>intendedForQualification</code> is false, \n            <code>rootGroup</code> cannot be an empty string.\n            If <code>rootGroup</code> is empty, and \n            <code>intendedForQualification</code> is set to true, \n            all the qualification tests are included, and the configuration is default.</p>\n         <p>\n            For a qualification suite, the minimum length is 0, and the maximum is 2048.  For a \n            non-qualification suite, the minimum length is 1, and the maximum is 2048.\n        </p>", "smithy.api#required" => {}}))
    SuiteDefinitionConfiguration.add_member(:device_permission_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'devicePermissionRoleArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Gets the device permission ARN. This is a required parameter.</p>", "smithy.api#required" => {}}))
    SuiteDefinitionConfiguration.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>Sets the MQTT protocol that is configured in the suite definition.</p>"}))
    SuiteDefinitionConfiguration.type = Types::SuiteDefinitionConfiguration
    SuiteDefinitionInformation.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the test suite.</p>"}))
    SuiteDefinitionInformation.add_member(:suite_definition_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: 'suiteDefinitionName', traits: {"smithy.api#documentation" => "<p>Suite name of the test suite.</p>"}))
    SuiteDefinitionInformation.add_member(:default_devices, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUnderTestList, location_name: 'defaultDevices', traits: {"smithy.api#documentation" => "<p>Specifies the devices that are under test for the test suite.</p>"}))
    SuiteDefinitionInformation.add_member(:intended_for_qualification, Smithy::Schema::Shapes::ShapeRef.new(shape: IntendedForQualificationBoolean, location_name: 'intendedForQualification', traits: {"smithy.api#documentation" => "<p>Specifies if the test suite is intended for qualification.</p>"}))
    SuiteDefinitionInformation.add_member(:is_long_duration_test, Smithy::Schema::Shapes::ShapeRef.new(shape: IsLongDurationTestBoolean, location_name: 'isLongDurationTest', traits: {"smithy.api#documentation" => "<p>Verifies if the test suite is a long duration test.</p>"}))
    SuiteDefinitionInformation.add_member(:protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: Protocol, location_name: 'protocol', traits: {"smithy.api#documentation" => "<p>Gets the MQTT protocol that is configured in the suite definition.</p>"}))
    SuiteDefinitionInformation.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>Date (in Unix epoch time) when the test suite was created.</p>"}))
    SuiteDefinitionInformation.type = Types::SuiteDefinitionInformation
    SuiteDefinitionInformationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionInformation)
    SuiteRunConfiguration.add_member(:primary_device, Smithy::Schema::Shapes::ShapeRef.new(shape: DeviceUnderTest, location_name: 'primaryDevice', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Sets the primary device for the test suite run. This requires a thing ARN or a\n            certificate ARN.</p>", "smithy.api#required" => {}}))
    SuiteRunConfiguration.add_member(:selected_test_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectedTestList, location_name: 'selectedTestList', traits: {"smithy.api#documentation" => "<p>Sets test case list.</p>"}))
    SuiteRunConfiguration.add_member(:parallel_run, Smithy::Schema::Shapes::ShapeRef.new(shape: ParallelRun, location_name: 'parallelRun', traits: {"smithy.api#documentation" => "<p>TRUE if multiple test suites run in parallel.</p>"}))
    SuiteRunConfiguration.type = Types::SuiteRunConfiguration
    SuiteRunInformation.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the suite run.</p>"}))
    SuiteRunInformation.add_member(:suite_definition_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: 'suiteDefinitionVersion', traits: {"smithy.api#documentation" => "<p>Suite definition version of the suite run.</p>"}))
    SuiteRunInformation.add_member(:suite_definition_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: 'suiteDefinitionName', traits: {"smithy.api#documentation" => "<p>Suite definition name of the suite run.</p>"}))
    SuiteRunInformation.add_member(:suite_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteRunId', traits: {"smithy.api#documentation" => "<p>Suite run ID of the suite run.</p>"}))
    SuiteRunInformation.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>Date (in Unix epoch time) when the suite run was created.</p>"}))
    SuiteRunInformation.add_member(:started_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startedAt', traits: {"smithy.api#documentation" => "<p>Date (in Unix epoch time) when the suite run was started.</p>"}))
    SuiteRunInformation.add_member(:end_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endAt', traits: {"smithy.api#documentation" => "<p>Date (in Unix epoch time) when the suite run ended.</p>"}))
    SuiteRunInformation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteRunStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Status of the suite run.</p>"}))
    SuiteRunInformation.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteRunResultCount, location_name: 'passed', traits: {"smithy.api#documentation" => "<p>Number of test cases that passed in the suite run.</p>"}))
    SuiteRunInformation.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteRunResultCount, location_name: 'failed', traits: {"smithy.api#documentation" => "<p>Number of test cases that failed in the suite run.</p>"}))
    SuiteRunInformation.type = Types::SuiteRunInformation
    SuiteRunStatus.add_member(:pass, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASS', traits: {"smithy.api#enumValue" => "PASS"}))
    SuiteRunStatus.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "FAIL"}))
    SuiteRunStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    SuiteRunStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    SuiteRunStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    SuiteRunStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    SuiteRunStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    SuiteRunStatus.add_member(:pass_with_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASS_WITH_WARNINGS', traits: {"smithy.api#enumValue" => "PASS_WITH_WARNINGS"}))
    SuiteRunStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    SuiteRunsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteRunInformation)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String128)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String128)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String256)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN of an IoT Device Advisor resource. This can be SuiteDefinition ARN or\n            SuiteRun ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The tags to be attached to the IoT Device Advisor resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TestCaseRun.add_member(:test_case_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'testCaseRunId', traits: {"smithy.api#documentation" => "<p>Provides the test case run ID.</p>"}))
    TestCaseRun.add_member(:test_case_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'testCaseDefinitionId', traits: {"smithy.api#documentation" => "<p>Provides the test case run definition ID.</p>"}))
    TestCaseRun.add_member(:test_case_definition_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseDefinitionName, location_name: 'testCaseDefinitionName', traits: {"smithy.api#documentation" => "<p>Provides the test case run definition name.</p>"}))
    TestCaseRun.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Provides the test case run status. Status is one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PASS</code>: Test passed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAIL</code>: Test failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PENDING</code>: Test has not started running but is scheduled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code>: Test is running.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPING</code>: Test is performing cleanup steps. You will see this\n                    status only if you stop a suite run.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPED</code> Test is stopped. You will see this status only if you\n                    stop a suite run.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PASS_WITH_WARNINGS</code>: Test passed with warnings.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ERORR</code>: Test faced an error when running due to an internal\n                    issue.</p>\n            </li>\n         </ul>"}))
    TestCaseRun.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p>Provides test case run start time.</p>"}))
    TestCaseRun.add_member(:end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'endTime', traits: {"smithy.api#documentation" => "<p>Provides test case run end time.</p>"}))
    TestCaseRun.add_member(:log_url, Smithy::Schema::Shapes::ShapeRef.new(shape: LogUrl, location_name: 'logUrl', traits: {"smithy.api#documentation" => "<p>Provides test case run log URL.</p>"}))
    TestCaseRun.add_member(:warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Warnings, location_name: 'warnings', traits: {"smithy.api#documentation" => "<p>Provides test case run warnings.</p>"}))
    TestCaseRun.add_member(:failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Failure, location_name: 'failure', traits: {"smithy.api#documentation" => "<p>Provides test case run failure result.</p>"}))
    TestCaseRun.add_member(:test_scenarios, Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseScenariosList, location_name: 'testScenarios', traits: {"smithy.api#documentation" => "<p> Provides the test scenarios for the test case run. </p>"}))
    TestCaseRun.type = Types::TestCaseRun
    TestCaseRuns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseRun)
    TestCaseScenario.add_member(:test_case_scenario_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseScenarioId, location_name: 'testCaseScenarioId', traits: {"smithy.api#documentation" => "<p>Provides test case scenario ID.</p>"}))
    TestCaseScenario.add_member(:test_case_scenario_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseScenarioType, location_name: 'testCaseScenarioType', traits: {"smithy.api#documentation" => "<p>Provides test case scenario type. Type is one of the following:</p>\n         <ul>\n            <li>\n               <p>Advanced</p>\n            </li>\n            <li>\n               <p>Basic</p>\n            </li>\n         </ul>"}))
    TestCaseScenario.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseScenarioStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>Provides the test case scenario status. Status is one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>PASS</code>: Test passed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAIL</code>: Test failed.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PENDING</code>: Test has not started running but is scheduled.</p>\n            </li>\n            <li>\n               <p>\n                  <code>RUNNING</code>: Test is running.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPING</code>: Test is performing cleanup steps. You will see this\n                    status only if you stop a suite run.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STOPPED</code> Test is stopped. You will see this status only if you\n                    stop a suite run.</p>\n            </li>\n            <li>\n               <p>\n                  <code>PASS_WITH_WARNINGS</code>: Test passed with warnings.</p>\n            </li>\n            <li>\n               <p>\n                  <code>ERORR</code>: Test faced an error when running due to an internal\n                    issue.</p>\n            </li>\n         </ul>"}))
    TestCaseScenario.add_member(:failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Failure, location_name: 'failure', traits: {"smithy.api#documentation" => "<p>Provides test case scenario failure result.</p>"}))
    TestCaseScenario.add_member(:system_message, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemMessage, location_name: 'systemMessage', traits: {"smithy.api#documentation" => "<p>Provides test case scenario system messages if any.</p>"}))
    TestCaseScenario.type = Types::TestCaseScenario
    TestCaseScenarioStatus.add_member(:pass, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASS', traits: {"smithy.api#enumValue" => "PASS"}))
    TestCaseScenarioStatus.add_member(:fail, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAIL', traits: {"smithy.api#enumValue" => "FAIL"}))
    TestCaseScenarioStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    TestCaseScenarioStatus.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    TestCaseScenarioStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    TestCaseScenarioStatus.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    TestCaseScenarioStatus.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    TestCaseScenarioStatus.add_member(:pass_with_warnings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASS_WITH_WARNINGS', traits: {"smithy.api#enumValue" => "PASS_WITH_WARNINGS"}))
    TestCaseScenarioStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    TestCaseScenarioType.add_member(:advanced, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Advanced', traits: {"smithy.api#enumValue" => "Advanced"}))
    TestCaseScenarioType.add_member(:basic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Basic', traits: {"smithy.api#enumValue" => "Basic"}))
    TestCaseScenariosList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseScenario)
    TestResult.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupResultList, location_name: 'groups', traits: {"smithy.api#documentation" => "<p>Show each group of test results.</p>"}))
    TestResult.type = Types::TestResult
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN of an IoT Device Advisor resource. This can be SuiteDefinition ARN or\n            SuiteRun ARN.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>List of tag keys to remove from the IoT Device Advisor resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateSuiteDefinitionRequest.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the test suite to be updated.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSuiteDefinitionRequest.add_member(:suite_definition_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionConfiguration, location_name: 'suiteDefinitionConfiguration', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Updates a Device Advisor test suite with suite definition configuration.</p>", "smithy.api#required" => {}}))
    UpdateSuiteDefinitionRequest.type = Types::UpdateSuiteDefinitionRequest
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'suiteDefinitionId', traits: {"smithy.api#documentation" => "<p>Suite definition ID of the updated test suite.</p>"}))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'suiteDefinitionArn', traits: {"smithy.api#documentation" => "<p>Amazon Resource Name (ARN) of the updated test suite.</p>"}))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: 'suiteDefinitionName', traits: {"smithy.api#documentation" => "<p>Updates the suite definition name. This is a required parameter.</p>"}))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: 'suiteDefinitionVersion', traits: {"smithy.api#documentation" => "<p>Suite definition version of the updated test suite.</p>"}))
    UpdateSuiteDefinitionResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>Timestamp of when the test suite was created.</p>"}))
    UpdateSuiteDefinitionResponse.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>Timestamp of when the test suite was updated.</p>"}))
    UpdateSuiteDefinitionResponse.type = Types::UpdateSuiteDefinitionResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Message, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Sends a Validation Exception message.</p>"}))
    ValidationException.type = Types::ValidationException

    IotSenateService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotdeviceadvisor#IotSenateService"
      service.name = "IotSenateService"
      service.version = "2020-09-18"
      service.traits = {"aws.api#service" => {"sdkId" => "IotDeviceAdvisor", "arnNamespace" => "iotdeviceadvisor", "cloudFormationName" => "IotDeviceAdvisor", "cloudTrailEventSource" => "iotdeviceadvisor.amazonaws.com", "endpointPrefix" => "api.iotdeviceadvisor"}, "aws.auth#sigv4" => {"name" => "iotdeviceadvisor"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Core Device Advisor"}
      service.add_operation(:create_suite_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#CreateSuiteDefinition"
        operation.name = "CreateSuiteDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSuiteDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSuiteDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/suiteDefinitions", "code" => 200}}
      end)
      service.add_operation(:delete_suite_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#DeleteSuiteDefinition"
        operation.name = "DeleteSuiteDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSuiteDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSuiteDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/suiteDefinitions/{suiteDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#GetEndpoint"
        operation.name = "GetEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEndpointResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/endpoint", "code" => 200}}
      end)
      service.add_operation(:get_suite_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#GetSuiteDefinition"
        operation.name = "GetSuiteDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteDefinitions/{suiteDefinitionId}", "code" => 200}}
      end)
      service.add_operation(:get_suite_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#GetSuiteRun"
        operation.name = "GetSuiteRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}", "code" => 200}}
      end)
      service.add_operation(:get_suite_run_report, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#GetSuiteRunReport"
        operation.name = "GetSuiteRunReport"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteRunReportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetSuiteRunReportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/report", "code" => 200}}
      end)
      service.add_operation(:list_suite_definitions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#ListSuiteDefinitions"
        operation.name = "ListSuiteDefinitions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuiteDefinitionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuiteDefinitionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteDefinitions", "code" => 200}}
        operation[:paginator] = Paginators::ListSuiteDefinitions.new
      end)
      service.add_operation(:list_suite_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#ListSuiteRuns"
        operation.name = "ListSuiteRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuiteRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSuiteRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/suiteRuns", "code" => 200}}
        operation[:paginator] = Paginators::ListSuiteRuns.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_suite_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#StartSuiteRun"
        operation.name = "StartSuiteRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSuiteRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartSuiteRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/suiteDefinitions/{suiteDefinitionId}/suiteRuns", "code" => 200}}
      end)
      service.add_operation(:stop_suite_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#StopSuiteRun"
        operation.name = "StopSuiteRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSuiteRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopSuiteRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_suite_definition, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotdeviceadvisor#UpdateSuiteDefinition"
        operation.name = "UpdateSuiteDefinition"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSuiteDefinitionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSuiteDefinitionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/suiteDefinitions/{suiteDefinitionId}", "code" => 200}}
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
