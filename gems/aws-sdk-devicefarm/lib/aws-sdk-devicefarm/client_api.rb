# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module DeviceFarm
    # @api private
    module ClientApi

      include Seahorse::Model

      AWSAccountNumber = Shapes::StringShape.new(name: 'AWSAccountNumber')
      AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
      AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
      AmazonResourceNames = Shapes::ListShape.new(name: 'AmazonResourceNames')
      ArgumentException = Shapes::StructureShape.new(name: 'ArgumentException')
      Artifact = Shapes::StructureShape.new(name: 'Artifact')
      ArtifactCategory = Shapes::StringShape.new(name: 'ArtifactCategory')
      ArtifactType = Shapes::StringShape.new(name: 'ArtifactType')
      Artifacts = Shapes::ListShape.new(name: 'Artifacts')
      BillingMethod = Shapes::StringShape.new(name: 'BillingMethod')
      Boolean = Shapes::BooleanShape.new(name: 'Boolean')
      CPU = Shapes::StructureShape.new(name: 'CPU')
      ContentType = Shapes::StringShape.new(name: 'ContentType')
      Counters = Shapes::StructureShape.new(name: 'Counters')
      CreateDevicePoolRequest = Shapes::StructureShape.new(name: 'CreateDevicePoolRequest')
      CreateDevicePoolResult = Shapes::StructureShape.new(name: 'CreateDevicePoolResult')
      CreateProjectRequest = Shapes::StructureShape.new(name: 'CreateProjectRequest')
      CreateProjectResult = Shapes::StructureShape.new(name: 'CreateProjectResult')
      CreateUploadRequest = Shapes::StructureShape.new(name: 'CreateUploadRequest')
      CreateUploadResult = Shapes::StructureShape.new(name: 'CreateUploadResult')
      CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
      DateTime = Shapes::TimestampShape.new(name: 'DateTime')
      DeleteDevicePoolRequest = Shapes::StructureShape.new(name: 'DeleteDevicePoolRequest')
      DeleteDevicePoolResult = Shapes::StructureShape.new(name: 'DeleteDevicePoolResult')
      DeleteProjectRequest = Shapes::StructureShape.new(name: 'DeleteProjectRequest')
      DeleteProjectResult = Shapes::StructureShape.new(name: 'DeleteProjectResult')
      DeleteRunRequest = Shapes::StructureShape.new(name: 'DeleteRunRequest')
      DeleteRunResult = Shapes::StructureShape.new(name: 'DeleteRunResult')
      DeleteUploadRequest = Shapes::StructureShape.new(name: 'DeleteUploadRequest')
      DeleteUploadResult = Shapes::StructureShape.new(name: 'DeleteUploadResult')
      Device = Shapes::StructureShape.new(name: 'Device')
      DeviceAttribute = Shapes::StringShape.new(name: 'DeviceAttribute')
      DeviceFormFactor = Shapes::StringShape.new(name: 'DeviceFormFactor')
      DeviceMinutes = Shapes::StructureShape.new(name: 'DeviceMinutes')
      DevicePlatform = Shapes::StringShape.new(name: 'DevicePlatform')
      DevicePool = Shapes::StructureShape.new(name: 'DevicePool')
      DevicePoolCompatibilityResult = Shapes::StructureShape.new(name: 'DevicePoolCompatibilityResult')
      DevicePoolCompatibilityResults = Shapes::ListShape.new(name: 'DevicePoolCompatibilityResults')
      DevicePoolType = Shapes::StringShape.new(name: 'DevicePoolType')
      DevicePools = Shapes::ListShape.new(name: 'DevicePools')
      Devices = Shapes::ListShape.new(name: 'Devices')
      Double = Shapes::FloatShape.new(name: 'Double')
      ExecutionResult = Shapes::StringShape.new(name: 'ExecutionResult')
      ExecutionStatus = Shapes::StringShape.new(name: 'ExecutionStatus')
      Filter = Shapes::StringShape.new(name: 'Filter')
      GetAccountSettingsRequest = Shapes::StructureShape.new(name: 'GetAccountSettingsRequest')
      GetAccountSettingsResult = Shapes::StructureShape.new(name: 'GetAccountSettingsResult')
      GetDevicePoolCompatibilityRequest = Shapes::StructureShape.new(name: 'GetDevicePoolCompatibilityRequest')
      GetDevicePoolCompatibilityResult = Shapes::StructureShape.new(name: 'GetDevicePoolCompatibilityResult')
      GetDevicePoolRequest = Shapes::StructureShape.new(name: 'GetDevicePoolRequest')
      GetDevicePoolResult = Shapes::StructureShape.new(name: 'GetDevicePoolResult')
      GetDeviceRequest = Shapes::StructureShape.new(name: 'GetDeviceRequest')
      GetDeviceResult = Shapes::StructureShape.new(name: 'GetDeviceResult')
      GetJobRequest = Shapes::StructureShape.new(name: 'GetJobRequest')
      GetJobResult = Shapes::StructureShape.new(name: 'GetJobResult')
      GetOfferingStatusRequest = Shapes::StructureShape.new(name: 'GetOfferingStatusRequest')
      GetOfferingStatusResult = Shapes::StructureShape.new(name: 'GetOfferingStatusResult')
      GetProjectRequest = Shapes::StructureShape.new(name: 'GetProjectRequest')
      GetProjectResult = Shapes::StructureShape.new(name: 'GetProjectResult')
      GetRunRequest = Shapes::StructureShape.new(name: 'GetRunRequest')
      GetRunResult = Shapes::StructureShape.new(name: 'GetRunResult')
      GetSuiteRequest = Shapes::StructureShape.new(name: 'GetSuiteRequest')
      GetSuiteResult = Shapes::StructureShape.new(name: 'GetSuiteResult')
      GetTestRequest = Shapes::StructureShape.new(name: 'GetTestRequest')
      GetTestResult = Shapes::StructureShape.new(name: 'GetTestResult')
      GetUploadRequest = Shapes::StructureShape.new(name: 'GetUploadRequest')
      GetUploadResult = Shapes::StructureShape.new(name: 'GetUploadResult')
      IdempotencyException = Shapes::StructureShape.new(name: 'IdempotencyException')
      IncompatibilityMessage = Shapes::StructureShape.new(name: 'IncompatibilityMessage')
      IncompatibilityMessages = Shapes::ListShape.new(name: 'IncompatibilityMessages')
      Integer = Shapes::IntegerShape.new(name: 'Integer')
      Job = Shapes::StructureShape.new(name: 'Job')
      Jobs = Shapes::ListShape.new(name: 'Jobs')
      LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
      ListArtifactsRequest = Shapes::StructureShape.new(name: 'ListArtifactsRequest')
      ListArtifactsResult = Shapes::StructureShape.new(name: 'ListArtifactsResult')
      ListDevicePoolsRequest = Shapes::StructureShape.new(name: 'ListDevicePoolsRequest')
      ListDevicePoolsResult = Shapes::StructureShape.new(name: 'ListDevicePoolsResult')
      ListDevicesRequest = Shapes::StructureShape.new(name: 'ListDevicesRequest')
      ListDevicesResult = Shapes::StructureShape.new(name: 'ListDevicesResult')
      ListJobsRequest = Shapes::StructureShape.new(name: 'ListJobsRequest')
      ListJobsResult = Shapes::StructureShape.new(name: 'ListJobsResult')
      ListOfferingTransactionsRequest = Shapes::StructureShape.new(name: 'ListOfferingTransactionsRequest')
      ListOfferingTransactionsResult = Shapes::StructureShape.new(name: 'ListOfferingTransactionsResult')
      ListOfferingsRequest = Shapes::StructureShape.new(name: 'ListOfferingsRequest')
      ListOfferingsResult = Shapes::StructureShape.new(name: 'ListOfferingsResult')
      ListProjectsRequest = Shapes::StructureShape.new(name: 'ListProjectsRequest')
      ListProjectsResult = Shapes::StructureShape.new(name: 'ListProjectsResult')
      ListRunsRequest = Shapes::StructureShape.new(name: 'ListRunsRequest')
      ListRunsResult = Shapes::StructureShape.new(name: 'ListRunsResult')
      ListSamplesRequest = Shapes::StructureShape.new(name: 'ListSamplesRequest')
      ListSamplesResult = Shapes::StructureShape.new(name: 'ListSamplesResult')
      ListSuitesRequest = Shapes::StructureShape.new(name: 'ListSuitesRequest')
      ListSuitesResult = Shapes::StructureShape.new(name: 'ListSuitesResult')
      ListTestsRequest = Shapes::StructureShape.new(name: 'ListTestsRequest')
      ListTestsResult = Shapes::StructureShape.new(name: 'ListTestsResult')
      ListUniqueProblemsRequest = Shapes::StructureShape.new(name: 'ListUniqueProblemsRequest')
      ListUniqueProblemsResult = Shapes::StructureShape.new(name: 'ListUniqueProblemsResult')
      ListUploadsRequest = Shapes::StructureShape.new(name: 'ListUploadsRequest')
      ListUploadsResult = Shapes::StructureShape.new(name: 'ListUploadsResult')
      Location = Shapes::StructureShape.new(name: 'Location')
      Long = Shapes::IntegerShape.new(name: 'Long')
      Message = Shapes::StringShape.new(name: 'Message')
      Metadata = Shapes::StringShape.new(name: 'Metadata')
      MonetaryAmount = Shapes::StructureShape.new(name: 'MonetaryAmount')
      Name = Shapes::StringShape.new(name: 'Name')
      NotEligibleException = Shapes::StructureShape.new(name: 'NotEligibleException')
      NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
      Offering = Shapes::StructureShape.new(name: 'Offering')
      OfferingIdentifier = Shapes::StringShape.new(name: 'OfferingIdentifier')
      OfferingStatus = Shapes::StructureShape.new(name: 'OfferingStatus')
      OfferingStatusMap = Shapes::MapShape.new(name: 'OfferingStatusMap')
      OfferingTransaction = Shapes::StructureShape.new(name: 'OfferingTransaction')
      OfferingTransactionType = Shapes::StringShape.new(name: 'OfferingTransactionType')
      OfferingTransactions = Shapes::ListShape.new(name: 'OfferingTransactions')
      OfferingType = Shapes::StringShape.new(name: 'OfferingType')
      Offerings = Shapes::ListShape.new(name: 'Offerings')
      PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
      Problem = Shapes::StructureShape.new(name: 'Problem')
      ProblemDetail = Shapes::StructureShape.new(name: 'ProblemDetail')
      Problems = Shapes::ListShape.new(name: 'Problems')
      Project = Shapes::StructureShape.new(name: 'Project')
      Projects = Shapes::ListShape.new(name: 'Projects')
      PurchaseOfferingRequest = Shapes::StructureShape.new(name: 'PurchaseOfferingRequest')
      PurchaseOfferingResult = Shapes::StructureShape.new(name: 'PurchaseOfferingResult')
      PurchasedDevicesMap = Shapes::MapShape.new(name: 'PurchasedDevicesMap')
      Radios = Shapes::StructureShape.new(name: 'Radios')
      RecurringCharge = Shapes::StructureShape.new(name: 'RecurringCharge')
      RecurringChargeFrequency = Shapes::StringShape.new(name: 'RecurringChargeFrequency')
      RecurringCharges = Shapes::ListShape.new(name: 'RecurringCharges')
      RenewOfferingRequest = Shapes::StructureShape.new(name: 'RenewOfferingRequest')
      RenewOfferingResult = Shapes::StructureShape.new(name: 'RenewOfferingResult')
      Resolution = Shapes::StructureShape.new(name: 'Resolution')
      Rule = Shapes::StructureShape.new(name: 'Rule')
      RuleOperator = Shapes::StringShape.new(name: 'RuleOperator')
      Rules = Shapes::ListShape.new(name: 'Rules')
      Run = Shapes::StructureShape.new(name: 'Run')
      Runs = Shapes::ListShape.new(name: 'Runs')
      Sample = Shapes::StructureShape.new(name: 'Sample')
      SampleType = Shapes::StringShape.new(name: 'SampleType')
      Samples = Shapes::ListShape.new(name: 'Samples')
      ScheduleRunConfiguration = Shapes::StructureShape.new(name: 'ScheduleRunConfiguration')
      ScheduleRunRequest = Shapes::StructureShape.new(name: 'ScheduleRunRequest')
      ScheduleRunResult = Shapes::StructureShape.new(name: 'ScheduleRunResult')
      ScheduleRunTest = Shapes::StructureShape.new(name: 'ScheduleRunTest')
      ServiceAccountException = Shapes::StructureShape.new(name: 'ServiceAccountException')
      StopRunRequest = Shapes::StructureShape.new(name: 'StopRunRequest')
      StopRunResult = Shapes::StructureShape.new(name: 'StopRunResult')
      String = Shapes::StringShape.new(name: 'String')
      Suite = Shapes::StructureShape.new(name: 'Suite')
      Suites = Shapes::ListShape.new(name: 'Suites')
      Test = Shapes::StructureShape.new(name: 'Test')
      TestParameters = Shapes::MapShape.new(name: 'TestParameters')
      TestType = Shapes::StringShape.new(name: 'TestType')
      Tests = Shapes::ListShape.new(name: 'Tests')
      TransactionIdentifier = Shapes::StringShape.new(name: 'TransactionIdentifier')
      URL = Shapes::StringShape.new(name: 'URL')
      UniqueProblem = Shapes::StructureShape.new(name: 'UniqueProblem')
      UniqueProblems = Shapes::ListShape.new(name: 'UniqueProblems')
      UniqueProblemsByExecutionResultMap = Shapes::MapShape.new(name: 'UniqueProblemsByExecutionResultMap')
      UpdateDevicePoolRequest = Shapes::StructureShape.new(name: 'UpdateDevicePoolRequest')
      UpdateDevicePoolResult = Shapes::StructureShape.new(name: 'UpdateDevicePoolResult')
      UpdateProjectRequest = Shapes::StructureShape.new(name: 'UpdateProjectRequest')
      UpdateProjectResult = Shapes::StructureShape.new(name: 'UpdateProjectResult')
      Upload = Shapes::StructureShape.new(name: 'Upload')
      UploadStatus = Shapes::StringShape.new(name: 'UploadStatus')
      UploadType = Shapes::StringShape.new(name: 'UploadType')
      Uploads = Shapes::ListShape.new(name: 'Uploads')

      AccountSettings.add_member(:aws_account_number, Shapes::ShapeRef.new(shape: AWSAccountNumber, location_name: "awsAccountNumber"))
      AccountSettings.add_member(:unmetered_devices, Shapes::ShapeRef.new(shape: PurchasedDevicesMap, location_name: "unmeteredDevices"))
      AccountSettings.add_member(:unmetered_remote_access_devices, Shapes::ShapeRef.new(shape: PurchasedDevicesMap, location_name: "unmeteredRemoteAccessDevices"))
      AccountSettings.struct_class = Types::AccountSettings

      AmazonResourceNames.member = Shapes::ShapeRef.new(shape: AmazonResourceName)

      Artifact.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Artifact.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      Artifact.add_member(:type, Shapes::ShapeRef.new(shape: ArtifactType, location_name: "type"))
      Artifact.add_member(:extension, Shapes::ShapeRef.new(shape: String, location_name: "extension"))
      Artifact.add_member(:url, Shapes::ShapeRef.new(shape: URL, location_name: "url"))
      Artifact.struct_class = Types::Artifact

      Artifacts.member = Shapes::ShapeRef.new(shape: Artifact)

      CPU.add_member(:frequency, Shapes::ShapeRef.new(shape: String, location_name: "frequency"))
      CPU.add_member(:architecture, Shapes::ShapeRef.new(shape: String, location_name: "architecture"))
      CPU.add_member(:clock, Shapes::ShapeRef.new(shape: Double, location_name: "clock"))
      CPU.struct_class = Types::CPU

      Counters.add_member(:total, Shapes::ShapeRef.new(shape: Integer, location_name: "total"))
      Counters.add_member(:passed, Shapes::ShapeRef.new(shape: Integer, location_name: "passed"))
      Counters.add_member(:failed, Shapes::ShapeRef.new(shape: Integer, location_name: "failed"))
      Counters.add_member(:warned, Shapes::ShapeRef.new(shape: Integer, location_name: "warned"))
      Counters.add_member(:errored, Shapes::ShapeRef.new(shape: Integer, location_name: "errored"))
      Counters.add_member(:stopped, Shapes::ShapeRef.new(shape: Integer, location_name: "stopped"))
      Counters.add_member(:skipped, Shapes::ShapeRef.new(shape: Integer, location_name: "skipped"))
      Counters.struct_class = Types::Counters

      CreateDevicePoolRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "projectArn"))
      CreateDevicePoolRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
      CreateDevicePoolRequest.add_member(:description, Shapes::ShapeRef.new(shape: Message, location_name: "description"))
      CreateDevicePoolRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, required: true, location_name: "rules"))
      CreateDevicePoolRequest.struct_class = Types::CreateDevicePoolRequest

      CreateDevicePoolResult.add_member(:device_pool, Shapes::ShapeRef.new(shape: DevicePool, location_name: "devicePool"))
      CreateDevicePoolResult.struct_class = Types::CreateDevicePoolResult

      CreateProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
      CreateProjectRequest.struct_class = Types::CreateProjectRequest

      CreateProjectResult.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "project"))
      CreateProjectResult.struct_class = Types::CreateProjectResult

      CreateUploadRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "projectArn"))
      CreateUploadRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "name"))
      CreateUploadRequest.add_member(:type, Shapes::ShapeRef.new(shape: UploadType, required: true, location_name: "type"))
      CreateUploadRequest.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "contentType"))
      CreateUploadRequest.struct_class = Types::CreateUploadRequest

      CreateUploadResult.add_member(:upload, Shapes::ShapeRef.new(shape: Upload, location_name: "upload"))
      CreateUploadResult.struct_class = Types::CreateUploadResult

      DeleteDevicePoolRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      DeleteDevicePoolRequest.struct_class = Types::DeleteDevicePoolRequest

      DeleteDevicePoolResult.struct_class = Types::DeleteDevicePoolResult

      DeleteProjectRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      DeleteProjectRequest.struct_class = Types::DeleteProjectRequest

      DeleteProjectResult.struct_class = Types::DeleteProjectResult

      DeleteRunRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      DeleteRunRequest.struct_class = Types::DeleteRunRequest

      DeleteRunResult.struct_class = Types::DeleteRunResult

      DeleteUploadRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      DeleteUploadRequest.struct_class = Types::DeleteUploadRequest

      DeleteUploadResult.struct_class = Types::DeleteUploadResult

      Device.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Device.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      Device.add_member(:manufacturer, Shapes::ShapeRef.new(shape: String, location_name: "manufacturer"))
      Device.add_member(:model, Shapes::ShapeRef.new(shape: String, location_name: "model"))
      Device.add_member(:form_factor, Shapes::ShapeRef.new(shape: DeviceFormFactor, location_name: "formFactor"))
      Device.add_member(:platform, Shapes::ShapeRef.new(shape: DevicePlatform, location_name: "platform"))
      Device.add_member(:os, Shapes::ShapeRef.new(shape: String, location_name: "os"))
      Device.add_member(:cpu, Shapes::ShapeRef.new(shape: CPU, location_name: "cpu"))
      Device.add_member(:resolution, Shapes::ShapeRef.new(shape: Resolution, location_name: "resolution"))
      Device.add_member(:heap_size, Shapes::ShapeRef.new(shape: Long, location_name: "heapSize"))
      Device.add_member(:memory, Shapes::ShapeRef.new(shape: Long, location_name: "memory"))
      Device.add_member(:image, Shapes::ShapeRef.new(shape: String, location_name: "image"))
      Device.add_member(:carrier, Shapes::ShapeRef.new(shape: String, location_name: "carrier"))
      Device.add_member(:radio, Shapes::ShapeRef.new(shape: String, location_name: "radio"))
      Device.struct_class = Types::Device

      DeviceMinutes.add_member(:total, Shapes::ShapeRef.new(shape: Double, location_name: "total"))
      DeviceMinutes.add_member(:metered, Shapes::ShapeRef.new(shape: Double, location_name: "metered"))
      DeviceMinutes.add_member(:unmetered, Shapes::ShapeRef.new(shape: Double, location_name: "unmetered"))
      DeviceMinutes.struct_class = Types::DeviceMinutes

      DevicePool.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      DevicePool.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      DevicePool.add_member(:description, Shapes::ShapeRef.new(shape: Message, location_name: "description"))
      DevicePool.add_member(:type, Shapes::ShapeRef.new(shape: DevicePoolType, location_name: "type"))
      DevicePool.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "rules"))
      DevicePool.struct_class = Types::DevicePool

      DevicePoolCompatibilityResult.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "device"))
      DevicePoolCompatibilityResult.add_member(:compatible, Shapes::ShapeRef.new(shape: Boolean, location_name: "compatible"))
      DevicePoolCompatibilityResult.add_member(:incompatibility_messages, Shapes::ShapeRef.new(shape: IncompatibilityMessages, location_name: "incompatibilityMessages"))
      DevicePoolCompatibilityResult.struct_class = Types::DevicePoolCompatibilityResult

      DevicePoolCompatibilityResults.member = Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResult)

      DevicePools.member = Shapes::ShapeRef.new(shape: DevicePool)

      Devices.member = Shapes::ShapeRef.new(shape: Device)

      GetAccountSettingsRequest.struct_class = Types::GetAccountSettingsRequest

      GetAccountSettingsResult.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "accountSettings"))
      GetAccountSettingsResult.struct_class = Types::GetAccountSettingsResult

      GetDevicePoolCompatibilityRequest.add_member(:device_pool_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "devicePoolArn"))
      GetDevicePoolCompatibilityRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "appArn"))
      GetDevicePoolCompatibilityRequest.add_member(:test_type, Shapes::ShapeRef.new(shape: TestType, location_name: "testType"))
      GetDevicePoolCompatibilityRequest.struct_class = Types::GetDevicePoolCompatibilityRequest

      GetDevicePoolCompatibilityResult.add_member(:compatible_devices, Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResults, location_name: "compatibleDevices"))
      GetDevicePoolCompatibilityResult.add_member(:incompatible_devices, Shapes::ShapeRef.new(shape: DevicePoolCompatibilityResults, location_name: "incompatibleDevices"))
      GetDevicePoolCompatibilityResult.struct_class = Types::GetDevicePoolCompatibilityResult

      GetDevicePoolRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      GetDevicePoolRequest.struct_class = Types::GetDevicePoolRequest

      GetDevicePoolResult.add_member(:device_pool, Shapes::ShapeRef.new(shape: DevicePool, location_name: "devicePool"))
      GetDevicePoolResult.struct_class = Types::GetDevicePoolResult

      GetDeviceRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      GetDeviceRequest.struct_class = Types::GetDeviceRequest

      GetDeviceResult.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "device"))
      GetDeviceResult.struct_class = Types::GetDeviceResult

      GetJobRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      GetJobRequest.struct_class = Types::GetJobRequest

      GetJobResult.add_member(:job, Shapes::ShapeRef.new(shape: Job, location_name: "job"))
      GetJobResult.struct_class = Types::GetJobResult

      GetOfferingStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      GetOfferingStatusRequest.struct_class = Types::GetOfferingStatusRequest

      GetOfferingStatusResult.add_member(:current, Shapes::ShapeRef.new(shape: OfferingStatusMap, location_name: "current"))
      GetOfferingStatusResult.add_member(:next_period, Shapes::ShapeRef.new(shape: OfferingStatusMap, location_name: "nextPeriod"))
      GetOfferingStatusResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      GetOfferingStatusResult.struct_class = Types::GetOfferingStatusResult

      GetProjectRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      GetProjectRequest.struct_class = Types::GetProjectRequest

      GetProjectResult.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "project"))
      GetProjectResult.struct_class = Types::GetProjectResult

      GetRunRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      GetRunRequest.struct_class = Types::GetRunRequest

      GetRunResult.add_member(:run, Shapes::ShapeRef.new(shape: Run, location_name: "run"))
      GetRunResult.struct_class = Types::GetRunResult

      GetSuiteRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      GetSuiteRequest.struct_class = Types::GetSuiteRequest

      GetSuiteResult.add_member(:suite, Shapes::ShapeRef.new(shape: Suite, location_name: "suite"))
      GetSuiteResult.struct_class = Types::GetSuiteResult

      GetTestRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      GetTestRequest.struct_class = Types::GetTestRequest

      GetTestResult.add_member(:test, Shapes::ShapeRef.new(shape: Test, location_name: "test"))
      GetTestResult.struct_class = Types::GetTestResult

      GetUploadRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      GetUploadRequest.struct_class = Types::GetUploadRequest

      GetUploadResult.add_member(:upload, Shapes::ShapeRef.new(shape: Upload, location_name: "upload"))
      GetUploadResult.struct_class = Types::GetUploadResult

      IncompatibilityMessage.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
      IncompatibilityMessage.add_member(:type, Shapes::ShapeRef.new(shape: DeviceAttribute, location_name: "type"))
      IncompatibilityMessage.struct_class = Types::IncompatibilityMessage

      IncompatibilityMessages.member = Shapes::ShapeRef.new(shape: IncompatibilityMessage)

      Job.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Job.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      Job.add_member(:type, Shapes::ShapeRef.new(shape: TestType, location_name: "type"))
      Job.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "created"))
      Job.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "status"))
      Job.add_member(:result, Shapes::ShapeRef.new(shape: ExecutionResult, location_name: "result"))
      Job.add_member(:started, Shapes::ShapeRef.new(shape: DateTime, location_name: "started"))
      Job.add_member(:stopped, Shapes::ShapeRef.new(shape: DateTime, location_name: "stopped"))
      Job.add_member(:counters, Shapes::ShapeRef.new(shape: Counters, location_name: "counters"))
      Job.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
      Job.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "device"))
      Job.add_member(:device_minutes, Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: "deviceMinutes"))
      Job.struct_class = Types::Job

      Jobs.member = Shapes::ShapeRef.new(shape: Job)

      ListArtifactsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListArtifactsRequest.add_member(:type, Shapes::ShapeRef.new(shape: ArtifactCategory, required: true, location_name: "type"))
      ListArtifactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListArtifactsRequest.struct_class = Types::ListArtifactsRequest

      ListArtifactsResult.add_member(:artifacts, Shapes::ShapeRef.new(shape: Artifacts, location_name: "artifacts"))
      ListArtifactsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListArtifactsResult.struct_class = Types::ListArtifactsResult

      ListDevicePoolsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListDevicePoolsRequest.add_member(:type, Shapes::ShapeRef.new(shape: DevicePoolType, location_name: "type"))
      ListDevicePoolsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListDevicePoolsRequest.struct_class = Types::ListDevicePoolsRequest

      ListDevicePoolsResult.add_member(:device_pools, Shapes::ShapeRef.new(shape: DevicePools, location_name: "devicePools"))
      ListDevicePoolsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListDevicePoolsResult.struct_class = Types::ListDevicePoolsResult

      ListDevicesRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      ListDevicesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListDevicesRequest.struct_class = Types::ListDevicesRequest

      ListDevicesResult.add_member(:devices, Shapes::ShapeRef.new(shape: Devices, location_name: "devices"))
      ListDevicesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListDevicesResult.struct_class = Types::ListDevicesResult

      ListJobsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListJobsRequest.struct_class = Types::ListJobsRequest

      ListJobsResult.add_member(:jobs, Shapes::ShapeRef.new(shape: Jobs, location_name: "jobs"))
      ListJobsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListJobsResult.struct_class = Types::ListJobsResult

      ListOfferingTransactionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListOfferingTransactionsRequest.struct_class = Types::ListOfferingTransactionsRequest

      ListOfferingTransactionsResult.add_member(:offering_transactions, Shapes::ShapeRef.new(shape: OfferingTransactions, location_name: "offeringTransactions"))
      ListOfferingTransactionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListOfferingTransactionsResult.struct_class = Types::ListOfferingTransactionsResult

      ListOfferingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListOfferingsRequest.struct_class = Types::ListOfferingsRequest

      ListOfferingsResult.add_member(:offerings, Shapes::ShapeRef.new(shape: Offerings, location_name: "offerings"))
      ListOfferingsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListOfferingsResult.struct_class = Types::ListOfferingsResult

      ListProjectsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      ListProjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListProjectsRequest.struct_class = Types::ListProjectsRequest

      ListProjectsResult.add_member(:projects, Shapes::ShapeRef.new(shape: Projects, location_name: "projects"))
      ListProjectsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListProjectsResult.struct_class = Types::ListProjectsResult

      ListRunsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListRunsRequest.struct_class = Types::ListRunsRequest

      ListRunsResult.add_member(:runs, Shapes::ShapeRef.new(shape: Runs, location_name: "runs"))
      ListRunsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListRunsResult.struct_class = Types::ListRunsResult

      ListSamplesRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListSamplesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListSamplesRequest.struct_class = Types::ListSamplesRequest

      ListSamplesResult.add_member(:samples, Shapes::ShapeRef.new(shape: Samples, location_name: "samples"))
      ListSamplesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListSamplesResult.struct_class = Types::ListSamplesResult

      ListSuitesRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListSuitesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListSuitesRequest.struct_class = Types::ListSuitesRequest

      ListSuitesResult.add_member(:suites, Shapes::ShapeRef.new(shape: Suites, location_name: "suites"))
      ListSuitesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListSuitesResult.struct_class = Types::ListSuitesResult

      ListTestsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListTestsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListTestsRequest.struct_class = Types::ListTestsRequest

      ListTestsResult.add_member(:tests, Shapes::ShapeRef.new(shape: Tests, location_name: "tests"))
      ListTestsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListTestsResult.struct_class = Types::ListTestsResult

      ListUniqueProblemsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListUniqueProblemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListUniqueProblemsRequest.struct_class = Types::ListUniqueProblemsRequest

      ListUniqueProblemsResult.add_member(:unique_problems, Shapes::ShapeRef.new(shape: UniqueProblemsByExecutionResultMap, location_name: "uniqueProblems"))
      ListUniqueProblemsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListUniqueProblemsResult.struct_class = Types::ListUniqueProblemsResult

      ListUploadsRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      ListUploadsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListUploadsRequest.struct_class = Types::ListUploadsRequest

      ListUploadsResult.add_member(:uploads, Shapes::ShapeRef.new(shape: Uploads, location_name: "uploads"))
      ListUploadsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
      ListUploadsResult.struct_class = Types::ListUploadsResult

      Location.add_member(:latitude, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "latitude"))
      Location.add_member(:longitude, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "longitude"))
      Location.struct_class = Types::Location

      MonetaryAmount.add_member(:amount, Shapes::ShapeRef.new(shape: Double, location_name: "amount"))
      MonetaryAmount.add_member(:currency_code, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "currencyCode"))
      MonetaryAmount.struct_class = Types::MonetaryAmount

      Offering.add_member(:id, Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: "id"))
      Offering.add_member(:description, Shapes::ShapeRef.new(shape: Message, location_name: "description"))
      Offering.add_member(:type, Shapes::ShapeRef.new(shape: OfferingType, location_name: "type"))
      Offering.add_member(:platform, Shapes::ShapeRef.new(shape: DevicePlatform, location_name: "platform"))
      Offering.add_member(:recurring_charges, Shapes::ShapeRef.new(shape: RecurringCharges, location_name: "recurringCharges"))
      Offering.struct_class = Types::Offering

      OfferingStatus.add_member(:type, Shapes::ShapeRef.new(shape: OfferingTransactionType, location_name: "type"))
      OfferingStatus.add_member(:offering, Shapes::ShapeRef.new(shape: Offering, location_name: "offering"))
      OfferingStatus.add_member(:quantity, Shapes::ShapeRef.new(shape: Integer, location_name: "quantity"))
      OfferingStatus.add_member(:effective_on, Shapes::ShapeRef.new(shape: DateTime, location_name: "effectiveOn"))
      OfferingStatus.struct_class = Types::OfferingStatus

      OfferingStatusMap.key = Shapes::ShapeRef.new(shape: OfferingIdentifier)
      OfferingStatusMap.value = Shapes::ShapeRef.new(shape: OfferingStatus)

      OfferingTransaction.add_member(:offering_status, Shapes::ShapeRef.new(shape: OfferingStatus, location_name: "offeringStatus"))
      OfferingTransaction.add_member(:transaction_id, Shapes::ShapeRef.new(shape: TransactionIdentifier, location_name: "transactionId"))
      OfferingTransaction.add_member(:created_on, Shapes::ShapeRef.new(shape: DateTime, location_name: "createdOn"))
      OfferingTransaction.add_member(:cost, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "cost"))
      OfferingTransaction.struct_class = Types::OfferingTransaction

      OfferingTransactions.member = Shapes::ShapeRef.new(shape: OfferingTransaction)

      Offerings.member = Shapes::ShapeRef.new(shape: Offering)

      Problem.add_member(:run, Shapes::ShapeRef.new(shape: ProblemDetail, location_name: "run"))
      Problem.add_member(:job, Shapes::ShapeRef.new(shape: ProblemDetail, location_name: "job"))
      Problem.add_member(:suite, Shapes::ShapeRef.new(shape: ProblemDetail, location_name: "suite"))
      Problem.add_member(:test, Shapes::ShapeRef.new(shape: ProblemDetail, location_name: "test"))
      Problem.add_member(:device, Shapes::ShapeRef.new(shape: Device, location_name: "device"))
      Problem.add_member(:result, Shapes::ShapeRef.new(shape: ExecutionResult, location_name: "result"))
      Problem.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
      Problem.struct_class = Types::Problem

      ProblemDetail.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      ProblemDetail.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      ProblemDetail.struct_class = Types::ProblemDetail

      Problems.member = Shapes::ShapeRef.new(shape: Problem)

      Project.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Project.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      Project.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "created"))
      Project.struct_class = Types::Project

      Projects.member = Shapes::ShapeRef.new(shape: Project)

      PurchaseOfferingRequest.add_member(:offering_id, Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: "offeringId"))
      PurchaseOfferingRequest.add_member(:quantity, Shapes::ShapeRef.new(shape: Integer, location_name: "quantity"))
      PurchaseOfferingRequest.struct_class = Types::PurchaseOfferingRequest

      PurchaseOfferingResult.add_member(:offering_transaction, Shapes::ShapeRef.new(shape: OfferingTransaction, location_name: "offeringTransaction"))
      PurchaseOfferingResult.struct_class = Types::PurchaseOfferingResult

      PurchasedDevicesMap.key = Shapes::ShapeRef.new(shape: DevicePlatform)
      PurchasedDevicesMap.value = Shapes::ShapeRef.new(shape: Integer)

      Radios.add_member(:wifi, Shapes::ShapeRef.new(shape: Boolean, location_name: "wifi"))
      Radios.add_member(:bluetooth, Shapes::ShapeRef.new(shape: Boolean, location_name: "bluetooth"))
      Radios.add_member(:nfc, Shapes::ShapeRef.new(shape: Boolean, location_name: "nfc"))
      Radios.add_member(:gps, Shapes::ShapeRef.new(shape: Boolean, location_name: "gps"))
      Radios.struct_class = Types::Radios

      RecurringCharge.add_member(:cost, Shapes::ShapeRef.new(shape: MonetaryAmount, location_name: "cost"))
      RecurringCharge.add_member(:frequency, Shapes::ShapeRef.new(shape: RecurringChargeFrequency, location_name: "frequency"))
      RecurringCharge.struct_class = Types::RecurringCharge

      RecurringCharges.member = Shapes::ShapeRef.new(shape: RecurringCharge)

      RenewOfferingRequest.add_member(:offering_id, Shapes::ShapeRef.new(shape: OfferingIdentifier, location_name: "offeringId"))
      RenewOfferingRequest.add_member(:quantity, Shapes::ShapeRef.new(shape: Integer, location_name: "quantity"))
      RenewOfferingRequest.struct_class = Types::RenewOfferingRequest

      RenewOfferingResult.add_member(:offering_transaction, Shapes::ShapeRef.new(shape: OfferingTransaction, location_name: "offeringTransaction"))
      RenewOfferingResult.struct_class = Types::RenewOfferingResult

      Resolution.add_member(:width, Shapes::ShapeRef.new(shape: Integer, location_name: "width"))
      Resolution.add_member(:height, Shapes::ShapeRef.new(shape: Integer, location_name: "height"))
      Resolution.struct_class = Types::Resolution

      Rule.add_member(:attribute, Shapes::ShapeRef.new(shape: DeviceAttribute, location_name: "attribute"))
      Rule.add_member(:operator, Shapes::ShapeRef.new(shape: RuleOperator, location_name: "operator"))
      Rule.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
      Rule.struct_class = Types::Rule

      Rules.member = Shapes::ShapeRef.new(shape: Rule)

      Run.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Run.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      Run.add_member(:type, Shapes::ShapeRef.new(shape: TestType, location_name: "type"))
      Run.add_member(:platform, Shapes::ShapeRef.new(shape: DevicePlatform, location_name: "platform"))
      Run.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "created"))
      Run.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "status"))
      Run.add_member(:result, Shapes::ShapeRef.new(shape: ExecutionResult, location_name: "result"))
      Run.add_member(:started, Shapes::ShapeRef.new(shape: DateTime, location_name: "started"))
      Run.add_member(:stopped, Shapes::ShapeRef.new(shape: DateTime, location_name: "stopped"))
      Run.add_member(:counters, Shapes::ShapeRef.new(shape: Counters, location_name: "counters"))
      Run.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
      Run.add_member(:total_jobs, Shapes::ShapeRef.new(shape: Integer, location_name: "totalJobs"))
      Run.add_member(:completed_jobs, Shapes::ShapeRef.new(shape: Integer, location_name: "completedJobs"))
      Run.add_member(:billing_method, Shapes::ShapeRef.new(shape: BillingMethod, location_name: "billingMethod"))
      Run.add_member(:device_minutes, Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: "deviceMinutes"))
      Run.struct_class = Types::Run

      Runs.member = Shapes::ShapeRef.new(shape: Run)

      Sample.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Sample.add_member(:type, Shapes::ShapeRef.new(shape: SampleType, location_name: "type"))
      Sample.add_member(:url, Shapes::ShapeRef.new(shape: URL, location_name: "url"))
      Sample.struct_class = Types::Sample

      Samples.member = Shapes::ShapeRef.new(shape: Sample)

      ScheduleRunConfiguration.add_member(:extra_data_package_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "extraDataPackageArn"))
      ScheduleRunConfiguration.add_member(:network_profile_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "networkProfileArn"))
      ScheduleRunConfiguration.add_member(:locale, Shapes::ShapeRef.new(shape: String, location_name: "locale"))
      ScheduleRunConfiguration.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
      ScheduleRunConfiguration.add_member(:radios, Shapes::ShapeRef.new(shape: Radios, location_name: "radios"))
      ScheduleRunConfiguration.add_member(:auxiliary_apps, Shapes::ShapeRef.new(shape: AmazonResourceNames, location_name: "auxiliaryApps"))
      ScheduleRunConfiguration.add_member(:billing_method, Shapes::ShapeRef.new(shape: BillingMethod, location_name: "billingMethod"))
      ScheduleRunConfiguration.struct_class = Types::ScheduleRunConfiguration

      ScheduleRunRequest.add_member(:project_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "projectArn"))
      ScheduleRunRequest.add_member(:app_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "appArn"))
      ScheduleRunRequest.add_member(:device_pool_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "devicePoolArn"))
      ScheduleRunRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      ScheduleRunRequest.add_member(:test, Shapes::ShapeRef.new(shape: ScheduleRunTest, required: true, location_name: "test"))
      ScheduleRunRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ScheduleRunConfiguration, location_name: "configuration"))
      ScheduleRunRequest.struct_class = Types::ScheduleRunRequest

      ScheduleRunResult.add_member(:run, Shapes::ShapeRef.new(shape: Run, location_name: "run"))
      ScheduleRunResult.struct_class = Types::ScheduleRunResult

      ScheduleRunTest.add_member(:type, Shapes::ShapeRef.new(shape: TestType, required: true, location_name: "type"))
      ScheduleRunTest.add_member(:test_package_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "testPackageArn"))
      ScheduleRunTest.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "filter"))
      ScheduleRunTest.add_member(:parameters, Shapes::ShapeRef.new(shape: TestParameters, location_name: "parameters"))
      ScheduleRunTest.struct_class = Types::ScheduleRunTest

      StopRunRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      StopRunRequest.struct_class = Types::StopRunRequest

      StopRunResult.add_member(:run, Shapes::ShapeRef.new(shape: Run, location_name: "run"))
      StopRunResult.struct_class = Types::StopRunResult

      Suite.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Suite.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      Suite.add_member(:type, Shapes::ShapeRef.new(shape: TestType, location_name: "type"))
      Suite.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "created"))
      Suite.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "status"))
      Suite.add_member(:result, Shapes::ShapeRef.new(shape: ExecutionResult, location_name: "result"))
      Suite.add_member(:started, Shapes::ShapeRef.new(shape: DateTime, location_name: "started"))
      Suite.add_member(:stopped, Shapes::ShapeRef.new(shape: DateTime, location_name: "stopped"))
      Suite.add_member(:counters, Shapes::ShapeRef.new(shape: Counters, location_name: "counters"))
      Suite.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
      Suite.add_member(:device_minutes, Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: "deviceMinutes"))
      Suite.struct_class = Types::Suite

      Suites.member = Shapes::ShapeRef.new(shape: Suite)

      Test.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Test.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      Test.add_member(:type, Shapes::ShapeRef.new(shape: TestType, location_name: "type"))
      Test.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "created"))
      Test.add_member(:status, Shapes::ShapeRef.new(shape: ExecutionStatus, location_name: "status"))
      Test.add_member(:result, Shapes::ShapeRef.new(shape: ExecutionResult, location_name: "result"))
      Test.add_member(:started, Shapes::ShapeRef.new(shape: DateTime, location_name: "started"))
      Test.add_member(:stopped, Shapes::ShapeRef.new(shape: DateTime, location_name: "stopped"))
      Test.add_member(:counters, Shapes::ShapeRef.new(shape: Counters, location_name: "counters"))
      Test.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
      Test.add_member(:device_minutes, Shapes::ShapeRef.new(shape: DeviceMinutes, location_name: "deviceMinutes"))
      Test.struct_class = Types::Test

      TestParameters.key = Shapes::ShapeRef.new(shape: String)
      TestParameters.value = Shapes::ShapeRef.new(shape: String)

      Tests.member = Shapes::ShapeRef.new(shape: Test)

      UniqueProblem.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
      UniqueProblem.add_member(:problems, Shapes::ShapeRef.new(shape: Problems, location_name: "problems"))
      UniqueProblem.struct_class = Types::UniqueProblem

      UniqueProblems.member = Shapes::ShapeRef.new(shape: UniqueProblem)

      UniqueProblemsByExecutionResultMap.key = Shapes::ShapeRef.new(shape: ExecutionResult)
      UniqueProblemsByExecutionResultMap.value = Shapes::ShapeRef.new(shape: UniqueProblems)

      UpdateDevicePoolRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      UpdateDevicePoolRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      UpdateDevicePoolRequest.add_member(:description, Shapes::ShapeRef.new(shape: Message, location_name: "description"))
      UpdateDevicePoolRequest.add_member(:rules, Shapes::ShapeRef.new(shape: Rules, location_name: "rules"))
      UpdateDevicePoolRequest.struct_class = Types::UpdateDevicePoolRequest

      UpdateDevicePoolResult.add_member(:device_pool, Shapes::ShapeRef.new(shape: DevicePool, location_name: "devicePool"))
      UpdateDevicePoolResult.struct_class = Types::UpdateDevicePoolResult

      UpdateProjectRequest.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "arn"))
      UpdateProjectRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      UpdateProjectRequest.struct_class = Types::UpdateProjectRequest

      UpdateProjectResult.add_member(:project, Shapes::ShapeRef.new(shape: Project, location_name: "project"))
      UpdateProjectResult.struct_class = Types::UpdateProjectResult

      Upload.add_member(:arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "arn"))
      Upload.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "name"))
      Upload.add_member(:created, Shapes::ShapeRef.new(shape: DateTime, location_name: "created"))
      Upload.add_member(:type, Shapes::ShapeRef.new(shape: UploadType, location_name: "type"))
      Upload.add_member(:status, Shapes::ShapeRef.new(shape: UploadStatus, location_name: "status"))
      Upload.add_member(:url, Shapes::ShapeRef.new(shape: URL, location_name: "url"))
      Upload.add_member(:metadata, Shapes::ShapeRef.new(shape: Metadata, location_name: "metadata"))
      Upload.add_member(:content_type, Shapes::ShapeRef.new(shape: ContentType, location_name: "contentType"))
      Upload.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "message"))
      Upload.struct_class = Types::Upload

      Uploads.member = Shapes::ShapeRef.new(shape: Upload)


      # @api private
      API = Seahorse::Model::Api.new.tap do |api|

        api.version = "2015-06-23"

        api.metadata = {
          "endpointPrefix" => "devicefarm",
          "jsonVersion" => "1.1",
          "protocol" => "json",
          "serviceFullName" => "AWS Device Farm",
          "signatureVersion" => "v4",
          "targetPrefix" => "DeviceFarm_20150623",
        }

        api.add_operation(:create_device_pool, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CreateDevicePool"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CreateDevicePoolRequest)
          o.output = Shapes::ShapeRef.new(shape: CreateDevicePoolResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:create_project, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CreateProject"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CreateProjectRequest)
          o.output = Shapes::ShapeRef.new(shape: CreateProjectResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:create_upload, Seahorse::Model::Operation.new.tap do |o|
          o.name = "CreateUpload"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: CreateUploadRequest)
          o.output = Shapes::ShapeRef.new(shape: CreateUploadResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:delete_device_pool, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeleteDevicePool"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeleteDevicePoolRequest)
          o.output = Shapes::ShapeRef.new(shape: DeleteDevicePoolResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:delete_project, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeleteProject"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeleteProjectRequest)
          o.output = Shapes::ShapeRef.new(shape: DeleteProjectResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:delete_run, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeleteRun"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeleteRunRequest)
          o.output = Shapes::ShapeRef.new(shape: DeleteRunResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:delete_upload, Seahorse::Model::Operation.new.tap do |o|
          o.name = "DeleteUpload"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: DeleteUploadRequest)
          o.output = Shapes::ShapeRef.new(shape: DeleteUploadResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetAccountSettings"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetAccountSettingsRequest)
          o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_device, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetDevice"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetDeviceRequest)
          o.output = Shapes::ShapeRef.new(shape: GetDeviceResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_device_pool, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetDevicePool"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetDevicePoolRequest)
          o.output = Shapes::ShapeRef.new(shape: GetDevicePoolResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_device_pool_compatibility, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetDevicePoolCompatibility"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetDevicePoolCompatibilityRequest)
          o.output = Shapes::ShapeRef.new(shape: GetDevicePoolCompatibilityResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_job, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetJob"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetJobRequest)
          o.output = Shapes::ShapeRef.new(shape: GetJobResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_offering_status, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetOfferingStatus"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetOfferingStatusRequest)
          o.output = Shapes::ShapeRef.new(shape: GetOfferingStatusResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: NotEligibleException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => [
              "current",
              "nextPeriod"
            ]
          )
        end)

        api.add_operation(:get_project, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetProject"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetProjectRequest)
          o.output = Shapes::ShapeRef.new(shape: GetProjectResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_run, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetRun"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetRunRequest)
          o.output = Shapes::ShapeRef.new(shape: GetRunResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_suite, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetSuite"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetSuiteRequest)
          o.output = Shapes::ShapeRef.new(shape: GetSuiteResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_test, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetTest"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetTestRequest)
          o.output = Shapes::ShapeRef.new(shape: GetTestResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:get_upload, Seahorse::Model::Operation.new.tap do |o|
          o.name = "GetUpload"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: GetUploadRequest)
          o.output = Shapes::ShapeRef.new(shape: GetUploadResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:list_artifacts, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListArtifacts"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListArtifactsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListArtifactsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "artifacts"
          )
        end)

        api.add_operation(:list_device_pools, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListDevicePools"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListDevicePoolsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListDevicePoolsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "devicePools"
          )
        end)

        api.add_operation(:list_devices, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListDevices"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListDevicesRequest)
          o.output = Shapes::ShapeRef.new(shape: ListDevicesResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "devices"
          )
        end)

        api.add_operation(:list_jobs, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListJobs"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListJobsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListJobsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "jobs"
          )
        end)

        api.add_operation(:list_offering_transactions, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListOfferingTransactions"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListOfferingTransactionsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListOfferingTransactionsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: NotEligibleException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "offeringTransactions"
          )
        end)

        api.add_operation(:list_offerings, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListOfferings"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListOfferingsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListOfferingsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: NotEligibleException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "offerings"
          )
        end)

        api.add_operation(:list_projects, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListProjects"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListProjectsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListProjectsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "projects"
          )
        end)

        api.add_operation(:list_runs, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListRuns"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListRunsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListRunsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "runs"
          )
        end)

        api.add_operation(:list_samples, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListSamples"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListSamplesRequest)
          o.output = Shapes::ShapeRef.new(shape: ListSamplesResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "samples"
          )
        end)

        api.add_operation(:list_suites, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListSuites"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListSuitesRequest)
          o.output = Shapes::ShapeRef.new(shape: ListSuitesResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "suites"
          )
        end)

        api.add_operation(:list_tests, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListTests"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListTestsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListTestsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "tests"
          )
        end)

        api.add_operation(:list_unique_problems, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListUniqueProblems"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListUniqueProblemsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListUniqueProblemsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "uniqueProblems"
          )
        end)

        api.add_operation(:list_uploads, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ListUploads"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ListUploadsRequest)
          o.output = Shapes::ShapeRef.new(shape: ListUploadsResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
          o[:pager] = Aws::Pager.new(
            "input_token" => "nextToken",
            "output_token" => "nextToken",
            "result_key" => "uploads"
          )
        end)

        api.add_operation(:purchase_offering, Seahorse::Model::Operation.new.tap do |o|
          o.name = "PurchaseOffering"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: PurchaseOfferingRequest)
          o.output = Shapes::ShapeRef.new(shape: PurchaseOfferingResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: NotEligibleException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:renew_offering, Seahorse::Model::Operation.new.tap do |o|
          o.name = "RenewOffering"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: RenewOfferingRequest)
          o.output = Shapes::ShapeRef.new(shape: RenewOfferingResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: NotEligibleException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:schedule_run, Seahorse::Model::Operation.new.tap do |o|
          o.name = "ScheduleRun"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: ScheduleRunRequest)
          o.output = Shapes::ShapeRef.new(shape: ScheduleRunResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: IdempotencyException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:stop_run, Seahorse::Model::Operation.new.tap do |o|
          o.name = "StopRun"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: StopRunRequest)
          o.output = Shapes::ShapeRef.new(shape: StopRunResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:update_device_pool, Seahorse::Model::Operation.new.tap do |o|
          o.name = "UpdateDevicePool"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: UpdateDevicePoolRequest)
          o.output = Shapes::ShapeRef.new(shape: UpdateDevicePoolResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)

        api.add_operation(:update_project, Seahorse::Model::Operation.new.tap do |o|
          o.name = "UpdateProject"
          o.http_method = "POST"
          o.http_request_uri = "/"
          o.input = Shapes::ShapeRef.new(shape: UpdateProjectRequest)
          o.output = Shapes::ShapeRef.new(shape: UpdateProjectResult)
          o.errors << Shapes::ShapeRef.new(shape: ArgumentException)
          o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
          o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
          o.errors << Shapes::ShapeRef.new(shape: ServiceAccountException)
        end)
      end

    end
  end
end
