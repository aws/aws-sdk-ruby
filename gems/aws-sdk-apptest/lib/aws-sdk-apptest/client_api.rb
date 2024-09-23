# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppTest
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Batch = Shapes::StructureShape.new(name: 'Batch')
    BatchJobParameters = Shapes::MapShape.new(name: 'BatchJobParameters')
    BatchStepInput = Shapes::StructureShape.new(name: 'BatchStepInput')
    BatchStepOutput = Shapes::StructureShape.new(name: 'BatchStepOutput')
    BatchSummary = Shapes::StructureShape.new(name: 'BatchSummary')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CaptureTool = Shapes::StringShape.new(name: 'CaptureTool')
    CloudFormation = Shapes::StructureShape.new(name: 'CloudFormation')
    CloudFormationAction = Shapes::StructureShape.new(name: 'CloudFormationAction')
    CloudFormationActionType = Shapes::StringShape.new(name: 'CloudFormationActionType')
    CloudFormationStepSummary = Shapes::UnionShape.new(name: 'CloudFormationStepSummary')
    CompareAction = Shapes::StructureShape.new(name: 'CompareAction')
    CompareActionSummary = Shapes::StructureShape.new(name: 'CompareActionSummary')
    CompareDataSetsStepInput = Shapes::StructureShape.new(name: 'CompareDataSetsStepInput')
    CompareDataSetsStepOutput = Shapes::StructureShape.new(name: 'CompareDataSetsStepOutput')
    CompareDataSetsSummary = Shapes::StructureShape.new(name: 'CompareDataSetsSummary')
    CompareDatabaseCDCStepInput = Shapes::StructureShape.new(name: 'CompareDatabaseCDCStepInput')
    CompareDatabaseCDCStepOutput = Shapes::StructureShape.new(name: 'CompareDatabaseCDCStepOutput')
    CompareDatabaseCDCSummary = Shapes::StructureShape.new(name: 'CompareDatabaseCDCSummary')
    CompareFileType = Shapes::UnionShape.new(name: 'CompareFileType')
    ComparisonStatusEnum = Shapes::StringShape.new(name: 'ComparisonStatusEnum')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCloudFormationStepInput = Shapes::StructureShape.new(name: 'CreateCloudFormationStepInput')
    CreateCloudFormationStepOutput = Shapes::StructureShape.new(name: 'CreateCloudFormationStepOutput')
    CreateCloudFormationSummary = Shapes::StructureShape.new(name: 'CreateCloudFormationSummary')
    CreateTestCaseRequest = Shapes::StructureShape.new(name: 'CreateTestCaseRequest')
    CreateTestCaseResponse = Shapes::StructureShape.new(name: 'CreateTestCaseResponse')
    CreateTestConfigurationRequest = Shapes::StructureShape.new(name: 'CreateTestConfigurationRequest')
    CreateTestConfigurationResponse = Shapes::StructureShape.new(name: 'CreateTestConfigurationResponse')
    CreateTestSuiteRequest = Shapes::StructureShape.new(name: 'CreateTestSuiteRequest')
    CreateTestSuiteResponse = Shapes::StructureShape.new(name: 'CreateTestSuiteResponse')
    DataSet = Shapes::StructureShape.new(name: 'DataSet')
    DataSetList = Shapes::ListShape.new(name: 'DataSetList')
    DataSetType = Shapes::StringShape.new(name: 'DataSetType')
    DatabaseCDC = Shapes::StructureShape.new(name: 'DatabaseCDC')
    DeleteCloudFormationStepInput = Shapes::StructureShape.new(name: 'DeleteCloudFormationStepInput')
    DeleteCloudFormationStepOutput = Shapes::StructureShape.new(name: 'DeleteCloudFormationStepOutput')
    DeleteCloudFormationSummary = Shapes::StructureShape.new(name: 'DeleteCloudFormationSummary')
    DeleteTestCaseRequest = Shapes::StructureShape.new(name: 'DeleteTestCaseRequest')
    DeleteTestCaseResponse = Shapes::StructureShape.new(name: 'DeleteTestCaseResponse')
    DeleteTestConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteTestConfigurationRequest')
    DeleteTestConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteTestConfigurationResponse')
    DeleteTestRunRequest = Shapes::StructureShape.new(name: 'DeleteTestRunRequest')
    DeleteTestRunResponse = Shapes::StructureShape.new(name: 'DeleteTestRunResponse')
    DeleteTestSuiteRequest = Shapes::StructureShape.new(name: 'DeleteTestSuiteRequest')
    DeleteTestSuiteResponse = Shapes::StructureShape.new(name: 'DeleteTestSuiteResponse')
    ExportDataSetNames = Shapes::ListShape.new(name: 'ExportDataSetNames')
    File = Shapes::UnionShape.new(name: 'File')
    FileMetadata = Shapes::UnionShape.new(name: 'FileMetadata')
    Format = Shapes::StringShape.new(name: 'Format')
    GetTestCaseRequest = Shapes::StructureShape.new(name: 'GetTestCaseRequest')
    GetTestCaseResponse = Shapes::StructureShape.new(name: 'GetTestCaseResponse')
    GetTestConfigurationRequest = Shapes::StructureShape.new(name: 'GetTestConfigurationRequest')
    GetTestConfigurationResponse = Shapes::StructureShape.new(name: 'GetTestConfigurationResponse')
    GetTestRunStepRequest = Shapes::StructureShape.new(name: 'GetTestRunStepRequest')
    GetTestRunStepResponse = Shapes::StructureShape.new(name: 'GetTestRunStepResponse')
    GetTestSuiteRequest = Shapes::StructureShape.new(name: 'GetTestSuiteRequest')
    GetTestSuiteResponse = Shapes::StructureShape.new(name: 'GetTestSuiteResponse')
    IdempotencyTokenString = Shapes::StringShape.new(name: 'IdempotencyTokenString')
    Identifier = Shapes::StringShape.new(name: 'Identifier')
    Input = Shapes::UnionShape.new(name: 'Input')
    InputFile = Shapes::StructureShape.new(name: 'InputFile')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTestCasesRequest = Shapes::StructureShape.new(name: 'ListTestCasesRequest')
    ListTestCasesResponse = Shapes::StructureShape.new(name: 'ListTestCasesResponse')
    ListTestConfigurationsRequest = Shapes::StructureShape.new(name: 'ListTestConfigurationsRequest')
    ListTestConfigurationsResponse = Shapes::StructureShape.new(name: 'ListTestConfigurationsResponse')
    ListTestRunStepsRequest = Shapes::StructureShape.new(name: 'ListTestRunStepsRequest')
    ListTestRunStepsResponse = Shapes::StructureShape.new(name: 'ListTestRunStepsResponse')
    ListTestRunTestCasesRequest = Shapes::StructureShape.new(name: 'ListTestRunTestCasesRequest')
    ListTestRunTestCasesResponse = Shapes::StructureShape.new(name: 'ListTestRunTestCasesResponse')
    ListTestRunsRequest = Shapes::StructureShape.new(name: 'ListTestRunsRequest')
    ListTestRunsResponse = Shapes::StructureShape.new(name: 'ListTestRunsResponse')
    ListTestSuitesRequest = Shapes::StructureShape.new(name: 'ListTestSuitesRequest')
    ListTestSuitesResponse = Shapes::StructureShape.new(name: 'ListTestSuitesResponse')
    M2ManagedActionProperties = Shapes::StructureShape.new(name: 'M2ManagedActionProperties')
    M2ManagedActionType = Shapes::StringShape.new(name: 'M2ManagedActionType')
    M2ManagedApplication = Shapes::StructureShape.new(name: 'M2ManagedApplication')
    M2ManagedApplicationAction = Shapes::StructureShape.new(name: 'M2ManagedApplicationAction')
    M2ManagedApplicationStepInput = Shapes::StructureShape.new(name: 'M2ManagedApplicationStepInput')
    M2ManagedApplicationStepOutput = Shapes::StructureShape.new(name: 'M2ManagedApplicationStepOutput')
    M2ManagedApplicationStepSummary = Shapes::StructureShape.new(name: 'M2ManagedApplicationStepSummary')
    M2ManagedApplicationSummary = Shapes::StructureShape.new(name: 'M2ManagedApplicationSummary')
    M2ManagedRuntime = Shapes::StringShape.new(name: 'M2ManagedRuntime')
    M2NonManagedActionType = Shapes::StringShape.new(name: 'M2NonManagedActionType')
    M2NonManagedApplication = Shapes::StructureShape.new(name: 'M2NonManagedApplication')
    M2NonManagedApplicationAction = Shapes::StructureShape.new(name: 'M2NonManagedApplicationAction')
    M2NonManagedApplicationStepInput = Shapes::StructureShape.new(name: 'M2NonManagedApplicationStepInput')
    M2NonManagedApplicationStepOutput = Shapes::StructureShape.new(name: 'M2NonManagedApplicationStepOutput')
    M2NonManagedApplicationStepSummary = Shapes::StructureShape.new(name: 'M2NonManagedApplicationStepSummary')
    M2NonManagedApplicationSummary = Shapes::StructureShape.new(name: 'M2NonManagedApplicationSummary')
    M2NonManagedRuntime = Shapes::StringShape.new(name: 'M2NonManagedRuntime')
    MainframeAction = Shapes::StructureShape.new(name: 'MainframeAction')
    MainframeActionProperties = Shapes::StructureShape.new(name: 'MainframeActionProperties')
    MainframeActionSummary = Shapes::UnionShape.new(name: 'MainframeActionSummary')
    MainframeActionType = Shapes::UnionShape.new(name: 'MainframeActionType')
    MainframeResourceSummary = Shapes::UnionShape.new(name: 'MainframeResourceSummary')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    Output = Shapes::UnionShape.new(name: 'Output')
    OutputFile = Shapes::StructureShape.new(name: 'OutputFile')
    Properties = Shapes::MapShape.new(name: 'Properties')
    Resource = Shapes::StructureShape.new(name: 'Resource')
    ResourceAction = Shapes::UnionShape.new(name: 'ResourceAction')
    ResourceActionSummary = Shapes::UnionShape.new(name: 'ResourceActionSummary')
    ResourceDescription = Shapes::StringShape.new(name: 'ResourceDescription')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::UnionShape.new(name: 'ResourceType')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    Script = Shapes::StructureShape.new(name: 'Script')
    ScriptSummary = Shapes::StructureShape.new(name: 'ScriptSummary')
    ScriptType = Shapes::StringShape.new(name: 'ScriptType')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceSettings = Shapes::StructureShape.new(name: 'ServiceSettings')
    SourceDatabase = Shapes::StringShape.new(name: 'SourceDatabase')
    SourceDatabaseMetadata = Shapes::StructureShape.new(name: 'SourceDatabaseMetadata')
    StartTestRunRequest = Shapes::StructureShape.new(name: 'StartTestRunRequest')
    StartTestRunResponse = Shapes::StructureShape.new(name: 'StartTestRunResponse')
    Step = Shapes::StructureShape.new(name: 'Step')
    StepAction = Shapes::UnionShape.new(name: 'StepAction')
    StepList = Shapes::ListShape.new(name: 'StepList')
    StepRunStatus = Shapes::StringShape.new(name: 'StepRunStatus')
    StepRunSummary = Shapes::UnionShape.new(name: 'StepRunSummary')
    String = Shapes::StringShape.new(name: 'String')
    String100 = Shapes::StringShape.new(name: 'String100')
    String50 = Shapes::StringShape.new(name: 'String50')
    TN3270 = Shapes::StructureShape.new(name: 'TN3270')
    TN3270StepInput = Shapes::StructureShape.new(name: 'TN3270StepInput')
    TN3270StepOutput = Shapes::StructureShape.new(name: 'TN3270StepOutput')
    TN3270Summary = Shapes::StructureShape.new(name: 'TN3270Summary')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetDatabase = Shapes::StringShape.new(name: 'TargetDatabase')
    TargetDatabaseMetadata = Shapes::StructureShape.new(name: 'TargetDatabaseMetadata')
    TestCaseIdList = Shapes::ListShape.new(name: 'TestCaseIdList')
    TestCaseLatestVersion = Shapes::StructureShape.new(name: 'TestCaseLatestVersion')
    TestCaseLifecycle = Shapes::StringShape.new(name: 'TestCaseLifecycle')
    TestCaseList = Shapes::ListShape.new(name: 'TestCaseList')
    TestCaseRunStatus = Shapes::StringShape.new(name: 'TestCaseRunStatus')
    TestCaseRunSummary = Shapes::StructureShape.new(name: 'TestCaseRunSummary')
    TestCaseRunSummaryList = Shapes::ListShape.new(name: 'TestCaseRunSummaryList')
    TestCaseSummary = Shapes::StructureShape.new(name: 'TestCaseSummary')
    TestCaseSummaryList = Shapes::ListShape.new(name: 'TestCaseSummaryList')
    TestCases = Shapes::UnionShape.new(name: 'TestCases')
    TestConfigurationIdList = Shapes::ListShape.new(name: 'TestConfigurationIdList')
    TestConfigurationLatestVersion = Shapes::StructureShape.new(name: 'TestConfigurationLatestVersion')
    TestConfigurationLifecycle = Shapes::StringShape.new(name: 'TestConfigurationLifecycle')
    TestConfigurationList = Shapes::ListShape.new(name: 'TestConfigurationList')
    TestConfigurationSummary = Shapes::StructureShape.new(name: 'TestConfigurationSummary')
    TestRunIdList = Shapes::ListShape.new(name: 'TestRunIdList')
    TestRunStatus = Shapes::StringShape.new(name: 'TestRunStatus')
    TestRunStepSummary = Shapes::StructureShape.new(name: 'TestRunStepSummary')
    TestRunStepSummaryList = Shapes::ListShape.new(name: 'TestRunStepSummaryList')
    TestRunSummary = Shapes::StructureShape.new(name: 'TestRunSummary')
    TestRunSummaryList = Shapes::ListShape.new(name: 'TestRunSummaryList')
    TestSuiteIdList = Shapes::ListShape.new(name: 'TestSuiteIdList')
    TestSuiteLatestVersion = Shapes::StructureShape.new(name: 'TestSuiteLatestVersion')
    TestSuiteLifecycle = Shapes::StringShape.new(name: 'TestSuiteLifecycle')
    TestSuiteList = Shapes::ListShape.new(name: 'TestSuiteList')
    TestSuiteSummary = Shapes::StructureShape.new(name: 'TestSuiteSummary')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateTestCaseRequest = Shapes::StructureShape.new(name: 'UpdateTestCaseRequest')
    UpdateTestCaseResponse = Shapes::StructureShape.new(name: 'UpdateTestCaseResponse')
    UpdateTestConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateTestConfigurationRequest')
    UpdateTestConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateTestConfigurationResponse')
    UpdateTestSuiteRequest = Shapes::StructureShape.new(name: 'UpdateTestSuiteRequest')
    UpdateTestSuiteResponse = Shapes::StructureShape.new(name: 'UpdateTestSuiteResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    Variable = Shapes::StringShape.new(name: 'Variable')
    Version = Shapes::IntegerShape.new(name: 'Version')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    Batch.add_member(:batch_job_name, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "batchJobName"))
    Batch.add_member(:batch_job_parameters, Shapes::ShapeRef.new(shape: BatchJobParameters, location_name: "batchJobParameters"))
    Batch.add_member(:export_data_set_names, Shapes::ShapeRef.new(shape: ExportDataSetNames, location_name: "exportDataSetNames"))
    Batch.struct_class = Types::Batch

    BatchJobParameters.key = Shapes::ShapeRef.new(shape: String)
    BatchJobParameters.value = Shapes::ShapeRef.new(shape: String)

    BatchStepInput.add_member(:resource, Shapes::ShapeRef.new(shape: MainframeResourceSummary, required: true, location_name: "resource"))
    BatchStepInput.add_member(:batch_job_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "batchJobName"))
    BatchStepInput.add_member(:batch_job_parameters, Shapes::ShapeRef.new(shape: BatchJobParameters, location_name: "batchJobParameters"))
    BatchStepInput.add_member(:export_data_set_names, Shapes::ShapeRef.new(shape: ExportDataSetNames, location_name: "exportDataSetNames"))
    BatchStepInput.add_member(:properties, Shapes::ShapeRef.new(shape: MainframeActionProperties, location_name: "properties"))
    BatchStepInput.struct_class = Types::BatchStepInput

    BatchStepOutput.add_member(:data_set_export_location, Shapes::ShapeRef.new(shape: S3Uri, location_name: "dataSetExportLocation"))
    BatchStepOutput.add_member(:dms_output_location, Shapes::ShapeRef.new(shape: S3Uri, location_name: "dmsOutputLocation"))
    BatchStepOutput.add_member(:data_set_details, Shapes::ShapeRef.new(shape: DataSetList, location_name: "dataSetDetails"))
    BatchStepOutput.struct_class = Types::BatchStepOutput

    BatchSummary.add_member(:step_input, Shapes::ShapeRef.new(shape: BatchStepInput, required: true, location_name: "stepInput"))
    BatchSummary.add_member(:step_output, Shapes::ShapeRef.new(shape: BatchStepOutput, location_name: "stepOutput"))
    BatchSummary.struct_class = Types::BatchSummary

    CloudFormation.add_member(:template_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "templateLocation"))
    CloudFormation.add_member(:parameters, Shapes::ShapeRef.new(shape: Properties, location_name: "parameters"))
    CloudFormation.struct_class = Types::CloudFormation

    CloudFormationAction.add_member(:resource, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "resource"))
    CloudFormationAction.add_member(:action_type, Shapes::ShapeRef.new(shape: CloudFormationActionType, location_name: "actionType"))
    CloudFormationAction.struct_class = Types::CloudFormationAction

    CloudFormationStepSummary.add_member(:create_cloudformation, Shapes::ShapeRef.new(shape: CreateCloudFormationSummary, location_name: "createCloudformation"))
    CloudFormationStepSummary.add_member(:delete_cloudformation, Shapes::ShapeRef.new(shape: DeleteCloudFormationSummary, location_name: "deleteCloudformation"))
    CloudFormationStepSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CloudFormationStepSummary.add_member_subclass(:create_cloudformation, Types::CloudFormationStepSummary::CreateCloudformation)
    CloudFormationStepSummary.add_member_subclass(:delete_cloudformation, Types::CloudFormationStepSummary::DeleteCloudformation)
    CloudFormationStepSummary.add_member_subclass(:unknown, Types::CloudFormationStepSummary::Unknown)
    CloudFormationStepSummary.struct_class = Types::CloudFormationStepSummary

    CompareAction.add_member(:input, Shapes::ShapeRef.new(shape: Input, required: true, location_name: "input"))
    CompareAction.add_member(:output, Shapes::ShapeRef.new(shape: Output, location_name: "output"))
    CompareAction.struct_class = Types::CompareAction

    CompareActionSummary.add_member(:type, Shapes::ShapeRef.new(shape: File, required: true, location_name: "type"))
    CompareActionSummary.struct_class = Types::CompareActionSummary

    CompareDataSetsStepInput.add_member(:source_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "sourceLocation"))
    CompareDataSetsStepInput.add_member(:target_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "targetLocation"))
    CompareDataSetsStepInput.add_member(:source_data_sets, Shapes::ShapeRef.new(shape: DataSetList, required: true, location_name: "sourceDataSets"))
    CompareDataSetsStepInput.add_member(:target_data_sets, Shapes::ShapeRef.new(shape: DataSetList, required: true, location_name: "targetDataSets"))
    CompareDataSetsStepInput.struct_class = Types::CompareDataSetsStepInput

    CompareDataSetsStepOutput.add_member(:comparison_output_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "comparisonOutputLocation"))
    CompareDataSetsStepOutput.add_member(:comparison_status, Shapes::ShapeRef.new(shape: ComparisonStatusEnum, required: true, location_name: "comparisonStatus"))
    CompareDataSetsStepOutput.struct_class = Types::CompareDataSetsStepOutput

    CompareDataSetsSummary.add_member(:step_input, Shapes::ShapeRef.new(shape: CompareDataSetsStepInput, required: true, location_name: "stepInput"))
    CompareDataSetsSummary.add_member(:step_output, Shapes::ShapeRef.new(shape: CompareDataSetsStepOutput, location_name: "stepOutput"))
    CompareDataSetsSummary.struct_class = Types::CompareDataSetsSummary

    CompareDatabaseCDCStepInput.add_member(:source_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceLocation"))
    CompareDatabaseCDCStepInput.add_member(:target_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "targetLocation"))
    CompareDatabaseCDCStepInput.add_member(:output_location, Shapes::ShapeRef.new(shape: String, location_name: "outputLocation"))
    CompareDatabaseCDCStepInput.add_member(:source_metadata, Shapes::ShapeRef.new(shape: SourceDatabaseMetadata, required: true, location_name: "sourceMetadata"))
    CompareDatabaseCDCStepInput.add_member(:target_metadata, Shapes::ShapeRef.new(shape: TargetDatabaseMetadata, required: true, location_name: "targetMetadata"))
    CompareDatabaseCDCStepInput.struct_class = Types::CompareDatabaseCDCStepInput

    CompareDatabaseCDCStepOutput.add_member(:comparison_output_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "comparisonOutputLocation"))
    CompareDatabaseCDCStepOutput.add_member(:comparison_status, Shapes::ShapeRef.new(shape: ComparisonStatusEnum, required: true, location_name: "comparisonStatus"))
    CompareDatabaseCDCStepOutput.struct_class = Types::CompareDatabaseCDCStepOutput

    CompareDatabaseCDCSummary.add_member(:step_input, Shapes::ShapeRef.new(shape: CompareDatabaseCDCStepInput, required: true, location_name: "stepInput"))
    CompareDatabaseCDCSummary.add_member(:step_output, Shapes::ShapeRef.new(shape: CompareDatabaseCDCStepOutput, location_name: "stepOutput"))
    CompareDatabaseCDCSummary.struct_class = Types::CompareDatabaseCDCSummary

    CompareFileType.add_member(:datasets, Shapes::ShapeRef.new(shape: CompareDataSetsSummary, location_name: "datasets"))
    CompareFileType.add_member(:database_cdc, Shapes::ShapeRef.new(shape: CompareDatabaseCDCSummary, location_name: "databaseCDC"))
    CompareFileType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    CompareFileType.add_member_subclass(:datasets, Types::CompareFileType::Datasets)
    CompareFileType.add_member_subclass(:database_cdc, Types::CompareFileType::DatabaseCdc)
    CompareFileType.add_member_subclass(:unknown, Types::CompareFileType::Unknown)
    CompareFileType.struct_class = Types::CompareFileType

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateCloudFormationStepInput.add_member(:template_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "templateLocation"))
    CreateCloudFormationStepInput.add_member(:parameters, Shapes::ShapeRef.new(shape: Properties, location_name: "parameters"))
    CreateCloudFormationStepInput.struct_class = Types::CreateCloudFormationStepInput

    CreateCloudFormationStepOutput.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stackId"))
    CreateCloudFormationStepOutput.add_member(:exports, Shapes::ShapeRef.new(shape: Properties, location_name: "exports"))
    CreateCloudFormationStepOutput.struct_class = Types::CreateCloudFormationStepOutput

    CreateCloudFormationSummary.add_member(:step_input, Shapes::ShapeRef.new(shape: CreateCloudFormationStepInput, required: true, location_name: "stepInput"))
    CreateCloudFormationSummary.add_member(:step_output, Shapes::ShapeRef.new(shape: CreateCloudFormationStepOutput, location_name: "stepOutput"))
    CreateCloudFormationSummary.struct_class = Types::CreateCloudFormationSummary

    CreateTestCaseRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateTestCaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTestCaseRequest.add_member(:steps, Shapes::ShapeRef.new(shape: StepList, required: true, location_name: "steps"))
    CreateTestCaseRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateTestCaseRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTestCaseRequest.struct_class = Types::CreateTestCaseRequest

    CreateTestCaseResponse.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testCaseId"))
    CreateTestCaseResponse.add_member(:test_case_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testCaseVersion"))
    CreateTestCaseResponse.struct_class = Types::CreateTestCaseResponse

    CreateTestConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateTestConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTestConfigurationRequest.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "resources"))
    CreateTestConfigurationRequest.add_member(:properties, Shapes::ShapeRef.new(shape: Properties, location_name: "properties"))
    CreateTestConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateTestConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTestConfigurationRequest.add_member(:service_settings, Shapes::ShapeRef.new(shape: ServiceSettings, location_name: "serviceSettings"))
    CreateTestConfigurationRequest.struct_class = Types::CreateTestConfigurationRequest

    CreateTestConfigurationResponse.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testConfigurationId"))
    CreateTestConfigurationResponse.add_member(:test_configuration_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testConfigurationVersion"))
    CreateTestConfigurationResponse.struct_class = Types::CreateTestConfigurationResponse

    CreateTestSuiteRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateTestSuiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    CreateTestSuiteRequest.add_member(:before_steps, Shapes::ShapeRef.new(shape: StepList, location_name: "beforeSteps"))
    CreateTestSuiteRequest.add_member(:after_steps, Shapes::ShapeRef.new(shape: StepList, location_name: "afterSteps"))
    CreateTestSuiteRequest.add_member(:test_cases, Shapes::ShapeRef.new(shape: TestCases, required: true, location_name: "testCases"))
    CreateTestSuiteRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateTestSuiteRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateTestSuiteRequest.struct_class = Types::CreateTestSuiteRequest

    CreateTestSuiteResponse.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testSuiteId"))
    CreateTestSuiteResponse.add_member(:test_suite_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testSuiteVersion"))
    CreateTestSuiteResponse.struct_class = Types::CreateTestSuiteResponse

    DataSet.add_member(:type, Shapes::ShapeRef.new(shape: DataSetType, required: true, location_name: "type"))
    DataSet.add_member(:name, Shapes::ShapeRef.new(shape: String100, required: true, location_name: "name"))
    DataSet.add_member(:ccsid, Shapes::ShapeRef.new(shape: String50, required: true, location_name: "ccsid"))
    DataSet.add_member(:format, Shapes::ShapeRef.new(shape: Format, required: true, location_name: "format"))
    DataSet.add_member(:length, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "length"))
    DataSet.struct_class = Types::DataSet

    DataSetList.member = Shapes::ShapeRef.new(shape: DataSet)

    DatabaseCDC.add_member(:source_metadata, Shapes::ShapeRef.new(shape: SourceDatabaseMetadata, required: true, location_name: "sourceMetadata"))
    DatabaseCDC.add_member(:target_metadata, Shapes::ShapeRef.new(shape: TargetDatabaseMetadata, required: true, location_name: "targetMetadata"))
    DatabaseCDC.struct_class = Types::DatabaseCDC

    DeleteCloudFormationStepInput.add_member(:stack_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "stackId"))
    DeleteCloudFormationStepInput.struct_class = Types::DeleteCloudFormationStepInput

    DeleteCloudFormationStepOutput.struct_class = Types::DeleteCloudFormationStepOutput

    DeleteCloudFormationSummary.add_member(:step_input, Shapes::ShapeRef.new(shape: DeleteCloudFormationStepInput, required: true, location_name: "stepInput"))
    DeleteCloudFormationSummary.add_member(:step_output, Shapes::ShapeRef.new(shape: DeleteCloudFormationStepOutput, location_name: "stepOutput"))
    DeleteCloudFormationSummary.struct_class = Types::DeleteCloudFormationSummary

    DeleteTestCaseRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testCaseId"))
    DeleteTestCaseRequest.struct_class = Types::DeleteTestCaseRequest

    DeleteTestCaseResponse.struct_class = Types::DeleteTestCaseResponse

    DeleteTestConfigurationRequest.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testConfigurationId"))
    DeleteTestConfigurationRequest.struct_class = Types::DeleteTestConfigurationRequest

    DeleteTestConfigurationResponse.struct_class = Types::DeleteTestConfigurationResponse

    DeleteTestRunRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testRunId"))
    DeleteTestRunRequest.struct_class = Types::DeleteTestRunRequest

    DeleteTestRunResponse.struct_class = Types::DeleteTestRunResponse

    DeleteTestSuiteRequest.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testSuiteId"))
    DeleteTestSuiteRequest.struct_class = Types::DeleteTestSuiteRequest

    DeleteTestSuiteResponse.struct_class = Types::DeleteTestSuiteResponse

    ExportDataSetNames.member = Shapes::ShapeRef.new(shape: String100)

    File.add_member(:file_type, Shapes::ShapeRef.new(shape: CompareFileType, location_name: "fileType"))
    File.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    File.add_member_subclass(:file_type, Types::File::FileType)
    File.add_member_subclass(:unknown, Types::File::Unknown)
    File.struct_class = Types::File

    FileMetadata.add_member(:data_sets, Shapes::ShapeRef.new(shape: DataSetList, location_name: "dataSets"))
    FileMetadata.add_member(:database_cdc, Shapes::ShapeRef.new(shape: DatabaseCDC, location_name: "databaseCDC"))
    FileMetadata.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    FileMetadata.add_member_subclass(:data_sets, Types::FileMetadata::DataSets)
    FileMetadata.add_member_subclass(:database_cdc, Types::FileMetadata::DatabaseCdc)
    FileMetadata.add_member_subclass(:unknown, Types::FileMetadata::Unknown)
    FileMetadata.struct_class = Types::FileMetadata

    GetTestCaseRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testCaseId"))
    GetTestCaseRequest.add_member(:test_case_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "testCaseVersion"))
    GetTestCaseRequest.struct_class = Types::GetTestCaseRequest

    GetTestCaseResponse.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testCaseId"))
    GetTestCaseResponse.add_member(:test_case_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "testCaseArn"))
    GetTestCaseResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetTestCaseResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTestCaseResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: TestCaseLatestVersion, required: true, location_name: "latestVersion"))
    GetTestCaseResponse.add_member(:test_case_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testCaseVersion"))
    GetTestCaseResponse.add_member(:status, Shapes::ShapeRef.new(shape: TestCaseLifecycle, required: true, location_name: "status"))
    GetTestCaseResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetTestCaseResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetTestCaseResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateTime"))
    GetTestCaseResponse.add_member(:steps, Shapes::ShapeRef.new(shape: StepList, required: true, location_name: "steps"))
    GetTestCaseResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTestCaseResponse.struct_class = Types::GetTestCaseResponse

    GetTestConfigurationRequest.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testConfigurationId"))
    GetTestConfigurationRequest.add_member(:test_configuration_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "testConfigurationVersion"))
    GetTestConfigurationRequest.struct_class = Types::GetTestConfigurationRequest

    GetTestConfigurationResponse.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testConfigurationId"))
    GetTestConfigurationResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetTestConfigurationResponse.add_member(:test_configuration_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "testConfigurationArn"))
    GetTestConfigurationResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: TestConfigurationLatestVersion, required: true, location_name: "latestVersion"))
    GetTestConfigurationResponse.add_member(:test_configuration_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testConfigurationVersion"))
    GetTestConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: TestConfigurationLifecycle, required: true, location_name: "status"))
    GetTestConfigurationResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetTestConfigurationResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetTestConfigurationResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateTime"))
    GetTestConfigurationResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTestConfigurationResponse.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "resources"))
    GetTestConfigurationResponse.add_member(:properties, Shapes::ShapeRef.new(shape: Properties, required: true, location_name: "properties"))
    GetTestConfigurationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTestConfigurationResponse.add_member(:service_settings, Shapes::ShapeRef.new(shape: ServiceSettings, location_name: "serviceSettings"))
    GetTestConfigurationResponse.struct_class = Types::GetTestConfigurationResponse

    GetTestRunStepRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testRunId"))
    GetTestRunStepRequest.add_member(:step_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location: "uri", location_name: "stepName"))
    GetTestRunStepRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "testCaseId"))
    GetTestRunStepRequest.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "testSuiteId"))
    GetTestRunStepRequest.struct_class = Types::GetTestRunStepRequest

    GetTestRunStepResponse.add_member(:step_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "stepName"))
    GetTestRunStepResponse.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testRunId"))
    GetTestRunStepResponse.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId"))
    GetTestRunStepResponse.add_member(:test_case_version, Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion"))
    GetTestRunStepResponse.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId"))
    GetTestRunStepResponse.add_member(:test_suite_version, Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion"))
    GetTestRunStepResponse.add_member(:before_step, Shapes::ShapeRef.new(shape: Boolean, location_name: "beforeStep"))
    GetTestRunStepResponse.add_member(:after_step, Shapes::ShapeRef.new(shape: Boolean, location_name: "afterStep"))
    GetTestRunStepResponse.add_member(:status, Shapes::ShapeRef.new(shape: StepRunStatus, required: true, location_name: "status"))
    GetTestRunStepResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetTestRunStepResponse.add_member(:run_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "runStartTime"))
    GetTestRunStepResponse.add_member(:run_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "runEndTime"))
    GetTestRunStepResponse.add_member(:step_run_summary, Shapes::ShapeRef.new(shape: StepRunSummary, location_name: "stepRunSummary"))
    GetTestRunStepResponse.struct_class = Types::GetTestRunStepResponse

    GetTestSuiteRequest.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testSuiteId"))
    GetTestSuiteRequest.add_member(:test_suite_version, Shapes::ShapeRef.new(shape: Version, location: "querystring", location_name: "testSuiteVersion"))
    GetTestSuiteRequest.struct_class = Types::GetTestSuiteRequest

    GetTestSuiteResponse.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testSuiteId"))
    GetTestSuiteResponse.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    GetTestSuiteResponse.add_member(:latest_version, Shapes::ShapeRef.new(shape: TestSuiteLatestVersion, required: true, location_name: "latestVersion"))
    GetTestSuiteResponse.add_member(:test_suite_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testSuiteVersion"))
    GetTestSuiteResponse.add_member(:status, Shapes::ShapeRef.new(shape: TestSuiteLifecycle, location_name: "status"))
    GetTestSuiteResponse.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    GetTestSuiteResponse.add_member(:test_suite_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "testSuiteArn"))
    GetTestSuiteResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    GetTestSuiteResponse.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateTime"))
    GetTestSuiteResponse.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    GetTestSuiteResponse.add_member(:before_steps, Shapes::ShapeRef.new(shape: StepList, required: true, location_name: "beforeSteps"))
    GetTestSuiteResponse.add_member(:after_steps, Shapes::ShapeRef.new(shape: StepList, required: true, location_name: "afterSteps"))
    GetTestSuiteResponse.add_member(:test_cases, Shapes::ShapeRef.new(shape: TestCases, required: true, location_name: "testCases"))
    GetTestSuiteResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetTestSuiteResponse.struct_class = Types::GetTestSuiteResponse

    Input.add_member(:file, Shapes::ShapeRef.new(shape: InputFile, location_name: "file"))
    Input.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Input.add_member_subclass(:file, Types::Input::File)
    Input.add_member_subclass(:unknown, Types::Input::Unknown)
    Input.struct_class = Types::Input

    InputFile.add_member(:source_location, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "sourceLocation"))
    InputFile.add_member(:target_location, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "targetLocation"))
    InputFile.add_member(:file_metadata, Shapes::ShapeRef.new(shape: FileMetadata, required: true, location_name: "fileMetadata"))
    InputFile.struct_class = Types::InputFile

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTestCasesRequest.add_member(:test_case_ids, Shapes::ShapeRef.new(shape: TestCaseIdList, location: "querystring", location_name: "testCaseIds"))
    ListTestCasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestCasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestCasesRequest.struct_class = Types::ListTestCasesRequest

    ListTestCasesResponse.add_member(:test_cases, Shapes::ShapeRef.new(shape: TestCaseSummaryList, required: true, location_name: "testCases"))
    ListTestCasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestCasesResponse.struct_class = Types::ListTestCasesResponse

    ListTestConfigurationsRequest.add_member(:test_configuration_ids, Shapes::ShapeRef.new(shape: TestConfigurationIdList, location: "querystring", location_name: "testConfigurationIds"))
    ListTestConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestConfigurationsRequest.struct_class = Types::ListTestConfigurationsRequest

    ListTestConfigurationsResponse.add_member(:test_configurations, Shapes::ShapeRef.new(shape: TestConfigurationList, required: true, location_name: "testConfigurations"))
    ListTestConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestConfigurationsResponse.struct_class = Types::ListTestConfigurationsResponse

    ListTestRunStepsRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testRunId"))
    ListTestRunStepsRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "testCaseId"))
    ListTestRunStepsRequest.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "testSuiteId"))
    ListTestRunStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestRunStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestRunStepsRequest.struct_class = Types::ListTestRunStepsRequest

    ListTestRunStepsResponse.add_member(:test_run_steps, Shapes::ShapeRef.new(shape: TestRunStepSummaryList, required: true, location_name: "testRunSteps"))
    ListTestRunStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunStepsResponse.struct_class = Types::ListTestRunStepsResponse

    ListTestRunTestCasesRequest.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testRunId"))
    ListTestRunTestCasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestRunTestCasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestRunTestCasesRequest.struct_class = Types::ListTestRunTestCasesRequest

    ListTestRunTestCasesResponse.add_member(:test_run_test_cases, Shapes::ShapeRef.new(shape: TestCaseRunSummaryList, required: true, location_name: "testRunTestCases"))
    ListTestRunTestCasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunTestCasesResponse.struct_class = Types::ListTestRunTestCasesResponse

    ListTestRunsRequest.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, location: "querystring", location_name: "testSuiteId"))
    ListTestRunsRequest.add_member(:test_run_ids, Shapes::ShapeRef.new(shape: TestRunIdList, location: "querystring", location_name: "testrunIds"))
    ListTestRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestRunsRequest.struct_class = Types::ListTestRunsRequest

    ListTestRunsResponse.add_member(:test_runs, Shapes::ShapeRef.new(shape: TestRunSummaryList, required: true, location_name: "testRuns"))
    ListTestRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestRunsResponse.struct_class = Types::ListTestRunsResponse

    ListTestSuitesRequest.add_member(:test_suite_ids, Shapes::ShapeRef.new(shape: TestSuiteIdList, location: "querystring", location_name: "testSuiteIds"))
    ListTestSuitesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListTestSuitesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListTestSuitesRequest.struct_class = Types::ListTestSuitesRequest

    ListTestSuitesResponse.add_member(:test_suites, Shapes::ShapeRef.new(shape: TestSuiteList, required: true, location_name: "testSuites"))
    ListTestSuitesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTestSuitesResponse.struct_class = Types::ListTestSuitesResponse

    M2ManagedActionProperties.add_member(:force_stop, Shapes::ShapeRef.new(shape: Boolean, location_name: "forceStop"))
    M2ManagedActionProperties.add_member(:import_data_set_location, Shapes::ShapeRef.new(shape: Variable, location_name: "importDataSetLocation"))
    M2ManagedActionProperties.struct_class = Types::M2ManagedActionProperties

    M2ManagedApplication.add_member(:application_id, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "applicationId"))
    M2ManagedApplication.add_member(:runtime, Shapes::ShapeRef.new(shape: M2ManagedRuntime, required: true, location_name: "runtime"))
    M2ManagedApplication.add_member(:vpc_endpoint_service_name, Shapes::ShapeRef.new(shape: Variable, location_name: "vpcEndpointServiceName"))
    M2ManagedApplication.add_member(:listener_port, Shapes::ShapeRef.new(shape: Variable, location_name: "listenerPort"))
    M2ManagedApplication.struct_class = Types::M2ManagedApplication

    M2ManagedApplicationAction.add_member(:resource, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "resource"))
    M2ManagedApplicationAction.add_member(:action_type, Shapes::ShapeRef.new(shape: M2ManagedActionType, required: true, location_name: "actionType"))
    M2ManagedApplicationAction.add_member(:properties, Shapes::ShapeRef.new(shape: M2ManagedActionProperties, location_name: "properties"))
    M2ManagedApplicationAction.struct_class = Types::M2ManagedApplicationAction

    M2ManagedApplicationStepInput.add_member(:application_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "applicationId"))
    M2ManagedApplicationStepInput.add_member(:runtime, Shapes::ShapeRef.new(shape: String, required: true, location_name: "runtime"))
    M2ManagedApplicationStepInput.add_member(:vpc_endpoint_service_name, Shapes::ShapeRef.new(shape: String, location_name: "vpcEndpointServiceName"))
    M2ManagedApplicationStepInput.add_member(:listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "listenerPort"))
    M2ManagedApplicationStepInput.add_member(:action_type, Shapes::ShapeRef.new(shape: M2ManagedActionType, required: true, location_name: "actionType"))
    M2ManagedApplicationStepInput.add_member(:properties, Shapes::ShapeRef.new(shape: M2ManagedActionProperties, location_name: "properties"))
    M2ManagedApplicationStepInput.struct_class = Types::M2ManagedApplicationStepInput

    M2ManagedApplicationStepOutput.add_member(:import_data_set_summary, Shapes::ShapeRef.new(shape: Properties, location_name: "importDataSetSummary"))
    M2ManagedApplicationStepOutput.struct_class = Types::M2ManagedApplicationStepOutput

    M2ManagedApplicationStepSummary.add_member(:step_input, Shapes::ShapeRef.new(shape: M2ManagedApplicationStepInput, required: true, location_name: "stepInput"))
    M2ManagedApplicationStepSummary.add_member(:step_output, Shapes::ShapeRef.new(shape: M2ManagedApplicationStepOutput, location_name: "stepOutput"))
    M2ManagedApplicationStepSummary.struct_class = Types::M2ManagedApplicationStepSummary

    M2ManagedApplicationSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "applicationId"))
    M2ManagedApplicationSummary.add_member(:runtime, Shapes::ShapeRef.new(shape: M2ManagedRuntime, required: true, location_name: "runtime"))
    M2ManagedApplicationSummary.add_member(:listener_port, Shapes::ShapeRef.new(shape: Integer, location_name: "listenerPort"))
    M2ManagedApplicationSummary.struct_class = Types::M2ManagedApplicationSummary

    M2NonManagedApplication.add_member(:vpc_endpoint_service_name, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "vpcEndpointServiceName"))
    M2NonManagedApplication.add_member(:listener_port, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "listenerPort"))
    M2NonManagedApplication.add_member(:runtime, Shapes::ShapeRef.new(shape: M2NonManagedRuntime, required: true, location_name: "runtime"))
    M2NonManagedApplication.add_member(:web_app_name, Shapes::ShapeRef.new(shape: Variable, location_name: "webAppName"))
    M2NonManagedApplication.struct_class = Types::M2NonManagedApplication

    M2NonManagedApplicationAction.add_member(:resource, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "resource"))
    M2NonManagedApplicationAction.add_member(:action_type, Shapes::ShapeRef.new(shape: M2NonManagedActionType, required: true, location_name: "actionType"))
    M2NonManagedApplicationAction.struct_class = Types::M2NonManagedApplicationAction

    M2NonManagedApplicationStepInput.add_member(:vpc_endpoint_service_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vpcEndpointServiceName"))
    M2NonManagedApplicationStepInput.add_member(:listener_port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "listenerPort"))
    M2NonManagedApplicationStepInput.add_member(:runtime, Shapes::ShapeRef.new(shape: M2NonManagedRuntime, required: true, location_name: "runtime"))
    M2NonManagedApplicationStepInput.add_member(:web_app_name, Shapes::ShapeRef.new(shape: String, location_name: "webAppName"))
    M2NonManagedApplicationStepInput.add_member(:action_type, Shapes::ShapeRef.new(shape: M2NonManagedActionType, required: true, location_name: "actionType"))
    M2NonManagedApplicationStepInput.struct_class = Types::M2NonManagedApplicationStepInput

    M2NonManagedApplicationStepOutput.struct_class = Types::M2NonManagedApplicationStepOutput

    M2NonManagedApplicationStepSummary.add_member(:step_input, Shapes::ShapeRef.new(shape: M2NonManagedApplicationStepInput, required: true, location_name: "stepInput"))
    M2NonManagedApplicationStepSummary.add_member(:step_output, Shapes::ShapeRef.new(shape: M2NonManagedApplicationStepOutput, location_name: "stepOutput"))
    M2NonManagedApplicationStepSummary.struct_class = Types::M2NonManagedApplicationStepSummary

    M2NonManagedApplicationSummary.add_member(:vpc_endpoint_service_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vpcEndpointServiceName"))
    M2NonManagedApplicationSummary.add_member(:listener_port, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "listenerPort"))
    M2NonManagedApplicationSummary.add_member(:runtime, Shapes::ShapeRef.new(shape: M2NonManagedRuntime, required: true, location_name: "runtime"))
    M2NonManagedApplicationSummary.add_member(:web_app_name, Shapes::ShapeRef.new(shape: String, location_name: "webAppName"))
    M2NonManagedApplicationSummary.struct_class = Types::M2NonManagedApplicationSummary

    MainframeAction.add_member(:resource, Shapes::ShapeRef.new(shape: Variable, required: true, location_name: "resource"))
    MainframeAction.add_member(:action_type, Shapes::ShapeRef.new(shape: MainframeActionType, required: true, location_name: "actionType"))
    MainframeAction.add_member(:properties, Shapes::ShapeRef.new(shape: MainframeActionProperties, location_name: "properties"))
    MainframeAction.struct_class = Types::MainframeAction

    MainframeActionProperties.add_member(:dms_task_arn, Shapes::ShapeRef.new(shape: Variable, location_name: "dmsTaskArn"))
    MainframeActionProperties.struct_class = Types::MainframeActionProperties

    MainframeActionSummary.add_member(:batch, Shapes::ShapeRef.new(shape: BatchSummary, location_name: "batch"))
    MainframeActionSummary.add_member(:tn3270, Shapes::ShapeRef.new(shape: TN3270Summary, location_name: "tn3270"))
    MainframeActionSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MainframeActionSummary.add_member_subclass(:batch, Types::MainframeActionSummary::Batch)
    MainframeActionSummary.add_member_subclass(:tn3270, Types::MainframeActionSummary::Tn3270)
    MainframeActionSummary.add_member_subclass(:unknown, Types::MainframeActionSummary::Unknown)
    MainframeActionSummary.struct_class = Types::MainframeActionSummary

    MainframeActionType.add_member(:batch, Shapes::ShapeRef.new(shape: Batch, location_name: "batch"))
    MainframeActionType.add_member(:tn3270, Shapes::ShapeRef.new(shape: TN3270, location_name: "tn3270"))
    MainframeActionType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MainframeActionType.add_member_subclass(:batch, Types::MainframeActionType::Batch)
    MainframeActionType.add_member_subclass(:tn3270, Types::MainframeActionType::Tn3270)
    MainframeActionType.add_member_subclass(:unknown, Types::MainframeActionType::Unknown)
    MainframeActionType.struct_class = Types::MainframeActionType

    MainframeResourceSummary.add_member(:m2_managed_application, Shapes::ShapeRef.new(shape: M2ManagedApplicationSummary, location_name: "m2ManagedApplication"))
    MainframeResourceSummary.add_member(:m2_non_managed_application, Shapes::ShapeRef.new(shape: M2NonManagedApplicationSummary, location_name: "m2NonManagedApplication"))
    MainframeResourceSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    MainframeResourceSummary.add_member_subclass(:m2_managed_application, Types::MainframeResourceSummary::M2ManagedApplication)
    MainframeResourceSummary.add_member_subclass(:m2_non_managed_application, Types::MainframeResourceSummary::M2NonManagedApplication)
    MainframeResourceSummary.add_member_subclass(:unknown, Types::MainframeResourceSummary::Unknown)
    MainframeResourceSummary.struct_class = Types::MainframeResourceSummary

    Output.add_member(:file, Shapes::ShapeRef.new(shape: OutputFile, location_name: "file"))
    Output.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    Output.add_member_subclass(:file, Types::Output::File)
    Output.add_member_subclass(:unknown, Types::Output::Unknown)
    Output.struct_class = Types::Output

    OutputFile.add_member(:file_location, Shapes::ShapeRef.new(shape: S3Uri, location_name: "fileLocation"))
    OutputFile.struct_class = Types::OutputFile

    Properties.key = Shapes::ShapeRef.new(shape: String)
    Properties.value = Shapes::ShapeRef.new(shape: String)

    Resource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    Resource.add_member(:type, Shapes::ShapeRef.new(shape: ResourceType, required: true, location_name: "type"))
    Resource.struct_class = Types::Resource

    ResourceAction.add_member(:m2_managed_application_action, Shapes::ShapeRef.new(shape: M2ManagedApplicationAction, location_name: "m2ManagedApplicationAction"))
    ResourceAction.add_member(:m2_non_managed_application_action, Shapes::ShapeRef.new(shape: M2NonManagedApplicationAction, location_name: "m2NonManagedApplicationAction"))
    ResourceAction.add_member(:cloud_formation_action, Shapes::ShapeRef.new(shape: CloudFormationAction, location_name: "cloudFormationAction"))
    ResourceAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceAction.add_member_subclass(:m2_managed_application_action, Types::ResourceAction::M2ManagedApplicationAction)
    ResourceAction.add_member_subclass(:m2_non_managed_application_action, Types::ResourceAction::M2NonManagedApplicationAction)
    ResourceAction.add_member_subclass(:cloud_formation_action, Types::ResourceAction::CloudFormationAction)
    ResourceAction.add_member_subclass(:unknown, Types::ResourceAction::Unknown)
    ResourceAction.struct_class = Types::ResourceAction

    ResourceActionSummary.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormationStepSummary, location_name: "cloudFormation"))
    ResourceActionSummary.add_member(:m2_managed_application, Shapes::ShapeRef.new(shape: M2ManagedApplicationStepSummary, location_name: "m2ManagedApplication"))
    ResourceActionSummary.add_member(:m2_non_managed_application, Shapes::ShapeRef.new(shape: M2NonManagedApplicationStepSummary, location_name: "m2NonManagedApplication"))
    ResourceActionSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceActionSummary.add_member_subclass(:cloud_formation, Types::ResourceActionSummary::CloudFormation)
    ResourceActionSummary.add_member_subclass(:m2_managed_application, Types::ResourceActionSummary::M2ManagedApplication)
    ResourceActionSummary.add_member_subclass(:m2_non_managed_application, Types::ResourceActionSummary::M2NonManagedApplication)
    ResourceActionSummary.add_member_subclass(:unknown, Types::ResourceActionSummary::Unknown)
    ResourceActionSummary.struct_class = Types::ResourceActionSummary

    ResourceList.member = Shapes::ShapeRef.new(shape: Resource)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceType.add_member(:cloud_formation, Shapes::ShapeRef.new(shape: CloudFormation, location_name: "cloudFormation"))
    ResourceType.add_member(:m2_managed_application, Shapes::ShapeRef.new(shape: M2ManagedApplication, location_name: "m2ManagedApplication"))
    ResourceType.add_member(:m2_non_managed_application, Shapes::ShapeRef.new(shape: M2NonManagedApplication, location_name: "m2NonManagedApplication"))
    ResourceType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ResourceType.add_member_subclass(:cloud_formation, Types::ResourceType::CloudFormation)
    ResourceType.add_member_subclass(:m2_managed_application, Types::ResourceType::M2ManagedApplication)
    ResourceType.add_member_subclass(:m2_non_managed_application, Types::ResourceType::M2NonManagedApplication)
    ResourceType.add_member_subclass(:unknown, Types::ResourceType::Unknown)
    ResourceType.struct_class = Types::ResourceType

    Script.add_member(:script_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "scriptLocation"))
    Script.add_member(:type, Shapes::ShapeRef.new(shape: ScriptType, required: true, location_name: "type"))
    Script.struct_class = Types::Script

    ScriptSummary.add_member(:script_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "scriptLocation"))
    ScriptSummary.add_member(:type, Shapes::ShapeRef.new(shape: ScriptType, required: true, location_name: "type"))
    ScriptSummary.struct_class = Types::ScriptSummary

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceSettings.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    ServiceSettings.struct_class = Types::ServiceSettings

    SourceDatabaseMetadata.add_member(:type, Shapes::ShapeRef.new(shape: SourceDatabase, required: true, location_name: "type"))
    SourceDatabaseMetadata.add_member(:capture_tool, Shapes::ShapeRef.new(shape: CaptureTool, required: true, location_name: "captureTool"))
    SourceDatabaseMetadata.struct_class = Types::SourceDatabaseMetadata

    StartTestRunRequest.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testSuiteId"))
    StartTestRunRequest.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId"))
    StartTestRunRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyTokenString, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartTestRunRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartTestRunRequest.struct_class = Types::StartTestRunRequest

    StartTestRunResponse.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testRunId"))
    StartTestRunResponse.add_member(:test_run_status, Shapes::ShapeRef.new(shape: TestRunStatus, required: true, location_name: "testRunStatus"))
    StartTestRunResponse.struct_class = Types::StartTestRunResponse

    Step.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    Step.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    Step.add_member(:action, Shapes::ShapeRef.new(shape: StepAction, required: true, location_name: "action"))
    Step.struct_class = Types::Step

    StepAction.add_member(:resource_action, Shapes::ShapeRef.new(shape: ResourceAction, location_name: "resourceAction"))
    StepAction.add_member(:mainframe_action, Shapes::ShapeRef.new(shape: MainframeAction, location_name: "mainframeAction"))
    StepAction.add_member(:compare_action, Shapes::ShapeRef.new(shape: CompareAction, location_name: "compareAction"))
    StepAction.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StepAction.add_member_subclass(:resource_action, Types::StepAction::ResourceAction)
    StepAction.add_member_subclass(:mainframe_action, Types::StepAction::MainframeAction)
    StepAction.add_member_subclass(:compare_action, Types::StepAction::CompareAction)
    StepAction.add_member_subclass(:unknown, Types::StepAction::Unknown)
    StepAction.struct_class = Types::StepAction

    StepList.member = Shapes::ShapeRef.new(shape: Step)

    StepRunSummary.add_member(:mainframe_action, Shapes::ShapeRef.new(shape: MainframeActionSummary, location_name: "mainframeAction"))
    StepRunSummary.add_member(:compare_action, Shapes::ShapeRef.new(shape: CompareActionSummary, location_name: "compareAction"))
    StepRunSummary.add_member(:resource_action, Shapes::ShapeRef.new(shape: ResourceActionSummary, location_name: "resourceAction"))
    StepRunSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    StepRunSummary.add_member_subclass(:mainframe_action, Types::StepRunSummary::MainframeAction)
    StepRunSummary.add_member_subclass(:compare_action, Types::StepRunSummary::CompareAction)
    StepRunSummary.add_member_subclass(:resource_action, Types::StepRunSummary::ResourceAction)
    StepRunSummary.add_member_subclass(:unknown, Types::StepRunSummary::Unknown)
    StepRunSummary.struct_class = Types::StepRunSummary

    TN3270.add_member(:script, Shapes::ShapeRef.new(shape: Script, required: true, location_name: "script"))
    TN3270.add_member(:export_data_set_names, Shapes::ShapeRef.new(shape: ExportDataSetNames, location_name: "exportDataSetNames"))
    TN3270.struct_class = Types::TN3270

    TN3270StepInput.add_member(:resource, Shapes::ShapeRef.new(shape: MainframeResourceSummary, required: true, location_name: "resource"))
    TN3270StepInput.add_member(:script, Shapes::ShapeRef.new(shape: ScriptSummary, required: true, location_name: "script"))
    TN3270StepInput.add_member(:export_data_set_names, Shapes::ShapeRef.new(shape: ExportDataSetNames, location_name: "exportDataSetNames"))
    TN3270StepInput.add_member(:properties, Shapes::ShapeRef.new(shape: MainframeActionProperties, location_name: "properties"))
    TN3270StepInput.struct_class = Types::TN3270StepInput

    TN3270StepOutput.add_member(:data_set_export_location, Shapes::ShapeRef.new(shape: S3Uri, location_name: "dataSetExportLocation"))
    TN3270StepOutput.add_member(:dms_output_location, Shapes::ShapeRef.new(shape: S3Uri, location_name: "dmsOutputLocation"))
    TN3270StepOutput.add_member(:data_set_details, Shapes::ShapeRef.new(shape: DataSetList, location_name: "dataSetDetails"))
    TN3270StepOutput.add_member(:script_output_location, Shapes::ShapeRef.new(shape: S3Uri, required: true, location_name: "scriptOutputLocation"))
    TN3270StepOutput.struct_class = Types::TN3270StepOutput

    TN3270Summary.add_member(:step_input, Shapes::ShapeRef.new(shape: TN3270StepInput, required: true, location_name: "stepInput"))
    TN3270Summary.add_member(:step_output, Shapes::ShapeRef.new(shape: TN3270StepOutput, location_name: "stepOutput"))
    TN3270Summary.struct_class = Types::TN3270Summary

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetDatabaseMetadata.add_member(:type, Shapes::ShapeRef.new(shape: TargetDatabase, required: true, location_name: "type"))
    TargetDatabaseMetadata.add_member(:capture_tool, Shapes::ShapeRef.new(shape: CaptureTool, required: true, location_name: "captureTool"))
    TargetDatabaseMetadata.struct_class = Types::TargetDatabaseMetadata

    TestCaseIdList.member = Shapes::ShapeRef.new(shape: Identifier)

    TestCaseLatestVersion.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    TestCaseLatestVersion.add_member(:status, Shapes::ShapeRef.new(shape: TestCaseLifecycle, required: true, location_name: "status"))
    TestCaseLatestVersion.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestCaseLatestVersion.struct_class = Types::TestCaseLatestVersion

    TestCaseList.member = Shapes::ShapeRef.new(shape: Identifier)

    TestCaseRunSummary.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testCaseId"))
    TestCaseRunSummary.add_member(:test_case_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testCaseVersion"))
    TestCaseRunSummary.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testRunId"))
    TestCaseRunSummary.add_member(:status, Shapes::ShapeRef.new(shape: TestCaseRunStatus, required: true, location_name: "status"))
    TestCaseRunSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestCaseRunSummary.add_member(:run_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "runStartTime"))
    TestCaseRunSummary.add_member(:run_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "runEndTime"))
    TestCaseRunSummary.struct_class = Types::TestCaseRunSummary

    TestCaseRunSummaryList.member = Shapes::ShapeRef.new(shape: TestCaseRunSummary)

    TestCaseSummary.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testCaseId"))
    TestCaseSummary.add_member(:test_case_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "testCaseArn"))
    TestCaseSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    TestCaseSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestCaseSummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "latestVersion"))
    TestCaseSummary.add_member(:status, Shapes::ShapeRef.new(shape: TestCaseLifecycle, required: true, location_name: "status"))
    TestCaseSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    TestCaseSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateTime"))
    TestCaseSummary.struct_class = Types::TestCaseSummary

    TestCaseSummaryList.member = Shapes::ShapeRef.new(shape: TestCaseSummary)

    TestCases.add_member(:sequential, Shapes::ShapeRef.new(shape: TestCaseList, location_name: "sequential"))
    TestCases.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    TestCases.add_member_subclass(:sequential, Types::TestCases::Sequential)
    TestCases.add_member_subclass(:unknown, Types::TestCases::Unknown)
    TestCases.struct_class = Types::TestCases

    TestConfigurationIdList.member = Shapes::ShapeRef.new(shape: Identifier)

    TestConfigurationLatestVersion.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    TestConfigurationLatestVersion.add_member(:status, Shapes::ShapeRef.new(shape: TestConfigurationLifecycle, required: true, location_name: "status"))
    TestConfigurationLatestVersion.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestConfigurationLatestVersion.struct_class = Types::TestConfigurationLatestVersion

    TestConfigurationList.member = Shapes::ShapeRef.new(shape: TestConfigurationSummary)

    TestConfigurationSummary.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testConfigurationId"))
    TestConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    TestConfigurationSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestConfigurationSummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "latestVersion"))
    TestConfigurationSummary.add_member(:test_configuration_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "testConfigurationArn"))
    TestConfigurationSummary.add_member(:status, Shapes::ShapeRef.new(shape: TestConfigurationLifecycle, required: true, location_name: "status"))
    TestConfigurationSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    TestConfigurationSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateTime"))
    TestConfigurationSummary.struct_class = Types::TestConfigurationSummary

    TestRunIdList.member = Shapes::ShapeRef.new(shape: Identifier)

    TestRunStepSummary.add_member(:step_name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "stepName"))
    TestRunStepSummary.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testRunId"))
    TestRunStepSummary.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, location_name: "testCaseId"))
    TestRunStepSummary.add_member(:test_case_version, Shapes::ShapeRef.new(shape: Version, location_name: "testCaseVersion"))
    TestRunStepSummary.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, location_name: "testSuiteId"))
    TestRunStepSummary.add_member(:test_suite_version, Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion"))
    TestRunStepSummary.add_member(:before_step, Shapes::ShapeRef.new(shape: Boolean, location_name: "beforeStep"))
    TestRunStepSummary.add_member(:after_step, Shapes::ShapeRef.new(shape: Boolean, location_name: "afterStep"))
    TestRunStepSummary.add_member(:status, Shapes::ShapeRef.new(shape: StepRunStatus, required: true, location_name: "status"))
    TestRunStepSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestRunStepSummary.add_member(:run_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "runStartTime"))
    TestRunStepSummary.add_member(:run_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "runEndTime"))
    TestRunStepSummary.struct_class = Types::TestRunStepSummary

    TestRunStepSummaryList.member = Shapes::ShapeRef.new(shape: TestRunStepSummary)

    TestRunSummary.add_member(:test_run_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testRunId"))
    TestRunSummary.add_member(:test_run_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "testRunArn"))
    TestRunSummary.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testSuiteId"))
    TestRunSummary.add_member(:test_suite_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testSuiteVersion"))
    TestRunSummary.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, location_name: "testConfigurationId"))
    TestRunSummary.add_member(:test_configuration_version, Shapes::ShapeRef.new(shape: Version, location_name: "testConfigurationVersion"))
    TestRunSummary.add_member(:status, Shapes::ShapeRef.new(shape: TestRunStatus, required: true, location_name: "status"))
    TestRunSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestRunSummary.add_member(:run_start_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "runStartTime"))
    TestRunSummary.add_member(:run_end_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "runEndTime"))
    TestRunSummary.struct_class = Types::TestRunSummary

    TestRunSummaryList.member = Shapes::ShapeRef.new(shape: TestRunSummary)

    TestSuiteIdList.member = Shapes::ShapeRef.new(shape: Identifier)

    TestSuiteLatestVersion.add_member(:version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "version"))
    TestSuiteLatestVersion.add_member(:status, Shapes::ShapeRef.new(shape: TestSuiteLifecycle, required: true, location_name: "status"))
    TestSuiteLatestVersion.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestSuiteLatestVersion.struct_class = Types::TestSuiteLatestVersion

    TestSuiteList.member = Shapes::ShapeRef.new(shape: TestSuiteSummary)

    TestSuiteSummary.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testSuiteId"))
    TestSuiteSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    TestSuiteSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    TestSuiteSummary.add_member(:latest_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "latestVersion"))
    TestSuiteSummary.add_member(:test_suite_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "testSuiteArn"))
    TestSuiteSummary.add_member(:status, Shapes::ShapeRef.new(shape: TestSuiteLifecycle, required: true, location_name: "status"))
    TestSuiteSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "creationTime"))
    TestSuiteSummary.add_member(:last_update_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "lastUpdateTime"))
    TestSuiteSummary.struct_class = Types::TestSuiteSummary

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateTestCaseRequest.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testCaseId"))
    UpdateTestCaseRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateTestCaseRequest.add_member(:steps, Shapes::ShapeRef.new(shape: StepList, location_name: "steps"))
    UpdateTestCaseRequest.struct_class = Types::UpdateTestCaseRequest

    UpdateTestCaseResponse.add_member(:test_case_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testCaseId"))
    UpdateTestCaseResponse.add_member(:test_case_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testCaseVersion"))
    UpdateTestCaseResponse.struct_class = Types::UpdateTestCaseResponse

    UpdateTestConfigurationRequest.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testConfigurationId"))
    UpdateTestConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateTestConfigurationRequest.add_member(:resources, Shapes::ShapeRef.new(shape: ResourceList, location_name: "resources"))
    UpdateTestConfigurationRequest.add_member(:properties, Shapes::ShapeRef.new(shape: Properties, location_name: "properties"))
    UpdateTestConfigurationRequest.add_member(:service_settings, Shapes::ShapeRef.new(shape: ServiceSettings, location_name: "serviceSettings"))
    UpdateTestConfigurationRequest.struct_class = Types::UpdateTestConfigurationRequest

    UpdateTestConfigurationResponse.add_member(:test_configuration_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testConfigurationId"))
    UpdateTestConfigurationResponse.add_member(:test_configuration_version, Shapes::ShapeRef.new(shape: Version, required: true, location_name: "testConfigurationVersion"))
    UpdateTestConfigurationResponse.struct_class = Types::UpdateTestConfigurationResponse

    UpdateTestSuiteRequest.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location: "uri", location_name: "testSuiteId"))
    UpdateTestSuiteRequest.add_member(:description, Shapes::ShapeRef.new(shape: ResourceDescription, location_name: "description"))
    UpdateTestSuiteRequest.add_member(:before_steps, Shapes::ShapeRef.new(shape: StepList, location_name: "beforeSteps"))
    UpdateTestSuiteRequest.add_member(:after_steps, Shapes::ShapeRef.new(shape: StepList, location_name: "afterSteps"))
    UpdateTestSuiteRequest.add_member(:test_cases, Shapes::ShapeRef.new(shape: TestCases, location_name: "testCases"))
    UpdateTestSuiteRequest.struct_class = Types::UpdateTestSuiteRequest

    UpdateTestSuiteResponse.add_member(:test_suite_id, Shapes::ShapeRef.new(shape: Identifier, required: true, location_name: "testSuiteId"))
    UpdateTestSuiteResponse.add_member(:test_suite_version, Shapes::ShapeRef.new(shape: Version, location_name: "testSuiteVersion"))
    UpdateTestSuiteResponse.struct_class = Types::UpdateTestSuiteResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2022-12-06"

      api.metadata = {
        "apiVersion" => "2022-12-06",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "apptest",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Mainframe Modernization Application Testing",
        "serviceId" => "AppTest",
        "signatureVersion" => "v4",
        "signingName" => "apptest",
        "uid" => "apptest-2022-12-06",
      }

      api.add_operation(:create_test_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTestCase"
        o.http_method = "POST"
        o.http_request_uri = "/testcase"
        o.input = Shapes::ShapeRef.new(shape: CreateTestCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTestCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_test_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTestConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/testconfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateTestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_test_suite, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTestSuite"
        o.http_method = "POST"
        o.http_request_uri = "/testsuite"
        o.input = Shapes::ShapeRef.new(shape: CreateTestSuiteRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTestSuiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_test_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTestCase"
        o.http_method = "DELETE"
        o.http_request_uri = "/testcases/{testCaseId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTestCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTestCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_test_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTestConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/testconfigurations/{testConfigurationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_test_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTestRun"
        o.http_method = "DELETE"
        o.http_request_uri = "/testruns/{testRunId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTestRunRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTestRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_test_suite, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTestSuite"
        o.http_method = "DELETE"
        o.http_request_uri = "/testsuites/{testSuiteId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTestSuiteRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTestSuiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_test_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTestCase"
        o.http_method = "GET"
        o.http_request_uri = "/testcases/{testCaseId}"
        o.input = Shapes::ShapeRef.new(shape: GetTestCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTestCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_test_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTestConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/testconfigurations/{testConfigurationId}"
        o.input = Shapes::ShapeRef.new(shape: GetTestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_test_run_step, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTestRunStep"
        o.http_method = "GET"
        o.http_request_uri = "/testruns/{testRunId}/steps/{stepName}"
        o.input = Shapes::ShapeRef.new(shape: GetTestRunStepRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTestRunStepResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_test_suite, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTestSuite"
        o.http_method = "GET"
        o.http_request_uri = "/testsuites/{testSuiteId}"
        o.input = Shapes::ShapeRef.new(shape: GetTestSuiteRequest)
        o.output = Shapes::ShapeRef.new(shape: GetTestSuiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_test_cases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestCases"
        o.http_method = "GET"
        o.http_request_uri = "/testcases"
        o.input = Shapes::ShapeRef.new(shape: ListTestCasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestCasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestConfigurations"
        o.http_method = "GET"
        o.http_request_uri = "/testconfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListTestConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_run_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestRunSteps"
        o.http_method = "GET"
        o.http_request_uri = "/testruns/{testRunId}/steps"
        o.input = Shapes::ShapeRef.new(shape: ListTestRunStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestRunStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_run_test_cases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestRunTestCases"
        o.http_method = "GET"
        o.http_request_uri = "/testruns/{testRunId}/testcases"
        o.input = Shapes::ShapeRef.new(shape: ListTestRunTestCasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestRunTestCasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestRuns"
        o.http_method = "GET"
        o.http_request_uri = "/testruns"
        o.input = Shapes::ShapeRef.new(shape: ListTestRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_test_suites, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTestSuites"
        o.http_method = "GET"
        o.http_request_uri = "/testsuites"
        o.input = Shapes::ShapeRef.new(shape: ListTestSuitesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTestSuitesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_test_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTestRun"
        o.http_method = "POST"
        o.http_request_uri = "/testrun"
        o.input = Shapes::ShapeRef.new(shape: StartTestRunRequest)
        o.output = Shapes::ShapeRef.new(shape: StartTestRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_test_case, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTestCase"
        o.http_method = "PATCH"
        o.http_request_uri = "/testcases/{testCaseId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTestCaseRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTestCaseResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_test_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTestConfiguration"
        o.http_method = "PATCH"
        o.http_request_uri = "/testconfigurations/{testConfigurationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTestConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTestConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_test_suite, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTestSuite"
        o.http_method = "PATCH"
        o.http_request_uri = "/testsuites/{testSuiteId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTestSuiteRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTestSuiteResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
