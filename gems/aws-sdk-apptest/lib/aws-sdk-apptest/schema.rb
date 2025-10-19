# frozen_string_literal: true

# This is generated code!

module Aws::AppTest
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-[a-z]{1}|aws-us-gov):[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:([a-z]{2}-((iso[a-z]{0,1}-)|(gov-)){0,1}[a-z]+-[0-9]):[0-9]{12}:[A-Za-z0-9/][A-Za-z0-9:_/+=,@.-]{0,1023}$"})
    Batch = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#Batch", name: "Batch")
    BatchJobParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apptest#BatchJobParameters", name: "BatchJobParameters")
    BatchStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#BatchStepInput", name: "BatchStepInput")
    BatchStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#BatchStepOutput", name: "BatchStepOutput")
    BatchSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#BatchSummary", name: "BatchSummary")
    CaptureTool = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#CaptureTool", name: "CaptureTool")
    CloudFormation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CloudFormation", name: "CloudFormation")
    CloudFormationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CloudFormationAction", name: "CloudFormationAction")
    CloudFormationActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#CloudFormationActionType", name: "CloudFormationActionType")
    CloudFormationStepSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#CloudFormationStepSummary", name: "CloudFormationStepSummary")
    CompareAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CompareAction", name: "CompareAction")
    CompareActionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CompareActionSummary", name: "CompareActionSummary")
    CompareDataSetsStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CompareDataSetsStepInput", name: "CompareDataSetsStepInput")
    CompareDataSetsStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CompareDataSetsStepOutput", name: "CompareDataSetsStepOutput")
    CompareDataSetsSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CompareDataSetsSummary", name: "CompareDataSetsSummary")
    CompareDatabaseCDCStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CompareDatabaseCDCStepInput", name: "CompareDatabaseCDCStepInput")
    CompareDatabaseCDCStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CompareDatabaseCDCStepOutput", name: "CompareDatabaseCDCStepOutput")
    CompareDatabaseCDCSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CompareDatabaseCDCSummary", name: "CompareDatabaseCDCSummary")
    CompareFileType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#CompareFileType", name: "CompareFileType")
    ComparisonStatusEnum = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#ComparisonStatusEnum", name: "ComparisonStatusEnum")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateCloudFormationStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateCloudFormationStepInput", name: "CreateCloudFormationStepInput")
    CreateCloudFormationStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateCloudFormationStepOutput", name: "CreateCloudFormationStepOutput")
    CreateCloudFormationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateCloudFormationSummary", name: "CreateCloudFormationSummary")
    CreateTestCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateTestCaseRequest", name: "CreateTestCaseRequest")
    CreateTestCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateTestCaseResponse", name: "CreateTestCaseResponse")
    CreateTestConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateTestConfigurationRequest", name: "CreateTestConfigurationRequest")
    CreateTestConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateTestConfigurationResponse", name: "CreateTestConfigurationResponse")
    CreateTestSuiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateTestSuiteRequest", name: "CreateTestSuiteRequest")
    CreateTestSuiteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#CreateTestSuiteResponse", name: "CreateTestSuiteResponse")
    DataSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DataSet", name: "DataSet")
    DataSetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#DataSetList", name: "DataSetList")
    DataSetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#DataSetType", name: "DataSetType")
    DatabaseCDC = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DatabaseCDC", name: "DatabaseCDC")
    DeleteCloudFormationStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteCloudFormationStepInput", name: "DeleteCloudFormationStepInput")
    DeleteCloudFormationStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteCloudFormationStepOutput", name: "DeleteCloudFormationStepOutput")
    DeleteCloudFormationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteCloudFormationSummary", name: "DeleteCloudFormationSummary")
    DeleteTestCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteTestCaseRequest", name: "DeleteTestCaseRequest")
    DeleteTestCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteTestCaseResponse", name: "DeleteTestCaseResponse")
    DeleteTestConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteTestConfigurationRequest", name: "DeleteTestConfigurationRequest")
    DeleteTestConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteTestConfigurationResponse", name: "DeleteTestConfigurationResponse")
    DeleteTestRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteTestRunRequest", name: "DeleteTestRunRequest")
    DeleteTestRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteTestRunResponse", name: "DeleteTestRunResponse")
    DeleteTestSuiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteTestSuiteRequest", name: "DeleteTestSuiteRequest")
    DeleteTestSuiteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#DeleteTestSuiteResponse", name: "DeleteTestSuiteResponse")
    ExportDataSetNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#ExportDataSetNames", name: "ExportDataSetNames")
    File = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#File", name: "File")
    FileMetadata = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#FileMetadata", name: "FileMetadata")
    Format = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#Format", name: "Format")
    GetTestCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#GetTestCaseRequest", name: "GetTestCaseRequest")
    GetTestCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#GetTestCaseResponse", name: "GetTestCaseResponse")
    GetTestConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#GetTestConfigurationRequest", name: "GetTestConfigurationRequest")
    GetTestConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#GetTestConfigurationResponse", name: "GetTestConfigurationResponse")
    GetTestRunStepRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#GetTestRunStepRequest", name: "GetTestRunStepRequest")
    GetTestRunStepResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#GetTestRunStepResponse", name: "GetTestRunStepResponse")
    GetTestSuiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#GetTestSuiteRequest", name: "GetTestSuiteRequest")
    GetTestSuiteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#GetTestSuiteResponse", name: "GetTestSuiteResponse")
    IdempotencyTokenString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#IdempotencyTokenString", name: "IdempotencyTokenString", traits: {"smithy.api#pattern" => "^[A-Za-z0-9\\-]{1,64}$"})
    Identifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#Identifier", name: "Identifier", traits: {"smithy.api#pattern" => "^[A-Za-z0-9:/\\-]{1,100}$"})
    Input = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#Input", name: "Input")
    InputFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#InputFile", name: "InputFile")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListTestCasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestCasesRequest", name: "ListTestCasesRequest")
    ListTestCasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestCasesResponse", name: "ListTestCasesResponse")
    ListTestConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestConfigurationsRequest", name: "ListTestConfigurationsRequest")
    ListTestConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestConfigurationsResponse", name: "ListTestConfigurationsResponse")
    ListTestRunStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestRunStepsRequest", name: "ListTestRunStepsRequest")
    ListTestRunStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestRunStepsResponse", name: "ListTestRunStepsResponse")
    ListTestRunTestCasesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestRunTestCasesRequest", name: "ListTestRunTestCasesRequest")
    ListTestRunTestCasesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestRunTestCasesResponse", name: "ListTestRunTestCasesResponse")
    ListTestRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestRunsRequest", name: "ListTestRunsRequest")
    ListTestRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestRunsResponse", name: "ListTestRunsResponse")
    ListTestSuitesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestSuitesRequest", name: "ListTestSuitesRequest")
    ListTestSuitesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ListTestSuitesResponse", name: "ListTestSuitesResponse")
    M2ManagedActionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2ManagedActionProperties", name: "M2ManagedActionProperties")
    M2ManagedActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#M2ManagedActionType", name: "M2ManagedActionType")
    M2ManagedApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2ManagedApplication", name: "M2ManagedApplication")
    M2ManagedApplicationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2ManagedApplicationAction", name: "M2ManagedApplicationAction")
    M2ManagedApplicationStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2ManagedApplicationStepInput", name: "M2ManagedApplicationStepInput")
    M2ManagedApplicationStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2ManagedApplicationStepOutput", name: "M2ManagedApplicationStepOutput")
    M2ManagedApplicationStepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2ManagedApplicationStepSummary", name: "M2ManagedApplicationStepSummary")
    M2ManagedApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2ManagedApplicationSummary", name: "M2ManagedApplicationSummary")
    M2ManagedRuntime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#M2ManagedRuntime", name: "M2ManagedRuntime")
    M2NonManagedActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#M2NonManagedActionType", name: "M2NonManagedActionType")
    M2NonManagedApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2NonManagedApplication", name: "M2NonManagedApplication")
    M2NonManagedApplicationAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2NonManagedApplicationAction", name: "M2NonManagedApplicationAction")
    M2NonManagedApplicationStepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2NonManagedApplicationStepInput", name: "M2NonManagedApplicationStepInput")
    M2NonManagedApplicationStepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2NonManagedApplicationStepOutput", name: "M2NonManagedApplicationStepOutput")
    M2NonManagedApplicationStepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2NonManagedApplicationStepSummary", name: "M2NonManagedApplicationStepSummary")
    M2NonManagedApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#M2NonManagedApplicationSummary", name: "M2NonManagedApplicationSummary")
    M2NonManagedRuntime = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#M2NonManagedRuntime", name: "M2NonManagedRuntime")
    MainframeAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#MainframeAction", name: "MainframeAction")
    MainframeActionProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#MainframeActionProperties", name: "MainframeActionProperties")
    MainframeActionSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#MainframeActionSummary", name: "MainframeActionSummary")
    MainframeActionType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#MainframeActionType", name: "MainframeActionType")
    MainframeResourceSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#MainframeResourceSummary", name: "MainframeResourceSummary")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apptest#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#NextToken", name: "NextToken", traits: {"smithy.api#pattern" => "^\\S{1,2000}$"})
    Output = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#Output", name: "Output")
    OutputFile = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#OutputFile", name: "OutputFile")
    Properties = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apptest#Properties", name: "Properties")
    Resource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#Resource", name: "Resource")
    ResourceAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#ResourceAction", name: "ResourceAction")
    ResourceActionSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#ResourceActionSummary", name: "ResourceActionSummary")
    ResourceDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#ResourceDescription", name: "ResourceDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#ResourceList", name: "ResourceList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#ResourceName", name: "ResourceName", traits: {"smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9_\\-]{1,59}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#ResourceType", name: "ResourceType")
    S3Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#S3Uri", name: "S3Uri", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    Script = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#Script", name: "Script")
    ScriptSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ScriptSummary", name: "ScriptSummary")
    ScriptType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#ScriptType", name: "ScriptType")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ServiceSettings", name: "ServiceSettings")
    SourceDatabase = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#SourceDatabase", name: "SourceDatabase")
    SourceDatabaseMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#SourceDatabaseMetadata", name: "SourceDatabaseMetadata")
    StartTestRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#StartTestRunRequest", name: "StartTestRunRequest")
    StartTestRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#StartTestRunResponse", name: "StartTestRunResponse")
    Step = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#Step", name: "Step")
    StepAction = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#StepAction", name: "StepAction")
    StepList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#StepList", name: "StepList", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    StepRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#StepRunStatus", name: "StepRunStatus")
    StepRunSummary = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#StepRunSummary", name: "StepRunSummary")
    String100 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#String100", name: "String100", traits: {"smithy.api#pattern" => "^\\S{1,100}$"})
    String50 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#String50", name: "String50", traits: {"smithy.api#pattern" => "^\\S{1,50}$"})
    TN3270 = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TN3270", name: "TN3270")
    TN3270StepInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TN3270StepInput", name: "TN3270StepInput")
    TN3270StepOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TN3270StepOutput", name: "TN3270StepOutput")
    TN3270Summary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TN3270Summary", name: "TN3270Summary")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:).+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.apptest#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TagResourceRequest", name: "TagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.apptest#TestCase", "ids" => {"testCaseId" => "resourceArn"}}, {"resource" => "com.amazonaws.apptest#TestSuite", "ids" => {"testSuiteId" => "resourceArn"}}, {"resource" => "com.amazonaws.apptest#TestConfiguration", "ids" => {"testConfigurationId" => "resourceArn"}}, {"resource" => "com.amazonaws.apptest#TestRun", "ids" => {"testRunId" => "resourceArn"}}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetDatabase = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#TargetDatabase", name: "TargetDatabase")
    TargetDatabaseMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TargetDatabaseMetadata", name: "TargetDatabaseMetadata")
    TestCaseIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestCaseIdList", name: "TestCaseIdList")
    TestCaseLatestVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestCaseLatestVersion", name: "TestCaseLatestVersion")
    TestCaseLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#TestCaseLifecycle", name: "TestCaseLifecycle")
    TestCaseList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestCaseList", name: "TestCaseList")
    TestCaseRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#TestCaseRunStatus", name: "TestCaseRunStatus")
    TestCaseRunSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestCaseRunSummary", name: "TestCaseRunSummary")
    TestCaseRunSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestCaseRunSummaryList", name: "TestCaseRunSummaryList")
    TestCaseSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestCaseSummary", name: "TestCaseSummary")
    TestCaseSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestCaseSummaryList", name: "TestCaseSummaryList")
    TestCases = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.apptest#TestCases", name: "TestCases")
    TestConfigurationIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestConfigurationIdList", name: "TestConfigurationIdList")
    TestConfigurationLatestVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestConfigurationLatestVersion", name: "TestConfigurationLatestVersion")
    TestConfigurationLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#TestConfigurationLifecycle", name: "TestConfigurationLifecycle")
    TestConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestConfigurationList", name: "TestConfigurationList")
    TestConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestConfigurationSummary", name: "TestConfigurationSummary")
    TestRunIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestRunIdList", name: "TestRunIdList")
    TestRunStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#TestRunStatus", name: "TestRunStatus")
    TestRunStepSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestRunStepSummary", name: "TestRunStepSummary")
    TestRunStepSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestRunStepSummaryList", name: "TestRunStepSummaryList")
    TestRunSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestRunSummary", name: "TestRunSummary")
    TestRunSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestRunSummaryList", name: "TestRunSummaryList")
    TestSuiteIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestSuiteIdList", name: "TestSuiteIdList")
    TestSuiteLatestVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestSuiteLatestVersion", name: "TestSuiteLatestVersion")
    TestSuiteLifecycle = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#TestSuiteLifecycle", name: "TestSuiteLifecycle")
    TestSuiteList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#TestSuiteList", name: "TestSuiteList")
    TestSuiteSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#TestSuiteSummary", name: "TestSuiteSummary")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#UntagResourceRequest", name: "UntagResourceRequest", traits: {"aws.api#data" => "tagging", "smithy.api#references" => [{"resource" => "com.amazonaws.apptest#TestCase", "ids" => {"testCaseId" => "resourceArn"}}, {"resource" => "com.amazonaws.apptest#TestSuite", "ids" => {"testSuiteId" => "resourceArn"}}, {"resource" => "com.amazonaws.apptest#TestConfiguration", "ids" => {"testConfigurationId" => "resourceArn"}}, {"resource" => "com.amazonaws.apptest#TestRun", "ids" => {"testRunId" => "resourceArn"}}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateTestCaseRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#UpdateTestCaseRequest", name: "UpdateTestCaseRequest")
    UpdateTestCaseResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#UpdateTestCaseResponse", name: "UpdateTestCaseResponse")
    UpdateTestConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#UpdateTestConfigurationRequest", name: "UpdateTestConfigurationRequest")
    UpdateTestConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#UpdateTestConfigurationResponse", name: "UpdateTestConfigurationResponse")
    UpdateTestSuiteRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#UpdateTestSuiteRequest", name: "UpdateTestSuiteRequest")
    UpdateTestSuiteResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#UpdateTestSuiteResponse", name: "UpdateTestSuiteResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.apptest#ValidationExceptionField", name: "ValidationExceptionField")
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.apptest#ValidationExceptionFieldList", name: "ValidationExceptionFieldList")
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.apptest#ValidationExceptionReason", name: "ValidationExceptionReason")
    Variable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.apptest#Variable", name: "Variable", traits: {"smithy.api#pattern" => "^\\S{1,1000}$"})
    Version = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.apptest#Version", name: "Version")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Batch.add_member(:batch_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "batchJobName", traits: {"smithy.api#required" => {}}))
    Batch.add_member(:batch_job_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobParameters, location_name: "batchJobParameters"))
    Batch.add_member(:export_data_set_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDataSetNames, location_name: "exportDataSetNames"))
    Batch.type = Types::Batch
    BatchJobParameters.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    BatchJobParameters.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    BatchStepInput.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MainframeResourceSummary, location_name: "resource", traits: {"smithy.api#required" => {}}))
    BatchStepInput.add_member(:batch_job_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "batchJobName", traits: {"smithy.api#required" => {}}))
    BatchStepInput.add_member(:batch_job_parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchJobParameters, location_name: "batchJobParameters"))
    BatchStepInput.add_member(:export_data_set_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDataSetNames, location_name: "exportDataSetNames"))
    BatchStepInput.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MainframeActionProperties, location_name: "properties"))
    BatchStepInput.type = Types::BatchStepInput
    BatchStepOutput.add_member(:data_set_export_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "dataSetExportLocation"))
    BatchStepOutput.add_member(:dms_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "dmsOutputLocation"))
    BatchStepOutput.add_member(:data_set_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetList, location_name: "dataSetDetails"))
    BatchStepOutput.type = Types::BatchStepOutput
    BatchSummary.add_member(:step_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStepInput, location_name: "stepInput", traits: {"smithy.api#required" => {}}))
    BatchSummary.add_member(:step_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchStepOutput, location_name: "stepOutput"))
    BatchSummary.type = Types::BatchSummary
    CaptureTool.add_member(:precisely, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PRECISELY", traits: {"smithy.api#enumValue" => "Precisely"}))
    CaptureTool.add_member(:aws_dms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_DMS", traits: {"smithy.api#enumValue" => "AWS DMS"}))
    CloudFormation.add_member(:template_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "templateLocation", traits: {"smithy.api#required" => {}}))
    CloudFormation.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Properties, location_name: "parameters"))
    CloudFormation.type = Types::CloudFormation
    CloudFormationAction.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "resource", traits: {"smithy.api#required" => {}}))
    CloudFormationAction.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationActionType, location_name: "actionType"))
    CloudFormationAction.type = Types::CloudFormationAction
    CloudFormationActionType.add_member(:create, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE", traits: {"smithy.api#enumValue" => "Create"}))
    CloudFormationActionType.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "Delete"}))
    CloudFormationStepSummary.add_member(:create_cloudformation, Types::CloudFormationStepSummary::CreateCloudformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCloudFormationSummary, location_name: "createCloudformation"))
    CloudFormationStepSummary.add_member(:delete_cloudformation, Types::CloudFormationStepSummary::DeleteCloudformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCloudFormationSummary, location_name: "deleteCloudformation"))
    CloudFormationStepSummary.add_member(:unknown, Types::CloudFormationStepSummary::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CloudFormationStepSummary.type = Types::CloudFormationStepSummary
    CompareAction.add_member(:input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Input, location_name: "input", traits: {"smithy.api#required" => {}}))
    CompareAction.add_member(:output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Output, location_name: "output"))
    CompareAction.type = Types::CompareAction
    CompareActionSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: File, location_name: "type", traits: {"smithy.api#required" => {}}))
    CompareActionSummary.type = Types::CompareActionSummary
    CompareDataSetsStepInput.add_member(:source_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "sourceLocation", traits: {"smithy.api#required" => {}}))
    CompareDataSetsStepInput.add_member(:target_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "targetLocation", traits: {"smithy.api#required" => {}}))
    CompareDataSetsStepInput.add_member(:source_data_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetList, location_name: "sourceDataSets", traits: {"smithy.api#required" => {}}))
    CompareDataSetsStepInput.add_member(:target_data_sets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetList, location_name: "targetDataSets", traits: {"smithy.api#required" => {}}))
    CompareDataSetsStepInput.type = Types::CompareDataSetsStepInput
    CompareDataSetsStepOutput.add_member(:comparison_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "comparisonOutputLocation", traits: {"smithy.api#required" => {}}))
    CompareDataSetsStepOutput.add_member(:comparison_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonStatusEnum, location_name: "comparisonStatus", traits: {"smithy.api#required" => {}}))
    CompareDataSetsStepOutput.type = Types::CompareDataSetsStepOutput
    CompareDataSetsSummary.add_member(:step_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareDataSetsStepInput, location_name: "stepInput", traits: {"smithy.api#required" => {}}))
    CompareDataSetsSummary.add_member(:step_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareDataSetsStepOutput, location_name: "stepOutput"))
    CompareDataSetsSummary.type = Types::CompareDataSetsSummary
    CompareDatabaseCDCStepInput.add_member(:source_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "sourceLocation", traits: {"smithy.api#required" => {}}))
    CompareDatabaseCDCStepInput.add_member(:target_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "targetLocation", traits: {"smithy.api#required" => {}}))
    CompareDatabaseCDCStepInput.add_member(:output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "outputLocation"))
    CompareDatabaseCDCStepInput.add_member(:source_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDatabaseMetadata, location_name: "sourceMetadata", traits: {"smithy.api#required" => {}}))
    CompareDatabaseCDCStepInput.add_member(:target_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDatabaseMetadata, location_name: "targetMetadata", traits: {"smithy.api#required" => {}}))
    CompareDatabaseCDCStepInput.type = Types::CompareDatabaseCDCStepInput
    CompareDatabaseCDCStepOutput.add_member(:comparison_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "comparisonOutputLocation", traits: {"smithy.api#required" => {}}))
    CompareDatabaseCDCStepOutput.add_member(:comparison_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ComparisonStatusEnum, location_name: "comparisonStatus", traits: {"smithy.api#required" => {}}))
    CompareDatabaseCDCStepOutput.type = Types::CompareDatabaseCDCStepOutput
    CompareDatabaseCDCSummary.add_member(:step_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareDatabaseCDCStepInput, location_name: "stepInput", traits: {"smithy.api#required" => {}}))
    CompareDatabaseCDCSummary.add_member(:step_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareDatabaseCDCStepOutput, location_name: "stepOutput"))
    CompareDatabaseCDCSummary.type = Types::CompareDatabaseCDCSummary
    CompareFileType.add_member(:datasets, Types::CompareFileType::Datasets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareDataSetsSummary, location_name: "datasets"))
    CompareFileType.add_member(:database_cdc, Types::CompareFileType::DatabaseCDC, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareDatabaseCDCSummary, location_name: "databaseCDC"))
    CompareFileType.add_member(:unknown, Types::CompareFileType::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    CompareFileType.type = Types::CompareFileType
    ComparisonStatusEnum.add_member(:different, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DIFFERENT", traits: {"smithy.api#enumValue" => "Different"}))
    ComparisonStatusEnum.add_member(:equivalent, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUIVALENT", traits: {"smithy.api#enumValue" => "Equivalent"}))
    ComparisonStatusEnum.add_member(:equal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EQUAL", traits: {"smithy.api#enumValue" => "Equal"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CreateCloudFormationStepInput.add_member(:template_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "templateLocation", traits: {"smithy.api#required" => {}}))
    CreateCloudFormationStepInput.add_member(:parameters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Properties, location_name: "parameters"))
    CreateCloudFormationStepInput.type = Types::CreateCloudFormationStepInput
    CreateCloudFormationStepOutput.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stackId", traits: {"smithy.api#required" => {}}))
    CreateCloudFormationStepOutput.add_member(:exports, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Properties, location_name: "exports"))
    CreateCloudFormationStepOutput.type = Types::CreateCloudFormationStepOutput
    CreateCloudFormationSummary.add_member(:step_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCloudFormationStepInput, location_name: "stepInput", traits: {"smithy.api#required" => {}}))
    CreateCloudFormationSummary.add_member(:step_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCloudFormationStepOutput, location_name: "stepOutput"))
    CreateCloudFormationSummary.type = Types::CreateCloudFormationSummary
    CreateTestCaseRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateTestCaseRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTestCaseRequest.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "steps", traits: {"smithy.api#required" => {}}))
    CreateTestCaseRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateTestCaseRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTestCaseRequest.type = Types::CreateTestCaseRequest
    CreateTestCaseResponse.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#required" => {}}))
    CreateTestCaseResponse.add_member(:test_case_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion", traits: {"smithy.api#required" => {}}))
    CreateTestCaseResponse.type = Types::CreateTestCaseResponse
    CreateTestConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateTestConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTestConfigurationRequest.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources", traits: {"smithy.api#required" => {}}))
    CreateTestConfigurationRequest.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Properties, location_name: "properties"))
    CreateTestConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateTestConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTestConfigurationRequest.add_member(:service_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSettings, location_name: "serviceSettings"))
    CreateTestConfigurationRequest.type = Types::CreateTestConfigurationRequest
    CreateTestConfigurationResponse.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId", traits: {"smithy.api#required" => {}}))
    CreateTestConfigurationResponse.add_member(:test_configuration_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testConfigurationVersion", traits: {"smithy.api#required" => {}}))
    CreateTestConfigurationResponse.type = Types::CreateTestConfigurationResponse
    CreateTestSuiteRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateTestSuiteRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTestSuiteRequest.add_member(:before_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "beforeSteps"))
    CreateTestSuiteRequest.add_member(:after_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "afterSteps"))
    CreateTestSuiteRequest.add_member(:test_cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCases, location_name: "testCases", traits: {"smithy.api#required" => {}}))
    CreateTestSuiteRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    CreateTestSuiteRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTestSuiteRequest.type = Types::CreateTestSuiteRequest
    CreateTestSuiteResponse.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#required" => {}}))
    CreateTestSuiteResponse.add_member(:test_suite_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion", traits: {"smithy.api#required" => {}}))
    CreateTestSuiteResponse.type = Types::CreateTestSuiteResponse
    DataSet.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetType, location_name: "type", traits: {"smithy.api#required" => {}}))
    DataSet.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100, location_name: "name", traits: {"smithy.api#required" => {}}))
    DataSet.add_member(:ccsid, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String50, location_name: "ccsid", traits: {"smithy.api#required" => {}}))
    DataSet.add_member(:format, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Format, location_name: "format", traits: {"smithy.api#required" => {}}))
    DataSet.add_member(:length, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "length", traits: {"smithy.api#required" => {}}))
    DataSet.type = Types::DataSet
    DataSetList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSet)
    DataSetType.add_member(:ps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PS", traits: {"smithy.api#enumValue" => "PS"}))
    DatabaseCDC.add_member(:source_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDatabaseMetadata, location_name: "sourceMetadata", traits: {"smithy.api#required" => {}}))
    DatabaseCDC.add_member(:target_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDatabaseMetadata, location_name: "targetMetadata", traits: {"smithy.api#required" => {}}))
    DatabaseCDC.type = Types::DatabaseCDC
    DeleteCloudFormationStepInput.add_member(:stack_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "stackId", traits: {"smithy.api#required" => {}}))
    DeleteCloudFormationStepInput.type = Types::DeleteCloudFormationStepInput
    DeleteCloudFormationStepOutput.type = Types::DeleteCloudFormationStepOutput
    DeleteCloudFormationSummary.add_member(:step_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCloudFormationStepInput, location_name: "stepInput", traits: {"smithy.api#required" => {}}))
    DeleteCloudFormationSummary.add_member(:step_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCloudFormationStepOutput, location_name: "stepOutput"))
    DeleteCloudFormationSummary.type = Types::DeleteCloudFormationSummary
    DeleteTestCaseRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTestCaseRequest.type = Types::DeleteTestCaseRequest
    DeleteTestCaseResponse.type = Types::DeleteTestCaseResponse
    DeleteTestConfigurationRequest.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTestConfigurationRequest.type = Types::DeleteTestConfigurationRequest
    DeleteTestConfigurationResponse.type = Types::DeleteTestConfigurationResponse
    DeleteTestRunRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTestRunRequest.type = Types::DeleteTestRunRequest
    DeleteTestRunResponse.type = Types::DeleteTestRunResponse
    DeleteTestSuiteRequest.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteTestSuiteRequest.type = Types::DeleteTestSuiteRequest
    DeleteTestSuiteResponse.type = Types::DeleteTestSuiteResponse
    ExportDataSetNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String100)
    File.add_member(:file_type, Types::File::FileType, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareFileType, location_name: "fileType"))
    File.add_member(:unknown, Types::File::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    File.type = Types::File
    FileMetadata.add_member(:data_sets, Types::FileMetadata::DataSets, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetList, location_name: "dataSets"))
    FileMetadata.add_member(:database_cdc, Types::FileMetadata::DatabaseCDC, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseCDC, location_name: "databaseCDC"))
    FileMetadata.add_member(:unknown, Types::FileMetadata::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    FileMetadata.type = Types::FileMetadata
    Format.add_member(:fixed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIXED", traits: {"smithy.api#enumValue" => "FIXED"}))
    Format.add_member(:variable, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VARIABLE", traits: {"smithy.api#enumValue" => "VARIABLE"}))
    Format.add_member(:line_sequential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINE_SEQUENTIAL", traits: {"smithy.api#enumValue" => "LINE_SEQUENTIAL"}))
    GetTestCaseRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTestCaseRequest.add_member(:test_case_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion", traits: {"smithy.api#httpQuery" => "testCaseVersion"}))
    GetTestCaseRequest.type = Types::GetTestCaseRequest
    GetTestCaseResponse.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:test_case_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "testCaseArn", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTestCaseResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseLatestVersion, location_name: "latestVersion", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:test_case_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseLifecycle, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    GetTestCaseResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdateTime", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "steps", traits: {"smithy.api#required" => {}}))
    GetTestCaseResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTestCaseResponse.type = Types::GetTestCaseResponse
    GetTestConfigurationRequest.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTestConfigurationRequest.add_member(:test_configuration_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testConfigurationVersion", traits: {"smithy.api#httpQuery" => "testConfigurationVersion"}))
    GetTestConfigurationRequest.type = Types::GetTestConfigurationRequest
    GetTestConfigurationResponse.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:test_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "testConfigurationArn", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConfigurationLatestVersion, location_name: "latestVersion", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:test_configuration_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testConfigurationVersion", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConfigurationLifecycle, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    GetTestConfigurationResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdateTime", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTestConfigurationResponse.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Properties, location_name: "properties", traits: {"smithy.api#required" => {}}))
    GetTestConfigurationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTestConfigurationResponse.add_member(:service_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSettings, location_name: "serviceSettings"))
    GetTestConfigurationResponse.type = Types::GetTestConfigurationResponse
    GetTestRunStepRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTestRunStepRequest.add_member(:step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "stepName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTestRunStepRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#httpQuery" => "testCaseId"}))
    GetTestRunStepRequest.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#httpQuery" => "testSuiteId"}))
    GetTestRunStepRequest.type = Types::GetTestRunStepRequest
    GetTestRunStepResponse.add_member(:step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "stepName", traits: {"smithy.api#required" => {}}))
    GetTestRunStepResponse.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#required" => {}}))
    GetTestRunStepResponse.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId"))
    GetTestRunStepResponse.add_member(:test_case_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion"))
    GetTestRunStepResponse.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId"))
    GetTestRunStepResponse.add_member(:test_suite_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion"))
    GetTestRunStepResponse.add_member(:before_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "beforeStep"))
    GetTestRunStepResponse.add_member(:after_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "afterStep"))
    GetTestRunStepResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepRunStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    GetTestRunStepResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    GetTestRunStepResponse.add_member(:run_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "runStartTime", traits: {"smithy.api#required" => {}}))
    GetTestRunStepResponse.add_member(:run_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "runEndTime"))
    GetTestRunStepResponse.add_member(:step_run_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepRunSummary, location_name: "stepRunSummary"))
    GetTestRunStepResponse.type = Types::GetTestRunStepResponse
    GetTestSuiteRequest.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTestSuiteRequest.add_member(:test_suite_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion", traits: {"smithy.api#httpQuery" => "testSuiteVersion"}))
    GetTestSuiteRequest.type = Types::GetTestSuiteRequest
    GetTestSuiteResponse.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSuiteLatestVersion, location_name: "latestVersion", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:test_suite_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSuiteLifecycle, location_name: "status"))
    GetTestSuiteResponse.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    GetTestSuiteResponse.add_member(:test_suite_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "testSuiteArn", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdateTime", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTestSuiteResponse.add_member(:before_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "beforeSteps", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:after_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "afterSteps", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:test_cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCases, location_name: "testCases", traits: {"smithy.api#required" => {}}))
    GetTestSuiteResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTestSuiteResponse.type = Types::GetTestSuiteResponse
    Input.add_member(:file, Types::Input::File, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputFile, location_name: "file"))
    Input.add_member(:unknown, Types::Input::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Input.type = Types::Input
    InputFile.add_member(:source_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "sourceLocation", traits: {"smithy.api#required" => {}}))
    InputFile.add_member(:target_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "targetLocation", traits: {"smithy.api#required" => {}}))
    InputFile.add_member(:file_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FileMetadata, location_name: "fileMetadata", traits: {"smithy.api#required" => {}}))
    InputFile.type = Types::InputFile
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    InternalServerException.type = Types::InternalServerException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTestCasesRequest.add_member(:test_case_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseIdList, location_name: "testCaseIds", traits: {"smithy.api#httpQuery" => "testCaseIds"}))
    ListTestCasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestCasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTestCasesRequest.type = Types::ListTestCasesRequest
    ListTestCasesResponse.add_member(:test_cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseSummaryList, location_name: "testCases", traits: {"smithy.api#required" => {}}))
    ListTestCasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestCasesResponse.type = Types::ListTestCasesResponse
    ListTestConfigurationsRequest.add_member(:test_configuration_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConfigurationIdList, location_name: "testConfigurationIds", traits: {"smithy.api#httpQuery" => "testConfigurationIds"}))
    ListTestConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTestConfigurationsRequest.type = Types::ListTestConfigurationsRequest
    ListTestConfigurationsResponse.add_member(:test_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConfigurationList, location_name: "testConfigurations", traits: {"smithy.api#required" => {}}))
    ListTestConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestConfigurationsResponse.type = Types::ListTestConfigurationsResponse
    ListTestRunStepsRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestRunStepsRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#httpQuery" => "testCaseId"}))
    ListTestRunStepsRequest.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#httpQuery" => "testSuiteId"}))
    ListTestRunStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestRunStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTestRunStepsRequest.type = Types::ListTestRunStepsRequest
    ListTestRunStepsResponse.add_member(:test_run_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRunStepSummaryList, location_name: "testRunSteps", traits: {"smithy.api#required" => {}}))
    ListTestRunStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunStepsResponse.type = Types::ListTestRunStepsResponse
    ListTestRunTestCasesRequest.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTestRunTestCasesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestRunTestCasesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTestRunTestCasesRequest.type = Types::ListTestRunTestCasesRequest
    ListTestRunTestCasesResponse.add_member(:test_run_test_cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseRunSummaryList, location_name: "testRunTestCases", traits: {"smithy.api#required" => {}}))
    ListTestRunTestCasesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunTestCasesResponse.type = Types::ListTestRunTestCasesResponse
    ListTestRunsRequest.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#httpQuery" => "testSuiteId"}))
    ListTestRunsRequest.add_member(:test_run_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRunIdList, location_name: "testRunIds", traits: {"smithy.api#httpQuery" => "testrunIds"}))
    ListTestRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTestRunsRequest.type = Types::ListTestRunsRequest
    ListTestRunsResponse.add_member(:test_runs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRunSummaryList, location_name: "testRuns", traits: {"smithy.api#required" => {}}))
    ListTestRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunsResponse.type = Types::ListTestRunsResponse
    ListTestSuitesRequest.add_member(:test_suite_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSuiteIdList, location_name: "testSuiteIds", traits: {"smithy.api#httpQuery" => "testSuiteIds"}))
    ListTestSuitesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTestSuitesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTestSuitesRequest.type = Types::ListTestSuitesRequest
    ListTestSuitesResponse.add_member(:test_suites, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSuiteList, location_name: "testSuites", traits: {"smithy.api#required" => {}}))
    ListTestSuitesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestSuitesResponse.type = Types::ListTestSuitesResponse
    M2ManagedActionProperties.add_member(:force_stop, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "forceStop"))
    M2ManagedActionProperties.add_member(:import_data_set_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "importDataSetLocation"))
    M2ManagedActionProperties.type = Types::M2ManagedActionProperties
    M2ManagedActionType.add_member(:configure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIGURE", traits: {"smithy.api#enumValue" => "Configure"}))
    M2ManagedActionType.add_member(:deconfigure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DECONFIGURE", traits: {"smithy.api#enumValue" => "Deconfigure"}))
    M2ManagedApplication.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "applicationId", traits: {"smithy.api#required" => {}}))
    M2ManagedApplication.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedRuntime, location_name: "runtime", traits: {"smithy.api#required" => {}}))
    M2ManagedApplication.add_member(:vpc_endpoint_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "vpcEndpointServiceName"))
    M2ManagedApplication.add_member(:listener_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "listenerPort"))
    M2ManagedApplication.type = Types::M2ManagedApplication
    M2ManagedApplicationAction.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "resource", traits: {"smithy.api#required" => {}}))
    M2ManagedApplicationAction.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedActionType, location_name: "actionType", traits: {"smithy.api#required" => {}}))
    M2ManagedApplicationAction.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedActionProperties, location_name: "properties"))
    M2ManagedApplicationAction.type = Types::M2ManagedApplicationAction
    M2ManagedApplicationStepInput.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "applicationId", traits: {"smithy.api#required" => {}}))
    M2ManagedApplicationStepInput.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "runtime", traits: {"smithy.api#required" => {}}))
    M2ManagedApplicationStepInput.add_member(:vpc_endpoint_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vpcEndpointServiceName"))
    M2ManagedApplicationStepInput.add_member(:listener_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "listenerPort"))
    M2ManagedApplicationStepInput.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedActionType, location_name: "actionType", traits: {"smithy.api#required" => {}}))
    M2ManagedApplicationStepInput.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedActionProperties, location_name: "properties"))
    M2ManagedApplicationStepInput.type = Types::M2ManagedApplicationStepInput
    M2ManagedApplicationStepOutput.add_member(:import_data_set_summary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Properties, location_name: "importDataSetSummary"))
    M2ManagedApplicationStepOutput.type = Types::M2ManagedApplicationStepOutput
    M2ManagedApplicationStepSummary.add_member(:step_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedApplicationStepInput, location_name: "stepInput", traits: {"smithy.api#required" => {}}))
    M2ManagedApplicationStepSummary.add_member(:step_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedApplicationStepOutput, location_name: "stepOutput"))
    M2ManagedApplicationStepSummary.type = Types::M2ManagedApplicationStepSummary
    M2ManagedApplicationSummary.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "applicationId", traits: {"smithy.api#required" => {}}))
    M2ManagedApplicationSummary.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedRuntime, location_name: "runtime", traits: {"smithy.api#required" => {}}))
    M2ManagedApplicationSummary.add_member(:listener_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "listenerPort"))
    M2ManagedApplicationSummary.type = Types::M2ManagedApplicationSummary
    M2ManagedRuntime.add_member(:microfocus, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MICROFOCUS", traits: {"smithy.api#enumValue" => "MicroFocus"}))
    M2NonManagedActionType.add_member(:configure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONFIGURE", traits: {"smithy.api#enumValue" => "Configure"}))
    M2NonManagedActionType.add_member(:deconfigure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DECONFIGURE", traits: {"smithy.api#enumValue" => "Deconfigure"}))
    M2NonManagedApplication.add_member(:vpc_endpoint_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "vpcEndpointServiceName", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplication.add_member(:listener_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "listenerPort", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplication.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedRuntime, location_name: "runtime", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplication.add_member(:web_app_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "webAppName"))
    M2NonManagedApplication.type = Types::M2NonManagedApplication
    M2NonManagedApplicationAction.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "resource", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationAction.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedActionType, location_name: "actionType", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationAction.type = Types::M2NonManagedApplicationAction
    M2NonManagedApplicationStepInput.add_member(:vpc_endpoint_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vpcEndpointServiceName", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationStepInput.add_member(:listener_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "listenerPort", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationStepInput.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedRuntime, location_name: "runtime", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationStepInput.add_member(:web_app_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "webAppName"))
    M2NonManagedApplicationStepInput.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedActionType, location_name: "actionType", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationStepInput.type = Types::M2NonManagedApplicationStepInput
    M2NonManagedApplicationStepOutput.type = Types::M2NonManagedApplicationStepOutput
    M2NonManagedApplicationStepSummary.add_member(:step_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedApplicationStepInput, location_name: "stepInput", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationStepSummary.add_member(:step_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedApplicationStepOutput, location_name: "stepOutput"))
    M2NonManagedApplicationStepSummary.type = Types::M2NonManagedApplicationStepSummary
    M2NonManagedApplicationSummary.add_member(:vpc_endpoint_service_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vpcEndpointServiceName", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationSummary.add_member(:listener_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "listenerPort", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationSummary.add_member(:runtime, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedRuntime, location_name: "runtime", traits: {"smithy.api#required" => {}}))
    M2NonManagedApplicationSummary.add_member(:web_app_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "webAppName"))
    M2NonManagedApplicationSummary.type = Types::M2NonManagedApplicationSummary
    M2NonManagedRuntime.add_member(:bluage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BLUAGE", traits: {"smithy.api#enumValue" => "BluAge"}))
    MainframeAction.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "resource", traits: {"smithy.api#required" => {}}))
    MainframeAction.add_member(:action_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MainframeActionType, location_name: "actionType", traits: {"smithy.api#required" => {}}))
    MainframeAction.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MainframeActionProperties, location_name: "properties"))
    MainframeAction.type = Types::MainframeAction
    MainframeActionProperties.add_member(:dms_task_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Variable, location_name: "dmsTaskArn"))
    MainframeActionProperties.type = Types::MainframeActionProperties
    MainframeActionSummary.add_member(:batch, Types::MainframeActionSummary::Batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BatchSummary, location_name: "batch"))
    MainframeActionSummary.add_member(:tn3270, Types::MainframeActionSummary::Tn3270, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TN3270Summary, location_name: "tn3270"))
    MainframeActionSummary.add_member(:unknown, Types::MainframeActionSummary::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MainframeActionSummary.type = Types::MainframeActionSummary
    MainframeActionType.add_member(:batch, Types::MainframeActionType::Batch, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Batch, location_name: "batch"))
    MainframeActionType.add_member(:tn3270, Types::MainframeActionType::Tn3270, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TN3270, location_name: "tn3270"))
    MainframeActionType.add_member(:unknown, Types::MainframeActionType::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MainframeActionType.type = Types::MainframeActionType
    MainframeResourceSummary.add_member(:m2_managed_application, Types::MainframeResourceSummary::M2ManagedApplication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedApplicationSummary, location_name: "m2ManagedApplication"))
    MainframeResourceSummary.add_member(:m2_non_managed_application, Types::MainframeResourceSummary::M2NonManagedApplication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedApplicationSummary, location_name: "m2NonManagedApplication"))
    MainframeResourceSummary.add_member(:unknown, Types::MainframeResourceSummary::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    MainframeResourceSummary.type = Types::MainframeResourceSummary
    Output.add_member(:file, Types::Output::File, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFile, location_name: "file"))
    Output.add_member(:unknown, Types::Output::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    Output.type = Types::Output
    OutputFile.add_member(:file_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "fileLocation"))
    OutputFile.type = Types::OutputFile
    Properties.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Properties.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Resource.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    Resource.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: "type", traits: {"smithy.api#required" => {}}))
    Resource.type = Types::Resource
    ResourceAction.add_member(:m2_managed_application_action, Types::ResourceAction::M2ManagedApplicationAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedApplicationAction, location_name: "m2ManagedApplicationAction"))
    ResourceAction.add_member(:m2_non_managed_application_action, Types::ResourceAction::M2NonManagedApplicationAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedApplicationAction, location_name: "m2NonManagedApplicationAction"))
    ResourceAction.add_member(:cloud_formation_action, Types::ResourceAction::CloudFormationAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationAction, location_name: "cloudFormationAction"))
    ResourceAction.add_member(:unknown, Types::ResourceAction::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceAction.type = Types::ResourceAction
    ResourceActionSummary.add_member(:cloud_formation, Types::ResourceActionSummary::CloudFormation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormationStepSummary, location_name: "cloudFormation"))
    ResourceActionSummary.add_member(:m2_managed_application, Types::ResourceActionSummary::M2ManagedApplication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedApplicationStepSummary, location_name: "m2ManagedApplication"))
    ResourceActionSummary.add_member(:m2_non_managed_application, Types::ResourceActionSummary::M2NonManagedApplication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedApplicationStepSummary, location_name: "m2NonManagedApplication"))
    ResourceActionSummary.add_member(:unknown, Types::ResourceActionSummary::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceActionSummary.type = Types::ResourceActionSummary
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Resource)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceType.add_member(:cloud_formation, Types::ResourceType::CloudFormation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloudFormation, location_name: "cloudFormation"))
    ResourceType.add_member(:m2_managed_application, Types::ResourceType::M2ManagedApplication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2ManagedApplication, location_name: "m2ManagedApplication"))
    ResourceType.add_member(:m2_non_managed_application, Types::ResourceType::M2NonManagedApplication, ::Smithy::Schema::Shapes::ShapeRef.new(shape: M2NonManagedApplication, location_name: "m2NonManagedApplication"))
    ResourceType.add_member(:unknown, Types::ResourceType::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    ResourceType.type = Types::ResourceType
    Script.add_member(:script_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "scriptLocation", traits: {"smithy.api#required" => {}}))
    Script.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptType, location_name: "type", traits: {"smithy.api#required" => {}}))
    Script.type = Types::Script
    ScriptSummary.add_member(:script_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "scriptLocation", traits: {"smithy.api#required" => {}}))
    ScriptSummary.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptType, location_name: "type", traits: {"smithy.api#required" => {}}))
    ScriptSummary.type = Types::ScriptSummary
    ScriptType.add_member(:selenium, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SELENIUM", traits: {"smithy.api#enumValue" => "Selenium"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceSettings.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "kmsKeyId"))
    ServiceSettings.type = Types::ServiceSettings
    SourceDatabase.add_member(:z_os_db2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Z_OS_DB2", traits: {"smithy.api#enumValue" => "z/OS-DB2"}))
    SourceDatabaseMetadata.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceDatabase, location_name: "type", traits: {"smithy.api#required" => {}}))
    SourceDatabaseMetadata.add_member(:capture_tool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptureTool, location_name: "captureTool", traits: {"smithy.api#required" => {}}))
    SourceDatabaseMetadata.type = Types::SourceDatabaseMetadata
    StartTestRunRequest.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#required" => {}}))
    StartTestRunRequest.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId"))
    StartTestRunRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "clientToken", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#idempotencyToken" => {}}))
    StartTestRunRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartTestRunRequest.type = Types::StartTestRunRequest
    StartTestRunResponse.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#required" => {}}))
    StartTestRunResponse.add_member(:test_run_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRunStatus, location_name: "testRunStatus", traits: {"smithy.api#required" => {}}))
    StartTestRunResponse.type = Types::StartTestRunResponse
    Step.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    Step.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    Step.add_member(:action, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    Step.type = Types::Step
    StepAction.add_member(:resource_action, Types::StepAction::ResourceAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAction, location_name: "resourceAction"))
    StepAction.add_member(:mainframe_action, Types::StepAction::MainframeAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MainframeAction, location_name: "mainframeAction"))
    StepAction.add_member(:compare_action, Types::StepAction::CompareAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareAction, location_name: "compareAction"))
    StepAction.add_member(:unknown, Types::StepAction::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    StepAction.type = Types::StepAction
    StepList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Step)
    StepRunStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    StepRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    StepRunStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "Running"}))
    StepRunSummary.add_member(:mainframe_action, Types::StepRunSummary::MainframeAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MainframeActionSummary, location_name: "mainframeAction"))
    StepRunSummary.add_member(:compare_action, Types::StepRunSummary::CompareAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CompareActionSummary, location_name: "compareAction"))
    StepRunSummary.add_member(:resource_action, Types::StepRunSummary::ResourceAction, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceActionSummary, location_name: "resourceAction"))
    StepRunSummary.add_member(:unknown, Types::StepRunSummary::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    StepRunSummary.type = Types::StepRunSummary
    TN3270.add_member(:script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Script, location_name: "script", traits: {"smithy.api#required" => {}}))
    TN3270.add_member(:export_data_set_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDataSetNames, location_name: "exportDataSetNames"))
    TN3270.type = Types::TN3270
    TN3270StepInput.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MainframeResourceSummary, location_name: "resource", traits: {"smithy.api#required" => {}}))
    TN3270StepInput.add_member(:script, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptSummary, location_name: "script", traits: {"smithy.api#required" => {}}))
    TN3270StepInput.add_member(:export_data_set_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExportDataSetNames, location_name: "exportDataSetNames"))
    TN3270StepInput.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MainframeActionProperties, location_name: "properties"))
    TN3270StepInput.type = Types::TN3270StepInput
    TN3270StepOutput.add_member(:data_set_export_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "dataSetExportLocation"))
    TN3270StepOutput.add_member(:dms_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "dmsOutputLocation"))
    TN3270StepOutput.add_member(:data_set_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetList, location_name: "dataSetDetails"))
    TN3270StepOutput.add_member(:script_output_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3Uri, location_name: "scriptOutputLocation", traits: {"smithy.api#required" => {}}))
    TN3270StepOutput.type = Types::TN3270StepOutput
    TN3270Summary.add_member(:step_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TN3270StepInput, location_name: "stepInput", traits: {"smithy.api#required" => {}}))
    TN3270Summary.add_member(:step_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TN3270StepOutput, location_name: "stepOutput"))
    TN3270Summary.type = Types::TN3270Summary
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetDatabase.add_member(:postgresql, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POSTGRESQL", traits: {"smithy.api#enumValue" => "PostgreSQL"}))
    TargetDatabaseMetadata.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDatabase, location_name: "type", traits: {"smithy.api#required" => {}}))
    TargetDatabaseMetadata.add_member(:capture_tool, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CaptureTool, location_name: "captureTool", traits: {"smithy.api#required" => {}}))
    TargetDatabaseMetadata.type = Types::TargetDatabaseMetadata
    TestCaseIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier)
    TestCaseLatestVersion.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version", traits: {"smithy.api#required" => {}}))
    TestCaseLatestVersion.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseLifecycle, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestCaseLatestVersion.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestCaseLatestVersion.type = Types::TestCaseLatestVersion
    TestCaseLifecycle.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    TestCaseLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    TestCaseList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier)
    TestCaseRunStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    TestCaseRunStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "Running"}))
    TestCaseRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    TestCaseRunSummary.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#required" => {}}))
    TestCaseRunSummary.add_member(:test_case_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion", traits: {"smithy.api#required" => {}}))
    TestCaseRunSummary.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#required" => {}}))
    TestCaseRunSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseRunStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestCaseRunSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestCaseRunSummary.add_member(:run_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "runStartTime", traits: {"smithy.api#required" => {}}))
    TestCaseRunSummary.add_member(:run_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "runEndTime"))
    TestCaseRunSummary.type = Types::TestCaseRunSummary
    TestCaseRunSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseRunSummary)
    TestCaseSummary.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#required" => {}}))
    TestCaseSummary.add_member(:test_case_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "testCaseArn", traits: {"smithy.api#required" => {}}))
    TestCaseSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TestCaseSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestCaseSummary.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "latestVersion", traits: {"smithy.api#required" => {}}))
    TestCaseSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseLifecycle, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestCaseSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    TestCaseSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdateTime", traits: {"smithy.api#required" => {}}))
    TestCaseSummary.type = Types::TestCaseSummary
    TestCaseSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseSummary)
    TestCases.add_member(:sequential, Types::TestCases::Sequential, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCaseList, location_name: "sequential"))
    TestCases.add_member(:unknown, Types::TestCases::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    TestCases.type = Types::TestCases
    TestConfigurationIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier)
    TestConfigurationLatestVersion.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version", traits: {"smithy.api#required" => {}}))
    TestConfigurationLatestVersion.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConfigurationLifecycle, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestConfigurationLatestVersion.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestConfigurationLatestVersion.type = Types::TestConfigurationLatestVersion
    TestConfigurationLifecycle.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    TestConfigurationLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    TestConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConfigurationSummary)
    TestConfigurationSummary.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId", traits: {"smithy.api#required" => {}}))
    TestConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TestConfigurationSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestConfigurationSummary.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "latestVersion", traits: {"smithy.api#required" => {}}))
    TestConfigurationSummary.add_member(:test_configuration_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "testConfigurationArn", traits: {"smithy.api#required" => {}}))
    TestConfigurationSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestConfigurationLifecycle, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestConfigurationSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    TestConfigurationSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdateTime", traits: {"smithy.api#required" => {}}))
    TestConfigurationSummary.type = Types::TestConfigurationSummary
    TestRunIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier)
    TestRunStatus.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "Success"}))
    TestRunStatus.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "Running"}))
    TestRunStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    TestRunStatus.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    TestRunStepSummary.add_member(:step_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "stepName", traits: {"smithy.api#required" => {}}))
    TestRunStepSummary.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#required" => {}}))
    TestRunStepSummary.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId"))
    TestRunStepSummary.add_member(:test_case_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion"))
    TestRunStepSummary.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId"))
    TestRunStepSummary.add_member(:test_suite_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion"))
    TestRunStepSummary.add_member(:before_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "beforeStep"))
    TestRunStepSummary.add_member(:after_step, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "afterStep"))
    TestRunStepSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepRunStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestRunStepSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestRunStepSummary.add_member(:run_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "runStartTime", traits: {"smithy.api#required" => {}}))
    TestRunStepSummary.add_member(:run_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "runEndTime"))
    TestRunStepSummary.type = Types::TestRunStepSummary
    TestRunStepSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRunStepSummary)
    TestRunSummary.add_member(:test_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testRunId", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:test_run_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "testRunArn", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:test_suite_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId"))
    TestRunSummary.add_member(:test_configuration_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testConfigurationVersion"))
    TestRunSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRunStatus, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestRunSummary.add_member(:run_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "runStartTime", traits: {"smithy.api#required" => {}}))
    TestRunSummary.add_member(:run_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "runEndTime"))
    TestRunSummary.type = Types::TestRunSummary
    TestRunSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestRunSummary)
    TestSuiteIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier)
    TestSuiteLatestVersion.add_member(:version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "version", traits: {"smithy.api#required" => {}}))
    TestSuiteLatestVersion.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSuiteLifecycle, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestSuiteLatestVersion.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestSuiteLatestVersion.type = Types::TestSuiteLatestVersion
    TestSuiteLifecycle.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "Creating"}))
    TestSuiteLifecycle.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "Updating"}))
    TestSuiteLifecycle.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    TestSuiteLifecycle.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    TestSuiteLifecycle.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "Deleting"}))
    TestSuiteList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSuiteSummary)
    TestSuiteSummary.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#required" => {}}))
    TestSuiteSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    TestSuiteSummary.add_member(:status_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "statusReason"))
    TestSuiteSummary.add_member(:latest_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "latestVersion", traits: {"smithy.api#required" => {}}))
    TestSuiteSummary.add_member(:test_suite_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "testSuiteArn", traits: {"smithy.api#required" => {}}))
    TestSuiteSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestSuiteLifecycle, location_name: "status", traits: {"smithy.api#required" => {}}))
    TestSuiteSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "creationTime", traits: {"smithy.api#required" => {}}))
    TestSuiteSummary.add_member(:last_update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastUpdateTime", traits: {"smithy.api#required" => {}}))
    TestSuiteSummary.type = Types::TestSuiteSummary
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateTestCaseRequest.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTestCaseRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateTestCaseRequest.add_member(:steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "steps"))
    UpdateTestCaseRequest.type = Types::UpdateTestCaseRequest
    UpdateTestCaseResponse.add_member(:test_case_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId", traits: {"smithy.api#required" => {}}))
    UpdateTestCaseResponse.add_member(:test_case_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion", traits: {"smithy.api#required" => {}}))
    UpdateTestCaseResponse.type = Types::UpdateTestCaseResponse
    UpdateTestConfigurationRequest.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTestConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateTestConfigurationRequest.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources"))
    UpdateTestConfigurationRequest.add_member(:properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Properties, location_name: "properties"))
    UpdateTestConfigurationRequest.add_member(:service_settings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceSettings, location_name: "serviceSettings"))
    UpdateTestConfigurationRequest.type = Types::UpdateTestConfigurationRequest
    UpdateTestConfigurationResponse.add_member(:test_configuration_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId", traits: {"smithy.api#required" => {}}))
    UpdateTestConfigurationResponse.add_member(:test_configuration_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testConfigurationVersion", traits: {"smithy.api#required" => {}}))
    UpdateTestConfigurationResponse.type = Types::UpdateTestConfigurationResponse
    UpdateTestSuiteRequest.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateTestSuiteRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateTestSuiteRequest.add_member(:before_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "beforeSteps"))
    UpdateTestSuiteRequest.add_member(:after_steps, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StepList, location_name: "afterSteps"))
    UpdateTestSuiteRequest.add_member(:test_cases, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TestCases, location_name: "testCases"))
    UpdateTestSuiteRequest.type = Types::UpdateTestSuiteRequest
    UpdateTestSuiteResponse.add_member(:test_suite_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId", traits: {"smithy.api#required" => {}}))
    UpdateTestSuiteResponse.add_member(:test_suite_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion"))
    UpdateTestSuiteResponse.type = Types::UpdateTestSuiteResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "unknownOperation"}))
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "cannotParse"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OTHER", traits: {"smithy.api#enumValue" => "other"}))

    AwsApptestControlPlaneService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.apptest#AwsApptestControlPlaneService"
      service.name = "AwsApptestControlPlaneService"
      service.version = "2022-12-06"
      service.traits = {"aws.api#service" => {"sdkId" => "AppTest", "cloudFormationName" => "AppTest", "cloudTrailEventSource" => "apptest.amazonaws.com", "arnNamespace" => "apptest", "endpointPrefix" => "apptest"}, "aws.auth#sigv4" => {"name" => "apptest"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair of a resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by a tag key and value pair that is allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by a list of tag keys that are allowed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*,authorization,date,x-amz-date,x-amz-security-token,x-amz-target,content-type,x-amz-content-sha256,x-amz-user-agent,x-amzn-platform-id,x-amzn-trace-id,amz-sdk-invocation-id,amz-sdk-request"]}, "smithy.api#title" => "AWS Mainframe Modernization Application Testing"}
      service.add_operation(:create_test_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#CreateTestCase"
        operation.name = "CreateTestCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateTestCase", "documentation" => "Grants permission to create a test case", "createsResources" => ["TestCase"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/testcase", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_test_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#CreateTestConfiguration"
        operation.name = "CreateTestConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateTestConfiguration", "documentation" => "Grants permission to create a test configuration", "createsResources" => ["TestConfiguration"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/testconfiguration", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_test_suite, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#CreateTestSuite"
        operation.name = "CreateTestSuite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestSuiteRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateTestSuiteResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "CreateTestSuite", "documentation" => "Grants permission to create a test suite", "createsResources" => ["TestSuite"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/testsuite", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_test_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#DeleteTestCase"
        operation.name = "DeleteTestCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteTestCase", "documentation" => "Grants permission to delete a test case"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/testcases/{testCaseId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_test_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#DeleteTestConfiguration"
        operation.name = "DeleteTestConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteTestConfiguration", "documentation" => "Grants permission to delete a test configuration"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/testconfigurations/{testConfigurationId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_test_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#DeleteTestRun"
        operation.name = "DeleteTestRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteTestRun", "documentation" => "Grants permission to delete a test run", "requiredActions" => ["s3:DeleteObjects", "s3:ListObjectsV2"]}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/testruns/{testRunId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_test_suite, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#DeleteTestSuite"
        operation.name = "DeleteTestSuite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestSuiteRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteTestSuiteResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "DeleteTestSuite", "documentation" => "Grants permission to delete a test suite"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/testsuites/{testSuiteId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_test_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#GetTestCase"
        operation.name = "GetTestCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetTestCase", "documentation" => "Grants permission to get a test case"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testcases/{testCaseId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_test_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#GetTestConfiguration"
        operation.name = "GetTestConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetTestConfiguration", "documentation" => "Grants permission to get a test configuration"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testconfigurations/{testConfigurationId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_test_run_step, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#GetTestRunStep"
        operation.name = "GetTestRunStep"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestRunStepRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestRunStepResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetTestRunStep", "documentation" => "Grants permission to get test run step"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testruns/{testRunId}/steps/{stepName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_test_suite, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#GetTestSuite"
        operation.name = "GetTestSuite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestSuiteRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetTestSuiteResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "GetTestSuite", "documentation" => "Grants permission to get a test suite"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testsuites/{testSuiteId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"documentation" => "Grants permission to list tags for a resource"}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_test_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#ListTestCases"
        operation.name = "ListTestCases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestCasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestCasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTestCases", "documentation" => "Grants permission to list test cases"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testcases", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestCases.new
      end)
      service.add_operation(:list_test_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#ListTestConfigurations"
        operation.name = "ListTestConfigurations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestConfigurationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestConfigurationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTestConfigurations", "documentation" => "Grants permission to list test configurations"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testconfigurations", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestConfigurations.new
      end)
      service.add_operation(:list_test_run_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#ListTestRunSteps"
        operation.name = "ListTestRunSteps"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestRunStepsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestRunStepsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTestRunSteps", "documentation" => "Grants permission to list steps for a test run"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testruns/{testRunId}/steps", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestRunSteps.new
      end)
      service.add_operation(:list_test_run_test_cases, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#ListTestRunTestCases"
        operation.name = "ListTestRunTestCases"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestRunTestCasesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestRunTestCasesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTestRunTestCases", "documentation" => "Grants permission to list test cases for a test run"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testruns/{testRunId}/testcases", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestRunTestCases.new
      end)
      service.add_operation(:list_test_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#ListTestRuns"
        operation.name = "ListTestRuns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestRunsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestRunsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTestRuns", "documentation" => "Grants permission to list test runs"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testruns", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestRuns.new
      end)
      service.add_operation(:list_test_suites, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#ListTestSuites"
        operation.name = "ListTestSuites"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestSuitesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTestSuitesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "ListTestSuites", "documentation" => "Grants permission to list test suites"}, "smithy.api#http" => {"method" => "GET", "uri" => "/testsuites", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListTestSuites.new
      end)
      service.add_operation(:start_test_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#StartTestRun"
        operation.name = "StartTestRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTestRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartTestRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "StartTestRun", "documentation" => "Grants permission to start a test run", "createsResources" => ["TestRun"], "requiredActions" => ["cloudformation:CreateStack", "cloudformation:DeleteStack", "cloudformation:DescribeStacks", "dms:DescribeReplicationTasks", "dms:StartReplicationTask", "dms:StopReplicationTask", "ec2:DescribeAvailabilityZones", "ec2:DescribeVpcEndpointServiceConfigurations", "ec2:DescribeVpcEndpointServices", "m2:CreateDataSetImportTask", "m2:GetApplication", "m2:GetBatchJobExecution", "m2:GetDataSetDetails", "m2:GetDataSetImportTask", "m2:StartApplication", "m2:StartBatchJob", "m2:StopApplication", "s3:DeleteObject", "s3:DeleteObjects", "s3:CopyObject", "s3:HeadBucket", "s3:CreateBucket", "s3:UploadPart", "s3:HeadObject", "s3:CreateMultipartUpload", "s3:CompleteMultipartUpload", "s3:GetObject", "s3:ListBucket", "s3:PutObject", "s3:ListObjectsV2"]}, "smithy.api#http" => {"method" => "POST", "uri" => "/testrun", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:RequestTag/${TagKey}", "aws:TagKeys"], "aws.iam#iamAction" => {"name" => "TagResource", "documentation" => "Grants permission to tag a resource", "requiredActions" => [], "resources" => {"required" => {}, "optional" => {}}}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "aws.iam#iamAction" => {"documentation" => "Grants permission to untag a resource"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_test_case, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#UpdateTestCase"
        operation.name = "UpdateTestCase"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestCaseRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestCaseResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateTestCase", "documentation" => "Grants permission to update a test case"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/testcases/{testCaseId}", "code" => 200}}
      end)
      service.add_operation(:update_test_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#UpdateTestConfiguration"
        operation.name = "UpdateTestConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateTestConfiguration", "documentation" => "Grants permission to update a test configuration"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/testconfigurations/{testConfigurationId}", "code" => 200}}
      end)
      service.add_operation(:update_test_suite, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.apptest#UpdateTestSuite"
        operation.name = "UpdateTestSuite"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestSuiteRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTestSuiteResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#iamAction" => {"name" => "UpdateTestSuite", "documentation" => "Grants permission to update a test suite"}, "smithy.api#http" => {"method" => "PATCH", "uri" => "/testsuites/{testSuiteId}", "code" => 200}}
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
