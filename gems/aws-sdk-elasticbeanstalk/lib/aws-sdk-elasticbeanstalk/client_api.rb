# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ElasticBeanstalk
  # @api private
  module ClientApi

    include Seahorse::Model

    ARN = Shapes::StringShape.new(name: 'ARN')
    AbortEnvironmentUpdateMessage = Shapes::StructureShape.new(name: 'AbortEnvironmentUpdateMessage')
    AbortableOperationInProgress = Shapes::BooleanShape.new(name: 'AbortableOperationInProgress')
    ActionHistoryStatus = Shapes::StringShape.new(name: 'ActionHistoryStatus')
    ActionStatus = Shapes::StringShape.new(name: 'ActionStatus')
    ActionType = Shapes::StringShape.new(name: 'ActionType')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationDescription = Shapes::StructureShape.new(name: 'ApplicationDescription')
    ApplicationDescriptionList = Shapes::ListShape.new(name: 'ApplicationDescriptionList')
    ApplicationDescriptionMessage = Shapes::StructureShape.new(name: 'ApplicationDescriptionMessage')
    ApplicationDescriptionsMessage = Shapes::StructureShape.new(name: 'ApplicationDescriptionsMessage')
    ApplicationMetrics = Shapes::StructureShape.new(name: 'ApplicationMetrics')
    ApplicationName = Shapes::StringShape.new(name: 'ApplicationName')
    ApplicationNamesList = Shapes::ListShape.new(name: 'ApplicationNamesList')
    ApplicationResourceLifecycleConfig = Shapes::StructureShape.new(name: 'ApplicationResourceLifecycleConfig')
    ApplicationResourceLifecycleDescriptionMessage = Shapes::StructureShape.new(name: 'ApplicationResourceLifecycleDescriptionMessage')
    ApplicationVersionArn = Shapes::StringShape.new(name: 'ApplicationVersionArn')
    ApplicationVersionDescription = Shapes::StructureShape.new(name: 'ApplicationVersionDescription')
    ApplicationVersionDescriptionList = Shapes::ListShape.new(name: 'ApplicationVersionDescriptionList')
    ApplicationVersionDescriptionMessage = Shapes::StructureShape.new(name: 'ApplicationVersionDescriptionMessage')
    ApplicationVersionDescriptionsMessage = Shapes::StructureShape.new(name: 'ApplicationVersionDescriptionsMessage')
    ApplicationVersionLifecycleConfig = Shapes::StructureShape.new(name: 'ApplicationVersionLifecycleConfig')
    ApplicationVersionProccess = Shapes::BooleanShape.new(name: 'ApplicationVersionProccess')
    ApplicationVersionStatus = Shapes::StringShape.new(name: 'ApplicationVersionStatus')
    ApplyEnvironmentManagedActionRequest = Shapes::StructureShape.new(name: 'ApplyEnvironmentManagedActionRequest')
    ApplyEnvironmentManagedActionResult = Shapes::StructureShape.new(name: 'ApplyEnvironmentManagedActionResult')
    AssociateEnvironmentOperationsRoleMessage = Shapes::StructureShape.new(name: 'AssociateEnvironmentOperationsRoleMessage')
    AutoCreateApplication = Shapes::BooleanShape.new(name: 'AutoCreateApplication')
    AutoScalingGroup = Shapes::StructureShape.new(name: 'AutoScalingGroup')
    AutoScalingGroupList = Shapes::ListShape.new(name: 'AutoScalingGroupList')
    AvailableSolutionStackDetailsList = Shapes::ListShape.new(name: 'AvailableSolutionStackDetailsList')
    AvailableSolutionStackNamesList = Shapes::ListShape.new(name: 'AvailableSolutionStackNamesList')
    BoxedBoolean = Shapes::BooleanShape.new(name: 'BoxedBoolean')
    BoxedInt = Shapes::IntegerShape.new(name: 'BoxedInt')
    BranchName = Shapes::StringShape.new(name: 'BranchName')
    BranchOrder = Shapes::IntegerShape.new(name: 'BranchOrder')
    BuildConfiguration = Shapes::StructureShape.new(name: 'BuildConfiguration')
    Builder = Shapes::StructureShape.new(name: 'Builder')
    CPUUtilization = Shapes::StructureShape.new(name: 'CPUUtilization')
    Cause = Shapes::StringShape.new(name: 'Cause')
    Causes = Shapes::ListShape.new(name: 'Causes')
    CheckDNSAvailabilityMessage = Shapes::StructureShape.new(name: 'CheckDNSAvailabilityMessage')
    CheckDNSAvailabilityResultMessage = Shapes::StructureShape.new(name: 'CheckDNSAvailabilityResultMessage')
    CnameAvailability = Shapes::BooleanShape.new(name: 'CnameAvailability')
    CodeBuildNotInServiceRegionException = Shapes::StructureShape.new(name: 'CodeBuildNotInServiceRegionException')
    ComposeEnvironmentsMessage = Shapes::StructureShape.new(name: 'ComposeEnvironmentsMessage')
    ComputeType = Shapes::StringShape.new(name: 'ComputeType')
    ConfigurationDeploymentStatus = Shapes::StringShape.new(name: 'ConfigurationDeploymentStatus')
    ConfigurationOptionDefaultValue = Shapes::StringShape.new(name: 'ConfigurationOptionDefaultValue')
    ConfigurationOptionDescription = Shapes::StructureShape.new(name: 'ConfigurationOptionDescription')
    ConfigurationOptionDescriptionsList = Shapes::ListShape.new(name: 'ConfigurationOptionDescriptionsList')
    ConfigurationOptionName = Shapes::StringShape.new(name: 'ConfigurationOptionName')
    ConfigurationOptionPossibleValue = Shapes::StringShape.new(name: 'ConfigurationOptionPossibleValue')
    ConfigurationOptionPossibleValues = Shapes::ListShape.new(name: 'ConfigurationOptionPossibleValues')
    ConfigurationOptionSetting = Shapes::StructureShape.new(name: 'ConfigurationOptionSetting')
    ConfigurationOptionSettingsList = Shapes::ListShape.new(name: 'ConfigurationOptionSettingsList')
    ConfigurationOptionSeverity = Shapes::StringShape.new(name: 'ConfigurationOptionSeverity')
    ConfigurationOptionValue = Shapes::StringShape.new(name: 'ConfigurationOptionValue')
    ConfigurationOptionValueType = Shapes::StringShape.new(name: 'ConfigurationOptionValueType')
    ConfigurationOptionsDescription = Shapes::StructureShape.new(name: 'ConfigurationOptionsDescription')
    ConfigurationSettingsDescription = Shapes::StructureShape.new(name: 'ConfigurationSettingsDescription')
    ConfigurationSettingsDescriptionList = Shapes::ListShape.new(name: 'ConfigurationSettingsDescriptionList')
    ConfigurationSettingsDescriptions = Shapes::StructureShape.new(name: 'ConfigurationSettingsDescriptions')
    ConfigurationSettingsValidationMessages = Shapes::StructureShape.new(name: 'ConfigurationSettingsValidationMessages')
    ConfigurationTemplateName = Shapes::StringShape.new(name: 'ConfigurationTemplateName')
    ConfigurationTemplateNamesList = Shapes::ListShape.new(name: 'ConfigurationTemplateNamesList')
    CreateApplicationMessage = Shapes::StructureShape.new(name: 'CreateApplicationMessage')
    CreateApplicationVersionMessage = Shapes::StructureShape.new(name: 'CreateApplicationVersionMessage')
    CreateConfigurationTemplateMessage = Shapes::StructureShape.new(name: 'CreateConfigurationTemplateMessage')
    CreateEnvironmentMessage = Shapes::StructureShape.new(name: 'CreateEnvironmentMessage')
    CreatePlatformVersionRequest = Shapes::StructureShape.new(name: 'CreatePlatformVersionRequest')
    CreatePlatformVersionResult = Shapes::StructureShape.new(name: 'CreatePlatformVersionResult')
    CreateStorageLocationResultMessage = Shapes::StructureShape.new(name: 'CreateStorageLocationResultMessage')
    CreationDate = Shapes::TimestampShape.new(name: 'CreationDate')
    CustomAmi = Shapes::StructureShape.new(name: 'CustomAmi')
    CustomAmiList = Shapes::ListShape.new(name: 'CustomAmiList')
    DNSCname = Shapes::StringShape.new(name: 'DNSCname')
    DNSCnamePrefix = Shapes::StringShape.new(name: 'DNSCnamePrefix')
    DeleteApplicationMessage = Shapes::StructureShape.new(name: 'DeleteApplicationMessage')
    DeleteApplicationVersionMessage = Shapes::StructureShape.new(name: 'DeleteApplicationVersionMessage')
    DeleteConfigurationTemplateMessage = Shapes::StructureShape.new(name: 'DeleteConfigurationTemplateMessage')
    DeleteEnvironmentConfigurationMessage = Shapes::StructureShape.new(name: 'DeleteEnvironmentConfigurationMessage')
    DeletePlatformVersionRequest = Shapes::StructureShape.new(name: 'DeletePlatformVersionRequest')
    DeletePlatformVersionResult = Shapes::StructureShape.new(name: 'DeletePlatformVersionResult')
    DeleteSourceBundle = Shapes::BooleanShape.new(name: 'DeleteSourceBundle')
    Deployment = Shapes::StructureShape.new(name: 'Deployment')
    DeploymentTimestamp = Shapes::TimestampShape.new(name: 'DeploymentTimestamp')
    DescribeAccountAttributesResult = Shapes::StructureShape.new(name: 'DescribeAccountAttributesResult')
    DescribeApplicationVersionsMessage = Shapes::StructureShape.new(name: 'DescribeApplicationVersionsMessage')
    DescribeApplicationsMessage = Shapes::StructureShape.new(name: 'DescribeApplicationsMessage')
    DescribeConfigurationOptionsMessage = Shapes::StructureShape.new(name: 'DescribeConfigurationOptionsMessage')
    DescribeConfigurationSettingsMessage = Shapes::StructureShape.new(name: 'DescribeConfigurationSettingsMessage')
    DescribeEnvironmentHealthRequest = Shapes::StructureShape.new(name: 'DescribeEnvironmentHealthRequest')
    DescribeEnvironmentHealthResult = Shapes::StructureShape.new(name: 'DescribeEnvironmentHealthResult')
    DescribeEnvironmentManagedActionHistoryRequest = Shapes::StructureShape.new(name: 'DescribeEnvironmentManagedActionHistoryRequest')
    DescribeEnvironmentManagedActionHistoryResult = Shapes::StructureShape.new(name: 'DescribeEnvironmentManagedActionHistoryResult')
    DescribeEnvironmentManagedActionsRequest = Shapes::StructureShape.new(name: 'DescribeEnvironmentManagedActionsRequest')
    DescribeEnvironmentManagedActionsResult = Shapes::StructureShape.new(name: 'DescribeEnvironmentManagedActionsResult')
    DescribeEnvironmentResourcesMessage = Shapes::StructureShape.new(name: 'DescribeEnvironmentResourcesMessage')
    DescribeEnvironmentsMessage = Shapes::StructureShape.new(name: 'DescribeEnvironmentsMessage')
    DescribeEventsMessage = Shapes::StructureShape.new(name: 'DescribeEventsMessage')
    DescribeInstancesHealthRequest = Shapes::StructureShape.new(name: 'DescribeInstancesHealthRequest')
    DescribeInstancesHealthResult = Shapes::StructureShape.new(name: 'DescribeInstancesHealthResult')
    DescribePlatformVersionRequest = Shapes::StructureShape.new(name: 'DescribePlatformVersionRequest')
    DescribePlatformVersionResult = Shapes::StructureShape.new(name: 'DescribePlatformVersionResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateEnvironmentOperationsRoleMessage = Shapes::StructureShape.new(name: 'DisassociateEnvironmentOperationsRoleMessage')
    Ec2InstanceId = Shapes::StringShape.new(name: 'Ec2InstanceId')
    ElasticBeanstalkServiceException = Shapes::StructureShape.new(name: 'ElasticBeanstalkServiceException')
    EndpointURL = Shapes::StringShape.new(name: 'EndpointURL')
    EnvironmentArn = Shapes::StringShape.new(name: 'EnvironmentArn')
    EnvironmentDescription = Shapes::StructureShape.new(name: 'EnvironmentDescription')
    EnvironmentDescriptionsList = Shapes::ListShape.new(name: 'EnvironmentDescriptionsList')
    EnvironmentDescriptionsMessage = Shapes::StructureShape.new(name: 'EnvironmentDescriptionsMessage')
    EnvironmentHealth = Shapes::StringShape.new(name: 'EnvironmentHealth')
    EnvironmentHealthAttribute = Shapes::StringShape.new(name: 'EnvironmentHealthAttribute')
    EnvironmentHealthAttributes = Shapes::ListShape.new(name: 'EnvironmentHealthAttributes')
    EnvironmentHealthStatus = Shapes::StringShape.new(name: 'EnvironmentHealthStatus')
    EnvironmentId = Shapes::StringShape.new(name: 'EnvironmentId')
    EnvironmentIdList = Shapes::ListShape.new(name: 'EnvironmentIdList')
    EnvironmentInfoDescription = Shapes::StructureShape.new(name: 'EnvironmentInfoDescription')
    EnvironmentInfoDescriptionList = Shapes::ListShape.new(name: 'EnvironmentInfoDescriptionList')
    EnvironmentInfoType = Shapes::StringShape.new(name: 'EnvironmentInfoType')
    EnvironmentLink = Shapes::StructureShape.new(name: 'EnvironmentLink')
    EnvironmentLinks = Shapes::ListShape.new(name: 'EnvironmentLinks')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentNamesList = Shapes::ListShape.new(name: 'EnvironmentNamesList')
    EnvironmentResourceDescription = Shapes::StructureShape.new(name: 'EnvironmentResourceDescription')
    EnvironmentResourceDescriptionsMessage = Shapes::StructureShape.new(name: 'EnvironmentResourceDescriptionsMessage')
    EnvironmentResourcesDescription = Shapes::StructureShape.new(name: 'EnvironmentResourcesDescription')
    EnvironmentStatus = Shapes::StringShape.new(name: 'EnvironmentStatus')
    EnvironmentTier = Shapes::StructureShape.new(name: 'EnvironmentTier')
    EventDate = Shapes::TimestampShape.new(name: 'EventDate')
    EventDescription = Shapes::StructureShape.new(name: 'EventDescription')
    EventDescriptionList = Shapes::ListShape.new(name: 'EventDescriptionList')
    EventDescriptionsMessage = Shapes::StructureShape.new(name: 'EventDescriptionsMessage')
    EventMessage = Shapes::StringShape.new(name: 'EventMessage')
    EventSeverity = Shapes::StringShape.new(name: 'EventSeverity')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    FailureType = Shapes::StringShape.new(name: 'FailureType')
    FileTypeExtension = Shapes::StringShape.new(name: 'FileTypeExtension')
    ForceTerminate = Shapes::BooleanShape.new(name: 'ForceTerminate')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    ImageId = Shapes::StringShape.new(name: 'ImageId')
    IncludeDeleted = Shapes::BooleanShape.new(name: 'IncludeDeleted')
    IncludeDeletedBackTo = Shapes::TimestampShape.new(name: 'IncludeDeletedBackTo')
    Instance = Shapes::StructureShape.new(name: 'Instance')
    InstanceHealthList = Shapes::ListShape.new(name: 'InstanceHealthList')
    InstanceHealthSummary = Shapes::StructureShape.new(name: 'InstanceHealthSummary')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceList = Shapes::ListShape.new(name: 'InstanceList')
    InstancesHealthAttribute = Shapes::StringShape.new(name: 'InstancesHealthAttribute')
    InstancesHealthAttributes = Shapes::ListShape.new(name: 'InstancesHealthAttributes')
    InsufficientPrivilegesException = Shapes::StructureShape.new(name: 'InsufficientPrivilegesException')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    Latency = Shapes::StructureShape.new(name: 'Latency')
    LaunchConfiguration = Shapes::StructureShape.new(name: 'LaunchConfiguration')
    LaunchConfigurationList = Shapes::ListShape.new(name: 'LaunchConfigurationList')
    LaunchTemplate = Shapes::StructureShape.new(name: 'LaunchTemplate')
    LaunchTemplateList = Shapes::ListShape.new(name: 'LaunchTemplateList')
    LaunchedAt = Shapes::TimestampShape.new(name: 'LaunchedAt')
    ListAvailableSolutionStacksResultMessage = Shapes::StructureShape.new(name: 'ListAvailableSolutionStacksResultMessage')
    ListPlatformBranchesRequest = Shapes::StructureShape.new(name: 'ListPlatformBranchesRequest')
    ListPlatformBranchesResult = Shapes::StructureShape.new(name: 'ListPlatformBranchesResult')
    ListPlatformVersionsRequest = Shapes::StructureShape.new(name: 'ListPlatformVersionsRequest')
    ListPlatformVersionsResult = Shapes::StructureShape.new(name: 'ListPlatformVersionsResult')
    ListTagsForResourceMessage = Shapes::StructureShape.new(name: 'ListTagsForResourceMessage')
    Listener = Shapes::StructureShape.new(name: 'Listener')
    LoadAverage = Shapes::ListShape.new(name: 'LoadAverage')
    LoadAverageValue = Shapes::FloatShape.new(name: 'LoadAverageValue')
    LoadBalancer = Shapes::StructureShape.new(name: 'LoadBalancer')
    LoadBalancerDescription = Shapes::StructureShape.new(name: 'LoadBalancerDescription')
    LoadBalancerList = Shapes::ListShape.new(name: 'LoadBalancerList')
    LoadBalancerListenersDescription = Shapes::ListShape.new(name: 'LoadBalancerListenersDescription')
    Maintainer = Shapes::StringShape.new(name: 'Maintainer')
    ManagedAction = Shapes::StructureShape.new(name: 'ManagedAction')
    ManagedActionHistoryItem = Shapes::StructureShape.new(name: 'ManagedActionHistoryItem')
    ManagedActionHistoryItems = Shapes::ListShape.new(name: 'ManagedActionHistoryItems')
    ManagedActionInvalidStateException = Shapes::StructureShape.new(name: 'ManagedActionInvalidStateException')
    ManagedActions = Shapes::ListShape.new(name: 'ManagedActions')
    MaxAgeRule = Shapes::StructureShape.new(name: 'MaxAgeRule')
    MaxCountRule = Shapes::StructureShape.new(name: 'MaxCountRule')
    MaxRecords = Shapes::IntegerShape.new(name: 'MaxRecords')
    Message = Shapes::StringShape.new(name: 'Message')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NullableDouble = Shapes::FloatShape.new(name: 'NullableDouble')
    NullableInteger = Shapes::IntegerShape.new(name: 'NullableInteger')
    NullableLong = Shapes::IntegerShape.new(name: 'NullableLong')
    OperatingSystemName = Shapes::StringShape.new(name: 'OperatingSystemName')
    OperatingSystemVersion = Shapes::StringShape.new(name: 'OperatingSystemVersion')
    OperationInProgressException = Shapes::StructureShape.new(name: 'OperationInProgressException')
    OperationsRole = Shapes::StringShape.new(name: 'OperationsRole')
    OptionNamespace = Shapes::StringShape.new(name: 'OptionNamespace')
    OptionRestrictionMaxLength = Shapes::IntegerShape.new(name: 'OptionRestrictionMaxLength')
    OptionRestrictionMaxValue = Shapes::IntegerShape.new(name: 'OptionRestrictionMaxValue')
    OptionRestrictionMinValue = Shapes::IntegerShape.new(name: 'OptionRestrictionMinValue')
    OptionRestrictionRegex = Shapes::StructureShape.new(name: 'OptionRestrictionRegex')
    OptionSpecification = Shapes::StructureShape.new(name: 'OptionSpecification')
    OptionsSpecifierList = Shapes::ListShape.new(name: 'OptionsSpecifierList')
    PlatformArn = Shapes::StringShape.new(name: 'PlatformArn')
    PlatformBranchLifecycleState = Shapes::StringShape.new(name: 'PlatformBranchLifecycleState')
    PlatformBranchMaxRecords = Shapes::IntegerShape.new(name: 'PlatformBranchMaxRecords')
    PlatformBranchSummary = Shapes::StructureShape.new(name: 'PlatformBranchSummary')
    PlatformBranchSummaryList = Shapes::ListShape.new(name: 'PlatformBranchSummaryList')
    PlatformCategory = Shapes::StringShape.new(name: 'PlatformCategory')
    PlatformDescription = Shapes::StructureShape.new(name: 'PlatformDescription')
    PlatformFilter = Shapes::StructureShape.new(name: 'PlatformFilter')
    PlatformFilterOperator = Shapes::StringShape.new(name: 'PlatformFilterOperator')
    PlatformFilterType = Shapes::StringShape.new(name: 'PlatformFilterType')
    PlatformFilterValue = Shapes::StringShape.new(name: 'PlatformFilterValue')
    PlatformFilterValueList = Shapes::ListShape.new(name: 'PlatformFilterValueList')
    PlatformFilters = Shapes::ListShape.new(name: 'PlatformFilters')
    PlatformFramework = Shapes::StructureShape.new(name: 'PlatformFramework')
    PlatformFrameworks = Shapes::ListShape.new(name: 'PlatformFrameworks')
    PlatformLifecycleState = Shapes::StringShape.new(name: 'PlatformLifecycleState')
    PlatformMaxRecords = Shapes::IntegerShape.new(name: 'PlatformMaxRecords')
    PlatformName = Shapes::StringShape.new(name: 'PlatformName')
    PlatformOwner = Shapes::StringShape.new(name: 'PlatformOwner')
    PlatformProgrammingLanguage = Shapes::StructureShape.new(name: 'PlatformProgrammingLanguage')
    PlatformProgrammingLanguages = Shapes::ListShape.new(name: 'PlatformProgrammingLanguages')
    PlatformStatus = Shapes::StringShape.new(name: 'PlatformStatus')
    PlatformSummary = Shapes::StructureShape.new(name: 'PlatformSummary')
    PlatformSummaryList = Shapes::ListShape.new(name: 'PlatformSummaryList')
    PlatformVersion = Shapes::StringShape.new(name: 'PlatformVersion')
    PlatformVersionStillReferencedException = Shapes::StructureShape.new(name: 'PlatformVersionStillReferencedException')
    Queue = Shapes::StructureShape.new(name: 'Queue')
    QueueList = Shapes::ListShape.new(name: 'QueueList')
    RebuildEnvironmentMessage = Shapes::StructureShape.new(name: 'RebuildEnvironmentMessage')
    RefreshedAt = Shapes::TimestampShape.new(name: 'RefreshedAt')
    RegexLabel = Shapes::StringShape.new(name: 'RegexLabel')
    RegexPattern = Shapes::StringShape.new(name: 'RegexPattern')
    RequestCount = Shapes::IntegerShape.new(name: 'RequestCount')
    RequestEnvironmentInfoMessage = Shapes::StructureShape.new(name: 'RequestEnvironmentInfoMessage')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceQuota = Shapes::StructureShape.new(name: 'ResourceQuota')
    ResourceQuotas = Shapes::StructureShape.new(name: 'ResourceQuotas')
    ResourceTagsDescriptionMessage = Shapes::StructureShape.new(name: 'ResourceTagsDescriptionMessage')
    ResourceTypeNotSupportedException = Shapes::StructureShape.new(name: 'ResourceTypeNotSupportedException')
    RestartAppServerMessage = Shapes::StructureShape.new(name: 'RestartAppServerMessage')
    RetrieveEnvironmentInfoMessage = Shapes::StructureShape.new(name: 'RetrieveEnvironmentInfoMessage')
    RetrieveEnvironmentInfoResultMessage = Shapes::StructureShape.new(name: 'RetrieveEnvironmentInfoResultMessage')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Location = Shapes::StructureShape.new(name: 'S3Location')
    S3LocationNotInServiceRegionException = Shapes::StructureShape.new(name: 'S3LocationNotInServiceRegionException')
    S3SubscriptionRequiredException = Shapes::StructureShape.new(name: 'S3SubscriptionRequiredException')
    SampleTimestamp = Shapes::TimestampShape.new(name: 'SampleTimestamp')
    SearchFilter = Shapes::StructureShape.new(name: 'SearchFilter')
    SearchFilterAttribute = Shapes::StringShape.new(name: 'SearchFilterAttribute')
    SearchFilterOperator = Shapes::StringShape.new(name: 'SearchFilterOperator')
    SearchFilterValue = Shapes::StringShape.new(name: 'SearchFilterValue')
    SearchFilterValues = Shapes::ListShape.new(name: 'SearchFilterValues')
    SearchFilters = Shapes::ListShape.new(name: 'SearchFilters')
    SingleInstanceHealth = Shapes::StructureShape.new(name: 'SingleInstanceHealth')
    SolutionStackDescription = Shapes::StructureShape.new(name: 'SolutionStackDescription')
    SolutionStackFileTypeList = Shapes::ListShape.new(name: 'SolutionStackFileTypeList')
    SolutionStackName = Shapes::StringShape.new(name: 'SolutionStackName')
    SourceBuildInformation = Shapes::StructureShape.new(name: 'SourceBuildInformation')
    SourceBundleDeletionException = Shapes::StructureShape.new(name: 'SourceBundleDeletionException')
    SourceConfiguration = Shapes::StructureShape.new(name: 'SourceConfiguration')
    SourceLocation = Shapes::StringShape.new(name: 'SourceLocation')
    SourceRepository = Shapes::StringShape.new(name: 'SourceRepository')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StatusCodes = Shapes::StructureShape.new(name: 'StatusCodes')
    String = Shapes::StringShape.new(name: 'String')
    SupportedAddon = Shapes::StringShape.new(name: 'SupportedAddon')
    SupportedAddonList = Shapes::ListShape.new(name: 'SupportedAddonList')
    SupportedTier = Shapes::StringShape.new(name: 'SupportedTier')
    SupportedTierList = Shapes::ListShape.new(name: 'SupportedTierList')
    SwapEnvironmentCNAMEsMessage = Shapes::StructureShape.new(name: 'SwapEnvironmentCNAMEsMessage')
    SystemStatus = Shapes::StructureShape.new(name: 'SystemStatus')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::ListShape.new(name: 'Tags')
    TerminateEnvForce = Shapes::BooleanShape.new(name: 'TerminateEnvForce')
    TerminateEnvironmentMessage = Shapes::StructureShape.new(name: 'TerminateEnvironmentMessage')
    TerminateEnvironmentResources = Shapes::BooleanShape.new(name: 'TerminateEnvironmentResources')
    TimeFilterEnd = Shapes::TimestampShape.new(name: 'TimeFilterEnd')
    TimeFilterStart = Shapes::TimestampShape.new(name: 'TimeFilterStart')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    TooManyApplicationVersionsException = Shapes::StructureShape.new(name: 'TooManyApplicationVersionsException')
    TooManyApplicationsException = Shapes::StructureShape.new(name: 'TooManyApplicationsException')
    TooManyBucketsException = Shapes::StructureShape.new(name: 'TooManyBucketsException')
    TooManyConfigurationTemplatesException = Shapes::StructureShape.new(name: 'TooManyConfigurationTemplatesException')
    TooManyEnvironmentsException = Shapes::StructureShape.new(name: 'TooManyEnvironmentsException')
    TooManyPlatformsException = Shapes::StructureShape.new(name: 'TooManyPlatformsException')
    TooManyTagsException = Shapes::StructureShape.new(name: 'TooManyTagsException')
    Trigger = Shapes::StructureShape.new(name: 'Trigger')
    TriggerList = Shapes::ListShape.new(name: 'TriggerList')
    UpdateApplicationMessage = Shapes::StructureShape.new(name: 'UpdateApplicationMessage')
    UpdateApplicationResourceLifecycleMessage = Shapes::StructureShape.new(name: 'UpdateApplicationResourceLifecycleMessage')
    UpdateApplicationVersionMessage = Shapes::StructureShape.new(name: 'UpdateApplicationVersionMessage')
    UpdateConfigurationTemplateMessage = Shapes::StructureShape.new(name: 'UpdateConfigurationTemplateMessage')
    UpdateDate = Shapes::TimestampShape.new(name: 'UpdateDate')
    UpdateEnvironmentMessage = Shapes::StructureShape.new(name: 'UpdateEnvironmentMessage')
    UpdateTagsForResourceMessage = Shapes::StructureShape.new(name: 'UpdateTagsForResourceMessage')
    UserDefinedOption = Shapes::BooleanShape.new(name: 'UserDefinedOption')
    ValidateConfigurationSettingsMessage = Shapes::StructureShape.new(name: 'ValidateConfigurationSettingsMessage')
    ValidationMessage = Shapes::StructureShape.new(name: 'ValidationMessage')
    ValidationMessageString = Shapes::StringShape.new(name: 'ValidationMessageString')
    ValidationMessagesList = Shapes::ListShape.new(name: 'ValidationMessagesList')
    ValidationSeverity = Shapes::StringShape.new(name: 'ValidationSeverity')
    VersionLabel = Shapes::StringShape.new(name: 'VersionLabel')
    VersionLabels = Shapes::ListShape.new(name: 'VersionLabels')
    VersionLabelsList = Shapes::ListShape.new(name: 'VersionLabelsList')
    VirtualizationType = Shapes::StringShape.new(name: 'VirtualizationType')

    AbortEnvironmentUpdateMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    AbortEnvironmentUpdateMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    AbortEnvironmentUpdateMessage.struct_class = Types::AbortEnvironmentUpdateMessage

    ApplicationDescription.add_member(:application_arn, Shapes::ShapeRef.new(shape: ApplicationArn, location_name: "ApplicationArn"))
    ApplicationDescription.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    ApplicationDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ApplicationDescription.add_member(:date_created, Shapes::ShapeRef.new(shape: CreationDate, location_name: "DateCreated"))
    ApplicationDescription.add_member(:date_updated, Shapes::ShapeRef.new(shape: UpdateDate, location_name: "DateUpdated"))
    ApplicationDescription.add_member(:versions, Shapes::ShapeRef.new(shape: VersionLabelsList, location_name: "Versions"))
    ApplicationDescription.add_member(:configuration_templates, Shapes::ShapeRef.new(shape: ConfigurationTemplateNamesList, location_name: "ConfigurationTemplates"))
    ApplicationDescription.add_member(:resource_lifecycle_config, Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleConfig, location_name: "ResourceLifecycleConfig"))
    ApplicationDescription.struct_class = Types::ApplicationDescription

    ApplicationDescriptionList.member = Shapes::ShapeRef.new(shape: ApplicationDescription)

    ApplicationDescriptionMessage.add_member(:application, Shapes::ShapeRef.new(shape: ApplicationDescription, location_name: "Application"))
    ApplicationDescriptionMessage.struct_class = Types::ApplicationDescriptionMessage

    ApplicationDescriptionsMessage.add_member(:applications, Shapes::ShapeRef.new(shape: ApplicationDescriptionList, location_name: "Applications"))
    ApplicationDescriptionsMessage.struct_class = Types::ApplicationDescriptionsMessage

    ApplicationMetrics.add_member(:duration, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Duration"))
    ApplicationMetrics.add_member(:request_count, Shapes::ShapeRef.new(shape: RequestCount, location_name: "RequestCount"))
    ApplicationMetrics.add_member(:status_codes, Shapes::ShapeRef.new(shape: StatusCodes, location_name: "StatusCodes"))
    ApplicationMetrics.add_member(:latency, Shapes::ShapeRef.new(shape: Latency, location_name: "Latency"))
    ApplicationMetrics.struct_class = Types::ApplicationMetrics

    ApplicationNamesList.member = Shapes::ShapeRef.new(shape: ApplicationName)

    ApplicationResourceLifecycleConfig.add_member(:service_role, Shapes::ShapeRef.new(shape: String, location_name: "ServiceRole"))
    ApplicationResourceLifecycleConfig.add_member(:version_lifecycle_config, Shapes::ShapeRef.new(shape: ApplicationVersionLifecycleConfig, location_name: "VersionLifecycleConfig"))
    ApplicationResourceLifecycleConfig.struct_class = Types::ApplicationResourceLifecycleConfig

    ApplicationResourceLifecycleDescriptionMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    ApplicationResourceLifecycleDescriptionMessage.add_member(:resource_lifecycle_config, Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleConfig, location_name: "ResourceLifecycleConfig"))
    ApplicationResourceLifecycleDescriptionMessage.struct_class = Types::ApplicationResourceLifecycleDescriptionMessage

    ApplicationVersionDescription.add_member(:application_version_arn, Shapes::ShapeRef.new(shape: ApplicationVersionArn, location_name: "ApplicationVersionArn"))
    ApplicationVersionDescription.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    ApplicationVersionDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ApplicationVersionDescription.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    ApplicationVersionDescription.add_member(:source_build_information, Shapes::ShapeRef.new(shape: SourceBuildInformation, location_name: "SourceBuildInformation"))
    ApplicationVersionDescription.add_member(:build_arn, Shapes::ShapeRef.new(shape: String, location_name: "BuildArn"))
    ApplicationVersionDescription.add_member(:source_bundle, Shapes::ShapeRef.new(shape: S3Location, location_name: "SourceBundle"))
    ApplicationVersionDescription.add_member(:date_created, Shapes::ShapeRef.new(shape: CreationDate, location_name: "DateCreated"))
    ApplicationVersionDescription.add_member(:date_updated, Shapes::ShapeRef.new(shape: UpdateDate, location_name: "DateUpdated"))
    ApplicationVersionDescription.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationVersionStatus, location_name: "Status"))
    ApplicationVersionDescription.struct_class = Types::ApplicationVersionDescription

    ApplicationVersionDescriptionList.member = Shapes::ShapeRef.new(shape: ApplicationVersionDescription)

    ApplicationVersionDescriptionMessage.add_member(:application_version, Shapes::ShapeRef.new(shape: ApplicationVersionDescription, location_name: "ApplicationVersion"))
    ApplicationVersionDescriptionMessage.struct_class = Types::ApplicationVersionDescriptionMessage

    ApplicationVersionDescriptionsMessage.add_member(:application_versions, Shapes::ShapeRef.new(shape: ApplicationVersionDescriptionList, location_name: "ApplicationVersions"))
    ApplicationVersionDescriptionsMessage.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ApplicationVersionDescriptionsMessage.struct_class = Types::ApplicationVersionDescriptionsMessage

    ApplicationVersionLifecycleConfig.add_member(:max_count_rule, Shapes::ShapeRef.new(shape: MaxCountRule, location_name: "MaxCountRule"))
    ApplicationVersionLifecycleConfig.add_member(:max_age_rule, Shapes::ShapeRef.new(shape: MaxAgeRule, location_name: "MaxAgeRule"))
    ApplicationVersionLifecycleConfig.struct_class = Types::ApplicationVersionLifecycleConfig

    ApplyEnvironmentManagedActionRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, location_name: "EnvironmentName"))
    ApplyEnvironmentManagedActionRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: String, location_name: "EnvironmentId"))
    ApplyEnvironmentManagedActionRequest.add_member(:action_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ActionId"))
    ApplyEnvironmentManagedActionRequest.struct_class = Types::ApplyEnvironmentManagedActionRequest

    ApplyEnvironmentManagedActionResult.add_member(:action_id, Shapes::ShapeRef.new(shape: String, location_name: "ActionId"))
    ApplyEnvironmentManagedActionResult.add_member(:action_description, Shapes::ShapeRef.new(shape: String, location_name: "ActionDescription"))
    ApplyEnvironmentManagedActionResult.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, location_name: "ActionType"))
    ApplyEnvironmentManagedActionResult.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    ApplyEnvironmentManagedActionResult.struct_class = Types::ApplyEnvironmentManagedActionResult

    AssociateEnvironmentOperationsRoleMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "EnvironmentName"))
    AssociateEnvironmentOperationsRoleMessage.add_member(:operations_role, Shapes::ShapeRef.new(shape: OperationsRole, required: true, location_name: "OperationsRole"))
    AssociateEnvironmentOperationsRoleMessage.struct_class = Types::AssociateEnvironmentOperationsRoleMessage

    AutoScalingGroup.add_member(:name, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Name"))
    AutoScalingGroup.struct_class = Types::AutoScalingGroup

    AutoScalingGroupList.member = Shapes::ShapeRef.new(shape: AutoScalingGroup)

    AvailableSolutionStackDetailsList.member = Shapes::ShapeRef.new(shape: SolutionStackDescription)

    AvailableSolutionStackNamesList.member = Shapes::ShapeRef.new(shape: SolutionStackName)

    BuildConfiguration.add_member(:artifact_name, Shapes::ShapeRef.new(shape: String, location_name: "ArtifactName"))
    BuildConfiguration.add_member(:code_build_service_role, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "CodeBuildServiceRole"))
    BuildConfiguration.add_member(:compute_type, Shapes::ShapeRef.new(shape: ComputeType, location_name: "ComputeType"))
    BuildConfiguration.add_member(:image, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Image"))
    BuildConfiguration.add_member(:timeout_in_minutes, Shapes::ShapeRef.new(shape: BoxedInt, location_name: "TimeoutInMinutes"))
    BuildConfiguration.struct_class = Types::BuildConfiguration

    Builder.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ARN"))
    Builder.struct_class = Types::Builder

    CPUUtilization.add_member(:user, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "User"))
    CPUUtilization.add_member(:nice, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "Nice"))
    CPUUtilization.add_member(:system, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "System"))
    CPUUtilization.add_member(:idle, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "Idle"))
    CPUUtilization.add_member(:io_wait, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "IOWait"))
    CPUUtilization.add_member(:irq, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "IRQ"))
    CPUUtilization.add_member(:soft_irq, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "SoftIRQ"))
    CPUUtilization.add_member(:privileged, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "Privileged"))
    CPUUtilization.struct_class = Types::CPUUtilization

    Causes.member = Shapes::ShapeRef.new(shape: Cause)

    CheckDNSAvailabilityMessage.add_member(:cname_prefix, Shapes::ShapeRef.new(shape: DNSCnamePrefix, required: true, location_name: "CNAMEPrefix"))
    CheckDNSAvailabilityMessage.struct_class = Types::CheckDNSAvailabilityMessage

    CheckDNSAvailabilityResultMessage.add_member(:available, Shapes::ShapeRef.new(shape: CnameAvailability, location_name: "Available"))
    CheckDNSAvailabilityResultMessage.add_member(:fully_qualified_cname, Shapes::ShapeRef.new(shape: DNSCname, location_name: "FullyQualifiedCNAME"))
    CheckDNSAvailabilityResultMessage.struct_class = Types::CheckDNSAvailabilityResultMessage

    CodeBuildNotInServiceRegionException.struct_class = Types::CodeBuildNotInServiceRegionException

    ComposeEnvironmentsMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    ComposeEnvironmentsMessage.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    ComposeEnvironmentsMessage.add_member(:version_labels, Shapes::ShapeRef.new(shape: VersionLabels, location_name: "VersionLabels"))
    ComposeEnvironmentsMessage.struct_class = Types::ComposeEnvironmentsMessage

    ConfigurationOptionDescription.add_member(:namespace, Shapes::ShapeRef.new(shape: OptionNamespace, location_name: "Namespace"))
    ConfigurationOptionDescription.add_member(:name, Shapes::ShapeRef.new(shape: ConfigurationOptionName, location_name: "Name"))
    ConfigurationOptionDescription.add_member(:default_value, Shapes::ShapeRef.new(shape: ConfigurationOptionDefaultValue, location_name: "DefaultValue"))
    ConfigurationOptionDescription.add_member(:change_severity, Shapes::ShapeRef.new(shape: ConfigurationOptionSeverity, location_name: "ChangeSeverity"))
    ConfigurationOptionDescription.add_member(:user_defined, Shapes::ShapeRef.new(shape: UserDefinedOption, location_name: "UserDefined"))
    ConfigurationOptionDescription.add_member(:value_type, Shapes::ShapeRef.new(shape: ConfigurationOptionValueType, location_name: "ValueType"))
    ConfigurationOptionDescription.add_member(:value_options, Shapes::ShapeRef.new(shape: ConfigurationOptionPossibleValues, location_name: "ValueOptions"))
    ConfigurationOptionDescription.add_member(:min_value, Shapes::ShapeRef.new(shape: OptionRestrictionMinValue, location_name: "MinValue"))
    ConfigurationOptionDescription.add_member(:max_value, Shapes::ShapeRef.new(shape: OptionRestrictionMaxValue, location_name: "MaxValue"))
    ConfigurationOptionDescription.add_member(:max_length, Shapes::ShapeRef.new(shape: OptionRestrictionMaxLength, location_name: "MaxLength"))
    ConfigurationOptionDescription.add_member(:regex, Shapes::ShapeRef.new(shape: OptionRestrictionRegex, location_name: "Regex"))
    ConfigurationOptionDescription.struct_class = Types::ConfigurationOptionDescription

    ConfigurationOptionDescriptionsList.member = Shapes::ShapeRef.new(shape: ConfigurationOptionDescription)

    ConfigurationOptionPossibleValues.member = Shapes::ShapeRef.new(shape: ConfigurationOptionPossibleValue)

    ConfigurationOptionSetting.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    ConfigurationOptionSetting.add_member(:namespace, Shapes::ShapeRef.new(shape: OptionNamespace, location_name: "Namespace"))
    ConfigurationOptionSetting.add_member(:option_name, Shapes::ShapeRef.new(shape: ConfigurationOptionName, location_name: "OptionName"))
    ConfigurationOptionSetting.add_member(:value, Shapes::ShapeRef.new(shape: ConfigurationOptionValue, location_name: "Value"))
    ConfigurationOptionSetting.struct_class = Types::ConfigurationOptionSetting

    ConfigurationOptionSettingsList.member = Shapes::ShapeRef.new(shape: ConfigurationOptionSetting)

    ConfigurationOptionsDescription.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    ConfigurationOptionsDescription.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    ConfigurationOptionsDescription.add_member(:options, Shapes::ShapeRef.new(shape: ConfigurationOptionDescriptionsList, location_name: "Options"))
    ConfigurationOptionsDescription.struct_class = Types::ConfigurationOptionsDescription

    ConfigurationSettingsDescription.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    ConfigurationSettingsDescription.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    ConfigurationSettingsDescription.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    ConfigurationSettingsDescription.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    ConfigurationSettingsDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    ConfigurationSettingsDescription.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    ConfigurationSettingsDescription.add_member(:deployment_status, Shapes::ShapeRef.new(shape: ConfigurationDeploymentStatus, location_name: "DeploymentStatus"))
    ConfigurationSettingsDescription.add_member(:date_created, Shapes::ShapeRef.new(shape: CreationDate, location_name: "DateCreated"))
    ConfigurationSettingsDescription.add_member(:date_updated, Shapes::ShapeRef.new(shape: UpdateDate, location_name: "DateUpdated"))
    ConfigurationSettingsDescription.add_member(:option_settings, Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: "OptionSettings"))
    ConfigurationSettingsDescription.struct_class = Types::ConfigurationSettingsDescription

    ConfigurationSettingsDescriptionList.member = Shapes::ShapeRef.new(shape: ConfigurationSettingsDescription)

    ConfigurationSettingsDescriptions.add_member(:configuration_settings, Shapes::ShapeRef.new(shape: ConfigurationSettingsDescriptionList, location_name: "ConfigurationSettings"))
    ConfigurationSettingsDescriptions.struct_class = Types::ConfigurationSettingsDescriptions

    ConfigurationSettingsValidationMessages.add_member(:messages, Shapes::ShapeRef.new(shape: ValidationMessagesList, location_name: "Messages"))
    ConfigurationSettingsValidationMessages.struct_class = Types::ConfigurationSettingsValidationMessages

    ConfigurationTemplateNamesList.member = Shapes::ShapeRef.new(shape: ConfigurationTemplateName)

    CreateApplicationMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    CreateApplicationMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateApplicationMessage.add_member(:resource_lifecycle_config, Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleConfig, location_name: "ResourceLifecycleConfig"))
    CreateApplicationMessage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateApplicationMessage.struct_class = Types::CreateApplicationMessage

    CreateApplicationVersionMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    CreateApplicationVersionMessage.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, required: true, location_name: "VersionLabel"))
    CreateApplicationVersionMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateApplicationVersionMessage.add_member(:source_build_information, Shapes::ShapeRef.new(shape: SourceBuildInformation, location_name: "SourceBuildInformation"))
    CreateApplicationVersionMessage.add_member(:source_bundle, Shapes::ShapeRef.new(shape: S3Location, location_name: "SourceBundle"))
    CreateApplicationVersionMessage.add_member(:build_configuration, Shapes::ShapeRef.new(shape: BuildConfiguration, location_name: "BuildConfiguration"))
    CreateApplicationVersionMessage.add_member(:auto_create_application, Shapes::ShapeRef.new(shape: AutoCreateApplication, location_name: "AutoCreateApplication"))
    CreateApplicationVersionMessage.add_member(:process, Shapes::ShapeRef.new(shape: ApplicationVersionProccess, location_name: "Process"))
    CreateApplicationVersionMessage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateApplicationVersionMessage.struct_class = Types::CreateApplicationVersionMessage

    CreateConfigurationTemplateMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    CreateConfigurationTemplateMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, required: true, location_name: "TemplateName"))
    CreateConfigurationTemplateMessage.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    CreateConfigurationTemplateMessage.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    CreateConfigurationTemplateMessage.add_member(:source_configuration, Shapes::ShapeRef.new(shape: SourceConfiguration, location_name: "SourceConfiguration"))
    CreateConfigurationTemplateMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    CreateConfigurationTemplateMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateConfigurationTemplateMessage.add_member(:option_settings, Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: "OptionSettings"))
    CreateConfigurationTemplateMessage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateConfigurationTemplateMessage.struct_class = Types::CreateConfigurationTemplateMessage

    CreateEnvironmentMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    CreateEnvironmentMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    CreateEnvironmentMessage.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    CreateEnvironmentMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEnvironmentMessage.add_member(:cname_prefix, Shapes::ShapeRef.new(shape: DNSCnamePrefix, location_name: "CNAMEPrefix"))
    CreateEnvironmentMessage.add_member(:tier, Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: "Tier"))
    CreateEnvironmentMessage.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateEnvironmentMessage.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    CreateEnvironmentMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    CreateEnvironmentMessage.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    CreateEnvironmentMessage.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    CreateEnvironmentMessage.add_member(:option_settings, Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: "OptionSettings"))
    CreateEnvironmentMessage.add_member(:options_to_remove, Shapes::ShapeRef.new(shape: OptionsSpecifierList, location_name: "OptionsToRemove"))
    CreateEnvironmentMessage.add_member(:operations_role, Shapes::ShapeRef.new(shape: OperationsRole, location_name: "OperationsRole"))
    CreateEnvironmentMessage.struct_class = Types::CreateEnvironmentMessage

    CreatePlatformVersionRequest.add_member(:platform_name, Shapes::ShapeRef.new(shape: PlatformName, required: true, location_name: "PlatformName"))
    CreatePlatformVersionRequest.add_member(:platform_version, Shapes::ShapeRef.new(shape: PlatformVersion, required: true, location_name: "PlatformVersion"))
    CreatePlatformVersionRequest.add_member(:platform_definition_bundle, Shapes::ShapeRef.new(shape: S3Location, required: true, location_name: "PlatformDefinitionBundle"))
    CreatePlatformVersionRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    CreatePlatformVersionRequest.add_member(:option_settings, Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: "OptionSettings"))
    CreatePlatformVersionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreatePlatformVersionRequest.struct_class = Types::CreatePlatformVersionRequest

    CreatePlatformVersionResult.add_member(:platform_summary, Shapes::ShapeRef.new(shape: PlatformSummary, location_name: "PlatformSummary"))
    CreatePlatformVersionResult.add_member(:builder, Shapes::ShapeRef.new(shape: Builder, location_name: "Builder"))
    CreatePlatformVersionResult.struct_class = Types::CreatePlatformVersionResult

    CreateStorageLocationResultMessage.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    CreateStorageLocationResultMessage.struct_class = Types::CreateStorageLocationResultMessage

    CustomAmi.add_member(:virtualization_type, Shapes::ShapeRef.new(shape: VirtualizationType, location_name: "VirtualizationType"))
    CustomAmi.add_member(:image_id, Shapes::ShapeRef.new(shape: ImageId, location_name: "ImageId"))
    CustomAmi.struct_class = Types::CustomAmi

    CustomAmiList.member = Shapes::ShapeRef.new(shape: CustomAmi)

    DeleteApplicationMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationMessage.add_member(:terminate_env_by_force, Shapes::ShapeRef.new(shape: TerminateEnvForce, location_name: "TerminateEnvByForce"))
    DeleteApplicationMessage.struct_class = Types::DeleteApplicationMessage

    DeleteApplicationVersionMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteApplicationVersionMessage.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, required: true, location_name: "VersionLabel"))
    DeleteApplicationVersionMessage.add_member(:delete_source_bundle, Shapes::ShapeRef.new(shape: DeleteSourceBundle, location_name: "DeleteSourceBundle"))
    DeleteApplicationVersionMessage.struct_class = Types::DeleteApplicationVersionMessage

    DeleteConfigurationTemplateMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteConfigurationTemplateMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, required: true, location_name: "TemplateName"))
    DeleteConfigurationTemplateMessage.struct_class = Types::DeleteConfigurationTemplateMessage

    DeleteEnvironmentConfigurationMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DeleteEnvironmentConfigurationMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "EnvironmentName"))
    DeleteEnvironmentConfigurationMessage.struct_class = Types::DeleteEnvironmentConfigurationMessage

    DeletePlatformVersionRequest.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    DeletePlatformVersionRequest.struct_class = Types::DeletePlatformVersionRequest

    DeletePlatformVersionResult.add_member(:platform_summary, Shapes::ShapeRef.new(shape: PlatformSummary, location_name: "PlatformSummary"))
    DeletePlatformVersionResult.struct_class = Types::DeletePlatformVersionResult

    Deployment.add_member(:version_label, Shapes::ShapeRef.new(shape: String, location_name: "VersionLabel"))
    Deployment.add_member(:deployment_id, Shapes::ShapeRef.new(shape: NullableLong, location_name: "DeploymentId"))
    Deployment.add_member(:status, Shapes::ShapeRef.new(shape: String, location_name: "Status"))
    Deployment.add_member(:deployment_time, Shapes::ShapeRef.new(shape: DeploymentTimestamp, location_name: "DeploymentTime"))
    Deployment.struct_class = Types::Deployment

    DescribeAccountAttributesResult.add_member(:resource_quotas, Shapes::ShapeRef.new(shape: ResourceQuotas, location_name: "ResourceQuotas"))
    DescribeAccountAttributesResult.struct_class = Types::DescribeAccountAttributesResult

    DescribeApplicationVersionsMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    DescribeApplicationVersionsMessage.add_member(:version_labels, Shapes::ShapeRef.new(shape: VersionLabelsList, location_name: "VersionLabels"))
    DescribeApplicationVersionsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeApplicationVersionsMessage.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeApplicationVersionsMessage.struct_class = Types::DescribeApplicationVersionsMessage

    DescribeApplicationsMessage.add_member(:application_names, Shapes::ShapeRef.new(shape: ApplicationNamesList, location_name: "ApplicationNames"))
    DescribeApplicationsMessage.struct_class = Types::DescribeApplicationsMessage

    DescribeConfigurationOptionsMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    DescribeConfigurationOptionsMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    DescribeConfigurationOptionsMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    DescribeConfigurationOptionsMessage.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    DescribeConfigurationOptionsMessage.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    DescribeConfigurationOptionsMessage.add_member(:options, Shapes::ShapeRef.new(shape: OptionsSpecifierList, location_name: "Options"))
    DescribeConfigurationOptionsMessage.struct_class = Types::DescribeConfigurationOptionsMessage

    DescribeConfigurationSettingsMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    DescribeConfigurationSettingsMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    DescribeConfigurationSettingsMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    DescribeConfigurationSettingsMessage.struct_class = Types::DescribeConfigurationSettingsMessage

    DescribeEnvironmentHealthRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    DescribeEnvironmentHealthRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    DescribeEnvironmentHealthRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: EnvironmentHealthAttributes, location_name: "AttributeNames"))
    DescribeEnvironmentHealthRequest.struct_class = Types::DescribeEnvironmentHealthRequest

    DescribeEnvironmentHealthResult.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    DescribeEnvironmentHealthResult.add_member(:health_status, Shapes::ShapeRef.new(shape: String, location_name: "HealthStatus"))
    DescribeEnvironmentHealthResult.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentHealth, location_name: "Status"))
    DescribeEnvironmentHealthResult.add_member(:color, Shapes::ShapeRef.new(shape: String, location_name: "Color"))
    DescribeEnvironmentHealthResult.add_member(:causes, Shapes::ShapeRef.new(shape: Causes, location_name: "Causes"))
    DescribeEnvironmentHealthResult.add_member(:application_metrics, Shapes::ShapeRef.new(shape: ApplicationMetrics, location_name: "ApplicationMetrics"))
    DescribeEnvironmentHealthResult.add_member(:instances_health, Shapes::ShapeRef.new(shape: InstanceHealthSummary, location_name: "InstancesHealth"))
    DescribeEnvironmentHealthResult.add_member(:refreshed_at, Shapes::ShapeRef.new(shape: RefreshedAt, location_name: "RefreshedAt"))
    DescribeEnvironmentHealthResult.struct_class = Types::DescribeEnvironmentHealthResult

    DescribeEnvironmentManagedActionHistoryRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    DescribeEnvironmentManagedActionHistoryRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    DescribeEnvironmentManagedActionHistoryRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEnvironmentManagedActionHistoryRequest.add_member(:max_items, Shapes::ShapeRef.new(shape: Integer, location_name: "MaxItems"))
    DescribeEnvironmentManagedActionHistoryRequest.struct_class = Types::DescribeEnvironmentManagedActionHistoryRequest

    DescribeEnvironmentManagedActionHistoryResult.add_member(:managed_action_history_items, Shapes::ShapeRef.new(shape: ManagedActionHistoryItems, location_name: "ManagedActionHistoryItems"))
    DescribeEnvironmentManagedActionHistoryResult.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    DescribeEnvironmentManagedActionHistoryResult.struct_class = Types::DescribeEnvironmentManagedActionHistoryResult

    DescribeEnvironmentManagedActionsRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, location_name: "EnvironmentName"))
    DescribeEnvironmentManagedActionsRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: String, location_name: "EnvironmentId"))
    DescribeEnvironmentManagedActionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, location_name: "Status"))
    DescribeEnvironmentManagedActionsRequest.struct_class = Types::DescribeEnvironmentManagedActionsRequest

    DescribeEnvironmentManagedActionsResult.add_member(:managed_actions, Shapes::ShapeRef.new(shape: ManagedActions, location_name: "ManagedActions"))
    DescribeEnvironmentManagedActionsResult.struct_class = Types::DescribeEnvironmentManagedActionsResult

    DescribeEnvironmentResourcesMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    DescribeEnvironmentResourcesMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    DescribeEnvironmentResourcesMessage.struct_class = Types::DescribeEnvironmentResourcesMessage

    DescribeEnvironmentsMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    DescribeEnvironmentsMessage.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    DescribeEnvironmentsMessage.add_member(:environment_ids, Shapes::ShapeRef.new(shape: EnvironmentIdList, location_name: "EnvironmentIds"))
    DescribeEnvironmentsMessage.add_member(:environment_names, Shapes::ShapeRef.new(shape: EnvironmentNamesList, location_name: "EnvironmentNames"))
    DescribeEnvironmentsMessage.add_member(:include_deleted, Shapes::ShapeRef.new(shape: IncludeDeleted, location_name: "IncludeDeleted"))
    DescribeEnvironmentsMessage.add_member(:included_deleted_back_to, Shapes::ShapeRef.new(shape: IncludeDeletedBackTo, location_name: "IncludedDeletedBackTo"))
    DescribeEnvironmentsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeEnvironmentsMessage.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeEnvironmentsMessage.struct_class = Types::DescribeEnvironmentsMessage

    DescribeEventsMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    DescribeEventsMessage.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    DescribeEventsMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    DescribeEventsMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    DescribeEventsMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    DescribeEventsMessage.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    DescribeEventsMessage.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    DescribeEventsMessage.add_member(:severity, Shapes::ShapeRef.new(shape: EventSeverity, location_name: "Severity"))
    DescribeEventsMessage.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeFilterStart, location_name: "StartTime"))
    DescribeEventsMessage.add_member(:end_time, Shapes::ShapeRef.new(shape: TimeFilterEnd, location_name: "EndTime"))
    DescribeEventsMessage.add_member(:max_records, Shapes::ShapeRef.new(shape: MaxRecords, location_name: "MaxRecords"))
    DescribeEventsMessage.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeEventsMessage.struct_class = Types::DescribeEventsMessage

    DescribeInstancesHealthRequest.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    DescribeInstancesHealthRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    DescribeInstancesHealthRequest.add_member(:attribute_names, Shapes::ShapeRef.new(shape: InstancesHealthAttributes, location_name: "AttributeNames"))
    DescribeInstancesHealthRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancesHealthRequest.struct_class = Types::DescribeInstancesHealthRequest

    DescribeInstancesHealthResult.add_member(:instance_health_list, Shapes::ShapeRef.new(shape: InstanceHealthList, location_name: "InstanceHealthList"))
    DescribeInstancesHealthResult.add_member(:refreshed_at, Shapes::ShapeRef.new(shape: RefreshedAt, location_name: "RefreshedAt"))
    DescribeInstancesHealthResult.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeInstancesHealthResult.struct_class = Types::DescribeInstancesHealthResult

    DescribePlatformVersionRequest.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    DescribePlatformVersionRequest.struct_class = Types::DescribePlatformVersionRequest

    DescribePlatformVersionResult.add_member(:platform_description, Shapes::ShapeRef.new(shape: PlatformDescription, location_name: "PlatformDescription"))
    DescribePlatformVersionResult.struct_class = Types::DescribePlatformVersionResult

    DisassociateEnvironmentOperationsRoleMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "EnvironmentName"))
    DisassociateEnvironmentOperationsRoleMessage.struct_class = Types::DisassociateEnvironmentOperationsRoleMessage

    ElasticBeanstalkServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "message"))
    ElasticBeanstalkServiceException.struct_class = Types::ElasticBeanstalkServiceException

    EnvironmentDescription.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    EnvironmentDescription.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    EnvironmentDescription.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    EnvironmentDescription.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    EnvironmentDescription.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    EnvironmentDescription.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    EnvironmentDescription.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    EnvironmentDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    EnvironmentDescription.add_member(:endpoint_url, Shapes::ShapeRef.new(shape: EndpointURL, location_name: "EndpointURL"))
    EnvironmentDescription.add_member(:cname, Shapes::ShapeRef.new(shape: DNSCname, location_name: "CNAME"))
    EnvironmentDescription.add_member(:date_created, Shapes::ShapeRef.new(shape: CreationDate, location_name: "DateCreated"))
    EnvironmentDescription.add_member(:date_updated, Shapes::ShapeRef.new(shape: UpdateDate, location_name: "DateUpdated"))
    EnvironmentDescription.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "Status"))
    EnvironmentDescription.add_member(:abortable_operation_in_progress, Shapes::ShapeRef.new(shape: AbortableOperationInProgress, location_name: "AbortableOperationInProgress"))
    EnvironmentDescription.add_member(:health, Shapes::ShapeRef.new(shape: EnvironmentHealth, location_name: "Health"))
    EnvironmentDescription.add_member(:health_status, Shapes::ShapeRef.new(shape: EnvironmentHealthStatus, location_name: "HealthStatus"))
    EnvironmentDescription.add_member(:resources, Shapes::ShapeRef.new(shape: EnvironmentResourcesDescription, location_name: "Resources"))
    EnvironmentDescription.add_member(:tier, Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: "Tier"))
    EnvironmentDescription.add_member(:environment_links, Shapes::ShapeRef.new(shape: EnvironmentLinks, location_name: "EnvironmentLinks"))
    EnvironmentDescription.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "EnvironmentArn"))
    EnvironmentDescription.add_member(:operations_role, Shapes::ShapeRef.new(shape: OperationsRole, location_name: "OperationsRole"))
    EnvironmentDescription.struct_class = Types::EnvironmentDescription

    EnvironmentDescriptionsList.member = Shapes::ShapeRef.new(shape: EnvironmentDescription)

    EnvironmentDescriptionsMessage.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentDescriptionsList, location_name: "Environments"))
    EnvironmentDescriptionsMessage.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    EnvironmentDescriptionsMessage.struct_class = Types::EnvironmentDescriptionsMessage

    EnvironmentHealthAttributes.member = Shapes::ShapeRef.new(shape: EnvironmentHealthAttribute)

    EnvironmentIdList.member = Shapes::ShapeRef.new(shape: EnvironmentId)

    EnvironmentInfoDescription.add_member(:info_type, Shapes::ShapeRef.new(shape: EnvironmentInfoType, location_name: "InfoType"))
    EnvironmentInfoDescription.add_member(:ec2_instance_id, Shapes::ShapeRef.new(shape: Ec2InstanceId, location_name: "Ec2InstanceId"))
    EnvironmentInfoDescription.add_member(:sample_timestamp, Shapes::ShapeRef.new(shape: SampleTimestamp, location_name: "SampleTimestamp"))
    EnvironmentInfoDescription.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    EnvironmentInfoDescription.struct_class = Types::EnvironmentInfoDescription

    EnvironmentInfoDescriptionList.member = Shapes::ShapeRef.new(shape: EnvironmentInfoDescription)

    EnvironmentLink.add_member(:link_name, Shapes::ShapeRef.new(shape: String, location_name: "LinkName"))
    EnvironmentLink.add_member(:environment_name, Shapes::ShapeRef.new(shape: String, location_name: "EnvironmentName"))
    EnvironmentLink.struct_class = Types::EnvironmentLink

    EnvironmentLinks.member = Shapes::ShapeRef.new(shape: EnvironmentLink)

    EnvironmentNamesList.member = Shapes::ShapeRef.new(shape: EnvironmentName)

    EnvironmentResourceDescription.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    EnvironmentResourceDescription.add_member(:auto_scaling_groups, Shapes::ShapeRef.new(shape: AutoScalingGroupList, location_name: "AutoScalingGroups"))
    EnvironmentResourceDescription.add_member(:instances, Shapes::ShapeRef.new(shape: InstanceList, location_name: "Instances"))
    EnvironmentResourceDescription.add_member(:launch_configurations, Shapes::ShapeRef.new(shape: LaunchConfigurationList, location_name: "LaunchConfigurations"))
    EnvironmentResourceDescription.add_member(:launch_templates, Shapes::ShapeRef.new(shape: LaunchTemplateList, location_name: "LaunchTemplates"))
    EnvironmentResourceDescription.add_member(:load_balancers, Shapes::ShapeRef.new(shape: LoadBalancerList, location_name: "LoadBalancers"))
    EnvironmentResourceDescription.add_member(:triggers, Shapes::ShapeRef.new(shape: TriggerList, location_name: "Triggers"))
    EnvironmentResourceDescription.add_member(:queues, Shapes::ShapeRef.new(shape: QueueList, location_name: "Queues"))
    EnvironmentResourceDescription.struct_class = Types::EnvironmentResourceDescription

    EnvironmentResourceDescriptionsMessage.add_member(:environment_resources, Shapes::ShapeRef.new(shape: EnvironmentResourceDescription, location_name: "EnvironmentResources"))
    EnvironmentResourceDescriptionsMessage.struct_class = Types::EnvironmentResourceDescriptionsMessage

    EnvironmentResourcesDescription.add_member(:load_balancer, Shapes::ShapeRef.new(shape: LoadBalancerDescription, location_name: "LoadBalancer"))
    EnvironmentResourcesDescription.struct_class = Types::EnvironmentResourcesDescription

    EnvironmentTier.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    EnvironmentTier.add_member(:type, Shapes::ShapeRef.new(shape: String, location_name: "Type"))
    EnvironmentTier.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    EnvironmentTier.struct_class = Types::EnvironmentTier

    EventDescription.add_member(:event_date, Shapes::ShapeRef.new(shape: EventDate, location_name: "EventDate"))
    EventDescription.add_member(:message, Shapes::ShapeRef.new(shape: EventMessage, location_name: "Message"))
    EventDescription.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    EventDescription.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    EventDescription.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    EventDescription.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    EventDescription.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    EventDescription.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    EventDescription.add_member(:severity, Shapes::ShapeRef.new(shape: EventSeverity, location_name: "Severity"))
    EventDescription.struct_class = Types::EventDescription

    EventDescriptionList.member = Shapes::ShapeRef.new(shape: EventDescription)

    EventDescriptionsMessage.add_member(:events, Shapes::ShapeRef.new(shape: EventDescriptionList, location_name: "Events"))
    EventDescriptionsMessage.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    EventDescriptionsMessage.struct_class = Types::EventDescriptionsMessage

    Instance.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    Instance.struct_class = Types::Instance

    InstanceHealthList.member = Shapes::ShapeRef.new(shape: SingleInstanceHealth)

    InstanceHealthSummary.add_member(:no_data, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "NoData"))
    InstanceHealthSummary.add_member(:unknown, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Unknown"))
    InstanceHealthSummary.add_member(:pending, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Pending"))
    InstanceHealthSummary.add_member(:ok, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Ok"))
    InstanceHealthSummary.add_member(:info, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Info"))
    InstanceHealthSummary.add_member(:warning, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Warning"))
    InstanceHealthSummary.add_member(:degraded, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Degraded"))
    InstanceHealthSummary.add_member(:severe, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Severe"))
    InstanceHealthSummary.struct_class = Types::InstanceHealthSummary

    InstanceList.member = Shapes::ShapeRef.new(shape: Instance)

    InstancesHealthAttributes.member = Shapes::ShapeRef.new(shape: InstancesHealthAttribute)

    InsufficientPrivilegesException.struct_class = Types::InsufficientPrivilegesException

    InvalidRequestException.struct_class = Types::InvalidRequestException

    Latency.add_member(:p999, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "P999"))
    Latency.add_member(:p99, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "P99"))
    Latency.add_member(:p95, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "P95"))
    Latency.add_member(:p90, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "P90"))
    Latency.add_member(:p85, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "P85"))
    Latency.add_member(:p75, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "P75"))
    Latency.add_member(:p50, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "P50"))
    Latency.add_member(:p10, Shapes::ShapeRef.new(shape: NullableDouble, location_name: "P10"))
    Latency.struct_class = Types::Latency

    LaunchConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Name"))
    LaunchConfiguration.struct_class = Types::LaunchConfiguration

    LaunchConfigurationList.member = Shapes::ShapeRef.new(shape: LaunchConfiguration)

    LaunchTemplate.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Id"))
    LaunchTemplate.struct_class = Types::LaunchTemplate

    LaunchTemplateList.member = Shapes::ShapeRef.new(shape: LaunchTemplate)

    ListAvailableSolutionStacksResultMessage.add_member(:solution_stacks, Shapes::ShapeRef.new(shape: AvailableSolutionStackNamesList, location_name: "SolutionStacks"))
    ListAvailableSolutionStacksResultMessage.add_member(:solution_stack_details, Shapes::ShapeRef.new(shape: AvailableSolutionStackDetailsList, location_name: "SolutionStackDetails"))
    ListAvailableSolutionStacksResultMessage.struct_class = Types::ListAvailableSolutionStacksResultMessage

    ListPlatformBranchesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: SearchFilters, location_name: "Filters"))
    ListPlatformBranchesRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: PlatformBranchMaxRecords, location_name: "MaxRecords"))
    ListPlatformBranchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPlatformBranchesRequest.struct_class = Types::ListPlatformBranchesRequest

    ListPlatformBranchesResult.add_member(:platform_branch_summary_list, Shapes::ShapeRef.new(shape: PlatformBranchSummaryList, location_name: "PlatformBranchSummaryList"))
    ListPlatformBranchesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPlatformBranchesResult.struct_class = Types::ListPlatformBranchesResult

    ListPlatformVersionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: PlatformFilters, location_name: "Filters"))
    ListPlatformVersionsRequest.add_member(:max_records, Shapes::ShapeRef.new(shape: PlatformMaxRecords, location_name: "MaxRecords"))
    ListPlatformVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPlatformVersionsRequest.struct_class = Types::ListPlatformVersionsRequest

    ListPlatformVersionsResult.add_member(:platform_summary_list, Shapes::ShapeRef.new(shape: PlatformSummaryList, location_name: "PlatformSummaryList"))
    ListPlatformVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListPlatformVersionsResult.struct_class = Types::ListPlatformVersionsResult

    ListTagsForResourceMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    ListTagsForResourceMessage.struct_class = Types::ListTagsForResourceMessage

    Listener.add_member(:protocol, Shapes::ShapeRef.new(shape: String, location_name: "Protocol"))
    Listener.add_member(:port, Shapes::ShapeRef.new(shape: Integer, location_name: "Port"))
    Listener.struct_class = Types::Listener

    LoadAverage.member = Shapes::ShapeRef.new(shape: LoadAverageValue)

    LoadBalancer.add_member(:name, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Name"))
    LoadBalancer.struct_class = Types::LoadBalancer

    LoadBalancerDescription.add_member(:load_balancer_name, Shapes::ShapeRef.new(shape: String, location_name: "LoadBalancerName"))
    LoadBalancerDescription.add_member(:domain, Shapes::ShapeRef.new(shape: String, location_name: "Domain"))
    LoadBalancerDescription.add_member(:listeners, Shapes::ShapeRef.new(shape: LoadBalancerListenersDescription, location_name: "Listeners"))
    LoadBalancerDescription.struct_class = Types::LoadBalancerDescription

    LoadBalancerList.member = Shapes::ShapeRef.new(shape: LoadBalancer)

    LoadBalancerListenersDescription.member = Shapes::ShapeRef.new(shape: Listener)

    ManagedAction.add_member(:action_id, Shapes::ShapeRef.new(shape: String, location_name: "ActionId"))
    ManagedAction.add_member(:action_description, Shapes::ShapeRef.new(shape: String, location_name: "ActionDescription"))
    ManagedAction.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, location_name: "ActionType"))
    ManagedAction.add_member(:status, Shapes::ShapeRef.new(shape: ActionStatus, location_name: "Status"))
    ManagedAction.add_member(:window_start_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "WindowStartTime"))
    ManagedAction.struct_class = Types::ManagedAction

    ManagedActionHistoryItem.add_member(:action_id, Shapes::ShapeRef.new(shape: String, location_name: "ActionId"))
    ManagedActionHistoryItem.add_member(:action_type, Shapes::ShapeRef.new(shape: ActionType, location_name: "ActionType"))
    ManagedActionHistoryItem.add_member(:action_description, Shapes::ShapeRef.new(shape: String, location_name: "ActionDescription"))
    ManagedActionHistoryItem.add_member(:failure_type, Shapes::ShapeRef.new(shape: FailureType, location_name: "FailureType"))
    ManagedActionHistoryItem.add_member(:status, Shapes::ShapeRef.new(shape: ActionHistoryStatus, location_name: "Status"))
    ManagedActionHistoryItem.add_member(:failure_description, Shapes::ShapeRef.new(shape: String, location_name: "FailureDescription"))
    ManagedActionHistoryItem.add_member(:executed_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ExecutedTime"))
    ManagedActionHistoryItem.add_member(:finished_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "FinishedTime"))
    ManagedActionHistoryItem.struct_class = Types::ManagedActionHistoryItem

    ManagedActionHistoryItems.member = Shapes::ShapeRef.new(shape: ManagedActionHistoryItem)

    ManagedActionInvalidStateException.struct_class = Types::ManagedActionInvalidStateException

    ManagedActions.member = Shapes::ShapeRef.new(shape: ManagedAction)

    MaxAgeRule.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "Enabled"))
    MaxAgeRule.add_member(:max_age_in_days, Shapes::ShapeRef.new(shape: BoxedInt, location_name: "MaxAgeInDays"))
    MaxAgeRule.add_member(:delete_source_from_s3, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "DeleteSourceFromS3"))
    MaxAgeRule.struct_class = Types::MaxAgeRule

    MaxCountRule.add_member(:enabled, Shapes::ShapeRef.new(shape: BoxedBoolean, required: true, location_name: "Enabled"))
    MaxCountRule.add_member(:max_count, Shapes::ShapeRef.new(shape: BoxedInt, location_name: "MaxCount"))
    MaxCountRule.add_member(:delete_source_from_s3, Shapes::ShapeRef.new(shape: BoxedBoolean, location_name: "DeleteSourceFromS3"))
    MaxCountRule.struct_class = Types::MaxCountRule

    OperationInProgressException.struct_class = Types::OperationInProgressException

    OptionRestrictionRegex.add_member(:pattern, Shapes::ShapeRef.new(shape: RegexPattern, location_name: "Pattern"))
    OptionRestrictionRegex.add_member(:label, Shapes::ShapeRef.new(shape: RegexLabel, location_name: "Label"))
    OptionRestrictionRegex.struct_class = Types::OptionRestrictionRegex

    OptionSpecification.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    OptionSpecification.add_member(:namespace, Shapes::ShapeRef.new(shape: OptionNamespace, location_name: "Namespace"))
    OptionSpecification.add_member(:option_name, Shapes::ShapeRef.new(shape: ConfigurationOptionName, location_name: "OptionName"))
    OptionSpecification.struct_class = Types::OptionSpecification

    OptionsSpecifierList.member = Shapes::ShapeRef.new(shape: OptionSpecification)

    PlatformBranchSummary.add_member(:platform_name, Shapes::ShapeRef.new(shape: PlatformName, location_name: "PlatformName"))
    PlatformBranchSummary.add_member(:branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "BranchName"))
    PlatformBranchSummary.add_member(:lifecycle_state, Shapes::ShapeRef.new(shape: PlatformBranchLifecycleState, location_name: "LifecycleState"))
    PlatformBranchSummary.add_member(:branch_order, Shapes::ShapeRef.new(shape: BranchOrder, location_name: "BranchOrder"))
    PlatformBranchSummary.add_member(:supported_tier_list, Shapes::ShapeRef.new(shape: SupportedTierList, location_name: "SupportedTierList"))
    PlatformBranchSummary.struct_class = Types::PlatformBranchSummary

    PlatformBranchSummaryList.member = Shapes::ShapeRef.new(shape: PlatformBranchSummary)

    PlatformDescription.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    PlatformDescription.add_member(:platform_owner, Shapes::ShapeRef.new(shape: PlatformOwner, location_name: "PlatformOwner"))
    PlatformDescription.add_member(:platform_name, Shapes::ShapeRef.new(shape: PlatformName, location_name: "PlatformName"))
    PlatformDescription.add_member(:platform_version, Shapes::ShapeRef.new(shape: PlatformVersion, location_name: "PlatformVersion"))
    PlatformDescription.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    PlatformDescription.add_member(:platform_status, Shapes::ShapeRef.new(shape: PlatformStatus, location_name: "PlatformStatus"))
    PlatformDescription.add_member(:date_created, Shapes::ShapeRef.new(shape: CreationDate, location_name: "DateCreated"))
    PlatformDescription.add_member(:date_updated, Shapes::ShapeRef.new(shape: UpdateDate, location_name: "DateUpdated"))
    PlatformDescription.add_member(:platform_category, Shapes::ShapeRef.new(shape: PlatformCategory, location_name: "PlatformCategory"))
    PlatformDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    PlatformDescription.add_member(:maintainer, Shapes::ShapeRef.new(shape: Maintainer, location_name: "Maintainer"))
    PlatformDescription.add_member(:operating_system_name, Shapes::ShapeRef.new(shape: OperatingSystemName, location_name: "OperatingSystemName"))
    PlatformDescription.add_member(:operating_system_version, Shapes::ShapeRef.new(shape: OperatingSystemVersion, location_name: "OperatingSystemVersion"))
    PlatformDescription.add_member(:programming_languages, Shapes::ShapeRef.new(shape: PlatformProgrammingLanguages, location_name: "ProgrammingLanguages"))
    PlatformDescription.add_member(:frameworks, Shapes::ShapeRef.new(shape: PlatformFrameworks, location_name: "Frameworks"))
    PlatformDescription.add_member(:custom_ami_list, Shapes::ShapeRef.new(shape: CustomAmiList, location_name: "CustomAmiList"))
    PlatformDescription.add_member(:supported_tier_list, Shapes::ShapeRef.new(shape: SupportedTierList, location_name: "SupportedTierList"))
    PlatformDescription.add_member(:supported_addon_list, Shapes::ShapeRef.new(shape: SupportedAddonList, location_name: "SupportedAddonList"))
    PlatformDescription.add_member(:platform_lifecycle_state, Shapes::ShapeRef.new(shape: PlatformLifecycleState, location_name: "PlatformLifecycleState"))
    PlatformDescription.add_member(:platform_branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "PlatformBranchName"))
    PlatformDescription.add_member(:platform_branch_lifecycle_state, Shapes::ShapeRef.new(shape: PlatformBranchLifecycleState, location_name: "PlatformBranchLifecycleState"))
    PlatformDescription.struct_class = Types::PlatformDescription

    PlatformFilter.add_member(:type, Shapes::ShapeRef.new(shape: PlatformFilterType, location_name: "Type"))
    PlatformFilter.add_member(:operator, Shapes::ShapeRef.new(shape: PlatformFilterOperator, location_name: "Operator"))
    PlatformFilter.add_member(:values, Shapes::ShapeRef.new(shape: PlatformFilterValueList, location_name: "Values"))
    PlatformFilter.struct_class = Types::PlatformFilter

    PlatformFilterValueList.member = Shapes::ShapeRef.new(shape: PlatformFilterValue)

    PlatformFilters.member = Shapes::ShapeRef.new(shape: PlatformFilter)

    PlatformFramework.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    PlatformFramework.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    PlatformFramework.struct_class = Types::PlatformFramework

    PlatformFrameworks.member = Shapes::ShapeRef.new(shape: PlatformFramework)

    PlatformProgrammingLanguage.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    PlatformProgrammingLanguage.add_member(:version, Shapes::ShapeRef.new(shape: String, location_name: "Version"))
    PlatformProgrammingLanguage.struct_class = Types::PlatformProgrammingLanguage

    PlatformProgrammingLanguages.member = Shapes::ShapeRef.new(shape: PlatformProgrammingLanguage)

    PlatformSummary.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    PlatformSummary.add_member(:platform_owner, Shapes::ShapeRef.new(shape: PlatformOwner, location_name: "PlatformOwner"))
    PlatformSummary.add_member(:platform_status, Shapes::ShapeRef.new(shape: PlatformStatus, location_name: "PlatformStatus"))
    PlatformSummary.add_member(:platform_category, Shapes::ShapeRef.new(shape: PlatformCategory, location_name: "PlatformCategory"))
    PlatformSummary.add_member(:operating_system_name, Shapes::ShapeRef.new(shape: OperatingSystemName, location_name: "OperatingSystemName"))
    PlatformSummary.add_member(:operating_system_version, Shapes::ShapeRef.new(shape: OperatingSystemVersion, location_name: "OperatingSystemVersion"))
    PlatformSummary.add_member(:supported_tier_list, Shapes::ShapeRef.new(shape: SupportedTierList, location_name: "SupportedTierList"))
    PlatformSummary.add_member(:supported_addon_list, Shapes::ShapeRef.new(shape: SupportedAddonList, location_name: "SupportedAddonList"))
    PlatformSummary.add_member(:platform_lifecycle_state, Shapes::ShapeRef.new(shape: PlatformLifecycleState, location_name: "PlatformLifecycleState"))
    PlatformSummary.add_member(:platform_version, Shapes::ShapeRef.new(shape: PlatformVersion, location_name: "PlatformVersion"))
    PlatformSummary.add_member(:platform_branch_name, Shapes::ShapeRef.new(shape: BranchName, location_name: "PlatformBranchName"))
    PlatformSummary.add_member(:platform_branch_lifecycle_state, Shapes::ShapeRef.new(shape: PlatformBranchLifecycleState, location_name: "PlatformBranchLifecycleState"))
    PlatformSummary.struct_class = Types::PlatformSummary

    PlatformSummaryList.member = Shapes::ShapeRef.new(shape: PlatformSummary)

    PlatformVersionStillReferencedException.struct_class = Types::PlatformVersionStillReferencedException

    Queue.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    Queue.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "URL"))
    Queue.struct_class = Types::Queue

    QueueList.member = Shapes::ShapeRef.new(shape: Queue)

    RebuildEnvironmentMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    RebuildEnvironmentMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    RebuildEnvironmentMessage.struct_class = Types::RebuildEnvironmentMessage

    RequestEnvironmentInfoMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    RequestEnvironmentInfoMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    RequestEnvironmentInfoMessage.add_member(:info_type, Shapes::ShapeRef.new(shape: EnvironmentInfoType, required: true, location_name: "InfoType"))
    RequestEnvironmentInfoMessage.struct_class = Types::RequestEnvironmentInfoMessage

    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceQuota.add_member(:maximum, Shapes::ShapeRef.new(shape: BoxedInt, location_name: "Maximum"))
    ResourceQuota.struct_class = Types::ResourceQuota

    ResourceQuotas.add_member(:application_quota, Shapes::ShapeRef.new(shape: ResourceQuota, location_name: "ApplicationQuota"))
    ResourceQuotas.add_member(:application_version_quota, Shapes::ShapeRef.new(shape: ResourceQuota, location_name: "ApplicationVersionQuota"))
    ResourceQuotas.add_member(:environment_quota, Shapes::ShapeRef.new(shape: ResourceQuota, location_name: "EnvironmentQuota"))
    ResourceQuotas.add_member(:configuration_template_quota, Shapes::ShapeRef.new(shape: ResourceQuota, location_name: "ConfigurationTemplateQuota"))
    ResourceQuotas.add_member(:custom_platform_quota, Shapes::ShapeRef.new(shape: ResourceQuota, location_name: "CustomPlatformQuota"))
    ResourceQuotas.struct_class = Types::ResourceQuotas

    ResourceTagsDescriptionMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    ResourceTagsDescriptionMessage.add_member(:resource_tags, Shapes::ShapeRef.new(shape: TagList, location_name: "ResourceTags"))
    ResourceTagsDescriptionMessage.struct_class = Types::ResourceTagsDescriptionMessage

    ResourceTypeNotSupportedException.struct_class = Types::ResourceTypeNotSupportedException

    RestartAppServerMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    RestartAppServerMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    RestartAppServerMessage.struct_class = Types::RestartAppServerMessage

    RetrieveEnvironmentInfoMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    RetrieveEnvironmentInfoMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    RetrieveEnvironmentInfoMessage.add_member(:info_type, Shapes::ShapeRef.new(shape: EnvironmentInfoType, required: true, location_name: "InfoType"))
    RetrieveEnvironmentInfoMessage.struct_class = Types::RetrieveEnvironmentInfoMessage

    RetrieveEnvironmentInfoResultMessage.add_member(:environment_info, Shapes::ShapeRef.new(shape: EnvironmentInfoDescriptionList, location_name: "EnvironmentInfo"))
    RetrieveEnvironmentInfoResultMessage.struct_class = Types::RetrieveEnvironmentInfoResultMessage

    S3Location.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "S3Bucket"))
    S3Location.add_member(:s3_key, Shapes::ShapeRef.new(shape: S3Key, location_name: "S3Key"))
    S3Location.struct_class = Types::S3Location

    S3LocationNotInServiceRegionException.struct_class = Types::S3LocationNotInServiceRegionException

    S3SubscriptionRequiredException.struct_class = Types::S3SubscriptionRequiredException

    SearchFilter.add_member(:attribute, Shapes::ShapeRef.new(shape: SearchFilterAttribute, location_name: "Attribute"))
    SearchFilter.add_member(:operator, Shapes::ShapeRef.new(shape: SearchFilterOperator, location_name: "Operator"))
    SearchFilter.add_member(:values, Shapes::ShapeRef.new(shape: SearchFilterValues, location_name: "Values"))
    SearchFilter.struct_class = Types::SearchFilter

    SearchFilterValues.member = Shapes::ShapeRef.new(shape: SearchFilterValue)

    SearchFilters.member = Shapes::ShapeRef.new(shape: SearchFilter)

    SingleInstanceHealth.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId"))
    SingleInstanceHealth.add_member(:health_status, Shapes::ShapeRef.new(shape: String, location_name: "HealthStatus"))
    SingleInstanceHealth.add_member(:color, Shapes::ShapeRef.new(shape: String, location_name: "Color"))
    SingleInstanceHealth.add_member(:causes, Shapes::ShapeRef.new(shape: Causes, location_name: "Causes"))
    SingleInstanceHealth.add_member(:launched_at, Shapes::ShapeRef.new(shape: LaunchedAt, location_name: "LaunchedAt"))
    SingleInstanceHealth.add_member(:application_metrics, Shapes::ShapeRef.new(shape: ApplicationMetrics, location_name: "ApplicationMetrics"))
    SingleInstanceHealth.add_member(:system, Shapes::ShapeRef.new(shape: SystemStatus, location_name: "System"))
    SingleInstanceHealth.add_member(:deployment, Shapes::ShapeRef.new(shape: Deployment, location_name: "Deployment"))
    SingleInstanceHealth.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    SingleInstanceHealth.add_member(:instance_type, Shapes::ShapeRef.new(shape: String, location_name: "InstanceType"))
    SingleInstanceHealth.struct_class = Types::SingleInstanceHealth

    SolutionStackDescription.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    SolutionStackDescription.add_member(:permitted_file_types, Shapes::ShapeRef.new(shape: SolutionStackFileTypeList, location_name: "PermittedFileTypes"))
    SolutionStackDescription.struct_class = Types::SolutionStackDescription

    SolutionStackFileTypeList.member = Shapes::ShapeRef.new(shape: FileTypeExtension)

    SourceBuildInformation.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, required: true, location_name: "SourceType"))
    SourceBuildInformation.add_member(:source_repository, Shapes::ShapeRef.new(shape: SourceRepository, required: true, location_name: "SourceRepository"))
    SourceBuildInformation.add_member(:source_location, Shapes::ShapeRef.new(shape: SourceLocation, required: true, location_name: "SourceLocation"))
    SourceBuildInformation.struct_class = Types::SourceBuildInformation

    SourceBundleDeletionException.struct_class = Types::SourceBundleDeletionException

    SourceConfiguration.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    SourceConfiguration.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    SourceConfiguration.struct_class = Types::SourceConfiguration

    StatusCodes.add_member(:status_2xx, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Status2xx"))
    StatusCodes.add_member(:status_3xx, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Status3xx"))
    StatusCodes.add_member(:status_4xx, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Status4xx"))
    StatusCodes.add_member(:status_5xx, Shapes::ShapeRef.new(shape: NullableInteger, location_name: "Status5xx"))
    StatusCodes.struct_class = Types::StatusCodes

    SupportedAddonList.member = Shapes::ShapeRef.new(shape: SupportedAddon)

    SupportedTierList.member = Shapes::ShapeRef.new(shape: SupportedTier)

    SwapEnvironmentCNAMEsMessage.add_member(:source_environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "SourceEnvironmentId"))
    SwapEnvironmentCNAMEsMessage.add_member(:source_environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "SourceEnvironmentName"))
    SwapEnvironmentCNAMEsMessage.add_member(:destination_environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "DestinationEnvironmentId"))
    SwapEnvironmentCNAMEsMessage.add_member(:destination_environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "DestinationEnvironmentName"))
    SwapEnvironmentCNAMEsMessage.struct_class = Types::SwapEnvironmentCNAMEsMessage

    SystemStatus.add_member(:cpu_utilization, Shapes::ShapeRef.new(shape: CPUUtilization, location_name: "CPUUtilization"))
    SystemStatus.add_member(:load_average, Shapes::ShapeRef.new(shape: LoadAverage, location_name: "LoadAverage"))
    SystemStatus.struct_class = Types::SystemStatus

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    Tags.member = Shapes::ShapeRef.new(shape: Tag)

    TerminateEnvironmentMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    TerminateEnvironmentMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    TerminateEnvironmentMessage.add_member(:terminate_resources, Shapes::ShapeRef.new(shape: TerminateEnvironmentResources, location_name: "TerminateResources"))
    TerminateEnvironmentMessage.add_member(:force_terminate, Shapes::ShapeRef.new(shape: ForceTerminate, location_name: "ForceTerminate"))
    TerminateEnvironmentMessage.struct_class = Types::TerminateEnvironmentMessage

    TooManyApplicationVersionsException.struct_class = Types::TooManyApplicationVersionsException

    TooManyApplicationsException.struct_class = Types::TooManyApplicationsException

    TooManyBucketsException.struct_class = Types::TooManyBucketsException

    TooManyConfigurationTemplatesException.struct_class = Types::TooManyConfigurationTemplatesException

    TooManyEnvironmentsException.struct_class = Types::TooManyEnvironmentsException

    TooManyPlatformsException.struct_class = Types::TooManyPlatformsException

    TooManyTagsException.struct_class = Types::TooManyTagsException

    Trigger.add_member(:name, Shapes::ShapeRef.new(shape: ResourceId, location_name: "Name"))
    Trigger.struct_class = Types::Trigger

    TriggerList.member = Shapes::ShapeRef.new(shape: Trigger)

    UpdateApplicationMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    UpdateApplicationMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationMessage.struct_class = Types::UpdateApplicationMessage

    UpdateApplicationResourceLifecycleMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    UpdateApplicationResourceLifecycleMessage.add_member(:resource_lifecycle_config, Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleConfig, required: true, location_name: "ResourceLifecycleConfig"))
    UpdateApplicationResourceLifecycleMessage.struct_class = Types::UpdateApplicationResourceLifecycleMessage

    UpdateApplicationVersionMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    UpdateApplicationVersionMessage.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, required: true, location_name: "VersionLabel"))
    UpdateApplicationVersionMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateApplicationVersionMessage.struct_class = Types::UpdateApplicationVersionMessage

    UpdateConfigurationTemplateMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    UpdateConfigurationTemplateMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, required: true, location_name: "TemplateName"))
    UpdateConfigurationTemplateMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateConfigurationTemplateMessage.add_member(:option_settings, Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: "OptionSettings"))
    UpdateConfigurationTemplateMessage.add_member(:options_to_remove, Shapes::ShapeRef.new(shape: OptionsSpecifierList, location_name: "OptionsToRemove"))
    UpdateConfigurationTemplateMessage.struct_class = Types::UpdateConfigurationTemplateMessage

    UpdateEnvironmentMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, location_name: "ApplicationName"))
    UpdateEnvironmentMessage.add_member(:environment_id, Shapes::ShapeRef.new(shape: EnvironmentId, location_name: "EnvironmentId"))
    UpdateEnvironmentMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    UpdateEnvironmentMessage.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    UpdateEnvironmentMessage.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEnvironmentMessage.add_member(:tier, Shapes::ShapeRef.new(shape: EnvironmentTier, location_name: "Tier"))
    UpdateEnvironmentMessage.add_member(:version_label, Shapes::ShapeRef.new(shape: VersionLabel, location_name: "VersionLabel"))
    UpdateEnvironmentMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    UpdateEnvironmentMessage.add_member(:solution_stack_name, Shapes::ShapeRef.new(shape: SolutionStackName, location_name: "SolutionStackName"))
    UpdateEnvironmentMessage.add_member(:platform_arn, Shapes::ShapeRef.new(shape: PlatformArn, location_name: "PlatformArn"))
    UpdateEnvironmentMessage.add_member(:option_settings, Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, location_name: "OptionSettings"))
    UpdateEnvironmentMessage.add_member(:options_to_remove, Shapes::ShapeRef.new(shape: OptionsSpecifierList, location_name: "OptionsToRemove"))
    UpdateEnvironmentMessage.struct_class = Types::UpdateEnvironmentMessage

    UpdateTagsForResourceMessage.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "ResourceArn"))
    UpdateTagsForResourceMessage.add_member(:tags_to_add, Shapes::ShapeRef.new(shape: TagList, location_name: "TagsToAdd"))
    UpdateTagsForResourceMessage.add_member(:tags_to_remove, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagsToRemove"))
    UpdateTagsForResourceMessage.struct_class = Types::UpdateTagsForResourceMessage

    ValidateConfigurationSettingsMessage.add_member(:application_name, Shapes::ShapeRef.new(shape: ApplicationName, required: true, location_name: "ApplicationName"))
    ValidateConfigurationSettingsMessage.add_member(:template_name, Shapes::ShapeRef.new(shape: ConfigurationTemplateName, location_name: "TemplateName"))
    ValidateConfigurationSettingsMessage.add_member(:environment_name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "EnvironmentName"))
    ValidateConfigurationSettingsMessage.add_member(:option_settings, Shapes::ShapeRef.new(shape: ConfigurationOptionSettingsList, required: true, location_name: "OptionSettings"))
    ValidateConfigurationSettingsMessage.struct_class = Types::ValidateConfigurationSettingsMessage

    ValidationMessage.add_member(:message, Shapes::ShapeRef.new(shape: ValidationMessageString, location_name: "Message"))
    ValidationMessage.add_member(:severity, Shapes::ShapeRef.new(shape: ValidationSeverity, location_name: "Severity"))
    ValidationMessage.add_member(:namespace, Shapes::ShapeRef.new(shape: OptionNamespace, location_name: "Namespace"))
    ValidationMessage.add_member(:option_name, Shapes::ShapeRef.new(shape: ConfigurationOptionName, location_name: "OptionName"))
    ValidationMessage.struct_class = Types::ValidationMessage

    ValidationMessagesList.member = Shapes::ShapeRef.new(shape: ValidationMessage)

    VersionLabels.member = Shapes::ShapeRef.new(shape: VersionLabel)

    VersionLabelsList.member = Shapes::ShapeRef.new(shape: VersionLabel)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2010-12-01"

      api.metadata = {
        "apiVersion" => "2010-12-01",
        "endpointPrefix" => "elasticbeanstalk",
        "protocol" => "query",
        "serviceAbbreviation" => "Elastic Beanstalk",
        "serviceFullName" => "AWS Elastic Beanstalk",
        "serviceId" => "Elastic Beanstalk",
        "signatureVersion" => "v4",
        "uid" => "elasticbeanstalk-2010-12-01",
        "xmlNamespace" => "http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/",
      }

      api.add_operation(:abort_environment_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AbortEnvironmentUpdate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AbortEnvironmentUpdateMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:apply_environment_managed_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ApplyEnvironmentManagedAction"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ApplyEnvironmentManagedActionRequest)
        o.output = Shapes::ShapeRef.new(shape: ApplyEnvironmentManagedActionResult)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ManagedActionInvalidStateException)
      end)

      api.add_operation(:associate_environment_operations_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateEnvironmentOperationsRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateEnvironmentOperationsRoleMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:check_dns_availability, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CheckDNSAvailability"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CheckDNSAvailabilityMessage)
        o.output = Shapes::ShapeRef.new(shape: CheckDNSAvailabilityResultMessage)
      end)

      api.add_operation(:compose_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ComposeEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ComposeEnvironmentsMessage)
        o.output = Shapes::ShapeRef.new(shape: EnvironmentDescriptionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: TooManyEnvironmentsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplicationDescriptionMessage)
        o.errors << Shapes::ShapeRef.new(shape: TooManyApplicationsException)
      end)

      api.add_operation(:create_application_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplicationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationVersionMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplicationVersionDescriptionMessage)
        o.errors << Shapes::ShapeRef.new(shape: TooManyApplicationsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyApplicationVersionsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: S3LocationNotInServiceRegionException)
        o.errors << Shapes::ShapeRef.new(shape: CodeBuildNotInServiceRegionException)
      end)

      api.add_operation(:create_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateConfigurationTemplateMessage)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationSettingsDescription)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyBucketsException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyConfigurationTemplatesException)
      end)

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentMessage)
        o.output = Shapes::ShapeRef.new(shape: EnvironmentDescription)
        o.errors << Shapes::ShapeRef.new(shape: TooManyEnvironmentsException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:create_platform_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreatePlatformVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreatePlatformVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreatePlatformVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyPlatformsException)
      end)

      api.add_operation(:create_storage_location, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateStorageLocation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: CreateStorageLocationResultMessage)
        o.errors << Shapes::ShapeRef.new(shape: TooManyBucketsException)
        o.errors << Shapes::ShapeRef.new(shape: S3SubscriptionRequiredException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
      end)

      api.add_operation(:delete_application_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplicationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationVersionMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: SourceBundleDeletionException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: S3LocationNotInServiceRegionException)
      end)

      api.add_operation(:delete_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteConfigurationTemplateMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
      end)

      api.add_operation(:delete_environment_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironmentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentConfigurationMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:delete_platform_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePlatformVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeletePlatformVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePlatformVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
        o.errors << Shapes::ShapeRef.new(shape: PlatformVersionStillReferencedException)
      end)

      api.add_operation(:describe_account_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:describe_application_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationVersionsMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplicationVersionDescriptionsMessage)
      end)

      api.add_operation(:describe_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationsMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplicationDescriptionsMessage)
      end)

      api.add_operation(:describe_configuration_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationOptionsMessage)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationOptionsDescription)
        o.errors << Shapes::ShapeRef.new(shape: TooManyBucketsException)
      end)

      api.add_operation(:describe_configuration_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeConfigurationSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeConfigurationSettingsMessage)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationSettingsDescriptions)
        o.errors << Shapes::ShapeRef.new(shape: TooManyBucketsException)
      end)

      api.add_operation(:describe_environment_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnvironmentHealth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEnvironmentHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEnvironmentHealthResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
      end)

      api.add_operation(:describe_environment_managed_action_history, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnvironmentManagedActionHistory"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEnvironmentManagedActionHistoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEnvironmentManagedActionHistoryResult)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
      end)

      api.add_operation(:describe_environment_managed_actions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnvironmentManagedActions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEnvironmentManagedActionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeEnvironmentManagedActionsResult)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
      end)

      api.add_operation(:describe_environment_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnvironmentResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEnvironmentResourcesMessage)
        o.output = Shapes::ShapeRef.new(shape: EnvironmentResourceDescriptionsMessage)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:describe_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEnvironments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEnvironmentsMessage)
        o.output = Shapes::ShapeRef.new(shape: EnvironmentDescriptionsMessage)
      end)

      api.add_operation(:describe_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeEvents"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeEventsMessage)
        o.output = Shapes::ShapeRef.new(shape: EventDescriptionsMessage)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_instances_health, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeInstancesHealth"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeInstancesHealthRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeInstancesHealthResult)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
      end)

      api.add_operation(:describe_platform_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePlatformVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribePlatformVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePlatformVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
      end)

      api.add_operation(:disassociate_environment_operations_role, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateEnvironmentOperationsRole"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateEnvironmentOperationsRoleMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:list_available_solution_stacks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAvailableSolutionStacks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ListAvailableSolutionStacksResultMessage)
      end)

      api.add_operation(:list_platform_branches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlatformBranches"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPlatformBranchesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlatformBranchesResult)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_records",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_platform_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPlatformVersions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListPlatformVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPlatformVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: ElasticBeanstalkServiceException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: ResourceTagsDescriptionMessage)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
      end)

      api.add_operation(:rebuild_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RebuildEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RebuildEnvironmentMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:request_environment_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RequestEnvironmentInfo"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RequestEnvironmentInfoMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:restart_app_server, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestartAppServer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RestartAppServerMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:retrieve_environment_info, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RetrieveEnvironmentInfo"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: RetrieveEnvironmentInfoMessage)
        o.output = Shapes::ShapeRef.new(shape: RetrieveEnvironmentInfoResultMessage)
      end)

      api.add_operation(:swap_environment_cnames, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SwapEnvironmentCNAMEs"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SwapEnvironmentCNAMEsMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
      end)

      api.add_operation(:terminate_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TerminateEnvironmentMessage)
        o.output = Shapes::ShapeRef.new(shape: EnvironmentDescription)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplicationDescriptionMessage)
      end)

      api.add_operation(:update_application_resource_lifecycle, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplicationResourceLifecycle"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationResourceLifecycleMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplicationResourceLifecycleDescriptionMessage)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
      end)

      api.add_operation(:update_application_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplicationVersion"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationVersionMessage)
        o.output = Shapes::ShapeRef.new(shape: ApplicationVersionDescriptionMessage)
      end)

      api.add_operation(:update_configuration_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateConfigurationTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateConfigurationTemplateMessage)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationSettingsDescription)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyBucketsException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentMessage)
        o.output = Shapes::ShapeRef.new(shape: EnvironmentDescription)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyBucketsException)
      end)

      api.add_operation(:update_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateTagsForResourceMessage)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: OperationInProgressException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyTagsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceTypeNotSupportedException)
      end)

      api.add_operation(:validate_configuration_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateConfigurationSettings"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ValidateConfigurationSettingsMessage)
        o.output = Shapes::ShapeRef.new(shape: ConfigurationSettingsValidationMessages)
        o.errors << Shapes::ShapeRef.new(shape: InsufficientPrivilegesException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyBucketsException)
      end)
    end

  end
end
