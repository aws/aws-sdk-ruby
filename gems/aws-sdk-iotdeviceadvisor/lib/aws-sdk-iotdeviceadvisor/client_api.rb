# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTDeviceAdvisor
  # @api private
  module ClientApi

    include Seahorse::Model

    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AuthenticationMethod = Shapes::StringShape.new(name: 'AuthenticationMethod')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateSuiteDefinitionRequest = Shapes::StructureShape.new(name: 'CreateSuiteDefinitionRequest')
    CreateSuiteDefinitionResponse = Shapes::StructureShape.new(name: 'CreateSuiteDefinitionResponse')
    DeleteSuiteDefinitionRequest = Shapes::StructureShape.new(name: 'DeleteSuiteDefinitionRequest')
    DeleteSuiteDefinitionResponse = Shapes::StructureShape.new(name: 'DeleteSuiteDefinitionResponse')
    DeviceUnderTest = Shapes::StructureShape.new(name: 'DeviceUnderTest')
    DeviceUnderTestList = Shapes::ListShape.new(name: 'DeviceUnderTestList')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    ErrorReason = Shapes::StringShape.new(name: 'ErrorReason')
    Failure = Shapes::StringShape.new(name: 'Failure')
    GetEndpointRequest = Shapes::StructureShape.new(name: 'GetEndpointRequest')
    GetEndpointResponse = Shapes::StructureShape.new(name: 'GetEndpointResponse')
    GetSuiteDefinitionRequest = Shapes::StructureShape.new(name: 'GetSuiteDefinitionRequest')
    GetSuiteDefinitionResponse = Shapes::StructureShape.new(name: 'GetSuiteDefinitionResponse')
    GetSuiteRunReportRequest = Shapes::StructureShape.new(name: 'GetSuiteRunReportRequest')
    GetSuiteRunReportResponse = Shapes::StructureShape.new(name: 'GetSuiteRunReportResponse')
    GetSuiteRunRequest = Shapes::StructureShape.new(name: 'GetSuiteRunRequest')
    GetSuiteRunResponse = Shapes::StructureShape.new(name: 'GetSuiteRunResponse')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupResult = Shapes::StructureShape.new(name: 'GroupResult')
    GroupResultList = Shapes::ListShape.new(name: 'GroupResultList')
    IntendedForQualificationBoolean = Shapes::BooleanShape.new(name: 'IntendedForQualificationBoolean')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    IsLongDurationTestBoolean = Shapes::BooleanShape.new(name: 'IsLongDurationTestBoolean')
    ListSuiteDefinitionsRequest = Shapes::StructureShape.new(name: 'ListSuiteDefinitionsRequest')
    ListSuiteDefinitionsResponse = Shapes::StructureShape.new(name: 'ListSuiteDefinitionsResponse')
    ListSuiteRunsRequest = Shapes::StructureShape.new(name: 'ListSuiteRunsRequest')
    ListSuiteRunsResponse = Shapes::StructureShape.new(name: 'ListSuiteRunsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    LogUrl = Shapes::StringShape.new(name: 'LogUrl')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    ParallelRun = Shapes::BooleanShape.new(name: 'ParallelRun')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    QualificationReportDownloadUrl = Shapes::StringShape.new(name: 'QualificationReportDownloadUrl')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RootGroup = Shapes::StringShape.new(name: 'RootGroup')
    SelectedTestList = Shapes::ListShape.new(name: 'SelectedTestList')
    StartSuiteRunRequest = Shapes::StructureShape.new(name: 'StartSuiteRunRequest')
    StartSuiteRunResponse = Shapes::StructureShape.new(name: 'StartSuiteRunResponse')
    Status = Shapes::StringShape.new(name: 'Status')
    StopSuiteRunRequest = Shapes::StructureShape.new(name: 'StopSuiteRunRequest')
    StopSuiteRunResponse = Shapes::StructureShape.new(name: 'StopSuiteRunResponse')
    String128 = Shapes::StringShape.new(name: 'String128')
    String256 = Shapes::StringShape.new(name: 'String256')
    SuiteDefinitionConfiguration = Shapes::StructureShape.new(name: 'SuiteDefinitionConfiguration')
    SuiteDefinitionInformation = Shapes::StructureShape.new(name: 'SuiteDefinitionInformation')
    SuiteDefinitionInformationList = Shapes::ListShape.new(name: 'SuiteDefinitionInformationList')
    SuiteDefinitionName = Shapes::StringShape.new(name: 'SuiteDefinitionName')
    SuiteDefinitionVersion = Shapes::StringShape.new(name: 'SuiteDefinitionVersion')
    SuiteRunConfiguration = Shapes::StructureShape.new(name: 'SuiteRunConfiguration')
    SuiteRunInformation = Shapes::StructureShape.new(name: 'SuiteRunInformation')
    SuiteRunResultCount = Shapes::IntegerShape.new(name: 'SuiteRunResultCount')
    SuiteRunStatus = Shapes::StringShape.new(name: 'SuiteRunStatus')
    SuiteRunsList = Shapes::ListShape.new(name: 'SuiteRunsList')
    SystemMessage = Shapes::StringShape.new(name: 'SystemMessage')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TestCaseDefinitionName = Shapes::StringShape.new(name: 'TestCaseDefinitionName')
    TestCaseRun = Shapes::StructureShape.new(name: 'TestCaseRun')
    TestCaseRuns = Shapes::ListShape.new(name: 'TestCaseRuns')
    TestCaseScenario = Shapes::StructureShape.new(name: 'TestCaseScenario')
    TestCaseScenarioId = Shapes::StringShape.new(name: 'TestCaseScenarioId')
    TestCaseScenarioStatus = Shapes::StringShape.new(name: 'TestCaseScenarioStatus')
    TestCaseScenarioType = Shapes::StringShape.new(name: 'TestCaseScenarioType')
    TestCaseScenariosList = Shapes::ListShape.new(name: 'TestCaseScenariosList')
    TestResult = Shapes::StructureShape.new(name: 'TestResult')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateSuiteDefinitionRequest = Shapes::StructureShape.new(name: 'UpdateSuiteDefinitionRequest')
    UpdateSuiteDefinitionResponse = Shapes::StructureShape.new(name: 'UpdateSuiteDefinitionResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Warnings = Shapes::StringShape.new(name: 'Warnings')

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateSuiteDefinitionRequest.add_member(:suite_definition_configuration, Shapes::ShapeRef.new(shape: SuiteDefinitionConfiguration, required: true, location_name: "suiteDefinitionConfiguration"))
    CreateSuiteDefinitionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSuiteDefinitionRequest.struct_class = Types::CreateSuiteDefinitionRequest

    CreateSuiteDefinitionResponse.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteDefinitionId"))
    CreateSuiteDefinitionResponse.add_member(:suite_definition_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "suiteDefinitionArn"))
    CreateSuiteDefinitionResponse.add_member(:suite_definition_name, Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: "suiteDefinitionName"))
    CreateSuiteDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    CreateSuiteDefinitionResponse.struct_class = Types::CreateSuiteDefinitionResponse

    DeleteSuiteDefinitionRequest.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteDefinitionId"))
    DeleteSuiteDefinitionRequest.struct_class = Types::DeleteSuiteDefinitionRequest

    DeleteSuiteDefinitionResponse.struct_class = Types::DeleteSuiteDefinitionResponse

    DeviceUnderTest.add_member(:thing_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "thingArn"))
    DeviceUnderTest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "certificateArn"))
    DeviceUnderTest.add_member(:device_role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "deviceRoleArn"))
    DeviceUnderTest.struct_class = Types::DeviceUnderTest

    DeviceUnderTestList.member = Shapes::ShapeRef.new(shape: DeviceUnderTest)

    GetEndpointRequest.add_member(:thing_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location: "querystring", location_name: "thingArn"))
    GetEndpointRequest.add_member(:certificate_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location: "querystring", location_name: "certificateArn"))
    GetEndpointRequest.add_member(:device_role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location: "querystring", location_name: "deviceRoleArn"))
    GetEndpointRequest.add_member(:authentication_method, Shapes::ShapeRef.new(shape: AuthenticationMethod, location: "querystring", location_name: "authenticationMethod"))
    GetEndpointRequest.struct_class = Types::GetEndpointRequest

    GetEndpointResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "endpoint"))
    GetEndpointResponse.struct_class = Types::GetEndpointResponse

    GetSuiteDefinitionRequest.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteDefinitionId"))
    GetSuiteDefinitionRequest.add_member(:suite_definition_version, Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location: "querystring", location_name: "suiteDefinitionVersion"))
    GetSuiteDefinitionRequest.struct_class = Types::GetSuiteDefinitionRequest

    GetSuiteDefinitionResponse.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteDefinitionId"))
    GetSuiteDefinitionResponse.add_member(:suite_definition_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "suiteDefinitionArn"))
    GetSuiteDefinitionResponse.add_member(:suite_definition_version, Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: "suiteDefinitionVersion"))
    GetSuiteDefinitionResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: "latestVersion"))
    GetSuiteDefinitionResponse.add_member(:suite_definition_configuration, Shapes::ShapeRef.new(shape: SuiteDefinitionConfiguration, location_name: "suiteDefinitionConfiguration"))
    GetSuiteDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    GetSuiteDefinitionResponse.add_member(:last_modified_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastModifiedAt"))
    GetSuiteDefinitionResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSuiteDefinitionResponse.struct_class = Types::GetSuiteDefinitionResponse

    GetSuiteRunReportRequest.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteDefinitionId"))
    GetSuiteRunReportRequest.add_member(:suite_run_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteRunId"))
    GetSuiteRunReportRequest.struct_class = Types::GetSuiteRunReportRequest

    GetSuiteRunReportResponse.add_member(:qualification_report_download_url, Shapes::ShapeRef.new(shape: QualificationReportDownloadUrl, location_name: "qualificationReportDownloadUrl"))
    GetSuiteRunReportResponse.struct_class = Types::GetSuiteRunReportResponse

    GetSuiteRunRequest.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteDefinitionId"))
    GetSuiteRunRequest.add_member(:suite_run_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteRunId"))
    GetSuiteRunRequest.struct_class = Types::GetSuiteRunRequest

    GetSuiteRunResponse.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteDefinitionId"))
    GetSuiteRunResponse.add_member(:suite_definition_version, Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: "suiteDefinitionVersion"))
    GetSuiteRunResponse.add_member(:suite_run_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteRunId"))
    GetSuiteRunResponse.add_member(:suite_run_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "suiteRunArn"))
    GetSuiteRunResponse.add_member(:suite_run_configuration, Shapes::ShapeRef.new(shape: SuiteRunConfiguration, location_name: "suiteRunConfiguration"))
    GetSuiteRunResponse.add_member(:test_result, Shapes::ShapeRef.new(shape: TestResult, location_name: "testResult"))
    GetSuiteRunResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    GetSuiteRunResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    GetSuiteRunResponse.add_member(:status, Shapes::ShapeRef.new(shape: SuiteRunStatus, location_name: "status"))
    GetSuiteRunResponse.add_member(:error_reason, Shapes::ShapeRef.new(shape: ErrorReason, location_name: "errorReason"))
    GetSuiteRunResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSuiteRunResponse.struct_class = Types::GetSuiteRunResponse

    GroupResult.add_member(:group_id, Shapes::ShapeRef.new(shape: UUID, location_name: "groupId"))
    GroupResult.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "groupName"))
    GroupResult.add_member(:tests, Shapes::ShapeRef.new(shape: TestCaseRuns, location_name: "tests"))
    GroupResult.struct_class = Types::GroupResult

    GroupResultList.member = Shapes::ShapeRef.new(shape: GroupResult)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListSuiteDefinitionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSuiteDefinitionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListSuiteDefinitionsRequest.struct_class = Types::ListSuiteDefinitionsRequest

    ListSuiteDefinitionsResponse.add_member(:suite_definition_information_list, Shapes::ShapeRef.new(shape: SuiteDefinitionInformationList, location_name: "suiteDefinitionInformationList"))
    ListSuiteDefinitionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListSuiteDefinitionsResponse.struct_class = Types::ListSuiteDefinitionsResponse

    ListSuiteRunsRequest.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, location: "querystring", location_name: "suiteDefinitionId"))
    ListSuiteRunsRequest.add_member(:suite_definition_version, Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location: "querystring", location_name: "suiteDefinitionVersion"))
    ListSuiteRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSuiteRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location: "querystring", location_name: "nextToken"))
    ListSuiteRunsRequest.struct_class = Types::ListSuiteRunsRequest

    ListSuiteRunsResponse.add_member(:suite_runs_list, Shapes::ShapeRef.new(shape: SuiteRunsList, location_name: "suiteRunsList"))
    ListSuiteRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "nextToken"))
    ListSuiteRunsResponse.struct_class = Types::ListSuiteRunsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SelectedTestList.member = Shapes::ShapeRef.new(shape: UUID)

    StartSuiteRunRequest.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteDefinitionId"))
    StartSuiteRunRequest.add_member(:suite_definition_version, Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: "suiteDefinitionVersion"))
    StartSuiteRunRequest.add_member(:suite_run_configuration, Shapes::ShapeRef.new(shape: SuiteRunConfiguration, required: true, location_name: "suiteRunConfiguration"))
    StartSuiteRunRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartSuiteRunRequest.struct_class = Types::StartSuiteRunRequest

    StartSuiteRunResponse.add_member(:suite_run_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteRunId"))
    StartSuiteRunResponse.add_member(:suite_run_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "suiteRunArn"))
    StartSuiteRunResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    StartSuiteRunResponse.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "endpoint"))
    StartSuiteRunResponse.struct_class = Types::StartSuiteRunResponse

    StopSuiteRunRequest.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteDefinitionId"))
    StopSuiteRunRequest.add_member(:suite_run_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteRunId"))
    StopSuiteRunRequest.struct_class = Types::StopSuiteRunRequest

    StopSuiteRunResponse.struct_class = Types::StopSuiteRunResponse

    SuiteDefinitionConfiguration.add_member(:suite_definition_name, Shapes::ShapeRef.new(shape: SuiteDefinitionName, required: true, location_name: "suiteDefinitionName"))
    SuiteDefinitionConfiguration.add_member(:devices, Shapes::ShapeRef.new(shape: DeviceUnderTestList, location_name: "devices"))
    SuiteDefinitionConfiguration.add_member(:intended_for_qualification, Shapes::ShapeRef.new(shape: IntendedForQualificationBoolean, location_name: "intendedForQualification"))
    SuiteDefinitionConfiguration.add_member(:is_long_duration_test, Shapes::ShapeRef.new(shape: IsLongDurationTestBoolean, location_name: "isLongDurationTest"))
    SuiteDefinitionConfiguration.add_member(:root_group, Shapes::ShapeRef.new(shape: RootGroup, required: true, location_name: "rootGroup"))
    SuiteDefinitionConfiguration.add_member(:device_permission_role_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "devicePermissionRoleArn"))
    SuiteDefinitionConfiguration.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    SuiteDefinitionConfiguration.struct_class = Types::SuiteDefinitionConfiguration

    SuiteDefinitionInformation.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteDefinitionId"))
    SuiteDefinitionInformation.add_member(:suite_definition_name, Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: "suiteDefinitionName"))
    SuiteDefinitionInformation.add_member(:default_devices, Shapes::ShapeRef.new(shape: DeviceUnderTestList, location_name: "defaultDevices"))
    SuiteDefinitionInformation.add_member(:intended_for_qualification, Shapes::ShapeRef.new(shape: IntendedForQualificationBoolean, location_name: "intendedForQualification"))
    SuiteDefinitionInformation.add_member(:is_long_duration_test, Shapes::ShapeRef.new(shape: IsLongDurationTestBoolean, location_name: "isLongDurationTest"))
    SuiteDefinitionInformation.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    SuiteDefinitionInformation.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SuiteDefinitionInformation.struct_class = Types::SuiteDefinitionInformation

    SuiteDefinitionInformationList.member = Shapes::ShapeRef.new(shape: SuiteDefinitionInformation)

    SuiteRunConfiguration.add_member(:primary_device, Shapes::ShapeRef.new(shape: DeviceUnderTest, required: true, location_name: "primaryDevice"))
    SuiteRunConfiguration.add_member(:selected_test_list, Shapes::ShapeRef.new(shape: SelectedTestList, location_name: "selectedTestList"))
    SuiteRunConfiguration.add_member(:parallel_run, Shapes::ShapeRef.new(shape: ParallelRun, location_name: "parallelRun"))
    SuiteRunConfiguration.struct_class = Types::SuiteRunConfiguration

    SuiteRunInformation.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteDefinitionId"))
    SuiteRunInformation.add_member(:suite_definition_version, Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: "suiteDefinitionVersion"))
    SuiteRunInformation.add_member(:suite_definition_name, Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: "suiteDefinitionName"))
    SuiteRunInformation.add_member(:suite_run_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteRunId"))
    SuiteRunInformation.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    SuiteRunInformation.add_member(:started_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startedAt"))
    SuiteRunInformation.add_member(:end_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endAt"))
    SuiteRunInformation.add_member(:status, Shapes::ShapeRef.new(shape: SuiteRunStatus, location_name: "status"))
    SuiteRunInformation.add_member(:passed, Shapes::ShapeRef.new(shape: SuiteRunResultCount, location_name: "passed"))
    SuiteRunInformation.add_member(:failed, Shapes::ShapeRef.new(shape: SuiteRunResultCount, location_name: "failed"))
    SuiteRunInformation.struct_class = Types::SuiteRunInformation

    SuiteRunsList.member = Shapes::ShapeRef.new(shape: SuiteRunInformation)

    TagKeyList.member = Shapes::ShapeRef.new(shape: String128)

    TagMap.key = Shapes::ShapeRef.new(shape: String128)
    TagMap.value = Shapes::ShapeRef.new(shape: String256)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TestCaseRun.add_member(:test_case_run_id, Shapes::ShapeRef.new(shape: UUID, location_name: "testCaseRunId"))
    TestCaseRun.add_member(:test_case_definition_id, Shapes::ShapeRef.new(shape: UUID, location_name: "testCaseDefinitionId"))
    TestCaseRun.add_member(:test_case_definition_name, Shapes::ShapeRef.new(shape: TestCaseDefinitionName, location_name: "testCaseDefinitionName"))
    TestCaseRun.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    TestCaseRun.add_member(:start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "startTime"))
    TestCaseRun.add_member(:end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "endTime"))
    TestCaseRun.add_member(:log_url, Shapes::ShapeRef.new(shape: LogUrl, location_name: "logUrl"))
    TestCaseRun.add_member(:warnings, Shapes::ShapeRef.new(shape: Warnings, location_name: "warnings"))
    TestCaseRun.add_member(:failure, Shapes::ShapeRef.new(shape: Failure, location_name: "failure"))
    TestCaseRun.add_member(:test_scenarios, Shapes::ShapeRef.new(shape: TestCaseScenariosList, location_name: "testScenarios"))
    TestCaseRun.struct_class = Types::TestCaseRun

    TestCaseRuns.member = Shapes::ShapeRef.new(shape: TestCaseRun)

    TestCaseScenario.add_member(:test_case_scenario_id, Shapes::ShapeRef.new(shape: TestCaseScenarioId, location_name: "testCaseScenarioId"))
    TestCaseScenario.add_member(:test_case_scenario_type, Shapes::ShapeRef.new(shape: TestCaseScenarioType, location_name: "testCaseScenarioType"))
    TestCaseScenario.add_member(:status, Shapes::ShapeRef.new(shape: TestCaseScenarioStatus, location_name: "status"))
    TestCaseScenario.add_member(:failure, Shapes::ShapeRef.new(shape: Failure, location_name: "failure"))
    TestCaseScenario.add_member(:system_message, Shapes::ShapeRef.new(shape: SystemMessage, location_name: "systemMessage"))
    TestCaseScenario.struct_class = Types::TestCaseScenario

    TestCaseScenariosList.member = Shapes::ShapeRef.new(shape: TestCaseScenario)

    TestResult.add_member(:groups, Shapes::ShapeRef.new(shape: GroupResultList, location_name: "groups"))
    TestResult.struct_class = Types::TestResult

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateSuiteDefinitionRequest.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "suiteDefinitionId"))
    UpdateSuiteDefinitionRequest.add_member(:suite_definition_configuration, Shapes::ShapeRef.new(shape: SuiteDefinitionConfiguration, required: true, location_name: "suiteDefinitionConfiguration"))
    UpdateSuiteDefinitionRequest.struct_class = Types::UpdateSuiteDefinitionRequest

    UpdateSuiteDefinitionResponse.add_member(:suite_definition_id, Shapes::ShapeRef.new(shape: UUID, location_name: "suiteDefinitionId"))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "suiteDefinitionArn"))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_name, Shapes::ShapeRef.new(shape: SuiteDefinitionName, location_name: "suiteDefinitionName"))
    UpdateSuiteDefinitionResponse.add_member(:suite_definition_version, Shapes::ShapeRef.new(shape: SuiteDefinitionVersion, location_name: "suiteDefinitionVersion"))
    UpdateSuiteDefinitionResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    UpdateSuiteDefinitionResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "lastUpdatedAt"))
    UpdateSuiteDefinitionResponse.struct_class = Types::UpdateSuiteDefinitionResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-09-18"

      api.metadata = {
        "apiVersion" => "2020-09-18",
        "endpointPrefix" => "api.iotdeviceadvisor",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "AWSIoTDeviceAdvisor",
        "serviceFullName" => "AWS IoT Core Device Advisor",
        "serviceId" => "IotDeviceAdvisor",
        "signatureVersion" => "v4",
        "signingName" => "iotdeviceadvisor",
        "uid" => "iotdeviceadvisor-2020-09-18",
      }

      api.add_operation(:create_suite_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSuiteDefinition"
        o.http_method = "POST"
        o.http_request_uri = "/suiteDefinitions"
        o.input = Shapes::ShapeRef.new(shape: CreateSuiteDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSuiteDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_suite_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSuiteDefinition"
        o.http_method = "DELETE"
        o.http_request_uri = "/suiteDefinitions/{suiteDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSuiteDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSuiteDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/endpoint"
        o.input = Shapes::ShapeRef.new(shape: GetEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEndpointResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_suite_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSuiteDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/suiteDefinitions/{suiteDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: GetSuiteDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSuiteDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_suite_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSuiteRun"
        o.http_method = "GET"
        o.http_request_uri = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}"
        o.input = Shapes::ShapeRef.new(shape: GetSuiteRunRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSuiteRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_suite_run_report, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSuiteRunReport"
        o.http_method = "GET"
        o.http_request_uri = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/report"
        o.input = Shapes::ShapeRef.new(shape: GetSuiteRunReportRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSuiteRunReportResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_suite_definitions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSuiteDefinitions"
        o.http_method = "GET"
        o.http_request_uri = "/suiteDefinitions"
        o.input = Shapes::ShapeRef.new(shape: ListSuiteDefinitionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSuiteDefinitionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_suite_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSuiteRuns"
        o.http_method = "GET"
        o.http_request_uri = "/suiteRuns"
        o.input = Shapes::ShapeRef.new(shape: ListSuiteRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSuiteRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_suite_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartSuiteRun"
        o.http_method = "POST"
        o.http_request_uri = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns"
        o.input = Shapes::ShapeRef.new(shape: StartSuiteRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartSuiteRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_suite_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopSuiteRun"
        o.http_method = "POST"
        o.http_request_uri = "/suiteDefinitions/{suiteDefinitionId}/suiteRuns/{suiteRunId}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopSuiteRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StopSuiteRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_suite_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSuiteDefinition"
        o.http_method = "PATCH"
        o.http_request_uri = "/suiteDefinitions/{suiteDefinitionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSuiteDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSuiteDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
