# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Imagebuilder
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountAggregation = Shapes::StructureShape.new(name: 'AccountAggregation')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AdditionalInstanceConfiguration = Shapes::StructureShape.new(name: 'AdditionalInstanceConfiguration')
    Ami = Shapes::StructureShape.new(name: 'Ami')
    AmiDistributionConfiguration = Shapes::StructureShape.new(name: 'AmiDistributionConfiguration')
    AmiList = Shapes::ListShape.new(name: 'AmiList')
    AmiNameString = Shapes::StringShape.new(name: 'AmiNameString')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AutoDisableFailureCount = Shapes::IntegerShape.new(name: 'AutoDisableFailureCount')
    AutoDisablePolicy = Shapes::StructureShape.new(name: 'AutoDisablePolicy')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BuildType = Shapes::StringShape.new(name: 'BuildType')
    CallRateLimitExceededException = Shapes::StructureShape.new(name: 'CallRateLimitExceededException')
    CancelImageCreationRequest = Shapes::StructureShape.new(name: 'CancelImageCreationRequest')
    CancelImageCreationResponse = Shapes::StructureShape.new(name: 'CancelImageCreationResponse')
    CancelLifecycleExecutionRequest = Shapes::StructureShape.new(name: 'CancelLifecycleExecutionRequest')
    CancelLifecycleExecutionResponse = Shapes::StructureShape.new(name: 'CancelLifecycleExecutionResponse')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Component = Shapes::StructureShape.new(name: 'Component')
    ComponentBuildVersionArn = Shapes::StringShape.new(name: 'ComponentBuildVersionArn')
    ComponentConfiguration = Shapes::StructureShape.new(name: 'ComponentConfiguration')
    ComponentConfigurationList = Shapes::ListShape.new(name: 'ComponentConfigurationList')
    ComponentData = Shapes::StringShape.new(name: 'ComponentData')
    ComponentFormat = Shapes::StringShape.new(name: 'ComponentFormat')
    ComponentParameter = Shapes::StructureShape.new(name: 'ComponentParameter')
    ComponentParameterDescription = Shapes::StringShape.new(name: 'ComponentParameterDescription')
    ComponentParameterDetail = Shapes::StructureShape.new(name: 'ComponentParameterDetail')
    ComponentParameterDetailList = Shapes::ListShape.new(name: 'ComponentParameterDetailList')
    ComponentParameterList = Shapes::ListShape.new(name: 'ComponentParameterList')
    ComponentParameterName = Shapes::StringShape.new(name: 'ComponentParameterName')
    ComponentParameterType = Shapes::StringShape.new(name: 'ComponentParameterType')
    ComponentParameterValue = Shapes::StringShape.new(name: 'ComponentParameterValue')
    ComponentParameterValueList = Shapes::ListShape.new(name: 'ComponentParameterValueList')
    ComponentState = Shapes::StructureShape.new(name: 'ComponentState')
    ComponentStatus = Shapes::StringShape.new(name: 'ComponentStatus')
    ComponentSummary = Shapes::StructureShape.new(name: 'ComponentSummary')
    ComponentSummaryList = Shapes::ListShape.new(name: 'ComponentSummaryList')
    ComponentType = Shapes::StringShape.new(name: 'ComponentType')
    ComponentVersion = Shapes::StructureShape.new(name: 'ComponentVersion')
    ComponentVersionArn = Shapes::StringShape.new(name: 'ComponentVersionArn')
    ComponentVersionArnOrBuildVersionArn = Shapes::StringShape.new(name: 'ComponentVersionArnOrBuildVersionArn')
    ComponentVersionList = Shapes::ListShape.new(name: 'ComponentVersionList')
    ConsecutiveFailures = Shapes::IntegerShape.new(name: 'ConsecutiveFailures')
    Container = Shapes::StructureShape.new(name: 'Container')
    ContainerDistributionConfiguration = Shapes::StructureShape.new(name: 'ContainerDistributionConfiguration')
    ContainerList = Shapes::ListShape.new(name: 'ContainerList')
    ContainerRecipe = Shapes::StructureShape.new(name: 'ContainerRecipe')
    ContainerRecipeArn = Shapes::StringShape.new(name: 'ContainerRecipeArn')
    ContainerRecipeSummary = Shapes::StructureShape.new(name: 'ContainerRecipeSummary')
    ContainerRecipeSummaryList = Shapes::ListShape.new(name: 'ContainerRecipeSummaryList')
    ContainerRepositoryService = Shapes::StringShape.new(name: 'ContainerRepositoryService')
    ContainerType = Shapes::StringShape.new(name: 'ContainerType')
    CreateComponentRequest = Shapes::StructureShape.new(name: 'CreateComponentRequest')
    CreateComponentResponse = Shapes::StructureShape.new(name: 'CreateComponentResponse')
    CreateContainerRecipeRequest = Shapes::StructureShape.new(name: 'CreateContainerRecipeRequest')
    CreateContainerRecipeResponse = Shapes::StructureShape.new(name: 'CreateContainerRecipeResponse')
    CreateDistributionConfigurationRequest = Shapes::StructureShape.new(name: 'CreateDistributionConfigurationRequest')
    CreateDistributionConfigurationResponse = Shapes::StructureShape.new(name: 'CreateDistributionConfigurationResponse')
    CreateImagePipelineRequest = Shapes::StructureShape.new(name: 'CreateImagePipelineRequest')
    CreateImagePipelineResponse = Shapes::StructureShape.new(name: 'CreateImagePipelineResponse')
    CreateImageRecipeRequest = Shapes::StructureShape.new(name: 'CreateImageRecipeRequest')
    CreateImageRecipeResponse = Shapes::StructureShape.new(name: 'CreateImageRecipeResponse')
    CreateImageRequest = Shapes::StructureShape.new(name: 'CreateImageRequest')
    CreateImageResponse = Shapes::StructureShape.new(name: 'CreateImageResponse')
    CreateInfrastructureConfigurationRequest = Shapes::StructureShape.new(name: 'CreateInfrastructureConfigurationRequest')
    CreateInfrastructureConfigurationResponse = Shapes::StructureShape.new(name: 'CreateInfrastructureConfigurationResponse')
    CreateLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'CreateLifecyclePolicyRequest')
    CreateLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'CreateLifecyclePolicyResponse')
    CreateWorkflowRequest = Shapes::StructureShape.new(name: 'CreateWorkflowRequest')
    CreateWorkflowResponse = Shapes::StructureShape.new(name: 'CreateWorkflowResponse')
    CvssScore = Shapes::StructureShape.new(name: 'CvssScore')
    CvssScoreAdjustment = Shapes::StructureShape.new(name: 'CvssScoreAdjustment')
    CvssScoreAdjustmentList = Shapes::ListShape.new(name: 'CvssScoreAdjustmentList')
    CvssScoreDetails = Shapes::StructureShape.new(name: 'CvssScoreDetails')
    CvssScoreList = Shapes::ListShape.new(name: 'CvssScoreList')
    DateTime = Shapes::StringShape.new(name: 'DateTime')
    DateTimeTimestamp = Shapes::TimestampShape.new(name: 'DateTimeTimestamp')
    DeleteComponentRequest = Shapes::StructureShape.new(name: 'DeleteComponentRequest')
    DeleteComponentResponse = Shapes::StructureShape.new(name: 'DeleteComponentResponse')
    DeleteContainerRecipeRequest = Shapes::StructureShape.new(name: 'DeleteContainerRecipeRequest')
    DeleteContainerRecipeResponse = Shapes::StructureShape.new(name: 'DeleteContainerRecipeResponse')
    DeleteDistributionConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteDistributionConfigurationRequest')
    DeleteDistributionConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteDistributionConfigurationResponse')
    DeleteImagePipelineRequest = Shapes::StructureShape.new(name: 'DeleteImagePipelineRequest')
    DeleteImagePipelineResponse = Shapes::StructureShape.new(name: 'DeleteImagePipelineResponse')
    DeleteImageRecipeRequest = Shapes::StructureShape.new(name: 'DeleteImageRecipeRequest')
    DeleteImageRecipeResponse = Shapes::StructureShape.new(name: 'DeleteImageRecipeResponse')
    DeleteImageRequest = Shapes::StructureShape.new(name: 'DeleteImageRequest')
    DeleteImageResponse = Shapes::StructureShape.new(name: 'DeleteImageResponse')
    DeleteInfrastructureConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteInfrastructureConfigurationRequest')
    DeleteInfrastructureConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteInfrastructureConfigurationResponse')
    DeleteLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyRequest')
    DeleteLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyResponse')
    DeleteWorkflowRequest = Shapes::StructureShape.new(name: 'DeleteWorkflowRequest')
    DeleteWorkflowResponse = Shapes::StructureShape.new(name: 'DeleteWorkflowResponse')
    DiskImageFormat = Shapes::StringShape.new(name: 'DiskImageFormat')
    Distribution = Shapes::StructureShape.new(name: 'Distribution')
    DistributionConfiguration = Shapes::StructureShape.new(name: 'DistributionConfiguration')
    DistributionConfigurationArn = Shapes::StringShape.new(name: 'DistributionConfigurationArn')
    DistributionConfigurationSummary = Shapes::StructureShape.new(name: 'DistributionConfigurationSummary')
    DistributionConfigurationSummaryList = Shapes::ListShape.new(name: 'DistributionConfigurationSummaryList')
    DistributionList = Shapes::ListShape.new(name: 'DistributionList')
    DistributionTimeoutMinutes = Shapes::IntegerShape.new(name: 'DistributionTimeoutMinutes')
    DockerFileTemplate = Shapes::StringShape.new(name: 'DockerFileTemplate')
    EbsInstanceBlockDeviceSpecification = Shapes::StructureShape.new(name: 'EbsInstanceBlockDeviceSpecification')
    EbsIopsInteger = Shapes::IntegerShape.new(name: 'EbsIopsInteger')
    EbsVolumeSizeInteger = Shapes::IntegerShape.new(name: 'EbsVolumeSizeInteger')
    EbsVolumeThroughput = Shapes::IntegerShape.new(name: 'EbsVolumeThroughput')
    EbsVolumeType = Shapes::StringShape.new(name: 'EbsVolumeType')
    EcrConfiguration = Shapes::StructureShape.new(name: 'EcrConfiguration')
    EmptyString = Shapes::StringShape.new(name: 'EmptyString')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FastLaunchConfiguration = Shapes::StructureShape.new(name: 'FastLaunchConfiguration')
    FastLaunchConfigurationList = Shapes::ListShape.new(name: 'FastLaunchConfigurationList')
    FastLaunchLaunchTemplateSpecification = Shapes::StructureShape.new(name: 'FastLaunchLaunchTemplateSpecification')
    FastLaunchSnapshotConfiguration = Shapes::StructureShape.new(name: 'FastLaunchSnapshotConfiguration')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterName = Shapes::StringShape.new(name: 'FilterName')
    FilterValue = Shapes::StringShape.new(name: 'FilterValue')
    FilterValues = Shapes::ListShape.new(name: 'FilterValues')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetComponentPolicyRequest = Shapes::StructureShape.new(name: 'GetComponentPolicyRequest')
    GetComponentPolicyResponse = Shapes::StructureShape.new(name: 'GetComponentPolicyResponse')
    GetComponentRequest = Shapes::StructureShape.new(name: 'GetComponentRequest')
    GetComponentResponse = Shapes::StructureShape.new(name: 'GetComponentResponse')
    GetContainerRecipePolicyRequest = Shapes::StructureShape.new(name: 'GetContainerRecipePolicyRequest')
    GetContainerRecipePolicyResponse = Shapes::StructureShape.new(name: 'GetContainerRecipePolicyResponse')
    GetContainerRecipeRequest = Shapes::StructureShape.new(name: 'GetContainerRecipeRequest')
    GetContainerRecipeResponse = Shapes::StructureShape.new(name: 'GetContainerRecipeResponse')
    GetDistributionConfigurationRequest = Shapes::StructureShape.new(name: 'GetDistributionConfigurationRequest')
    GetDistributionConfigurationResponse = Shapes::StructureShape.new(name: 'GetDistributionConfigurationResponse')
    GetImagePipelineRequest = Shapes::StructureShape.new(name: 'GetImagePipelineRequest')
    GetImagePipelineResponse = Shapes::StructureShape.new(name: 'GetImagePipelineResponse')
    GetImagePolicyRequest = Shapes::StructureShape.new(name: 'GetImagePolicyRequest')
    GetImagePolicyResponse = Shapes::StructureShape.new(name: 'GetImagePolicyResponse')
    GetImageRecipePolicyRequest = Shapes::StructureShape.new(name: 'GetImageRecipePolicyRequest')
    GetImageRecipePolicyResponse = Shapes::StructureShape.new(name: 'GetImageRecipePolicyResponse')
    GetImageRecipeRequest = Shapes::StructureShape.new(name: 'GetImageRecipeRequest')
    GetImageRecipeResponse = Shapes::StructureShape.new(name: 'GetImageRecipeResponse')
    GetImageRequest = Shapes::StructureShape.new(name: 'GetImageRequest')
    GetImageResponse = Shapes::StructureShape.new(name: 'GetImageResponse')
    GetInfrastructureConfigurationRequest = Shapes::StructureShape.new(name: 'GetInfrastructureConfigurationRequest')
    GetInfrastructureConfigurationResponse = Shapes::StructureShape.new(name: 'GetInfrastructureConfigurationResponse')
    GetLifecycleExecutionRequest = Shapes::StructureShape.new(name: 'GetLifecycleExecutionRequest')
    GetLifecycleExecutionResponse = Shapes::StructureShape.new(name: 'GetLifecycleExecutionResponse')
    GetLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'GetLifecyclePolicyRequest')
    GetLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'GetLifecyclePolicyResponse')
    GetMarketplaceResourceRequest = Shapes::StructureShape.new(name: 'GetMarketplaceResourceRequest')
    GetMarketplaceResourceResponse = Shapes::StructureShape.new(name: 'GetMarketplaceResourceResponse')
    GetWorkflowExecutionRequest = Shapes::StructureShape.new(name: 'GetWorkflowExecutionRequest')
    GetWorkflowExecutionResponse = Shapes::StructureShape.new(name: 'GetWorkflowExecutionResponse')
    GetWorkflowRequest = Shapes::StructureShape.new(name: 'GetWorkflowRequest')
    GetWorkflowResponse = Shapes::StructureShape.new(name: 'GetWorkflowResponse')
    GetWorkflowStepExecutionRequest = Shapes::StructureShape.new(name: 'GetWorkflowStepExecutionRequest')
    GetWorkflowStepExecutionResponse = Shapes::StructureShape.new(name: 'GetWorkflowStepExecutionResponse')
    HttpPutResponseHopLimit = Shapes::IntegerShape.new(name: 'HttpPutResponseHopLimit')
    HttpTokens = Shapes::StringShape.new(name: 'HttpTokens')
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageAggregation = Shapes::StructureShape.new(name: 'ImageAggregation')
    ImageBuildMessage = Shapes::StringShape.new(name: 'ImageBuildMessage')
    ImageBuildVersionArn = Shapes::StringShape.new(name: 'ImageBuildVersionArn')
    ImageBuilderArn = Shapes::StringShape.new(name: 'ImageBuilderArn')
    ImageLoggingConfiguration = Shapes::StructureShape.new(name: 'ImageLoggingConfiguration')
    ImagePackage = Shapes::StructureShape.new(name: 'ImagePackage')
    ImagePackageList = Shapes::ListShape.new(name: 'ImagePackageList')
    ImagePipeline = Shapes::StructureShape.new(name: 'ImagePipeline')
    ImagePipelineAggregation = Shapes::StructureShape.new(name: 'ImagePipelineAggregation')
    ImagePipelineArn = Shapes::StringShape.new(name: 'ImagePipelineArn')
    ImagePipelineList = Shapes::ListShape.new(name: 'ImagePipelineList')
    ImageRecipe = Shapes::StructureShape.new(name: 'ImageRecipe')
    ImageRecipeArn = Shapes::StringShape.new(name: 'ImageRecipeArn')
    ImageRecipeSummary = Shapes::StructureShape.new(name: 'ImageRecipeSummary')
    ImageRecipeSummaryList = Shapes::ListShape.new(name: 'ImageRecipeSummaryList')
    ImageScanFinding = Shapes::StructureShape.new(name: 'ImageScanFinding')
    ImageScanFindingAggregation = Shapes::StructureShape.new(name: 'ImageScanFindingAggregation')
    ImageScanFindingAggregationsList = Shapes::ListShape.new(name: 'ImageScanFindingAggregationsList')
    ImageScanFindingsFilter = Shapes::StructureShape.new(name: 'ImageScanFindingsFilter')
    ImageScanFindingsFilterList = Shapes::ListShape.new(name: 'ImageScanFindingsFilterList')
    ImageScanFindingsFilterValues = Shapes::ListShape.new(name: 'ImageScanFindingsFilterValues')
    ImageScanFindingsList = Shapes::ListShape.new(name: 'ImageScanFindingsList')
    ImageScanState = Shapes::StructureShape.new(name: 'ImageScanState')
    ImageScanStatus = Shapes::StringShape.new(name: 'ImageScanStatus')
    ImageScanningConfiguration = Shapes::StructureShape.new(name: 'ImageScanningConfiguration')
    ImageSource = Shapes::StringShape.new(name: 'ImageSource')
    ImageState = Shapes::StructureShape.new(name: 'ImageState')
    ImageStatus = Shapes::StringShape.new(name: 'ImageStatus')
    ImageSummary = Shapes::StructureShape.new(name: 'ImageSummary')
    ImageSummaryList = Shapes::ListShape.new(name: 'ImageSummaryList')
    ImageTestsConfiguration = Shapes::StructureShape.new(name: 'ImageTestsConfiguration')
    ImageTestsTimeoutMinutes = Shapes::IntegerShape.new(name: 'ImageTestsTimeoutMinutes')
    ImageType = Shapes::StringShape.new(name: 'ImageType')
    ImageVersion = Shapes::StructureShape.new(name: 'ImageVersion')
    ImageVersionArn = Shapes::StringShape.new(name: 'ImageVersionArn')
    ImageVersionArnOrBuildVersionArn = Shapes::StringShape.new(name: 'ImageVersionArnOrBuildVersionArn')
    ImageVersionList = Shapes::ListShape.new(name: 'ImageVersionList')
    ImportComponentRequest = Shapes::StructureShape.new(name: 'ImportComponentRequest')
    ImportComponentResponse = Shapes::StructureShape.new(name: 'ImportComponentResponse')
    ImportDiskImageRequest = Shapes::StructureShape.new(name: 'ImportDiskImageRequest')
    ImportDiskImageResponse = Shapes::StructureShape.new(name: 'ImportDiskImageResponse')
    ImportVmImageRequest = Shapes::StructureShape.new(name: 'ImportVmImageRequest')
    ImportVmImageResponse = Shapes::StructureShape.new(name: 'ImportVmImageResponse')
    InfrastructureConfiguration = Shapes::StructureShape.new(name: 'InfrastructureConfiguration')
    InfrastructureConfigurationArn = Shapes::StringShape.new(name: 'InfrastructureConfigurationArn')
    InfrastructureConfigurationSummary = Shapes::StructureShape.new(name: 'InfrastructureConfigurationSummary')
    InfrastructureConfigurationSummaryList = Shapes::ListShape.new(name: 'InfrastructureConfigurationSummaryList')
    InlineComponentData = Shapes::StringShape.new(name: 'InlineComponentData')
    InlineDockerFileTemplate = Shapes::StringShape.new(name: 'InlineDockerFileTemplate')
    InlineWorkflowData = Shapes::StringShape.new(name: 'InlineWorkflowData')
    InspectorScoreDetails = Shapes::StructureShape.new(name: 'InspectorScoreDetails')
    InstanceBlockDeviceMapping = Shapes::StructureShape.new(name: 'InstanceBlockDeviceMapping')
    InstanceBlockDeviceMappings = Shapes::ListShape.new(name: 'InstanceBlockDeviceMappings')
    InstanceConfiguration = Shapes::StructureShape.new(name: 'InstanceConfiguration')
    InstanceMetadataOptions = Shapes::StructureShape.new(name: 'InstanceMetadataOptions')
    InstanceProfileNameType = Shapes::StringShape.new(name: 'InstanceProfileNameType')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeList = Shapes::ListShape.new(name: 'InstanceTypeList')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidVersionNumberException = Shapes::StructureShape.new(name: 'InvalidVersionNumberException')
    LaunchPermissionConfiguration = Shapes::StructureShape.new(name: 'LaunchPermissionConfiguration')
    LaunchTemplateConfiguration = Shapes::StructureShape.new(name: 'LaunchTemplateConfiguration')
    LaunchTemplateConfigurationList = Shapes::ListShape.new(name: 'LaunchTemplateConfigurationList')
    LaunchTemplateId = Shapes::StringShape.new(name: 'LaunchTemplateId')
    LicenseConfigurationArn = Shapes::StringShape.new(name: 'LicenseConfigurationArn')
    LicenseConfigurationArnList = Shapes::ListShape.new(name: 'LicenseConfigurationArnList')
    LifecycleExecution = Shapes::StructureShape.new(name: 'LifecycleExecution')
    LifecycleExecutionId = Shapes::StringShape.new(name: 'LifecycleExecutionId')
    LifecycleExecutionResource = Shapes::StructureShape.new(name: 'LifecycleExecutionResource')
    LifecycleExecutionResourceAction = Shapes::StructureShape.new(name: 'LifecycleExecutionResourceAction')
    LifecycleExecutionResourceActionName = Shapes::StringShape.new(name: 'LifecycleExecutionResourceActionName')
    LifecycleExecutionResourceList = Shapes::ListShape.new(name: 'LifecycleExecutionResourceList')
    LifecycleExecutionResourceState = Shapes::StructureShape.new(name: 'LifecycleExecutionResourceState')
    LifecycleExecutionResourceStatus = Shapes::StringShape.new(name: 'LifecycleExecutionResourceStatus')
    LifecycleExecutionResourcesImpactedSummary = Shapes::StructureShape.new(name: 'LifecycleExecutionResourcesImpactedSummary')
    LifecycleExecutionSnapshotResource = Shapes::StructureShape.new(name: 'LifecycleExecutionSnapshotResource')
    LifecycleExecutionSnapshotResourceList = Shapes::ListShape.new(name: 'LifecycleExecutionSnapshotResourceList')
    LifecycleExecutionState = Shapes::StructureShape.new(name: 'LifecycleExecutionState')
    LifecycleExecutionStatus = Shapes::StringShape.new(name: 'LifecycleExecutionStatus')
    LifecycleExecutionsList = Shapes::ListShape.new(name: 'LifecycleExecutionsList')
    LifecyclePolicy = Shapes::StructureShape.new(name: 'LifecyclePolicy')
    LifecyclePolicyArn = Shapes::StringShape.new(name: 'LifecyclePolicyArn')
    LifecyclePolicyDetail = Shapes::StructureShape.new(name: 'LifecyclePolicyDetail')
    LifecyclePolicyDetailAction = Shapes::StructureShape.new(name: 'LifecyclePolicyDetailAction')
    LifecyclePolicyDetailActionIncludeResources = Shapes::StructureShape.new(name: 'LifecyclePolicyDetailActionIncludeResources')
    LifecyclePolicyDetailActionType = Shapes::StringShape.new(name: 'LifecyclePolicyDetailActionType')
    LifecyclePolicyDetailExclusionRules = Shapes::StructureShape.new(name: 'LifecyclePolicyDetailExclusionRules')
    LifecyclePolicyDetailExclusionRulesAmis = Shapes::StructureShape.new(name: 'LifecyclePolicyDetailExclusionRulesAmis')
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched = Shapes::StructureShape.new(name: 'LifecyclePolicyDetailExclusionRulesAmisLastLaunched')
    LifecyclePolicyDetailExclusionRulesAmisLastLaunchedValue = Shapes::IntegerShape.new(name: 'LifecyclePolicyDetailExclusionRulesAmisLastLaunchedValue')
    LifecyclePolicyDetailFilter = Shapes::StructureShape.new(name: 'LifecyclePolicyDetailFilter')
    LifecyclePolicyDetailFilterRetainAtLeast = Shapes::IntegerShape.new(name: 'LifecyclePolicyDetailFilterRetainAtLeast')
    LifecyclePolicyDetailFilterType = Shapes::StringShape.new(name: 'LifecyclePolicyDetailFilterType')
    LifecyclePolicyDetailFilterValue = Shapes::IntegerShape.new(name: 'LifecyclePolicyDetailFilterValue')
    LifecyclePolicyDetails = Shapes::ListShape.new(name: 'LifecyclePolicyDetails')
    LifecyclePolicyResourceSelection = Shapes::StructureShape.new(name: 'LifecyclePolicyResourceSelection')
    LifecyclePolicyResourceSelectionRecipe = Shapes::StructureShape.new(name: 'LifecyclePolicyResourceSelectionRecipe')
    LifecyclePolicyResourceSelectionRecipes = Shapes::ListShape.new(name: 'LifecyclePolicyResourceSelectionRecipes')
    LifecyclePolicyResourceType = Shapes::StringShape.new(name: 'LifecyclePolicyResourceType')
    LifecyclePolicyStatus = Shapes::StringShape.new(name: 'LifecyclePolicyStatus')
    LifecyclePolicySummary = Shapes::StructureShape.new(name: 'LifecyclePolicySummary')
    LifecyclePolicySummaryList = Shapes::ListShape.new(name: 'LifecyclePolicySummaryList')
    LifecyclePolicyTimeUnit = Shapes::StringShape.new(name: 'LifecyclePolicyTimeUnit')
    ListComponentBuildVersionsRequest = Shapes::StructureShape.new(name: 'ListComponentBuildVersionsRequest')
    ListComponentBuildVersionsResponse = Shapes::StructureShape.new(name: 'ListComponentBuildVersionsResponse')
    ListComponentsRequest = Shapes::StructureShape.new(name: 'ListComponentsRequest')
    ListComponentsResponse = Shapes::StructureShape.new(name: 'ListComponentsResponse')
    ListContainerRecipesRequest = Shapes::StructureShape.new(name: 'ListContainerRecipesRequest')
    ListContainerRecipesResponse = Shapes::StructureShape.new(name: 'ListContainerRecipesResponse')
    ListDistributionConfigurationsRequest = Shapes::StructureShape.new(name: 'ListDistributionConfigurationsRequest')
    ListDistributionConfigurationsResponse = Shapes::StructureShape.new(name: 'ListDistributionConfigurationsResponse')
    ListImageBuildVersionsRequest = Shapes::StructureShape.new(name: 'ListImageBuildVersionsRequest')
    ListImageBuildVersionsResponse = Shapes::StructureShape.new(name: 'ListImageBuildVersionsResponse')
    ListImagePackagesRequest = Shapes::StructureShape.new(name: 'ListImagePackagesRequest')
    ListImagePackagesResponse = Shapes::StructureShape.new(name: 'ListImagePackagesResponse')
    ListImagePipelineImagesRequest = Shapes::StructureShape.new(name: 'ListImagePipelineImagesRequest')
    ListImagePipelineImagesResponse = Shapes::StructureShape.new(name: 'ListImagePipelineImagesResponse')
    ListImagePipelinesRequest = Shapes::StructureShape.new(name: 'ListImagePipelinesRequest')
    ListImagePipelinesResponse = Shapes::StructureShape.new(name: 'ListImagePipelinesResponse')
    ListImageRecipesRequest = Shapes::StructureShape.new(name: 'ListImageRecipesRequest')
    ListImageRecipesResponse = Shapes::StructureShape.new(name: 'ListImageRecipesResponse')
    ListImageScanFindingAggregationsRequest = Shapes::StructureShape.new(name: 'ListImageScanFindingAggregationsRequest')
    ListImageScanFindingAggregationsResponse = Shapes::StructureShape.new(name: 'ListImageScanFindingAggregationsResponse')
    ListImageScanFindingsRequest = Shapes::StructureShape.new(name: 'ListImageScanFindingsRequest')
    ListImageScanFindingsResponse = Shapes::StructureShape.new(name: 'ListImageScanFindingsResponse')
    ListImagesRequest = Shapes::StructureShape.new(name: 'ListImagesRequest')
    ListImagesResponse = Shapes::StructureShape.new(name: 'ListImagesResponse')
    ListInfrastructureConfigurationsRequest = Shapes::StructureShape.new(name: 'ListInfrastructureConfigurationsRequest')
    ListInfrastructureConfigurationsResponse = Shapes::StructureShape.new(name: 'ListInfrastructureConfigurationsResponse')
    ListLifecycleExecutionResourcesRequest = Shapes::StructureShape.new(name: 'ListLifecycleExecutionResourcesRequest')
    ListLifecycleExecutionResourcesResponse = Shapes::StructureShape.new(name: 'ListLifecycleExecutionResourcesResponse')
    ListLifecycleExecutionsRequest = Shapes::StructureShape.new(name: 'ListLifecycleExecutionsRequest')
    ListLifecycleExecutionsResponse = Shapes::StructureShape.new(name: 'ListLifecycleExecutionsResponse')
    ListLifecyclePoliciesRequest = Shapes::StructureShape.new(name: 'ListLifecyclePoliciesRequest')
    ListLifecyclePoliciesResponse = Shapes::StructureShape.new(name: 'ListLifecyclePoliciesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListWaitingWorkflowStepsRequest = Shapes::StructureShape.new(name: 'ListWaitingWorkflowStepsRequest')
    ListWaitingWorkflowStepsResponse = Shapes::StructureShape.new(name: 'ListWaitingWorkflowStepsResponse')
    ListWorkflowBuildVersionsRequest = Shapes::StructureShape.new(name: 'ListWorkflowBuildVersionsRequest')
    ListWorkflowBuildVersionsResponse = Shapes::StructureShape.new(name: 'ListWorkflowBuildVersionsResponse')
    ListWorkflowExecutionsRequest = Shapes::StructureShape.new(name: 'ListWorkflowExecutionsRequest')
    ListWorkflowExecutionsResponse = Shapes::StructureShape.new(name: 'ListWorkflowExecutionsResponse')
    ListWorkflowStepExecutionsRequest = Shapes::StructureShape.new(name: 'ListWorkflowStepExecutionsRequest')
    ListWorkflowStepExecutionsResponse = Shapes::StructureShape.new(name: 'ListWorkflowStepExecutionsResponse')
    ListWorkflowsRequest = Shapes::StructureShape.new(name: 'ListWorkflowsRequest')
    ListWorkflowsResponse = Shapes::StructureShape.new(name: 'ListWorkflowsResponse')
    LogGroupName = Shapes::StringShape.new(name: 'LogGroupName')
    Logging = Shapes::StructureShape.new(name: 'Logging')
    MarketplaceResourceLocation = Shapes::StringShape.new(name: 'MarketplaceResourceLocation')
    MarketplaceResourceType = Shapes::StringShape.new(name: 'MarketplaceResourceType')
    MaxParallelLaunches = Shapes::IntegerShape.new(name: 'MaxParallelLaunches')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NonEmptyStringList = Shapes::ListShape.new(name: 'NonEmptyStringList')
    NonNegativeDouble = Shapes::FloatShape.new(name: 'NonNegativeDouble')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    OnWorkflowFailure = Shapes::StringShape.new(name: 'OnWorkflowFailure')
    OrganizationArn = Shapes::StringShape.new(name: 'OrganizationArn')
    OrganizationArnList = Shapes::ListShape.new(name: 'OrganizationArnList')
    OrganizationalUnitArn = Shapes::StringShape.new(name: 'OrganizationalUnitArn')
    OrganizationalUnitArnList = Shapes::ListShape.new(name: 'OrganizationalUnitArnList')
    OsVersion = Shapes::StringShape.new(name: 'OsVersion')
    OsVersionList = Shapes::ListShape.new(name: 'OsVersionList')
    OutputResources = Shapes::StructureShape.new(name: 'OutputResources')
    Ownership = Shapes::StringShape.new(name: 'Ownership')
    PackageArchitecture = Shapes::StringShape.new(name: 'PackageArchitecture')
    PackageEpoch = Shapes::IntegerShape.new(name: 'PackageEpoch')
    PackageVulnerabilityDetails = Shapes::StructureShape.new(name: 'PackageVulnerabilityDetails')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ParallelGroup = Shapes::StringShape.new(name: 'ParallelGroup')
    PipelineExecutionStartCondition = Shapes::StringShape.new(name: 'PipelineExecutionStartCondition')
    PipelineLoggingConfiguration = Shapes::StructureShape.new(name: 'PipelineLoggingConfiguration')
    PipelineStatus = Shapes::StringShape.new(name: 'PipelineStatus')
    Placement = Shapes::StructureShape.new(name: 'Placement')
    Platform = Shapes::StringShape.new(name: 'Platform')
    ProductCodeId = Shapes::StringShape.new(name: 'ProductCodeId')
    ProductCodeList = Shapes::ListShape.new(name: 'ProductCodeList')
    ProductCodeListItem = Shapes::StructureShape.new(name: 'ProductCodeListItem')
    ProductCodeType = Shapes::StringShape.new(name: 'ProductCodeType')
    PutComponentPolicyRequest = Shapes::StructureShape.new(name: 'PutComponentPolicyRequest')
    PutComponentPolicyResponse = Shapes::StructureShape.new(name: 'PutComponentPolicyResponse')
    PutContainerRecipePolicyRequest = Shapes::StructureShape.new(name: 'PutContainerRecipePolicyRequest')
    PutContainerRecipePolicyResponse = Shapes::StructureShape.new(name: 'PutContainerRecipePolicyResponse')
    PutImagePolicyRequest = Shapes::StructureShape.new(name: 'PutImagePolicyRequest')
    PutImagePolicyResponse = Shapes::StructureShape.new(name: 'PutImagePolicyResponse')
    PutImageRecipePolicyRequest = Shapes::StructureShape.new(name: 'PutImageRecipePolicyRequest')
    PutImageRecipePolicyResponse = Shapes::StructureShape.new(name: 'PutImageRecipePolicyResponse')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    Remediation = Shapes::StructureShape.new(name: 'Remediation')
    RemediationRecommendation = Shapes::StructureShape.new(name: 'RemediationRecommendation')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceDependencyException = Shapes::StructureShape.new(name: 'ResourceDependencyException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicyDocument = Shapes::StringShape.new(name: 'ResourcePolicyDocument')
    ResourceState = Shapes::StructureShape.new(name: 'ResourceState')
    ResourceStateUpdateExclusionRules = Shapes::StructureShape.new(name: 'ResourceStateUpdateExclusionRules')
    ResourceStateUpdateIncludeResources = Shapes::StructureShape.new(name: 'ResourceStateUpdateIncludeResources')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    ResourceTagMap = Shapes::MapShape.new(name: 'ResourceTagMap')
    RestrictedInteger = Shapes::IntegerShape.new(name: 'RestrictedInteger')
    RoleNameOrArn = Shapes::StringShape.new(name: 'RoleNameOrArn')
    S3ExportConfiguration = Shapes::StructureShape.new(name: 'S3ExportConfiguration')
    S3Logs = Shapes::StructureShape.new(name: 'S3Logs')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    SendWorkflowStepActionRequest = Shapes::StructureShape.new(name: 'SendWorkflowStepActionRequest')
    SendWorkflowStepActionResponse = Shapes::StructureShape.new(name: 'SendWorkflowStepActionResponse')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SeverityCountNumber = Shapes::IntegerShape.new(name: 'SeverityCountNumber')
    SeverityCounts = Shapes::StructureShape.new(name: 'SeverityCounts')
    SnsTopicArn = Shapes::StringShape.new(name: 'SnsTopicArn')
    SourceLayerHash = Shapes::StringShape.new(name: 'SourceLayerHash')
    SsmParameterConfiguration = Shapes::StructureShape.new(name: 'SsmParameterConfiguration')
    SsmParameterConfigurationList = Shapes::ListShape.new(name: 'SsmParameterConfigurationList')
    SsmParameterDataType = Shapes::StringShape.new(name: 'SsmParameterDataType')
    SsmParameterName = Shapes::StringShape.new(name: 'SsmParameterName')
    StartImagePipelineExecutionRequest = Shapes::StructureShape.new(name: 'StartImagePipelineExecutionRequest')
    StartImagePipelineExecutionResponse = Shapes::StructureShape.new(name: 'StartImagePipelineExecutionResponse')
    StartResourceStateUpdateRequest = Shapes::StructureShape.new(name: 'StartResourceStateUpdateRequest')
    StartResourceStateUpdateResponse = Shapes::StructureShape.new(name: 'StartResourceStateUpdateResponse')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SystemsManagerAgent = Shapes::StructureShape.new(name: 'SystemsManagerAgent')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetContainerRepository = Shapes::StructureShape.new(name: 'TargetContainerRepository')
    TargetResourceCount = Shapes::IntegerShape.new(name: 'TargetResourceCount')
    TenancyType = Shapes::StringShape.new(name: 'TenancyType')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDistributionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateDistributionConfigurationRequest')
    UpdateDistributionConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateDistributionConfigurationResponse')
    UpdateImagePipelineRequest = Shapes::StructureShape.new(name: 'UpdateImagePipelineRequest')
    UpdateImagePipelineResponse = Shapes::StructureShape.new(name: 'UpdateImagePipelineResponse')
    UpdateInfrastructureConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateInfrastructureConfigurationRequest')
    UpdateInfrastructureConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateInfrastructureConfigurationResponse')
    UpdateLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'UpdateLifecyclePolicyRequest')
    UpdateLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'UpdateLifecyclePolicyResponse')
    Uri = Shapes::StringShape.new(name: 'Uri')
    UserDataOverride = Shapes::StringShape.new(name: 'UserDataOverride')
    VersionNumber = Shapes::StringShape.new(name: 'VersionNumber')
    VulnerabilityId = Shapes::StringShape.new(name: 'VulnerabilityId')
    VulnerabilityIdAggregation = Shapes::StructureShape.new(name: 'VulnerabilityIdAggregation')
    VulnerabilityIdList = Shapes::ListShape.new(name: 'VulnerabilityIdList')
    VulnerablePackage = Shapes::StructureShape.new(name: 'VulnerablePackage')
    VulnerablePackageList = Shapes::ListShape.new(name: 'VulnerablePackageList')
    Workflow = Shapes::StructureShape.new(name: 'Workflow')
    WorkflowBuildVersionArn = Shapes::StringShape.new(name: 'WorkflowBuildVersionArn')
    WorkflowConfiguration = Shapes::StructureShape.new(name: 'WorkflowConfiguration')
    WorkflowConfigurationList = Shapes::ListShape.new(name: 'WorkflowConfigurationList')
    WorkflowData = Shapes::StringShape.new(name: 'WorkflowData')
    WorkflowExecutionId = Shapes::StringShape.new(name: 'WorkflowExecutionId')
    WorkflowExecutionMessage = Shapes::StringShape.new(name: 'WorkflowExecutionMessage')
    WorkflowExecutionMetadata = Shapes::StructureShape.new(name: 'WorkflowExecutionMetadata')
    WorkflowExecutionStatus = Shapes::StringShape.new(name: 'WorkflowExecutionStatus')
    WorkflowExecutionsList = Shapes::ListShape.new(name: 'WorkflowExecutionsList')
    WorkflowNameArn = Shapes::StringShape.new(name: 'WorkflowNameArn')
    WorkflowParameter = Shapes::StructureShape.new(name: 'WorkflowParameter')
    WorkflowParameterDescription = Shapes::StringShape.new(name: 'WorkflowParameterDescription')
    WorkflowParameterDetail = Shapes::StructureShape.new(name: 'WorkflowParameterDetail')
    WorkflowParameterDetailList = Shapes::ListShape.new(name: 'WorkflowParameterDetailList')
    WorkflowParameterList = Shapes::ListShape.new(name: 'WorkflowParameterList')
    WorkflowParameterName = Shapes::StringShape.new(name: 'WorkflowParameterName')
    WorkflowParameterType = Shapes::StringShape.new(name: 'WorkflowParameterType')
    WorkflowParameterValue = Shapes::StringShape.new(name: 'WorkflowParameterValue')
    WorkflowParameterValueList = Shapes::ListShape.new(name: 'WorkflowParameterValueList')
    WorkflowState = Shapes::StructureShape.new(name: 'WorkflowState')
    WorkflowStatus = Shapes::StringShape.new(name: 'WorkflowStatus')
    WorkflowStepAction = Shapes::StringShape.new(name: 'WorkflowStepAction')
    WorkflowStepActionType = Shapes::StringShape.new(name: 'WorkflowStepActionType')
    WorkflowStepCount = Shapes::IntegerShape.new(name: 'WorkflowStepCount')
    WorkflowStepDescription = Shapes::StringShape.new(name: 'WorkflowStepDescription')
    WorkflowStepExecution = Shapes::StructureShape.new(name: 'WorkflowStepExecution')
    WorkflowStepExecutionId = Shapes::StringShape.new(name: 'WorkflowStepExecutionId')
    WorkflowStepExecutionList = Shapes::ListShape.new(name: 'WorkflowStepExecutionList')
    WorkflowStepExecutionRollbackStatus = Shapes::StringShape.new(name: 'WorkflowStepExecutionRollbackStatus')
    WorkflowStepExecutionStatus = Shapes::StringShape.new(name: 'WorkflowStepExecutionStatus')
    WorkflowStepExecutionsList = Shapes::ListShape.new(name: 'WorkflowStepExecutionsList')
    WorkflowStepInputs = Shapes::StringShape.new(name: 'WorkflowStepInputs')
    WorkflowStepMessage = Shapes::StringShape.new(name: 'WorkflowStepMessage')
    WorkflowStepMetadata = Shapes::StructureShape.new(name: 'WorkflowStepMetadata')
    WorkflowStepName = Shapes::StringShape.new(name: 'WorkflowStepName')
    WorkflowStepOutputs = Shapes::StringShape.new(name: 'WorkflowStepOutputs')
    WorkflowStepTimeoutSecondsInteger = Shapes::IntegerShape.new(name: 'WorkflowStepTimeoutSecondsInteger')
    WorkflowSummary = Shapes::StructureShape.new(name: 'WorkflowSummary')
    WorkflowSummaryList = Shapes::ListShape.new(name: 'WorkflowSummaryList')
    WorkflowType = Shapes::StringShape.new(name: 'WorkflowType')
    WorkflowVersion = Shapes::StructureShape.new(name: 'WorkflowVersion')
    WorkflowVersionArn = Shapes::StringShape.new(name: 'WorkflowVersionArn')
    WorkflowVersionArnOrBuildVersionArn = Shapes::StringShape.new(name: 'WorkflowVersionArnOrBuildVersionArn')
    WorkflowVersionList = Shapes::ListShape.new(name: 'WorkflowVersionList')
    WorkflowWildcardVersionArn = Shapes::StringShape.new(name: 'WorkflowWildcardVersionArn')

    AccountAggregation.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "accountId"))
    AccountAggregation.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    AccountAggregation.struct_class = Types::AccountAggregation

    AccountList.member = Shapes::ShapeRef.new(shape: AccountId)

    AdditionalInstanceConfiguration.add_member(:systems_manager_agent, Shapes::ShapeRef.new(shape: SystemsManagerAgent, location_name: "systemsManagerAgent"))
    AdditionalInstanceConfiguration.add_member(:user_data_override, Shapes::ShapeRef.new(shape: UserDataOverride, location_name: "userDataOverride"))
    AdditionalInstanceConfiguration.struct_class = Types::AdditionalInstanceConfiguration

    Ami.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "region"))
    Ami.add_member(:image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "image"))
    Ami.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    Ami.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    Ami.add_member(:state, Shapes::ShapeRef.new(shape: ImageState, location_name: "state"))
    Ami.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "accountId"))
    Ami.struct_class = Types::Ami

    AmiDistributionConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: AmiNameString, location_name: "name"))
    AmiDistributionConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    AmiDistributionConfiguration.add_member(:target_account_ids, Shapes::ShapeRef.new(shape: AccountList, location_name: "targetAccountIds"))
    AmiDistributionConfiguration.add_member(:ami_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "amiTags"))
    AmiDistributionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    AmiDistributionConfiguration.add_member(:launch_permission, Shapes::ShapeRef.new(shape: LaunchPermissionConfiguration, location_name: "launchPermission"))
    AmiDistributionConfiguration.struct_class = Types::AmiDistributionConfiguration

    AmiList.member = Shapes::ShapeRef.new(shape: Ami)

    AutoDisablePolicy.add_member(:failure_count, Shapes::ShapeRef.new(shape: AutoDisableFailureCount, required: true, location_name: "failureCount"))
    AutoDisablePolicy.struct_class = Types::AutoDisablePolicy

    CallRateLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    CallRateLimitExceededException.struct_class = Types::CallRateLimitExceededException

    CancelImageCreationRequest.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location_name: "imageBuildVersionArn"))
    CancelImageCreationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CancelImageCreationRequest.struct_class = Types::CancelImageCreationRequest

    CancelImageCreationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CancelImageCreationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CancelImageCreationResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    CancelImageCreationResponse.struct_class = Types::CancelImageCreationResponse

    CancelLifecycleExecutionRequest.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, required: true, location_name: "lifecycleExecutionId"))
    CancelLifecycleExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CancelLifecycleExecutionRequest.struct_class = Types::CancelLifecycleExecutionRequest

    CancelLifecycleExecutionResponse.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    CancelLifecycleExecutionResponse.struct_class = Types::CancelLifecycleExecutionResponse

    ClientException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ClientException.struct_class = Types::ClientException

    Component.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    Component.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Component.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    Component.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    Component.add_member(:change_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "changeDescription"))
    Component.add_member(:type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "type"))
    Component.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    Component.add_member(:supported_os_versions, Shapes::ShapeRef.new(shape: OsVersionList, location_name: "supportedOsVersions"))
    Component.add_member(:state, Shapes::ShapeRef.new(shape: ComponentState, location_name: "state"))
    Component.add_member(:parameters, Shapes::ShapeRef.new(shape: ComponentParameterDetailList, location_name: "parameters"))
    Component.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    Component.add_member(:data, Shapes::ShapeRef.new(shape: ComponentData, location_name: "data"))
    Component.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    Component.add_member(:encrypted, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "encrypted"))
    Component.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    Component.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Component.add_member(:publisher, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "publisher"))
    Component.add_member(:obfuscate, Shapes::ShapeRef.new(shape: Boolean, location_name: "obfuscate"))
    Component.add_member(:product_codes, Shapes::ShapeRef.new(shape: ProductCodeList, location_name: "productCodes"))
    Component.struct_class = Types::Component

    ComponentConfiguration.add_member(:component_arn, Shapes::ShapeRef.new(shape: ComponentVersionArnOrBuildVersionArn, required: true, location_name: "componentArn"))
    ComponentConfiguration.add_member(:parameters, Shapes::ShapeRef.new(shape: ComponentParameterList, location_name: "parameters"))
    ComponentConfiguration.struct_class = Types::ComponentConfiguration

    ComponentConfigurationList.member = Shapes::ShapeRef.new(shape: ComponentConfiguration)

    ComponentParameter.add_member(:name, Shapes::ShapeRef.new(shape: ComponentParameterName, required: true, location_name: "name"))
    ComponentParameter.add_member(:value, Shapes::ShapeRef.new(shape: ComponentParameterValueList, required: true, location_name: "value"))
    ComponentParameter.struct_class = Types::ComponentParameter

    ComponentParameterDetail.add_member(:name, Shapes::ShapeRef.new(shape: ComponentParameterName, required: true, location_name: "name"))
    ComponentParameterDetail.add_member(:type, Shapes::ShapeRef.new(shape: ComponentParameterType, required: true, location_name: "type"))
    ComponentParameterDetail.add_member(:default_value, Shapes::ShapeRef.new(shape: ComponentParameterValueList, location_name: "defaultValue"))
    ComponentParameterDetail.add_member(:description, Shapes::ShapeRef.new(shape: ComponentParameterDescription, location_name: "description"))
    ComponentParameterDetail.struct_class = Types::ComponentParameterDetail

    ComponentParameterDetailList.member = Shapes::ShapeRef.new(shape: ComponentParameterDetail)

    ComponentParameterList.member = Shapes::ShapeRef.new(shape: ComponentParameter)

    ComponentParameterValueList.member = Shapes::ShapeRef.new(shape: ComponentParameterValue)

    ComponentState.add_member(:status, Shapes::ShapeRef.new(shape: ComponentStatus, location_name: "status"))
    ComponentState.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    ComponentState.struct_class = Types::ComponentState

    ComponentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ComponentSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ComponentSummary.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ComponentSummary.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ComponentSummary.add_member(:supported_os_versions, Shapes::ShapeRef.new(shape: OsVersionList, location_name: "supportedOsVersions"))
    ComponentSummary.add_member(:state, Shapes::ShapeRef.new(shape: ComponentState, location_name: "state"))
    ComponentSummary.add_member(:type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "type"))
    ComponentSummary.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ComponentSummary.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ComponentSummary.add_member(:change_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "changeDescription"))
    ComponentSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ComponentSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ComponentSummary.add_member(:publisher, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "publisher"))
    ComponentSummary.add_member(:obfuscate, Shapes::ShapeRef.new(shape: Boolean, location_name: "obfuscate"))
    ComponentSummary.struct_class = Types::ComponentSummary

    ComponentSummaryList.member = Shapes::ShapeRef.new(shape: ComponentSummary)

    ComponentVersion.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ComponentVersion.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ComponentVersion.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ComponentVersion.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ComponentVersion.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ComponentVersion.add_member(:supported_os_versions, Shapes::ShapeRef.new(shape: OsVersionList, location_name: "supportedOsVersions"))
    ComponentVersion.add_member(:type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "type"))
    ComponentVersion.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ComponentVersion.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ComponentVersion.add_member(:status, Shapes::ShapeRef.new(shape: ComponentStatus, location_name: "status"))
    ComponentVersion.add_member(:product_codes, Shapes::ShapeRef.new(shape: ProductCodeList, location_name: "productCodes"))
    ComponentVersion.struct_class = Types::ComponentVersion

    ComponentVersionList.member = Shapes::ShapeRef.new(shape: ComponentVersion)

    Container.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "region"))
    Container.add_member(:image_uris, Shapes::ShapeRef.new(shape: StringList, location_name: "imageUris"))
    Container.struct_class = Types::Container

    ContainerDistributionConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ContainerDistributionConfiguration.add_member(:container_tags, Shapes::ShapeRef.new(shape: StringList, location_name: "containerTags"))
    ContainerDistributionConfiguration.add_member(:target_repository, Shapes::ShapeRef.new(shape: TargetContainerRepository, required: true, location_name: "targetRepository"))
    ContainerDistributionConfiguration.struct_class = Types::ContainerDistributionConfiguration

    ContainerList.member = Shapes::ShapeRef.new(shape: Container)

    ContainerRecipe.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ContainerRecipe.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, location_name: "containerType"))
    ContainerRecipe.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ContainerRecipe.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ContainerRecipe.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ContainerRecipe.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ContainerRecipe.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ContainerRecipe.add_member(:components, Shapes::ShapeRef.new(shape: ComponentConfigurationList, location_name: "components"))
    ContainerRecipe.add_member(:instance_configuration, Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: "instanceConfiguration"))
    ContainerRecipe.add_member(:dockerfile_template_data, Shapes::ShapeRef.new(shape: DockerFileTemplate, location_name: "dockerfileTemplateData"))
    ContainerRecipe.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    ContainerRecipe.add_member(:encrypted, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "encrypted"))
    ContainerRecipe.add_member(:parent_image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "parentImage"))
    ContainerRecipe.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ContainerRecipe.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ContainerRecipe.add_member(:working_directory, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "workingDirectory"))
    ContainerRecipe.add_member(:target_repository, Shapes::ShapeRef.new(shape: TargetContainerRepository, location_name: "targetRepository"))
    ContainerRecipe.struct_class = Types::ContainerRecipe

    ContainerRecipeSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ContainerRecipeSummary.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, location_name: "containerType"))
    ContainerRecipeSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ContainerRecipeSummary.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ContainerRecipeSummary.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ContainerRecipeSummary.add_member(:parent_image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "parentImage"))
    ContainerRecipeSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ContainerRecipeSummary.add_member(:instance_image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "instanceImage"))
    ContainerRecipeSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ContainerRecipeSummary.struct_class = Types::ContainerRecipeSummary

    ContainerRecipeSummaryList.member = Shapes::ShapeRef.new(shape: ContainerRecipeSummary)

    CreateComponentRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateComponentRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "semanticVersion"))
    CreateComponentRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateComponentRequest.add_member(:change_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "changeDescription"))
    CreateComponentRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "platform"))
    CreateComponentRequest.add_member(:supported_os_versions, Shapes::ShapeRef.new(shape: OsVersionList, location_name: "supportedOsVersions"))
    CreateComponentRequest.add_member(:data, Shapes::ShapeRef.new(shape: InlineComponentData, location_name: "data"))
    CreateComponentRequest.add_member(:uri, Shapes::ShapeRef.new(shape: Uri, location_name: "uri"))
    CreateComponentRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    CreateComponentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateComponentRequest.struct_class = Types::CreateComponentRequest

    CreateComponentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateComponentResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateComponentResponse.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    CreateComponentResponse.struct_class = Types::CreateComponentResponse

    CreateContainerRecipeRequest.add_member(:container_type, Shapes::ShapeRef.new(shape: ContainerType, required: true, location_name: "containerType"))
    CreateContainerRecipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateContainerRecipeRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateContainerRecipeRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "semanticVersion"))
    CreateContainerRecipeRequest.add_member(:components, Shapes::ShapeRef.new(shape: ComponentConfigurationList, required: true, location_name: "components"))
    CreateContainerRecipeRequest.add_member(:instance_configuration, Shapes::ShapeRef.new(shape: InstanceConfiguration, location_name: "instanceConfiguration"))
    CreateContainerRecipeRequest.add_member(:dockerfile_template_data, Shapes::ShapeRef.new(shape: InlineDockerFileTemplate, location_name: "dockerfileTemplateData"))
    CreateContainerRecipeRequest.add_member(:dockerfile_template_uri, Shapes::ShapeRef.new(shape: Uri, location_name: "dockerfileTemplateUri"))
    CreateContainerRecipeRequest.add_member(:platform_override, Shapes::ShapeRef.new(shape: Platform, location_name: "platformOverride"))
    CreateContainerRecipeRequest.add_member(:image_os_version_override, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "imageOsVersionOverride"))
    CreateContainerRecipeRequest.add_member(:parent_image, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "parentImage"))
    CreateContainerRecipeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateContainerRecipeRequest.add_member(:working_directory, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "workingDirectory"))
    CreateContainerRecipeRequest.add_member(:target_repository, Shapes::ShapeRef.new(shape: TargetContainerRepository, required: true, location_name: "targetRepository"))
    CreateContainerRecipeRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    CreateContainerRecipeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateContainerRecipeRequest.struct_class = Types::CreateContainerRecipeRequest

    CreateContainerRecipeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateContainerRecipeResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateContainerRecipeResponse.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, location_name: "containerRecipeArn"))
    CreateContainerRecipeResponse.struct_class = Types::CreateContainerRecipeResponse

    CreateDistributionConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateDistributionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateDistributionConfigurationRequest.add_member(:distributions, Shapes::ShapeRef.new(shape: DistributionList, required: true, location_name: "distributions"))
    CreateDistributionConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDistributionConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateDistributionConfigurationRequest.struct_class = Types::CreateDistributionConfigurationRequest

    CreateDistributionConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateDistributionConfigurationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateDistributionConfigurationResponse.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateDistributionConfigurationResponse.struct_class = Types::CreateDistributionConfigurationResponse

    CreateImagePipelineRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateImagePipelineRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateImagePipelineRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, location_name: "imageRecipeArn"))
    CreateImagePipelineRequest.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, location_name: "containerRecipeArn"))
    CreateImagePipelineRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    CreateImagePipelineRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateImagePipelineRequest.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    CreateImagePipelineRequest.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    CreateImagePipelineRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    CreateImagePipelineRequest.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "status"))
    CreateImagePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateImagePipelineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateImagePipelineRequest.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    CreateImagePipelineRequest.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowConfigurationList, location_name: "workflows"))
    CreateImagePipelineRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    CreateImagePipelineRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: PipelineLoggingConfiguration, location_name: "loggingConfiguration"))
    CreateImagePipelineRequest.struct_class = Types::CreateImagePipelineRequest

    CreateImagePipelineResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateImagePipelineResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateImagePipelineResponse.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, location_name: "imagePipelineArn"))
    CreateImagePipelineResponse.struct_class = Types::CreateImagePipelineResponse

    CreateImageRecipeRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateImageRecipeRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateImageRecipeRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "semanticVersion"))
    CreateImageRecipeRequest.add_member(:components, Shapes::ShapeRef.new(shape: ComponentConfigurationList, required: true, location_name: "components"))
    CreateImageRecipeRequest.add_member(:parent_image, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "parentImage"))
    CreateImageRecipeRequest.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: InstanceBlockDeviceMappings, location_name: "blockDeviceMappings"))
    CreateImageRecipeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateImageRecipeRequest.add_member(:working_directory, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "workingDirectory"))
    CreateImageRecipeRequest.add_member(:additional_instance_configuration, Shapes::ShapeRef.new(shape: AdditionalInstanceConfiguration, location_name: "additionalInstanceConfiguration"))
    CreateImageRecipeRequest.add_member(:ami_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "amiTags"))
    CreateImageRecipeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateImageRecipeRequest.struct_class = Types::CreateImageRecipeRequest

    CreateImageRecipeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateImageRecipeResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateImageRecipeResponse.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, location_name: "imageRecipeArn"))
    CreateImageRecipeResponse.struct_class = Types::CreateImageRecipeResponse

    CreateImageRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, location_name: "imageRecipeArn"))
    CreateImageRequest.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, location_name: "containerRecipeArn"))
    CreateImageRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateImageRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    CreateImageRequest.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    CreateImageRequest.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    CreateImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateImageRequest.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    CreateImageRequest.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowConfigurationList, location_name: "workflows"))
    CreateImageRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    CreateImageRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    CreateImageRequest.struct_class = Types::CreateImageRequest

    CreateImageResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateImageResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateImageResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    CreateImageResponse.struct_class = Types::CreateImageResponse

    CreateInfrastructureConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateInfrastructureConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: "instanceTypes"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: InstanceProfileNameType, required: true, location_name: "instanceProfileName"))
    CreateInfrastructureConfigurationRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    CreateInfrastructureConfigurationRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subnetId"))
    CreateInfrastructureConfigurationRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateInfrastructureConfigurationRequest.add_member(:key_pair, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyPair"))
    CreateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_failure, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    CreateInfrastructureConfigurationRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "snsTopicArn"))
    CreateInfrastructureConfigurationRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagMap, location_name: "resourceTags"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_metadata_options, Shapes::ShapeRef.new(shape: InstanceMetadataOptions, location_name: "instanceMetadataOptions"))
    CreateInfrastructureConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateInfrastructureConfigurationRequest.add_member(:placement, Shapes::ShapeRef.new(shape: Placement, location_name: "placement"))
    CreateInfrastructureConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateInfrastructureConfigurationRequest.struct_class = Types::CreateInfrastructureConfigurationRequest

    CreateInfrastructureConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateInfrastructureConfigurationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn"))
    CreateInfrastructureConfigurationResponse.struct_class = Types::CreateInfrastructureConfigurationResponse

    CreateLifecyclePolicyRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateLifecyclePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateLifecyclePolicyRequest.add_member(:status, Shapes::ShapeRef.new(shape: LifecyclePolicyStatus, location_name: "status"))
    CreateLifecyclePolicyRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, required: true, location_name: "executionRole"))
    CreateLifecyclePolicyRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: LifecyclePolicyResourceType, required: true, location_name: "resourceType"))
    CreateLifecyclePolicyRequest.add_member(:policy_details, Shapes::ShapeRef.new(shape: LifecyclePolicyDetails, required: true, location_name: "policyDetails"))
    CreateLifecyclePolicyRequest.add_member(:resource_selection, Shapes::ShapeRef.new(shape: LifecyclePolicyResourceSelection, required: true, location_name: "resourceSelection"))
    CreateLifecyclePolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateLifecyclePolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateLifecyclePolicyRequest.struct_class = Types::CreateLifecyclePolicyRequest

    CreateLifecyclePolicyResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, location_name: "lifecyclePolicyArn"))
    CreateLifecyclePolicyResponse.struct_class = Types::CreateLifecyclePolicyResponse

    CreateWorkflowRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateWorkflowRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "semanticVersion"))
    CreateWorkflowRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateWorkflowRequest.add_member(:change_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "changeDescription"))
    CreateWorkflowRequest.add_member(:data, Shapes::ShapeRef.new(shape: InlineWorkflowData, location_name: "data"))
    CreateWorkflowRequest.add_member(:uri, Shapes::ShapeRef.new(shape: Uri, location_name: "uri"))
    CreateWorkflowRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    CreateWorkflowRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateWorkflowRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    CreateWorkflowRequest.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, required: true, location_name: "type"))
    CreateWorkflowRequest.struct_class = Types::CreateWorkflowRequest

    CreateWorkflowResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateWorkflowResponse.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    CreateWorkflowResponse.struct_class = Types::CreateWorkflowResponse

    CvssScore.add_member(:base_score, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "baseScore"))
    CvssScore.add_member(:scoring_vector, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scoringVector"))
    CvssScore.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "version"))
    CvssScore.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "source"))
    CvssScore.struct_class = Types::CvssScore

    CvssScoreAdjustment.add_member(:metric, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "metric"))
    CvssScoreAdjustment.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    CvssScoreAdjustment.struct_class = Types::CvssScoreAdjustment

    CvssScoreAdjustmentList.member = Shapes::ShapeRef.new(shape: CvssScoreAdjustment)

    CvssScoreDetails.add_member(:score_source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scoreSource"))
    CvssScoreDetails.add_member(:cvss_source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "cvssSource"))
    CvssScoreDetails.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "version"))
    CvssScoreDetails.add_member(:score, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "score"))
    CvssScoreDetails.add_member(:scoring_vector, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scoringVector"))
    CvssScoreDetails.add_member(:adjustments, Shapes::ShapeRef.new(shape: CvssScoreAdjustmentList, location_name: "adjustments"))
    CvssScoreDetails.struct_class = Types::CvssScoreDetails

    CvssScoreList.member = Shapes::ShapeRef.new(shape: CvssScore)

    DeleteComponentRequest.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, required: true, location: "querystring", location_name: "componentBuildVersionArn"))
    DeleteComponentRequest.struct_class = Types::DeleteComponentRequest

    DeleteComponentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    DeleteComponentResponse.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    DeleteComponentResponse.struct_class = Types::DeleteComponentResponse

    DeleteContainerRecipeRequest.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, required: true, location: "querystring", location_name: "containerRecipeArn"))
    DeleteContainerRecipeRequest.struct_class = Types::DeleteContainerRecipeRequest

    DeleteContainerRecipeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    DeleteContainerRecipeResponse.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, location_name: "containerRecipeArn"))
    DeleteContainerRecipeResponse.struct_class = Types::DeleteContainerRecipeResponse

    DeleteDistributionConfigurationRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, required: true, location: "querystring", location_name: "distributionConfigurationArn"))
    DeleteDistributionConfigurationRequest.struct_class = Types::DeleteDistributionConfigurationRequest

    DeleteDistributionConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    DeleteDistributionConfigurationResponse.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    DeleteDistributionConfigurationResponse.struct_class = Types::DeleteDistributionConfigurationResponse

    DeleteImagePipelineRequest.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, required: true, location: "querystring", location_name: "imagePipelineArn"))
    DeleteImagePipelineRequest.struct_class = Types::DeleteImagePipelineRequest

    DeleteImagePipelineResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    DeleteImagePipelineResponse.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, location_name: "imagePipelineArn"))
    DeleteImagePipelineResponse.struct_class = Types::DeleteImagePipelineResponse

    DeleteImageRecipeRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, required: true, location: "querystring", location_name: "imageRecipeArn"))
    DeleteImageRecipeRequest.struct_class = Types::DeleteImageRecipeRequest

    DeleteImageRecipeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    DeleteImageRecipeResponse.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, location_name: "imageRecipeArn"))
    DeleteImageRecipeResponse.struct_class = Types::DeleteImageRecipeResponse

    DeleteImageRequest.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location: "querystring", location_name: "imageBuildVersionArn"))
    DeleteImageRequest.struct_class = Types::DeleteImageRequest

    DeleteImageResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    DeleteImageResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    DeleteImageResponse.struct_class = Types::DeleteImageResponse

    DeleteInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location: "querystring", location_name: "infrastructureConfigurationArn"))
    DeleteInfrastructureConfigurationRequest.struct_class = Types::DeleteInfrastructureConfigurationRequest

    DeleteInfrastructureConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    DeleteInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn"))
    DeleteInfrastructureConfigurationResponse.struct_class = Types::DeleteInfrastructureConfigurationResponse

    DeleteLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, required: true, location: "querystring", location_name: "lifecyclePolicyArn"))
    DeleteLifecyclePolicyRequest.struct_class = Types::DeleteLifecyclePolicyRequest

    DeleteLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, location_name: "lifecyclePolicyArn"))
    DeleteLifecyclePolicyResponse.struct_class = Types::DeleteLifecyclePolicyResponse

    DeleteWorkflowRequest.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, required: true, location: "querystring", location_name: "workflowBuildVersionArn"))
    DeleteWorkflowRequest.struct_class = Types::DeleteWorkflowRequest

    DeleteWorkflowResponse.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    DeleteWorkflowResponse.struct_class = Types::DeleteWorkflowResponse

    Distribution.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "region"))
    Distribution.add_member(:ami_distribution_configuration, Shapes::ShapeRef.new(shape: AmiDistributionConfiguration, location_name: "amiDistributionConfiguration"))
    Distribution.add_member(:container_distribution_configuration, Shapes::ShapeRef.new(shape: ContainerDistributionConfiguration, location_name: "containerDistributionConfiguration"))
    Distribution.add_member(:license_configuration_arns, Shapes::ShapeRef.new(shape: LicenseConfigurationArnList, location_name: "licenseConfigurationArns"))
    Distribution.add_member(:launch_template_configurations, Shapes::ShapeRef.new(shape: LaunchTemplateConfigurationList, location_name: "launchTemplateConfigurations"))
    Distribution.add_member(:s3_export_configuration, Shapes::ShapeRef.new(shape: S3ExportConfiguration, location_name: "s3ExportConfiguration"))
    Distribution.add_member(:fast_launch_configurations, Shapes::ShapeRef.new(shape: FastLaunchConfigurationList, location_name: "fastLaunchConfigurations"))
    Distribution.add_member(:ssm_parameter_configurations, Shapes::ShapeRef.new(shape: SsmParameterConfigurationList, location_name: "ssmParameterConfigurations"))
    Distribution.struct_class = Types::Distribution

    DistributionConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    DistributionConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    DistributionConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    DistributionConfiguration.add_member(:distributions, Shapes::ShapeRef.new(shape: DistributionList, location_name: "distributions"))
    DistributionConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: DistributionTimeoutMinutes, required: true, location_name: "timeoutMinutes"))
    DistributionConfiguration.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    DistributionConfiguration.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateUpdated"))
    DistributionConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DistributionConfiguration.struct_class = Types::DistributionConfiguration

    DistributionConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    DistributionConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    DistributionConfigurationSummary.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    DistributionConfigurationSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    DistributionConfigurationSummary.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateUpdated"))
    DistributionConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DistributionConfigurationSummary.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    DistributionConfigurationSummary.struct_class = Types::DistributionConfigurationSummary

    DistributionConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: DistributionConfigurationSummary)

    DistributionList.member = Shapes::ShapeRef.new(shape: Distribution)

    EbsInstanceBlockDeviceSpecification.add_member(:encrypted, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "encrypted"))
    EbsInstanceBlockDeviceSpecification.add_member(:delete_on_termination, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "deleteOnTermination"))
    EbsInstanceBlockDeviceSpecification.add_member(:iops, Shapes::ShapeRef.new(shape: EbsIopsInteger, location_name: "iops"))
    EbsInstanceBlockDeviceSpecification.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    EbsInstanceBlockDeviceSpecification.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "snapshotId"))
    EbsInstanceBlockDeviceSpecification.add_member(:volume_size, Shapes::ShapeRef.new(shape: EbsVolumeSizeInteger, location_name: "volumeSize"))
    EbsInstanceBlockDeviceSpecification.add_member(:volume_type, Shapes::ShapeRef.new(shape: EbsVolumeType, location_name: "volumeType"))
    EbsInstanceBlockDeviceSpecification.add_member(:throughput, Shapes::ShapeRef.new(shape: EbsVolumeThroughput, location_name: "throughput"))
    EbsInstanceBlockDeviceSpecification.struct_class = Types::EbsInstanceBlockDeviceSpecification

    EcrConfiguration.add_member(:repository_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "repositoryName"))
    EcrConfiguration.add_member(:container_tags, Shapes::ShapeRef.new(shape: StringList, location_name: "containerTags"))
    EcrConfiguration.struct_class = Types::EcrConfiguration

    FastLaunchConfiguration.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "enabled"))
    FastLaunchConfiguration.add_member(:snapshot_configuration, Shapes::ShapeRef.new(shape: FastLaunchSnapshotConfiguration, location_name: "snapshotConfiguration"))
    FastLaunchConfiguration.add_member(:max_parallel_launches, Shapes::ShapeRef.new(shape: MaxParallelLaunches, location_name: "maxParallelLaunches"))
    FastLaunchConfiguration.add_member(:launch_template, Shapes::ShapeRef.new(shape: FastLaunchLaunchTemplateSpecification, location_name: "launchTemplate"))
    FastLaunchConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    FastLaunchConfiguration.struct_class = Types::FastLaunchConfiguration

    FastLaunchConfigurationList.member = Shapes::ShapeRef.new(shape: FastLaunchConfiguration)

    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: LaunchTemplateId, location_name: "launchTemplateId"))
    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "launchTemplateName"))
    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "launchTemplateVersion"))
    FastLaunchLaunchTemplateSpecification.struct_class = Types::FastLaunchLaunchTemplateSpecification

    FastLaunchSnapshotConfiguration.add_member(:target_resource_count, Shapes::ShapeRef.new(shape: TargetResourceCount, location_name: "targetResourceCount"))
    FastLaunchSnapshotConfiguration.struct_class = Types::FastLaunchSnapshotConfiguration

    Filter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    Filter.add_member(:values, Shapes::ShapeRef.new(shape: FilterValues, location_name: "values"))
    Filter.struct_class = Types::Filter

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetComponentPolicyRequest.add_member(:component_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, required: true, location: "querystring", location_name: "componentArn"))
    GetComponentPolicyRequest.struct_class = Types::GetComponentPolicyRequest

    GetComponentPolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetComponentPolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, location_name: "policy"))
    GetComponentPolicyResponse.struct_class = Types::GetComponentPolicyResponse

    GetComponentRequest.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentVersionArnOrBuildVersionArn, required: true, location: "querystring", location_name: "componentBuildVersionArn"))
    GetComponentRequest.struct_class = Types::GetComponentRequest

    GetComponentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetComponentResponse.add_member(:component, Shapes::ShapeRef.new(shape: Component, location_name: "component"))
    GetComponentResponse.struct_class = Types::GetComponentResponse

    GetContainerRecipePolicyRequest.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, required: true, location: "querystring", location_name: "containerRecipeArn"))
    GetContainerRecipePolicyRequest.struct_class = Types::GetContainerRecipePolicyRequest

    GetContainerRecipePolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetContainerRecipePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, location_name: "policy"))
    GetContainerRecipePolicyResponse.struct_class = Types::GetContainerRecipePolicyResponse

    GetContainerRecipeRequest.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, required: true, location: "querystring", location_name: "containerRecipeArn"))
    GetContainerRecipeRequest.struct_class = Types::GetContainerRecipeRequest

    GetContainerRecipeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetContainerRecipeResponse.add_member(:container_recipe, Shapes::ShapeRef.new(shape: ContainerRecipe, location_name: "containerRecipe"))
    GetContainerRecipeResponse.struct_class = Types::GetContainerRecipeResponse

    GetDistributionConfigurationRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, required: true, location: "querystring", location_name: "distributionConfigurationArn"))
    GetDistributionConfigurationRequest.struct_class = Types::GetDistributionConfigurationRequest

    GetDistributionConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetDistributionConfigurationResponse.add_member(:distribution_configuration, Shapes::ShapeRef.new(shape: DistributionConfiguration, location_name: "distributionConfiguration"))
    GetDistributionConfigurationResponse.struct_class = Types::GetDistributionConfigurationResponse

    GetImagePipelineRequest.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, required: true, location: "querystring", location_name: "imagePipelineArn"))
    GetImagePipelineRequest.struct_class = Types::GetImagePipelineRequest

    GetImagePipelineResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetImagePipelineResponse.add_member(:image_pipeline, Shapes::ShapeRef.new(shape: ImagePipeline, location_name: "imagePipeline"))
    GetImagePipelineResponse.struct_class = Types::GetImagePipelineResponse

    GetImagePolicyRequest.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location: "querystring", location_name: "imageArn"))
    GetImagePolicyRequest.struct_class = Types::GetImagePolicyRequest

    GetImagePolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetImagePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, location_name: "policy"))
    GetImagePolicyResponse.struct_class = Types::GetImagePolicyResponse

    GetImageRecipePolicyRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, required: true, location: "querystring", location_name: "imageRecipeArn"))
    GetImageRecipePolicyRequest.struct_class = Types::GetImageRecipePolicyRequest

    GetImageRecipePolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetImageRecipePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, location_name: "policy"))
    GetImageRecipePolicyResponse.struct_class = Types::GetImageRecipePolicyResponse

    GetImageRecipeRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, required: true, location: "querystring", location_name: "imageRecipeArn"))
    GetImageRecipeRequest.struct_class = Types::GetImageRecipeRequest

    GetImageRecipeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetImageRecipeResponse.add_member(:image_recipe, Shapes::ShapeRef.new(shape: ImageRecipe, location_name: "imageRecipe"))
    GetImageRecipeResponse.struct_class = Types::GetImageRecipeResponse

    GetImageRequest.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageVersionArnOrBuildVersionArn, required: true, location: "querystring", location_name: "imageBuildVersionArn"))
    GetImageRequest.struct_class = Types::GetImageRequest

    GetImageResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetImageResponse.add_member(:image, Shapes::ShapeRef.new(shape: Image, location_name: "image"))
    GetImageResponse.struct_class = Types::GetImageResponse

    GetInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location: "querystring", location_name: "infrastructureConfigurationArn"))
    GetInfrastructureConfigurationRequest.struct_class = Types::GetInfrastructureConfigurationRequest

    GetInfrastructureConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetInfrastructureConfigurationResponse.add_member(:infrastructure_configuration, Shapes::ShapeRef.new(shape: InfrastructureConfiguration, location_name: "infrastructureConfiguration"))
    GetInfrastructureConfigurationResponse.struct_class = Types::GetInfrastructureConfigurationResponse

    GetLifecycleExecutionRequest.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, required: true, location: "querystring", location_name: "lifecycleExecutionId"))
    GetLifecycleExecutionRequest.struct_class = Types::GetLifecycleExecutionRequest

    GetLifecycleExecutionResponse.add_member(:lifecycle_execution, Shapes::ShapeRef.new(shape: LifecycleExecution, location_name: "lifecycleExecution"))
    GetLifecycleExecutionResponse.struct_class = Types::GetLifecycleExecutionResponse

    GetLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, required: true, location: "querystring", location_name: "lifecyclePolicyArn"))
    GetLifecyclePolicyRequest.struct_class = Types::GetLifecyclePolicyRequest

    GetLifecyclePolicyResponse.add_member(:lifecycle_policy, Shapes::ShapeRef.new(shape: LifecyclePolicy, location_name: "lifecyclePolicy"))
    GetLifecyclePolicyResponse.struct_class = Types::GetLifecyclePolicyResponse

    GetMarketplaceResourceRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: MarketplaceResourceType, required: true, location_name: "resourceType"))
    GetMarketplaceResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, required: true, location_name: "resourceArn"))
    GetMarketplaceResourceRequest.add_member(:resource_location, Shapes::ShapeRef.new(shape: MarketplaceResourceLocation, location_name: "resourceLocation"))
    GetMarketplaceResourceRequest.struct_class = Types::GetMarketplaceResourceRequest

    GetMarketplaceResourceResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "resourceArn"))
    GetMarketplaceResourceResponse.add_member(:url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "url"))
    GetMarketplaceResourceResponse.add_member(:data, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "data"))
    GetMarketplaceResourceResponse.struct_class = Types::GetMarketplaceResourceResponse

    GetWorkflowExecutionRequest.add_member(:workflow_execution_id, Shapes::ShapeRef.new(shape: WorkflowExecutionId, required: true, location: "querystring", location_name: "workflowExecutionId"))
    GetWorkflowExecutionRequest.struct_class = Types::GetWorkflowExecutionRequest

    GetWorkflowExecutionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetWorkflowExecutionResponse.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    GetWorkflowExecutionResponse.add_member(:workflow_execution_id, Shapes::ShapeRef.new(shape: WorkflowExecutionId, location_name: "workflowExecutionId"))
    GetWorkflowExecutionResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    GetWorkflowExecutionResponse.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    GetWorkflowExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowExecutionStatus, location_name: "status"))
    GetWorkflowExecutionResponse.add_member(:message, Shapes::ShapeRef.new(shape: WorkflowExecutionMessage, location_name: "message"))
    GetWorkflowExecutionResponse.add_member(:total_step_count, Shapes::ShapeRef.new(shape: WorkflowStepCount, location_name: "totalStepCount"))
    GetWorkflowExecutionResponse.add_member(:total_steps_succeeded, Shapes::ShapeRef.new(shape: WorkflowStepCount, location_name: "totalStepsSucceeded"))
    GetWorkflowExecutionResponse.add_member(:total_steps_failed, Shapes::ShapeRef.new(shape: WorkflowStepCount, location_name: "totalStepsFailed"))
    GetWorkflowExecutionResponse.add_member(:total_steps_skipped, Shapes::ShapeRef.new(shape: WorkflowStepCount, location_name: "totalStepsSkipped"))
    GetWorkflowExecutionResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "startTime"))
    GetWorkflowExecutionResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "endTime"))
    GetWorkflowExecutionResponse.add_member(:parallel_group, Shapes::ShapeRef.new(shape: ParallelGroup, location_name: "parallelGroup"))
    GetWorkflowExecutionResponse.struct_class = Types::GetWorkflowExecutionResponse

    GetWorkflowRequest.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowVersionArnOrBuildVersionArn, required: true, location: "querystring", location_name: "workflowBuildVersionArn"))
    GetWorkflowRequest.struct_class = Types::GetWorkflowRequest

    GetWorkflowResponse.add_member(:workflow, Shapes::ShapeRef.new(shape: Workflow, location_name: "workflow"))
    GetWorkflowResponse.struct_class = Types::GetWorkflowResponse

    GetWorkflowStepExecutionRequest.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: WorkflowStepExecutionId, required: true, location: "querystring", location_name: "stepExecutionId"))
    GetWorkflowStepExecutionRequest.struct_class = Types::GetWorkflowStepExecutionRequest

    GetWorkflowStepExecutionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    GetWorkflowStepExecutionResponse.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: WorkflowStepExecutionId, location_name: "stepExecutionId"))
    GetWorkflowStepExecutionResponse.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    GetWorkflowStepExecutionResponse.add_member(:workflow_execution_id, Shapes::ShapeRef.new(shape: WorkflowExecutionId, location_name: "workflowExecutionId"))
    GetWorkflowStepExecutionResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    GetWorkflowStepExecutionResponse.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: "name"))
    GetWorkflowStepExecutionResponse.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowStepDescription, location_name: "description"))
    GetWorkflowStepExecutionResponse.add_member(:action, Shapes::ShapeRef.new(shape: WorkflowStepAction, location_name: "action"))
    GetWorkflowStepExecutionResponse.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStepExecutionStatus, location_name: "status"))
    GetWorkflowStepExecutionResponse.add_member(:rollback_status, Shapes::ShapeRef.new(shape: WorkflowStepExecutionRollbackStatus, location_name: "rollbackStatus"))
    GetWorkflowStepExecutionResponse.add_member(:message, Shapes::ShapeRef.new(shape: WorkflowStepMessage, location_name: "message"))
    GetWorkflowStepExecutionResponse.add_member(:inputs, Shapes::ShapeRef.new(shape: WorkflowStepInputs, location_name: "inputs"))
    GetWorkflowStepExecutionResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: WorkflowStepOutputs, location_name: "outputs"))
    GetWorkflowStepExecutionResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "startTime"))
    GetWorkflowStepExecutionResponse.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "endTime"))
    GetWorkflowStepExecutionResponse.add_member(:on_failure, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "onFailure"))
    GetWorkflowStepExecutionResponse.add_member(:timeout_seconds, Shapes::ShapeRef.new(shape: WorkflowStepTimeoutSecondsInteger, location_name: "timeoutSeconds"))
    GetWorkflowStepExecutionResponse.struct_class = Types::GetWorkflowStepExecutionResponse

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    Image.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    Image.add_member(:type, Shapes::ShapeRef.new(shape: ImageType, location_name: "type"))
    Image.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Image.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    Image.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    Image.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    Image.add_member(:os_version, Shapes::ShapeRef.new(shape: OsVersion, location_name: "osVersion"))
    Image.add_member(:state, Shapes::ShapeRef.new(shape: ImageState, location_name: "state"))
    Image.add_member(:image_recipe, Shapes::ShapeRef.new(shape: ImageRecipe, location_name: "imageRecipe"))
    Image.add_member(:container_recipe, Shapes::ShapeRef.new(shape: ContainerRecipe, location_name: "containerRecipe"))
    Image.add_member(:source_pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "sourcePipelineName"))
    Image.add_member(:source_pipeline_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "sourcePipelineArn"))
    Image.add_member(:infrastructure_configuration, Shapes::ShapeRef.new(shape: InfrastructureConfiguration, location_name: "infrastructureConfiguration"))
    Image.add_member(:distribution_configuration, Shapes::ShapeRef.new(shape: DistributionConfiguration, location_name: "distributionConfiguration"))
    Image.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    Image.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    Image.add_member(:output_resources, Shapes::ShapeRef.new(shape: OutputResources, location_name: "outputResources"))
    Image.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Image.add_member(:build_type, Shapes::ShapeRef.new(shape: BuildType, location_name: "buildType"))
    Image.add_member(:image_source, Shapes::ShapeRef.new(shape: ImageSource, location_name: "imageSource"))
    Image.add_member(:scan_state, Shapes::ShapeRef.new(shape: ImageScanState, location_name: "scanState"))
    Image.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    Image.add_member(:deprecation_time, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "deprecationTime"))
    Image.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    Image.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    Image.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowConfigurationList, location_name: "workflows"))
    Image.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    Image.struct_class = Types::Image

    ImageAggregation.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ImageAggregation.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    ImageAggregation.struct_class = Types::ImageAggregation

    ImageLoggingConfiguration.add_member(:log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "logGroupName"))
    ImageLoggingConfiguration.struct_class = Types::ImageLoggingConfiguration

    ImagePackage.add_member(:package_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "packageName"))
    ImagePackage.add_member(:package_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "packageVersion"))
    ImagePackage.struct_class = Types::ImagePackage

    ImagePackageList.member = Shapes::ShapeRef.new(shape: ImagePackage)

    ImagePipeline.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ImagePipeline.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ImagePipeline.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ImagePipeline.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ImagePipeline.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    ImagePipeline.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "imageRecipeArn"))
    ImagePipeline.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "containerRecipeArn"))
    ImagePipeline.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "infrastructureConfigurationArn"))
    ImagePipeline.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "distributionConfigurationArn"))
    ImagePipeline.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    ImagePipeline.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    ImagePipeline.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "status"))
    ImagePipeline.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ImagePipeline.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateUpdated"))
    ImagePipeline.add_member(:date_last_run, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateLastRun"))
    ImagePipeline.add_member(:last_run_status, Shapes::ShapeRef.new(shape: ImageStatus, location_name: "lastRunStatus"))
    ImagePipeline.add_member(:date_next_run, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateNextRun"))
    ImagePipeline.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImagePipeline.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    ImagePipeline.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    ImagePipeline.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowConfigurationList, location_name: "workflows"))
    ImagePipeline.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: PipelineLoggingConfiguration, location_name: "loggingConfiguration"))
    ImagePipeline.add_member(:consecutive_failures, Shapes::ShapeRef.new(shape: ConsecutiveFailures, location_name: "consecutiveFailures"))
    ImagePipeline.struct_class = Types::ImagePipeline

    ImagePipelineAggregation.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, location_name: "imagePipelineArn"))
    ImagePipelineAggregation.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    ImagePipelineAggregation.struct_class = Types::ImagePipelineAggregation

    ImagePipelineList.member = Shapes::ShapeRef.new(shape: ImagePipeline)

    ImageRecipe.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ImageRecipe.add_member(:type, Shapes::ShapeRef.new(shape: ImageType, location_name: "type"))
    ImageRecipe.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ImageRecipe.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ImageRecipe.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ImageRecipe.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ImageRecipe.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ImageRecipe.add_member(:components, Shapes::ShapeRef.new(shape: ComponentConfigurationList, location_name: "components"))
    ImageRecipe.add_member(:parent_image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "parentImage"))
    ImageRecipe.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: InstanceBlockDeviceMappings, location_name: "blockDeviceMappings"))
    ImageRecipe.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ImageRecipe.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImageRecipe.add_member(:working_directory, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "workingDirectory"))
    ImageRecipe.add_member(:additional_instance_configuration, Shapes::ShapeRef.new(shape: AdditionalInstanceConfiguration, location_name: "additionalInstanceConfiguration"))
    ImageRecipe.add_member(:ami_tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "amiTags"))
    ImageRecipe.struct_class = Types::ImageRecipe

    ImageRecipeSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ImageRecipeSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ImageRecipeSummary.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ImageRecipeSummary.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ImageRecipeSummary.add_member(:parent_image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "parentImage"))
    ImageRecipeSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ImageRecipeSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImageRecipeSummary.struct_class = Types::ImageRecipeSummary

    ImageRecipeSummaryList.member = Shapes::ShapeRef.new(shape: ImageRecipeSummary)

    ImageScanFinding.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "awsAccountId"))
    ImageScanFinding.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ImageScanFinding.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, location_name: "imagePipelineArn"))
    ImageScanFinding.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "type"))
    ImageScanFinding.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ImageScanFinding.add_member(:title, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "title"))
    ImageScanFinding.add_member(:remediation, Shapes::ShapeRef.new(shape: Remediation, location_name: "remediation"))
    ImageScanFinding.add_member(:severity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "severity"))
    ImageScanFinding.add_member(:first_observed_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "firstObservedAt"))
    ImageScanFinding.add_member(:updated_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "updatedAt"))
    ImageScanFinding.add_member(:inspector_score, Shapes::ShapeRef.new(shape: NonNegativeDouble, location_name: "inspectorScore"))
    ImageScanFinding.add_member(:inspector_score_details, Shapes::ShapeRef.new(shape: InspectorScoreDetails, location_name: "inspectorScoreDetails"))
    ImageScanFinding.add_member(:package_vulnerability_details, Shapes::ShapeRef.new(shape: PackageVulnerabilityDetails, location_name: "packageVulnerabilityDetails"))
    ImageScanFinding.add_member(:fix_available, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fixAvailable"))
    ImageScanFinding.struct_class = Types::ImageScanFinding

    ImageScanFindingAggregation.add_member(:account_aggregation, Shapes::ShapeRef.new(shape: AccountAggregation, location_name: "accountAggregation"))
    ImageScanFindingAggregation.add_member(:image_aggregation, Shapes::ShapeRef.new(shape: ImageAggregation, location_name: "imageAggregation"))
    ImageScanFindingAggregation.add_member(:image_pipeline_aggregation, Shapes::ShapeRef.new(shape: ImagePipelineAggregation, location_name: "imagePipelineAggregation"))
    ImageScanFindingAggregation.add_member(:vulnerability_id_aggregation, Shapes::ShapeRef.new(shape: VulnerabilityIdAggregation, location_name: "vulnerabilityIdAggregation"))
    ImageScanFindingAggregation.struct_class = Types::ImageScanFindingAggregation

    ImageScanFindingAggregationsList.member = Shapes::ShapeRef.new(shape: ImageScanFindingAggregation)

    ImageScanFindingsFilter.add_member(:name, Shapes::ShapeRef.new(shape: FilterName, location_name: "name"))
    ImageScanFindingsFilter.add_member(:values, Shapes::ShapeRef.new(shape: ImageScanFindingsFilterValues, location_name: "values"))
    ImageScanFindingsFilter.struct_class = Types::ImageScanFindingsFilter

    ImageScanFindingsFilterList.member = Shapes::ShapeRef.new(shape: ImageScanFindingsFilter)

    ImageScanFindingsFilterValues.member = Shapes::ShapeRef.new(shape: FilterValue)

    ImageScanFindingsList.member = Shapes::ShapeRef.new(shape: ImageScanFinding)

    ImageScanState.add_member(:status, Shapes::ShapeRef.new(shape: ImageScanStatus, location_name: "status"))
    ImageScanState.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    ImageScanState.struct_class = Types::ImageScanState

    ImageScanningConfiguration.add_member(:image_scanning_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "imageScanningEnabled"))
    ImageScanningConfiguration.add_member(:ecr_configuration, Shapes::ShapeRef.new(shape: EcrConfiguration, location_name: "ecrConfiguration"))
    ImageScanningConfiguration.struct_class = Types::ImageScanningConfiguration

    ImageState.add_member(:status, Shapes::ShapeRef.new(shape: ImageStatus, location_name: "status"))
    ImageState.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    ImageState.struct_class = Types::ImageState

    ImageSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ImageSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ImageSummary.add_member(:type, Shapes::ShapeRef.new(shape: ImageType, location_name: "type"))
    ImageSummary.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ImageSummary.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ImageSummary.add_member(:os_version, Shapes::ShapeRef.new(shape: OsVersion, location_name: "osVersion"))
    ImageSummary.add_member(:state, Shapes::ShapeRef.new(shape: ImageState, location_name: "state"))
    ImageSummary.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ImageSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ImageSummary.add_member(:output_resources, Shapes::ShapeRef.new(shape: OutputResources, location_name: "outputResources"))
    ImageSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImageSummary.add_member(:build_type, Shapes::ShapeRef.new(shape: BuildType, location_name: "buildType"))
    ImageSummary.add_member(:image_source, Shapes::ShapeRef.new(shape: ImageSource, location_name: "imageSource"))
    ImageSummary.add_member(:deprecation_time, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "deprecationTime"))
    ImageSummary.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    ImageSummary.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    ImageSummary.struct_class = Types::ImageSummary

    ImageSummaryList.member = Shapes::ShapeRef.new(shape: ImageSummary)

    ImageTestsConfiguration.add_member(:image_tests_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "imageTestsEnabled"))
    ImageTestsConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: ImageTestsTimeoutMinutes, location_name: "timeoutMinutes"))
    ImageTestsConfiguration.struct_class = Types::ImageTestsConfiguration

    ImageVersion.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ImageVersion.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ImageVersion.add_member(:type, Shapes::ShapeRef.new(shape: ImageType, location_name: "type"))
    ImageVersion.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ImageVersion.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ImageVersion.add_member(:os_version, Shapes::ShapeRef.new(shape: OsVersion, location_name: "osVersion"))
    ImageVersion.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ImageVersion.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ImageVersion.add_member(:build_type, Shapes::ShapeRef.new(shape: BuildType, location_name: "buildType"))
    ImageVersion.add_member(:image_source, Shapes::ShapeRef.new(shape: ImageSource, location_name: "imageSource"))
    ImageVersion.struct_class = Types::ImageVersion

    ImageVersionList.member = Shapes::ShapeRef.new(shape: ImageVersion)

    ImportComponentRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    ImportComponentRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "semanticVersion"))
    ImportComponentRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ImportComponentRequest.add_member(:change_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "changeDescription"))
    ImportComponentRequest.add_member(:type, Shapes::ShapeRef.new(shape: ComponentType, required: true, location_name: "type"))
    ImportComponentRequest.add_member(:format, Shapes::ShapeRef.new(shape: ComponentFormat, required: true, location_name: "format"))
    ImportComponentRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "platform"))
    ImportComponentRequest.add_member(:data, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "data"))
    ImportComponentRequest.add_member(:uri, Shapes::ShapeRef.new(shape: Uri, location_name: "uri"))
    ImportComponentRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    ImportComponentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImportComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ImportComponentRequest.struct_class = Types::ImportComponentRequest

    ImportComponentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ImportComponentResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    ImportComponentResponse.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    ImportComponentResponse.struct_class = Types::ImportComponentResponse

    ImportDiskImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    ImportDiskImageRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "semanticVersion"))
    ImportDiskImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ImportDiskImageRequest.add_member(:platform, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "platform"))
    ImportDiskImageRequest.add_member(:os_version, Shapes::ShapeRef.new(shape: OsVersion, required: true, location_name: "osVersion"))
    ImportDiskImageRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    ImportDiskImageRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    ImportDiskImageRequest.add_member(:uri, Shapes::ShapeRef.new(shape: Uri, required: true, location_name: "uri"))
    ImportDiskImageRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    ImportDiskImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImportDiskImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ImportDiskImageRequest.struct_class = Types::ImportDiskImageRequest

    ImportDiskImageResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    ImportDiskImageResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ImportDiskImageResponse.struct_class = Types::ImportDiskImageResponse

    ImportVmImageRequest.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "name"))
    ImportVmImageRequest.add_member(:semantic_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "semanticVersion"))
    ImportVmImageRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ImportVmImageRequest.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, required: true, location_name: "platform"))
    ImportVmImageRequest.add_member(:os_version, Shapes::ShapeRef.new(shape: OsVersion, location_name: "osVersion"))
    ImportVmImageRequest.add_member(:vm_import_task_id, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "vmImportTaskId"))
    ImportVmImageRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    ImportVmImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImportVmImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    ImportVmImageRequest.struct_class = Types::ImportVmImageRequest

    ImportVmImageResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ImportVmImageResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "imageArn"))
    ImportVmImageResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    ImportVmImageResponse.struct_class = Types::ImportVmImageResponse

    InfrastructureConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    InfrastructureConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InfrastructureConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    InfrastructureConfiguration.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: "instanceTypes"))
    InfrastructureConfiguration.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: InstanceProfileNameType, location_name: "instanceProfileName"))
    InfrastructureConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    InfrastructureConfiguration.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subnetId"))
    InfrastructureConfiguration.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    InfrastructureConfiguration.add_member(:key_pair, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyPair"))
    InfrastructureConfiguration.add_member(:terminate_instance_on_failure, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    InfrastructureConfiguration.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "snsTopicArn"))
    InfrastructureConfiguration.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    InfrastructureConfiguration.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateUpdated"))
    InfrastructureConfiguration.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagMap, location_name: "resourceTags"))
    InfrastructureConfiguration.add_member(:instance_metadata_options, Shapes::ShapeRef.new(shape: InstanceMetadataOptions, location_name: "instanceMetadataOptions"))
    InfrastructureConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    InfrastructureConfiguration.add_member(:placement, Shapes::ShapeRef.new(shape: Placement, location_name: "placement"))
    InfrastructureConfiguration.struct_class = Types::InfrastructureConfiguration

    InfrastructureConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    InfrastructureConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InfrastructureConfigurationSummary.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    InfrastructureConfigurationSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    InfrastructureConfigurationSummary.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateUpdated"))
    InfrastructureConfigurationSummary.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagMap, location_name: "resourceTags"))
    InfrastructureConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    InfrastructureConfigurationSummary.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: "instanceTypes"))
    InfrastructureConfigurationSummary.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: InstanceProfileNameType, location_name: "instanceProfileName"))
    InfrastructureConfigurationSummary.add_member(:placement, Shapes::ShapeRef.new(shape: Placement, location_name: "placement"))
    InfrastructureConfigurationSummary.struct_class = Types::InfrastructureConfigurationSummary

    InfrastructureConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: InfrastructureConfigurationSummary)

    InspectorScoreDetails.add_member(:adjusted_cvss, Shapes::ShapeRef.new(shape: CvssScoreDetails, location_name: "adjustedCvss"))
    InspectorScoreDetails.struct_class = Types::InspectorScoreDetails

    InstanceBlockDeviceMapping.add_member(:device_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deviceName"))
    InstanceBlockDeviceMapping.add_member(:ebs, Shapes::ShapeRef.new(shape: EbsInstanceBlockDeviceSpecification, location_name: "ebs"))
    InstanceBlockDeviceMapping.add_member(:virtual_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "virtualName"))
    InstanceBlockDeviceMapping.add_member(:no_device, Shapes::ShapeRef.new(shape: EmptyString, location_name: "noDevice"))
    InstanceBlockDeviceMapping.struct_class = Types::InstanceBlockDeviceMapping

    InstanceBlockDeviceMappings.member = Shapes::ShapeRef.new(shape: InstanceBlockDeviceMapping)

    InstanceConfiguration.add_member(:image, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "image"))
    InstanceConfiguration.add_member(:block_device_mappings, Shapes::ShapeRef.new(shape: InstanceBlockDeviceMappings, location_name: "blockDeviceMappings"))
    InstanceConfiguration.struct_class = Types::InstanceConfiguration

    InstanceMetadataOptions.add_member(:http_tokens, Shapes::ShapeRef.new(shape: HttpTokens, location_name: "httpTokens"))
    InstanceMetadataOptions.add_member(:http_put_response_hop_limit, Shapes::ShapeRef.new(shape: HttpPutResponseHopLimit, location_name: "httpPutResponseHopLimit"))
    InstanceMetadataOptions.struct_class = Types::InstanceMetadataOptions

    InstanceTypeList.member = Shapes::ShapeRef.new(shape: InstanceType)

    InvalidPaginationTokenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidPaginationTokenException.struct_class = Types::InvalidPaginationTokenException

    InvalidParameterCombinationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidParameterCombinationException.struct_class = Types::InvalidParameterCombinationException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidVersionNumberException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidVersionNumberException.struct_class = Types::InvalidVersionNumberException

    LaunchPermissionConfiguration.add_member(:user_ids, Shapes::ShapeRef.new(shape: AccountList, location_name: "userIds"))
    LaunchPermissionConfiguration.add_member(:user_groups, Shapes::ShapeRef.new(shape: StringList, location_name: "userGroups"))
    LaunchPermissionConfiguration.add_member(:organization_arns, Shapes::ShapeRef.new(shape: OrganizationArnList, location_name: "organizationArns"))
    LaunchPermissionConfiguration.add_member(:organizational_unit_arns, Shapes::ShapeRef.new(shape: OrganizationalUnitArnList, location_name: "organizationalUnitArns"))
    LaunchPermissionConfiguration.struct_class = Types::LaunchPermissionConfiguration

    LaunchTemplateConfiguration.add_member(:launch_template_id, Shapes::ShapeRef.new(shape: LaunchTemplateId, required: true, location_name: "launchTemplateId"))
    LaunchTemplateConfiguration.add_member(:account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "accountId"))
    LaunchTemplateConfiguration.add_member(:set_default_version, Shapes::ShapeRef.new(shape: Boolean, location_name: "setDefaultVersion"))
    LaunchTemplateConfiguration.struct_class = Types::LaunchTemplateConfiguration

    LaunchTemplateConfigurationList.member = Shapes::ShapeRef.new(shape: LaunchTemplateConfiguration)

    LicenseConfigurationArnList.member = Shapes::ShapeRef.new(shape: LicenseConfigurationArn)

    LifecycleExecution.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    LifecycleExecution.add_member(:lifecycle_policy_arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, location_name: "lifecyclePolicyArn"))
    LifecycleExecution.add_member(:resources_impacted_summary, Shapes::ShapeRef.new(shape: LifecycleExecutionResourcesImpactedSummary, location_name: "resourcesImpactedSummary"))
    LifecycleExecution.add_member(:state, Shapes::ShapeRef.new(shape: LifecycleExecutionState, location_name: "state"))
    LifecycleExecution.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "startTime"))
    LifecycleExecution.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "endTime"))
    LifecycleExecution.struct_class = Types::LifecycleExecution

    LifecycleExecutionResource.add_member(:account_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "accountId"))
    LifecycleExecutionResource.add_member(:resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "resourceId"))
    LifecycleExecutionResource.add_member(:state, Shapes::ShapeRef.new(shape: LifecycleExecutionResourceState, location_name: "state"))
    LifecycleExecutionResource.add_member(:action, Shapes::ShapeRef.new(shape: LifecycleExecutionResourceAction, location_name: "action"))
    LifecycleExecutionResource.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "region"))
    LifecycleExecutionResource.add_member(:snapshots, Shapes::ShapeRef.new(shape: LifecycleExecutionSnapshotResourceList, location_name: "snapshots"))
    LifecycleExecutionResource.add_member(:image_uris, Shapes::ShapeRef.new(shape: StringList, location_name: "imageUris"))
    LifecycleExecutionResource.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "startTime"))
    LifecycleExecutionResource.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "endTime"))
    LifecycleExecutionResource.struct_class = Types::LifecycleExecutionResource

    LifecycleExecutionResourceAction.add_member(:name, Shapes::ShapeRef.new(shape: LifecycleExecutionResourceActionName, location_name: "name"))
    LifecycleExecutionResourceAction.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    LifecycleExecutionResourceAction.struct_class = Types::LifecycleExecutionResourceAction

    LifecycleExecutionResourceList.member = Shapes::ShapeRef.new(shape: LifecycleExecutionResource)

    LifecycleExecutionResourceState.add_member(:status, Shapes::ShapeRef.new(shape: LifecycleExecutionResourceStatus, location_name: "status"))
    LifecycleExecutionResourceState.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    LifecycleExecutionResourceState.struct_class = Types::LifecycleExecutionResourceState

    LifecycleExecutionResourcesImpactedSummary.add_member(:has_impacted_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "hasImpactedResources"))
    LifecycleExecutionResourcesImpactedSummary.struct_class = Types::LifecycleExecutionResourcesImpactedSummary

    LifecycleExecutionSnapshotResource.add_member(:snapshot_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "snapshotId"))
    LifecycleExecutionSnapshotResource.add_member(:state, Shapes::ShapeRef.new(shape: LifecycleExecutionResourceState, location_name: "state"))
    LifecycleExecutionSnapshotResource.struct_class = Types::LifecycleExecutionSnapshotResource

    LifecycleExecutionSnapshotResourceList.member = Shapes::ShapeRef.new(shape: LifecycleExecutionSnapshotResource)

    LifecycleExecutionState.add_member(:status, Shapes::ShapeRef.new(shape: LifecycleExecutionStatus, location_name: "status"))
    LifecycleExecutionState.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    LifecycleExecutionState.struct_class = Types::LifecycleExecutionState

    LifecycleExecutionsList.member = Shapes::ShapeRef.new(shape: LifecycleExecution)

    LifecyclePolicy.add_member(:arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, location_name: "arn"))
    LifecyclePolicy.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LifecyclePolicy.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    LifecyclePolicy.add_member(:status, Shapes::ShapeRef.new(shape: LifecyclePolicyStatus, location_name: "status"))
    LifecyclePolicy.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    LifecyclePolicy.add_member(:resource_type, Shapes::ShapeRef.new(shape: LifecyclePolicyResourceType, location_name: "resourceType"))
    LifecyclePolicy.add_member(:policy_details, Shapes::ShapeRef.new(shape: LifecyclePolicyDetails, location_name: "policyDetails"))
    LifecyclePolicy.add_member(:resource_selection, Shapes::ShapeRef.new(shape: LifecyclePolicyResourceSelection, location_name: "resourceSelection"))
    LifecyclePolicy.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "dateCreated"))
    LifecyclePolicy.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "dateUpdated"))
    LifecyclePolicy.add_member(:date_last_run, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "dateLastRun"))
    LifecyclePolicy.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    LifecyclePolicy.struct_class = Types::LifecyclePolicy

    LifecyclePolicyDetail.add_member(:action, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailAction, required: true, location_name: "action"))
    LifecyclePolicyDetail.add_member(:filter, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailFilter, required: true, location_name: "filter"))
    LifecyclePolicyDetail.add_member(:exclusion_rules, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailExclusionRules, location_name: "exclusionRules"))
    LifecyclePolicyDetail.struct_class = Types::LifecyclePolicyDetail

    LifecyclePolicyDetailAction.add_member(:type, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailActionType, required: true, location_name: "type"))
    LifecyclePolicyDetailAction.add_member(:include_resources, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailActionIncludeResources, location_name: "includeResources"))
    LifecyclePolicyDetailAction.struct_class = Types::LifecyclePolicyDetailAction

    LifecyclePolicyDetailActionIncludeResources.add_member(:amis, Shapes::ShapeRef.new(shape: Boolean, location_name: "amis"))
    LifecyclePolicyDetailActionIncludeResources.add_member(:snapshots, Shapes::ShapeRef.new(shape: Boolean, location_name: "snapshots"))
    LifecyclePolicyDetailActionIncludeResources.add_member(:containers, Shapes::ShapeRef.new(shape: Boolean, location_name: "containers"))
    LifecyclePolicyDetailActionIncludeResources.struct_class = Types::LifecyclePolicyDetailActionIncludeResources

    LifecyclePolicyDetailExclusionRules.add_member(:tag_map, Shapes::ShapeRef.new(shape: TagMap, location_name: "tagMap"))
    LifecyclePolicyDetailExclusionRules.add_member(:amis, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailExclusionRulesAmis, location_name: "amis"))
    LifecyclePolicyDetailExclusionRules.struct_class = Types::LifecyclePolicyDetailExclusionRules

    LifecyclePolicyDetailExclusionRulesAmis.add_member(:is_public, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPublic"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:regions, Shapes::ShapeRef.new(shape: StringList, location_name: "regions"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:shared_accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "sharedAccounts"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:last_launched, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailExclusionRulesAmisLastLaunched, location_name: "lastLaunched"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:tag_map, Shapes::ShapeRef.new(shape: TagMap, location_name: "tagMap"))
    LifecyclePolicyDetailExclusionRulesAmis.struct_class = Types::LifecyclePolicyDetailExclusionRulesAmis

    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.add_member(:value, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailExclusionRulesAmisLastLaunchedValue, required: true, location_name: "value"))
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.add_member(:unit, Shapes::ShapeRef.new(shape: LifecyclePolicyTimeUnit, required: true, location_name: "unit"))
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.struct_class = Types::LifecyclePolicyDetailExclusionRulesAmisLastLaunched

    LifecyclePolicyDetailFilter.add_member(:type, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailFilterType, required: true, location_name: "type"))
    LifecyclePolicyDetailFilter.add_member(:value, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailFilterValue, required: true, location_name: "value"))
    LifecyclePolicyDetailFilter.add_member(:unit, Shapes::ShapeRef.new(shape: LifecyclePolicyTimeUnit, location_name: "unit"))
    LifecyclePolicyDetailFilter.add_member(:retain_at_least, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailFilterRetainAtLeast, location_name: "retainAtLeast"))
    LifecyclePolicyDetailFilter.struct_class = Types::LifecyclePolicyDetailFilter

    LifecyclePolicyDetails.member = Shapes::ShapeRef.new(shape: LifecyclePolicyDetail)

    LifecyclePolicyResourceSelection.add_member(:recipes, Shapes::ShapeRef.new(shape: LifecyclePolicyResourceSelectionRecipes, location_name: "recipes"))
    LifecyclePolicyResourceSelection.add_member(:tag_map, Shapes::ShapeRef.new(shape: TagMap, location_name: "tagMap"))
    LifecyclePolicyResourceSelection.struct_class = Types::LifecyclePolicyResourceSelection

    LifecyclePolicyResourceSelectionRecipe.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    LifecyclePolicyResourceSelectionRecipe.add_member(:semantic_version, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "semanticVersion"))
    LifecyclePolicyResourceSelectionRecipe.struct_class = Types::LifecyclePolicyResourceSelectionRecipe

    LifecyclePolicyResourceSelectionRecipes.member = Shapes::ShapeRef.new(shape: LifecyclePolicyResourceSelectionRecipe)

    LifecyclePolicySummary.add_member(:arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, location_name: "arn"))
    LifecyclePolicySummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    LifecyclePolicySummary.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    LifecyclePolicySummary.add_member(:status, Shapes::ShapeRef.new(shape: LifecyclePolicyStatus, location_name: "status"))
    LifecyclePolicySummary.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    LifecyclePolicySummary.add_member(:resource_type, Shapes::ShapeRef.new(shape: LifecyclePolicyResourceType, location_name: "resourceType"))
    LifecyclePolicySummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "dateCreated"))
    LifecyclePolicySummary.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "dateUpdated"))
    LifecyclePolicySummary.add_member(:date_last_run, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "dateLastRun"))
    LifecyclePolicySummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    LifecyclePolicySummary.struct_class = Types::LifecyclePolicySummary

    LifecyclePolicySummaryList.member = Shapes::ShapeRef.new(shape: LifecyclePolicySummary)

    ListComponentBuildVersionsRequest.add_member(:component_version_arn, Shapes::ShapeRef.new(shape: ComponentVersionArn, location_name: "componentVersionArn"))
    ListComponentBuildVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListComponentBuildVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListComponentBuildVersionsRequest.struct_class = Types::ListComponentBuildVersionsRequest

    ListComponentBuildVersionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListComponentBuildVersionsResponse.add_member(:component_summary_list, Shapes::ShapeRef.new(shape: ComponentSummaryList, location_name: "componentSummaryList"))
    ListComponentBuildVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListComponentBuildVersionsResponse.struct_class = Types::ListComponentBuildVersionsResponse

    ListComponentsRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location_name: "owner"))
    ListComponentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListComponentsRequest.add_member(:by_name, Shapes::ShapeRef.new(shape: Boolean, location_name: "byName"))
    ListComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListComponentsRequest.struct_class = Types::ListComponentsRequest

    ListComponentsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListComponentsResponse.add_member(:component_version_list, Shapes::ShapeRef.new(shape: ComponentVersionList, location_name: "componentVersionList"))
    ListComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListComponentsResponse.struct_class = Types::ListComponentsResponse

    ListContainerRecipesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location_name: "owner"))
    ListContainerRecipesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListContainerRecipesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListContainerRecipesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListContainerRecipesRequest.struct_class = Types::ListContainerRecipesRequest

    ListContainerRecipesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListContainerRecipesResponse.add_member(:container_recipe_summary_list, Shapes::ShapeRef.new(shape: ContainerRecipeSummaryList, location_name: "containerRecipeSummaryList"))
    ListContainerRecipesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListContainerRecipesResponse.struct_class = Types::ListContainerRecipesResponse

    ListDistributionConfigurationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListDistributionConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListDistributionConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDistributionConfigurationsRequest.struct_class = Types::ListDistributionConfigurationsRequest

    ListDistributionConfigurationsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListDistributionConfigurationsResponse.add_member(:distribution_configuration_summary_list, Shapes::ShapeRef.new(shape: DistributionConfigurationSummaryList, location_name: "distributionConfigurationSummaryList"))
    ListDistributionConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDistributionConfigurationsResponse.struct_class = Types::ListDistributionConfigurationsResponse

    ListImageBuildVersionsRequest.add_member(:image_version_arn, Shapes::ShapeRef.new(shape: ImageVersionArn, location_name: "imageVersionArn"))
    ListImageBuildVersionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImageBuildVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListImageBuildVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImageBuildVersionsRequest.struct_class = Types::ListImageBuildVersionsRequest

    ListImageBuildVersionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImageBuildVersionsResponse.add_member(:image_summary_list, Shapes::ShapeRef.new(shape: ImageSummaryList, location_name: "imageSummaryList"))
    ListImageBuildVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImageBuildVersionsResponse.struct_class = Types::ListImageBuildVersionsResponse

    ListImagePackagesRequest.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location_name: "imageBuildVersionArn"))
    ListImagePackagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListImagePackagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImagePackagesRequest.struct_class = Types::ListImagePackagesRequest

    ListImagePackagesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImagePackagesResponse.add_member(:image_package_list, Shapes::ShapeRef.new(shape: ImagePackageList, location_name: "imagePackageList"))
    ListImagePackagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImagePackagesResponse.struct_class = Types::ListImagePackagesResponse

    ListImagePipelineImagesRequest.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, required: true, location_name: "imagePipelineArn"))
    ListImagePipelineImagesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImagePipelineImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListImagePipelineImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImagePipelineImagesRequest.struct_class = Types::ListImagePipelineImagesRequest

    ListImagePipelineImagesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImagePipelineImagesResponse.add_member(:image_summary_list, Shapes::ShapeRef.new(shape: ImageSummaryList, location_name: "imageSummaryList"))
    ListImagePipelineImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImagePipelineImagesResponse.struct_class = Types::ListImagePipelineImagesResponse

    ListImagePipelinesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImagePipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListImagePipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImagePipelinesRequest.struct_class = Types::ListImagePipelinesRequest

    ListImagePipelinesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImagePipelinesResponse.add_member(:image_pipeline_list, Shapes::ShapeRef.new(shape: ImagePipelineList, location_name: "imagePipelineList"))
    ListImagePipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImagePipelinesResponse.struct_class = Types::ListImagePipelinesResponse

    ListImageRecipesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location_name: "owner"))
    ListImageRecipesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImageRecipesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListImageRecipesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImageRecipesRequest.struct_class = Types::ListImageRecipesRequest

    ListImageRecipesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImageRecipesResponse.add_member(:image_recipe_summary_list, Shapes::ShapeRef.new(shape: ImageRecipeSummaryList, location_name: "imageRecipeSummaryList"))
    ListImageRecipesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImageRecipesResponse.struct_class = Types::ListImageRecipesResponse

    ListImageScanFindingAggregationsRequest.add_member(:filter, Shapes::ShapeRef.new(shape: Filter, location_name: "filter"))
    ListImageScanFindingAggregationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImageScanFindingAggregationsRequest.struct_class = Types::ListImageScanFindingAggregationsRequest

    ListImageScanFindingAggregationsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImageScanFindingAggregationsResponse.add_member(:aggregation_type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "aggregationType"))
    ListImageScanFindingAggregationsResponse.add_member(:responses, Shapes::ShapeRef.new(shape: ImageScanFindingAggregationsList, location_name: "responses"))
    ListImageScanFindingAggregationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImageScanFindingAggregationsResponse.struct_class = Types::ListImageScanFindingAggregationsResponse

    ListImageScanFindingsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: ImageScanFindingsFilterList, location_name: "filters"))
    ListImageScanFindingsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListImageScanFindingsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImageScanFindingsRequest.struct_class = Types::ListImageScanFindingsRequest

    ListImageScanFindingsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImageScanFindingsResponse.add_member(:findings, Shapes::ShapeRef.new(shape: ImageScanFindingsList, location_name: "findings"))
    ListImageScanFindingsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImageScanFindingsResponse.struct_class = Types::ListImageScanFindingsResponse

    ListImagesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location_name: "owner"))
    ListImagesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImagesRequest.add_member(:by_name, Shapes::ShapeRef.new(shape: Boolean, location_name: "byName"))
    ListImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImagesRequest.add_member(:include_deprecated, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "includeDeprecated"))
    ListImagesRequest.struct_class = Types::ListImagesRequest

    ListImagesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImagesResponse.add_member(:image_version_list, Shapes::ShapeRef.new(shape: ImageVersionList, location_name: "imageVersionList"))
    ListImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListImagesResponse.struct_class = Types::ListImagesResponse

    ListInfrastructureConfigurationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListInfrastructureConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListInfrastructureConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListInfrastructureConfigurationsRequest.struct_class = Types::ListInfrastructureConfigurationsRequest

    ListInfrastructureConfigurationsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListInfrastructureConfigurationsResponse.add_member(:infrastructure_configuration_summary_list, Shapes::ShapeRef.new(shape: InfrastructureConfigurationSummaryList, location_name: "infrastructureConfigurationSummaryList"))
    ListInfrastructureConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListInfrastructureConfigurationsResponse.struct_class = Types::ListInfrastructureConfigurationsResponse

    ListLifecycleExecutionResourcesRequest.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, required: true, location_name: "lifecycleExecutionId"))
    ListLifecycleExecutionResourcesRequest.add_member(:parent_resource_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "parentResourceId"))
    ListLifecycleExecutionResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListLifecycleExecutionResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLifecycleExecutionResourcesRequest.struct_class = Types::ListLifecycleExecutionResourcesRequest

    ListLifecycleExecutionResourcesResponse.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    ListLifecycleExecutionResourcesResponse.add_member(:lifecycle_execution_state, Shapes::ShapeRef.new(shape: LifecycleExecutionState, location_name: "lifecycleExecutionState"))
    ListLifecycleExecutionResourcesResponse.add_member(:resources, Shapes::ShapeRef.new(shape: LifecycleExecutionResourceList, location_name: "resources"))
    ListLifecycleExecutionResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLifecycleExecutionResourcesResponse.struct_class = Types::ListLifecycleExecutionResourcesResponse

    ListLifecycleExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListLifecycleExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLifecycleExecutionsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, required: true, location_name: "resourceArn"))
    ListLifecycleExecutionsRequest.struct_class = Types::ListLifecycleExecutionsRequest

    ListLifecycleExecutionsResponse.add_member(:lifecycle_executions, Shapes::ShapeRef.new(shape: LifecycleExecutionsList, location_name: "lifecycleExecutions"))
    ListLifecycleExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLifecycleExecutionsResponse.struct_class = Types::ListLifecycleExecutionsResponse

    ListLifecyclePoliciesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListLifecyclePoliciesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListLifecyclePoliciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLifecyclePoliciesRequest.struct_class = Types::ListLifecyclePoliciesRequest

    ListLifecyclePoliciesResponse.add_member(:lifecycle_policy_summary_list, Shapes::ShapeRef.new(shape: LifecyclePolicySummaryList, location_name: "lifecyclePolicySummaryList"))
    ListLifecyclePoliciesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListLifecyclePoliciesResponse.struct_class = Types::ListLifecyclePoliciesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListWaitingWorkflowStepsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListWaitingWorkflowStepsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWaitingWorkflowStepsRequest.struct_class = Types::ListWaitingWorkflowStepsRequest

    ListWaitingWorkflowStepsResponse.add_member(:steps, Shapes::ShapeRef.new(shape: WorkflowStepExecutionList, location_name: "steps"))
    ListWaitingWorkflowStepsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWaitingWorkflowStepsResponse.struct_class = Types::ListWaitingWorkflowStepsResponse

    ListWorkflowBuildVersionsRequest.add_member(:workflow_version_arn, Shapes::ShapeRef.new(shape: WorkflowWildcardVersionArn, location_name: "workflowVersionArn"))
    ListWorkflowBuildVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListWorkflowBuildVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkflowBuildVersionsRequest.struct_class = Types::ListWorkflowBuildVersionsRequest

    ListWorkflowBuildVersionsResponse.add_member(:workflow_summary_list, Shapes::ShapeRef.new(shape: WorkflowSummaryList, location_name: "workflowSummaryList"))
    ListWorkflowBuildVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkflowBuildVersionsResponse.struct_class = Types::ListWorkflowBuildVersionsResponse

    ListWorkflowExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListWorkflowExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkflowExecutionsRequest.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location_name: "imageBuildVersionArn"))
    ListWorkflowExecutionsRequest.struct_class = Types::ListWorkflowExecutionsRequest

    ListWorkflowExecutionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListWorkflowExecutionsResponse.add_member(:workflow_executions, Shapes::ShapeRef.new(shape: WorkflowExecutionsList, location_name: "workflowExecutions"))
    ListWorkflowExecutionsResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ListWorkflowExecutionsResponse.add_member(:message, Shapes::ShapeRef.new(shape: ImageBuildMessage, location_name: "message"))
    ListWorkflowExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkflowExecutionsResponse.struct_class = Types::ListWorkflowExecutionsResponse

    ListWorkflowStepExecutionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListWorkflowStepExecutionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkflowStepExecutionsRequest.add_member(:workflow_execution_id, Shapes::ShapeRef.new(shape: WorkflowExecutionId, required: true, location_name: "workflowExecutionId"))
    ListWorkflowStepExecutionsRequest.struct_class = Types::ListWorkflowStepExecutionsRequest

    ListWorkflowStepExecutionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListWorkflowStepExecutionsResponse.add_member(:steps, Shapes::ShapeRef.new(shape: WorkflowStepExecutionsList, location_name: "steps"))
    ListWorkflowStepExecutionsResponse.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    ListWorkflowStepExecutionsResponse.add_member(:workflow_execution_id, Shapes::ShapeRef.new(shape: WorkflowExecutionId, location_name: "workflowExecutionId"))
    ListWorkflowStepExecutionsResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ListWorkflowStepExecutionsResponse.add_member(:message, Shapes::ShapeRef.new(shape: ImageBuildMessage, location_name: "message"))
    ListWorkflowStepExecutionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkflowStepExecutionsResponse.struct_class = Types::ListWorkflowStepExecutionsResponse

    ListWorkflowsRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location_name: "owner"))
    ListWorkflowsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListWorkflowsRequest.add_member(:by_name, Shapes::ShapeRef.new(shape: Boolean, location_name: "byName"))
    ListWorkflowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box" => true}))
    ListWorkflowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkflowsRequest.struct_class = Types::ListWorkflowsRequest

    ListWorkflowsResponse.add_member(:workflow_version_list, Shapes::ShapeRef.new(shape: WorkflowVersionList, location_name: "workflowVersionList"))
    ListWorkflowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListWorkflowsResponse.struct_class = Types::ListWorkflowsResponse

    Logging.add_member(:s3_logs, Shapes::ShapeRef.new(shape: S3Logs, location_name: "s3Logs"))
    Logging.struct_class = Types::Logging

    NonEmptyStringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    OrganizationArnList.member = Shapes::ShapeRef.new(shape: OrganizationArn)

    OrganizationalUnitArnList.member = Shapes::ShapeRef.new(shape: OrganizationalUnitArn)

    OsVersionList.member = Shapes::ShapeRef.new(shape: OsVersion)

    OutputResources.add_member(:amis, Shapes::ShapeRef.new(shape: AmiList, location_name: "amis"))
    OutputResources.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerList, location_name: "containers"))
    OutputResources.struct_class = Types::OutputResources

    PackageVulnerabilityDetails.add_member(:vulnerability_id, Shapes::ShapeRef.new(shape: VulnerabilityId, required: true, location_name: "vulnerabilityId"))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, Shapes::ShapeRef.new(shape: VulnerablePackageList, location_name: "vulnerablePackages"))
    PackageVulnerabilityDetails.add_member(:source, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "source"))
    PackageVulnerabilityDetails.add_member(:cvss, Shapes::ShapeRef.new(shape: CvssScoreList, location_name: "cvss"))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, Shapes::ShapeRef.new(shape: VulnerabilityIdList, location_name: "relatedVulnerabilities"))
    PackageVulnerabilityDetails.add_member(:source_url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "sourceUrl"))
    PackageVulnerabilityDetails.add_member(:vendor_severity, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "vendorSeverity"))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "vendorCreatedAt"))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "vendorUpdatedAt"))
    PackageVulnerabilityDetails.add_member(:reference_urls, Shapes::ShapeRef.new(shape: NonEmptyStringList, location_name: "referenceUrls"))
    PackageVulnerabilityDetails.struct_class = Types::PackageVulnerabilityDetails

    PipelineLoggingConfiguration.add_member(:image_log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "imageLogGroupName"))
    PipelineLoggingConfiguration.add_member(:pipeline_log_group_name, Shapes::ShapeRef.new(shape: LogGroupName, location_name: "pipelineLogGroupName"))
    PipelineLoggingConfiguration.struct_class = Types::PipelineLoggingConfiguration

    Placement.add_member(:availability_zone, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "availabilityZone"))
    Placement.add_member(:tenancy, Shapes::ShapeRef.new(shape: TenancyType, location_name: "tenancy"))
    Placement.add_member(:host_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "hostId"))
    Placement.add_member(:host_resource_group_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "hostResourceGroupArn"))
    Placement.struct_class = Types::Placement

    ProductCodeList.member = Shapes::ShapeRef.new(shape: ProductCodeListItem)

    ProductCodeListItem.add_member(:product_code_id, Shapes::ShapeRef.new(shape: ProductCodeId, required: true, location_name: "productCodeId"))
    ProductCodeListItem.add_member(:product_code_type, Shapes::ShapeRef.new(shape: ProductCodeType, required: true, location_name: "productCodeType"))
    ProductCodeListItem.struct_class = Types::ProductCodeListItem

    PutComponentPolicyRequest.add_member(:component_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, required: true, location_name: "componentArn"))
    PutComponentPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, required: true, location_name: "policy"))
    PutComponentPolicyRequest.struct_class = Types::PutComponentPolicyRequest

    PutComponentPolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    PutComponentPolicyResponse.add_member(:component_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, location_name: "componentArn"))
    PutComponentPolicyResponse.struct_class = Types::PutComponentPolicyResponse

    PutContainerRecipePolicyRequest.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, required: true, location_name: "containerRecipeArn"))
    PutContainerRecipePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, required: true, location_name: "policy"))
    PutContainerRecipePolicyRequest.struct_class = Types::PutContainerRecipePolicyRequest

    PutContainerRecipePolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    PutContainerRecipePolicyResponse.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, location_name: "containerRecipeArn"))
    PutContainerRecipePolicyResponse.struct_class = Types::PutContainerRecipePolicyResponse

    PutImagePolicyRequest.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location_name: "imageArn"))
    PutImagePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, required: true, location_name: "policy"))
    PutImagePolicyRequest.struct_class = Types::PutImagePolicyRequest

    PutImagePolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    PutImagePolicyResponse.add_member(:image_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageArn"))
    PutImagePolicyResponse.struct_class = Types::PutImagePolicyResponse

    PutImageRecipePolicyRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, required: true, location_name: "imageRecipeArn"))
    PutImageRecipePolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, required: true, location_name: "policy"))
    PutImageRecipePolicyRequest.struct_class = Types::PutImageRecipePolicyRequest

    PutImageRecipePolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    PutImageRecipePolicyResponse.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, location_name: "imageRecipeArn"))
    PutImageRecipePolicyResponse.struct_class = Types::PutImageRecipePolicyResponse

    RegionList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    Remediation.add_member(:recommendation, Shapes::ShapeRef.new(shape: RemediationRecommendation, location_name: "recommendation"))
    Remediation.struct_class = Types::Remediation

    RemediationRecommendation.add_member(:text, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "text"))
    RemediationRecommendation.add_member(:url, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "url"))
    RemediationRecommendation.struct_class = Types::RemediationRecommendation

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceDependencyException.struct_class = Types::ResourceDependencyException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceState.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "status"))
    ResourceState.struct_class = Types::ResourceState

    ResourceStateUpdateExclusionRules.add_member(:amis, Shapes::ShapeRef.new(shape: LifecyclePolicyDetailExclusionRulesAmis, location_name: "amis"))
    ResourceStateUpdateExclusionRules.struct_class = Types::ResourceStateUpdateExclusionRules

    ResourceStateUpdateIncludeResources.add_member(:amis, Shapes::ShapeRef.new(shape: Boolean, location_name: "amis"))
    ResourceStateUpdateIncludeResources.add_member(:snapshots, Shapes::ShapeRef.new(shape: Boolean, location_name: "snapshots"))
    ResourceStateUpdateIncludeResources.add_member(:containers, Shapes::ShapeRef.new(shape: Boolean, location_name: "containers"))
    ResourceStateUpdateIncludeResources.struct_class = Types::ResourceStateUpdateIncludeResources

    ResourceTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResourceTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    S3ExportConfiguration.add_member(:role_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "roleName"))
    S3ExportConfiguration.add_member(:disk_image_format, Shapes::ShapeRef.new(shape: DiskImageFormat, required: true, location_name: "diskImageFormat"))
    S3ExportConfiguration.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "s3Bucket"))
    S3ExportConfiguration.add_member(:s3_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "s3Prefix"))
    S3ExportConfiguration.struct_class = Types::S3ExportConfiguration

    S3Logs.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "s3BucketName"))
    S3Logs.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "s3KeyPrefix"))
    S3Logs.struct_class = Types::S3Logs

    Schedule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scheduleExpression"))
    Schedule.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "timezone"))
    Schedule.add_member(:pipeline_execution_start_condition, Shapes::ShapeRef.new(shape: PipelineExecutionStartCondition, location_name: "pipelineExecutionStartCondition"))
    Schedule.add_member(:auto_disable_policy, Shapes::ShapeRef.new(shape: AutoDisablePolicy, location_name: "autoDisablePolicy"))
    Schedule.struct_class = Types::Schedule

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    SendWorkflowStepActionRequest.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: WorkflowStepExecutionId, required: true, location_name: "stepExecutionId"))
    SendWorkflowStepActionRequest.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location_name: "imageBuildVersionArn"))
    SendWorkflowStepActionRequest.add_member(:action, Shapes::ShapeRef.new(shape: WorkflowStepActionType, required: true, location_name: "action"))
    SendWorkflowStepActionRequest.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    SendWorkflowStepActionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    SendWorkflowStepActionRequest.struct_class = Types::SendWorkflowStepActionRequest

    SendWorkflowStepActionResponse.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: WorkflowStepExecutionId, location_name: "stepExecutionId"))
    SendWorkflowStepActionResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    SendWorkflowStepActionResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    SendWorkflowStepActionResponse.struct_class = Types::SendWorkflowStepActionResponse

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SeverityCounts.add_member(:all, Shapes::ShapeRef.new(shape: SeverityCountNumber, location_name: "all"))
    SeverityCounts.add_member(:critical, Shapes::ShapeRef.new(shape: SeverityCountNumber, location_name: "critical"))
    SeverityCounts.add_member(:high, Shapes::ShapeRef.new(shape: SeverityCountNumber, location_name: "high"))
    SeverityCounts.add_member(:medium, Shapes::ShapeRef.new(shape: SeverityCountNumber, location_name: "medium"))
    SeverityCounts.struct_class = Types::SeverityCounts

    SsmParameterConfiguration.add_member(:ami_account_id, Shapes::ShapeRef.new(shape: AccountId, location_name: "amiAccountId"))
    SsmParameterConfiguration.add_member(:parameter_name, Shapes::ShapeRef.new(shape: SsmParameterName, required: true, location_name: "parameterName"))
    SsmParameterConfiguration.add_member(:data_type, Shapes::ShapeRef.new(shape: SsmParameterDataType, location_name: "dataType"))
    SsmParameterConfiguration.struct_class = Types::SsmParameterConfiguration

    SsmParameterConfigurationList.member = Shapes::ShapeRef.new(shape: SsmParameterConfiguration)

    StartImagePipelineExecutionRequest.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, required: true, location_name: "imagePipelineArn"))
    StartImagePipelineExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartImagePipelineExecutionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    StartImagePipelineExecutionRequest.struct_class = Types::StartImagePipelineExecutionRequest

    StartImagePipelineExecutionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    StartImagePipelineExecutionResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    StartImagePipelineExecutionResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    StartImagePipelineExecutionResponse.struct_class = Types::StartImagePipelineExecutionResponse

    StartResourceStateUpdateRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location_name: "resourceArn"))
    StartResourceStateUpdateRequest.add_member(:state, Shapes::ShapeRef.new(shape: ResourceState, required: true, location_name: "state"))
    StartResourceStateUpdateRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    StartResourceStateUpdateRequest.add_member(:include_resources, Shapes::ShapeRef.new(shape: ResourceStateUpdateIncludeResources, location_name: "includeResources"))
    StartResourceStateUpdateRequest.add_member(:exclusion_rules, Shapes::ShapeRef.new(shape: ResourceStateUpdateExclusionRules, location_name: "exclusionRules"))
    StartResourceStateUpdateRequest.add_member(:update_at, Shapes::ShapeRef.new(shape: DateTimeTimestamp, location_name: "updateAt"))
    StartResourceStateUpdateRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartResourceStateUpdateRequest.struct_class = Types::StartResourceStateUpdateRequest

    StartResourceStateUpdateResponse.add_member(:lifecycle_execution_id, Shapes::ShapeRef.new(shape: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    StartResourceStateUpdateResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "resourceArn"))
    StartResourceStateUpdateResponse.struct_class = Types::StartResourceStateUpdateResponse

    StringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    SystemsManagerAgent.add_member(:uninstall_after_build, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "uninstallAfterBuild"))
    SystemsManagerAgent.struct_class = Types::SystemsManagerAgent

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TargetContainerRepository.add_member(:service, Shapes::ShapeRef.new(shape: ContainerRepositoryService, required: true, location_name: "service"))
    TargetContainerRepository.add_member(:repository_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "repositoryName"))
    TargetContainerRepository.struct_class = Types::TargetContainerRepository

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDistributionConfigurationRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, required: true, location_name: "distributionConfigurationArn"))
    UpdateDistributionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    UpdateDistributionConfigurationRequest.add_member(:distributions, Shapes::ShapeRef.new(shape: DistributionList, required: true, location_name: "distributions"))
    UpdateDistributionConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateDistributionConfigurationRequest.struct_class = Types::UpdateDistributionConfigurationRequest

    UpdateDistributionConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    UpdateDistributionConfigurationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateDistributionConfigurationResponse.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    UpdateDistributionConfigurationResponse.struct_class = Types::UpdateDistributionConfigurationResponse

    UpdateImagePipelineRequest.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, required: true, location_name: "imagePipelineArn"))
    UpdateImagePipelineRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    UpdateImagePipelineRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, location_name: "imageRecipeArn"))
    UpdateImagePipelineRequest.add_member(:container_recipe_arn, Shapes::ShapeRef.new(shape: ContainerRecipeArn, location_name: "containerRecipeArn"))
    UpdateImagePipelineRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    UpdateImagePipelineRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    UpdateImagePipelineRequest.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    UpdateImagePipelineRequest.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    UpdateImagePipelineRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    UpdateImagePipelineRequest.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "status"))
    UpdateImagePipelineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateImagePipelineRequest.add_member(:image_scanning_configuration, Shapes::ShapeRef.new(shape: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    UpdateImagePipelineRequest.add_member(:workflows, Shapes::ShapeRef.new(shape: WorkflowConfigurationList, location_name: "workflows"))
    UpdateImagePipelineRequest.add_member(:logging_configuration, Shapes::ShapeRef.new(shape: PipelineLoggingConfiguration, location_name: "loggingConfiguration"))
    UpdateImagePipelineRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, location_name: "executionRole"))
    UpdateImagePipelineRequest.struct_class = Types::UpdateImagePipelineRequest

    UpdateImagePipelineResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    UpdateImagePipelineResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateImagePipelineResponse.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, location_name: "imagePipelineArn"))
    UpdateImagePipelineResponse.struct_class = Types::UpdateImagePipelineResponse

    UpdateInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    UpdateInfrastructureConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: "instanceTypes"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: InstanceProfileNameType, required: true, location_name: "instanceProfileName"))
    UpdateInfrastructureConfigurationRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    UpdateInfrastructureConfigurationRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subnetId"))
    UpdateInfrastructureConfigurationRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateInfrastructureConfigurationRequest.add_member(:key_pair, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyPair"))
    UpdateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_failure, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    UpdateInfrastructureConfigurationRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "snsTopicArn"))
    UpdateInfrastructureConfigurationRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagMap, location_name: "resourceTags"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_metadata_options, Shapes::ShapeRef.new(shape: InstanceMetadataOptions, location_name: "instanceMetadataOptions"))
    UpdateInfrastructureConfigurationRequest.add_member(:placement, Shapes::ShapeRef.new(shape: Placement, location_name: "placement"))
    UpdateInfrastructureConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateInfrastructureConfigurationRequest.struct_class = Types::UpdateInfrastructureConfigurationRequest

    UpdateInfrastructureConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    UpdateInfrastructureConfigurationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn"))
    UpdateInfrastructureConfigurationResponse.struct_class = Types::UpdateInfrastructureConfigurationResponse

    UpdateLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, required: true, location_name: "lifecyclePolicyArn"))
    UpdateLifecyclePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    UpdateLifecyclePolicyRequest.add_member(:status, Shapes::ShapeRef.new(shape: LifecyclePolicyStatus, location_name: "status"))
    UpdateLifecyclePolicyRequest.add_member(:execution_role, Shapes::ShapeRef.new(shape: RoleNameOrArn, required: true, location_name: "executionRole"))
    UpdateLifecyclePolicyRequest.add_member(:resource_type, Shapes::ShapeRef.new(shape: LifecyclePolicyResourceType, required: true, location_name: "resourceType"))
    UpdateLifecyclePolicyRequest.add_member(:policy_details, Shapes::ShapeRef.new(shape: LifecyclePolicyDetails, required: true, location_name: "policyDetails"))
    UpdateLifecyclePolicyRequest.add_member(:resource_selection, Shapes::ShapeRef.new(shape: LifecyclePolicyResourceSelection, required: true, location_name: "resourceSelection"))
    UpdateLifecyclePolicyRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    UpdateLifecyclePolicyRequest.struct_class = Types::UpdateLifecyclePolicyRequest

    UpdateLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, Shapes::ShapeRef.new(shape: LifecyclePolicyArn, location_name: "lifecyclePolicyArn"))
    UpdateLifecyclePolicyResponse.struct_class = Types::UpdateLifecyclePolicyResponse

    VulnerabilityIdAggregation.add_member(:vulnerability_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "vulnerabilityId"))
    VulnerabilityIdAggregation.add_member(:severity_counts, Shapes::ShapeRef.new(shape: SeverityCounts, location_name: "severityCounts"))
    VulnerabilityIdAggregation.struct_class = Types::VulnerabilityIdAggregation

    VulnerabilityIdList.member = Shapes::ShapeRef.new(shape: VulnerabilityId)

    VulnerablePackage.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "name"))
    VulnerablePackage.add_member(:version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "version"))
    VulnerablePackage.add_member(:source_layer_hash, Shapes::ShapeRef.new(shape: SourceLayerHash, location_name: "sourceLayerHash"))
    VulnerablePackage.add_member(:epoch, Shapes::ShapeRef.new(shape: PackageEpoch, location_name: "epoch"))
    VulnerablePackage.add_member(:release, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "release"))
    VulnerablePackage.add_member(:arch, Shapes::ShapeRef.new(shape: PackageArchitecture, location_name: "arch"))
    VulnerablePackage.add_member(:package_manager, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "packageManager"))
    VulnerablePackage.add_member(:file_path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "filePath"))
    VulnerablePackage.add_member(:fixed_in_version, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "fixedInVersion"))
    VulnerablePackage.add_member(:remediation, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "remediation"))
    VulnerablePackage.struct_class = Types::VulnerablePackage

    VulnerablePackageList.member = Shapes::ShapeRef.new(shape: VulnerablePackage)

    Workflow.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, location_name: "arn"))
    Workflow.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Workflow.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    Workflow.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    Workflow.add_member(:change_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "changeDescription"))
    Workflow.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    Workflow.add_member(:state, Shapes::ShapeRef.new(shape: WorkflowState, location_name: "state"))
    Workflow.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    Workflow.add_member(:data, Shapes::ShapeRef.new(shape: WorkflowData, location_name: "data"))
    Workflow.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    Workflow.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    Workflow.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Workflow.add_member(:parameters, Shapes::ShapeRef.new(shape: WorkflowParameterDetailList, location_name: "parameters"))
    Workflow.struct_class = Types::Workflow

    WorkflowConfiguration.add_member(:workflow_arn, Shapes::ShapeRef.new(shape: WorkflowVersionArnOrBuildVersionArn, required: true, location_name: "workflowArn"))
    WorkflowConfiguration.add_member(:parameters, Shapes::ShapeRef.new(shape: WorkflowParameterList, location_name: "parameters"))
    WorkflowConfiguration.add_member(:parallel_group, Shapes::ShapeRef.new(shape: ParallelGroup, location_name: "parallelGroup"))
    WorkflowConfiguration.add_member(:on_failure, Shapes::ShapeRef.new(shape: OnWorkflowFailure, location_name: "onFailure"))
    WorkflowConfiguration.struct_class = Types::WorkflowConfiguration

    WorkflowConfigurationList.member = Shapes::ShapeRef.new(shape: WorkflowConfiguration)

    WorkflowExecutionMetadata.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    WorkflowExecutionMetadata.add_member(:workflow_execution_id, Shapes::ShapeRef.new(shape: WorkflowExecutionId, location_name: "workflowExecutionId"))
    WorkflowExecutionMetadata.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    WorkflowExecutionMetadata.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowExecutionStatus, location_name: "status"))
    WorkflowExecutionMetadata.add_member(:message, Shapes::ShapeRef.new(shape: WorkflowExecutionMessage, location_name: "message"))
    WorkflowExecutionMetadata.add_member(:total_step_count, Shapes::ShapeRef.new(shape: WorkflowStepCount, location_name: "totalStepCount"))
    WorkflowExecutionMetadata.add_member(:total_steps_succeeded, Shapes::ShapeRef.new(shape: WorkflowStepCount, location_name: "totalStepsSucceeded"))
    WorkflowExecutionMetadata.add_member(:total_steps_failed, Shapes::ShapeRef.new(shape: WorkflowStepCount, location_name: "totalStepsFailed"))
    WorkflowExecutionMetadata.add_member(:total_steps_skipped, Shapes::ShapeRef.new(shape: WorkflowStepCount, location_name: "totalStepsSkipped"))
    WorkflowExecutionMetadata.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "startTime"))
    WorkflowExecutionMetadata.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "endTime"))
    WorkflowExecutionMetadata.add_member(:parallel_group, Shapes::ShapeRef.new(shape: ParallelGroup, location_name: "parallelGroup"))
    WorkflowExecutionMetadata.struct_class = Types::WorkflowExecutionMetadata

    WorkflowExecutionsList.member = Shapes::ShapeRef.new(shape: WorkflowExecutionMetadata)

    WorkflowParameter.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowParameterName, required: true, location_name: "name"))
    WorkflowParameter.add_member(:value, Shapes::ShapeRef.new(shape: WorkflowParameterValueList, required: true, location_name: "value"))
    WorkflowParameter.struct_class = Types::WorkflowParameter

    WorkflowParameterDetail.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowParameterName, required: true, location_name: "name"))
    WorkflowParameterDetail.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowParameterType, required: true, location_name: "type"))
    WorkflowParameterDetail.add_member(:default_value, Shapes::ShapeRef.new(shape: WorkflowParameterValueList, location_name: "defaultValue"))
    WorkflowParameterDetail.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowParameterDescription, location_name: "description"))
    WorkflowParameterDetail.struct_class = Types::WorkflowParameterDetail

    WorkflowParameterDetailList.member = Shapes::ShapeRef.new(shape: WorkflowParameterDetail)

    WorkflowParameterList.member = Shapes::ShapeRef.new(shape: WorkflowParameter)

    WorkflowParameterValueList.member = Shapes::ShapeRef.new(shape: WorkflowParameterValue)

    WorkflowState.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStatus, location_name: "status"))
    WorkflowState.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    WorkflowState.struct_class = Types::WorkflowState

    WorkflowStepExecution.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: WorkflowStepExecutionId, location_name: "stepExecutionId"))
    WorkflowStepExecution.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    WorkflowStepExecution.add_member(:workflow_execution_id, Shapes::ShapeRef.new(shape: WorkflowExecutionId, location_name: "workflowExecutionId"))
    WorkflowStepExecution.add_member(:workflow_build_version_arn, Shapes::ShapeRef.new(shape: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    WorkflowStepExecution.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: "name"))
    WorkflowStepExecution.add_member(:action, Shapes::ShapeRef.new(shape: WorkflowStepAction, location_name: "action"))
    WorkflowStepExecution.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "startTime"))
    WorkflowStepExecution.struct_class = Types::WorkflowStepExecution

    WorkflowStepExecutionList.member = Shapes::ShapeRef.new(shape: WorkflowStepExecution)

    WorkflowStepExecutionsList.member = Shapes::ShapeRef.new(shape: WorkflowStepMetadata)

    WorkflowStepMetadata.add_member(:step_execution_id, Shapes::ShapeRef.new(shape: WorkflowStepExecutionId, location_name: "stepExecutionId"))
    WorkflowStepMetadata.add_member(:name, Shapes::ShapeRef.new(shape: WorkflowStepName, location_name: "name"))
    WorkflowStepMetadata.add_member(:description, Shapes::ShapeRef.new(shape: WorkflowStepDescription, location_name: "description"))
    WorkflowStepMetadata.add_member(:action, Shapes::ShapeRef.new(shape: WorkflowStepAction, location_name: "action"))
    WorkflowStepMetadata.add_member(:status, Shapes::ShapeRef.new(shape: WorkflowStepExecutionStatus, location_name: "status"))
    WorkflowStepMetadata.add_member(:rollback_status, Shapes::ShapeRef.new(shape: WorkflowStepExecutionRollbackStatus, location_name: "rollbackStatus"))
    WorkflowStepMetadata.add_member(:message, Shapes::ShapeRef.new(shape: WorkflowStepMessage, location_name: "message"))
    WorkflowStepMetadata.add_member(:inputs, Shapes::ShapeRef.new(shape: WorkflowStepInputs, location_name: "inputs"))
    WorkflowStepMetadata.add_member(:outputs, Shapes::ShapeRef.new(shape: WorkflowStepOutputs, location_name: "outputs"))
    WorkflowStepMetadata.add_member(:start_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "startTime"))
    WorkflowStepMetadata.add_member(:end_time, Shapes::ShapeRef.new(shape: DateTime, location_name: "endTime"))
    WorkflowStepMetadata.struct_class = Types::WorkflowStepMetadata

    WorkflowSummary.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowNameArn, location_name: "arn"))
    WorkflowSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    WorkflowSummary.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    WorkflowSummary.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    WorkflowSummary.add_member(:change_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "changeDescription"))
    WorkflowSummary.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    WorkflowSummary.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    WorkflowSummary.add_member(:state, Shapes::ShapeRef.new(shape: WorkflowState, location_name: "state"))
    WorkflowSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    WorkflowSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    WorkflowSummary.struct_class = Types::WorkflowSummary

    WorkflowSummaryList.member = Shapes::ShapeRef.new(shape: WorkflowSummary)

    WorkflowVersion.add_member(:arn, Shapes::ShapeRef.new(shape: WorkflowVersionArn, location_name: "arn"))
    WorkflowVersion.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    WorkflowVersion.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    WorkflowVersion.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    WorkflowVersion.add_member(:type, Shapes::ShapeRef.new(shape: WorkflowType, location_name: "type"))
    WorkflowVersion.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    WorkflowVersion.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    WorkflowVersion.struct_class = Types::WorkflowVersion

    WorkflowVersionList.member = Shapes::ShapeRef.new(shape: WorkflowVersion)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-02"

      api.metadata = {
        "apiVersion" => "2019-12-02",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "imagebuilder",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "imagebuilder",
        "serviceFullName" => "EC2 Image Builder",
        "serviceId" => "imagebuilder",
        "signatureVersion" => "v4",
        "signingName" => "imagebuilder",
        "uid" => "imagebuilder-2019-12-02",
      }

      api.add_operation(:cancel_image_creation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelImageCreation"
        o.http_method = "PUT"
        o.http_request_uri = "/CancelImageCreation"
        o.input = Shapes::ShapeRef.new(shape: CancelImageCreationRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelImageCreationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:cancel_lifecycle_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelLifecycleExecution"
        o.http_method = "PUT"
        o.http_request_uri = "/CancelLifecycleExecution"
        o.input = Shapes::ShapeRef.new(shape: CancelLifecycleExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelLifecycleExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:create_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComponent"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateComponent"
        o.input = Shapes::ShapeRef.new(shape: CreateComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionNumberException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_container_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContainerRecipe"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateContainerRecipe"
        o.input = Shapes::ShapeRef.new(shape: CreateContainerRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateContainerRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionNumberException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_distribution_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDistributionConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateDistributionConfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateDistributionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDistributionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImage"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateImage"
        o.input = Shapes::ShapeRef.new(shape: CreateImageRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_image_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImagePipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateImagePipeline"
        o.input = Shapes::ShapeRef.new(shape: CreateImagePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImagePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_image_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateImageRecipe"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateImageRecipe"
        o.input = Shapes::ShapeRef.new(shape: CreateImageRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateImageRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionNumberException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_infrastructure_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateInfrastructureConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateInfrastructureConfiguration"
        o.input = Shapes::ShapeRef.new(shape: CreateInfrastructureConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateInfrastructureConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLifecyclePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateLifecyclePolicy"
        o.input = Shapes::ShapeRef.new(shape: CreateLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateWorkflow"
        o.http_method = "PUT"
        o.http_request_uri = "/CreateWorkflow"
        o.input = Shapes::ShapeRef.new(shape: CreateWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionNumberException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:delete_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComponent"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteComponent"
        o.input = Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:delete_container_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContainerRecipe"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteContainerRecipe"
        o.input = Shapes::ShapeRef.new(shape: DeleteContainerRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteContainerRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:delete_distribution_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDistributionConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteDistributionConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteDistributionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDistributionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:delete_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImage"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteImage"
        o.input = Shapes::ShapeRef.new(shape: DeleteImageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:delete_image_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImagePipeline"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteImagePipeline"
        o.input = Shapes::ShapeRef.new(shape: DeleteImagePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImagePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:delete_image_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteImageRecipe"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteImageRecipe"
        o.input = Shapes::ShapeRef.new(shape: DeleteImageRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteImageRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:delete_infrastructure_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteInfrastructureConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteInfrastructureConfiguration"
        o.input = Shapes::ShapeRef.new(shape: DeleteInfrastructureConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteInfrastructureConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:delete_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLifecyclePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteLifecyclePolicy"
        o.input = Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:delete_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteWorkflow"
        o.http_method = "DELETE"
        o.http_request_uri = "/DeleteWorkflow"
        o.input = Shapes::ShapeRef.new(shape: DeleteWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceDependencyException)
      end)

      api.add_operation(:get_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComponent"
        o.http_method = "GET"
        o.http_request_uri = "/GetComponent"
        o.input = Shapes::ShapeRef.new(shape: GetComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_component_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComponentPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/GetComponentPolicy"
        o.input = Shapes::ShapeRef.new(shape: GetComponentPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetComponentPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_container_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContainerRecipe"
        o.http_method = "GET"
        o.http_request_uri = "/GetContainerRecipe"
        o.input = Shapes::ShapeRef.new(shape: GetContainerRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContainerRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_container_recipe_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContainerRecipePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/GetContainerRecipePolicy"
        o.input = Shapes::ShapeRef.new(shape: GetContainerRecipePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetContainerRecipePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_distribution_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDistributionConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/GetDistributionConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetDistributionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDistributionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImage"
        o.http_method = "GET"
        o.http_request_uri = "/GetImage"
        o.input = Shapes::ShapeRef.new(shape: GetImageRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_image_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImagePipeline"
        o.http_method = "GET"
        o.http_request_uri = "/GetImagePipeline"
        o.input = Shapes::ShapeRef.new(shape: GetImagePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImagePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_image_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImagePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/GetImagePolicy"
        o.input = Shapes::ShapeRef.new(shape: GetImagePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImagePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_image_recipe, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImageRecipe"
        o.http_method = "GET"
        o.http_request_uri = "/GetImageRecipe"
        o.input = Shapes::ShapeRef.new(shape: GetImageRecipeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImageRecipeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_image_recipe_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImageRecipePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/GetImageRecipePolicy"
        o.input = Shapes::ShapeRef.new(shape: GetImageRecipePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImageRecipePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_infrastructure_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetInfrastructureConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/GetInfrastructureConfiguration"
        o.input = Shapes::ShapeRef.new(shape: GetInfrastructureConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetInfrastructureConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_lifecycle_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLifecycleExecution"
        o.http_method = "GET"
        o.http_request_uri = "/GetLifecycleExecution"
        o.input = Shapes::ShapeRef.new(shape: GetLifecycleExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLifecycleExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLifecyclePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/GetLifecyclePolicy"
        o.input = Shapes::ShapeRef.new(shape: GetLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_marketplace_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMarketplaceResource"
        o.http_method = "POST"
        o.http_request_uri = "/GetMarketplaceResource"
        o.input = Shapes::ShapeRef.new(shape: GetMarketplaceResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMarketplaceResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_workflow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflow"
        o.http_method = "GET"
        o.http_request_uri = "/GetWorkflow"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_workflow_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowExecution"
        o.http_method = "GET"
        o.http_request_uri = "/GetWorkflowExecution"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:get_workflow_step_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkflowStepExecution"
        o.http_method = "GET"
        o.http_request_uri = "/GetWorkflowStepExecution"
        o.input = Shapes::ShapeRef.new(shape: GetWorkflowStepExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetWorkflowStepExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:import_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportComponent"
        o.http_method = "PUT"
        o.http_request_uri = "/ImportComponent"
        o.input = Shapes::ShapeRef.new(shape: ImportComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidVersionNumberException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:import_disk_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportDiskImage"
        o.http_method = "PUT"
        o.http_request_uri = "/ImportDiskImage"
        o.input = Shapes::ShapeRef.new(shape: ImportDiskImageRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportDiskImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:import_vm_image, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportVmImage"
        o.http_method = "PUT"
        o.http_request_uri = "/ImportVmImage"
        o.input = Shapes::ShapeRef.new(shape: ImportVmImageRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportVmImageResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)

      api.add_operation(:list_component_build_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponentBuildVersions"
        o.http_method = "POST"
        o.http_request_uri = "/ListComponentBuildVersions"
        o.input = Shapes::ShapeRef.new(shape: ListComponentBuildVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComponentBuildVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListComponents"
        o.http_method = "POST"
        o.http_request_uri = "/ListComponents"
        o.input = Shapes::ShapeRef.new(shape: ListComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_container_recipes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContainerRecipes"
        o.http_method = "POST"
        o.http_request_uri = "/ListContainerRecipes"
        o.input = Shapes::ShapeRef.new(shape: ListContainerRecipesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListContainerRecipesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_distribution_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDistributionConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/ListDistributionConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListDistributionConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDistributionConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_image_build_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImageBuildVersions"
        o.http_method = "POST"
        o.http_request_uri = "/ListImageBuildVersions"
        o.input = Shapes::ShapeRef.new(shape: ListImageBuildVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImageBuildVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_image_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImagePackages"
        o.http_method = "POST"
        o.http_request_uri = "/ListImagePackages"
        o.input = Shapes::ShapeRef.new(shape: ListImagePackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImagePackagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_image_pipeline_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImagePipelineImages"
        o.http_method = "POST"
        o.http_request_uri = "/ListImagePipelineImages"
        o.input = Shapes::ShapeRef.new(shape: ListImagePipelineImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImagePipelineImagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_image_pipelines, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImagePipelines"
        o.http_method = "POST"
        o.http_request_uri = "/ListImagePipelines"
        o.input = Shapes::ShapeRef.new(shape: ListImagePipelinesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImagePipelinesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_image_recipes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImageRecipes"
        o.http_method = "POST"
        o.http_request_uri = "/ListImageRecipes"
        o.input = Shapes::ShapeRef.new(shape: ListImageRecipesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImageRecipesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_image_scan_finding_aggregations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImageScanFindingAggregations"
        o.http_method = "POST"
        o.http_request_uri = "/ListImageScanFindingAggregations"
        o.input = Shapes::ShapeRef.new(shape: ListImageScanFindingAggregationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImageScanFindingAggregationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_image_scan_findings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImageScanFindings"
        o.http_method = "POST"
        o.http_request_uri = "/ListImageScanFindings"
        o.input = Shapes::ShapeRef.new(shape: ListImageScanFindingsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImageScanFindingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_images, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImages"
        o.http_method = "POST"
        o.http_request_uri = "/ListImages"
        o.input = Shapes::ShapeRef.new(shape: ListImagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImagesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_infrastructure_configurations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListInfrastructureConfigurations"
        o.http_method = "POST"
        o.http_request_uri = "/ListInfrastructureConfigurations"
        o.input = Shapes::ShapeRef.new(shape: ListInfrastructureConfigurationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListInfrastructureConfigurationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lifecycle_execution_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLifecycleExecutionResources"
        o.http_method = "POST"
        o.http_request_uri = "/ListLifecycleExecutionResources"
        o.input = Shapes::ShapeRef.new(shape: ListLifecycleExecutionResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLifecycleExecutionResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lifecycle_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLifecycleExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/ListLifecycleExecutions"
        o.input = Shapes::ShapeRef.new(shape: ListLifecycleExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLifecycleExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_lifecycle_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLifecyclePolicies"
        o.http_method = "POST"
        o.http_request_uri = "/ListLifecyclePolicies"
        o.input = Shapes::ShapeRef.new(shape: ListLifecyclePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLifecyclePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_waiting_workflow_steps, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWaitingWorkflowSteps"
        o.http_method = "POST"
        o.http_request_uri = "/ListWaitingWorkflowSteps"
        o.input = Shapes::ShapeRef.new(shape: ListWaitingWorkflowStepsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWaitingWorkflowStepsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_build_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowBuildVersions"
        o.http_method = "POST"
        o.http_request_uri = "/ListWorkflowBuildVersions"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowBuildVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowBuildVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/ListWorkflowExecutions"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflow_step_executions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflowStepExecutions"
        o.http_method = "POST"
        o.http_request_uri = "/ListWorkflowStepExecutions"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowStepExecutionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowStepExecutionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workflows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkflows"
        o.http_method = "POST"
        o.http_request_uri = "/ListWorkflows"
        o.input = Shapes::ShapeRef.new(shape: ListWorkflowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListWorkflowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidPaginationTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_component_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutComponentPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/PutComponentPolicy"
        o.input = Shapes::ShapeRef.new(shape: PutComponentPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutComponentPolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:put_container_recipe_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutContainerRecipePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/PutContainerRecipePolicy"
        o.input = Shapes::ShapeRef.new(shape: PutContainerRecipePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutContainerRecipePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:put_image_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutImagePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/PutImagePolicy"
        o.input = Shapes::ShapeRef.new(shape: PutImagePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutImagePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:put_image_recipe_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutImageRecipePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/PutImageRecipePolicy"
        o.input = Shapes::ShapeRef.new(shape: PutImageRecipePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutImageRecipePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
      end)

      api.add_operation(:send_workflow_step_action, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendWorkflowStepAction"
        o.http_method = "PUT"
        o.http_request_uri = "/SendWorkflowStepAction"
        o.input = Shapes::ShapeRef.new(shape: SendWorkflowStepActionRequest)
        o.output = Shapes::ShapeRef.new(shape: SendWorkflowStepActionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:start_image_pipeline_execution, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImagePipelineExecution"
        o.http_method = "PUT"
        o.http_request_uri = "/StartImagePipelineExecution"
        o.input = Shapes::ShapeRef.new(shape: StartImagePipelineExecutionRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImagePipelineExecutionResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:start_resource_state_update, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartResourceStateUpdate"
        o.http_method = "PUT"
        o.http_request_uri = "/StartResourceStateUpdate"
        o.input = Shapes::ShapeRef.new(shape: StartResourceStateUpdateRequest)
        o.output = Shapes::ShapeRef.new(shape: StartResourceStateUpdateResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_distribution_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDistributionConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/UpdateDistributionConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateDistributionConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDistributionConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)

      api.add_operation(:update_image_pipeline, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateImagePipeline"
        o.http_method = "PUT"
        o.http_request_uri = "/UpdateImagePipeline"
        o.input = Shapes::ShapeRef.new(shape: UpdateImagePipelineRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateImagePipelineResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:update_infrastructure_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateInfrastructureConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/UpdateInfrastructureConfiguration"
        o.input = Shapes::ShapeRef.new(shape: UpdateInfrastructureConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateInfrastructureConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
      end)

      api.add_operation(:update_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLifecyclePolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/UpdateLifecyclePolicy"
        o.input = Shapes::ShapeRef.new(shape: UpdateLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ClientException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: IdempotentParameterMismatchException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: CallRateLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
      end)
    end

  end
end
