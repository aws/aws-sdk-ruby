# frozen_string_literal: true

# This is generated code!

module Aws::Imagebuilder
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AccountAggregation", name: "AccountAggregation")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#AccountList", name: "AccountList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1536}})
    AdditionalInstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AdditionalInstanceConfiguration", name: "AdditionalInstanceConfiguration")
    Ami = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Ami", name: "Ami")
    AmiDistributionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AmiDistributionConfiguration", name: "AmiDistributionConfiguration")
    AmiList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#AmiList", name: "AmiList")
    AmiNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#AmiNameString", name: "AmiNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-_A-Za-z0-9{][-_A-Za-z0-9\\s:{}\\.]+[-_A-Za-z0-9}]$"})
    AmiWatermarkName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#AmiWatermarkName", name: "AmiWatermarkName", traits: {"smithy.api#length" => {"min" => 3, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9()\\[\\]./'@_\\-][A-Za-z0-9 ()\\[\\]./'@_\\-]{1,126}[A-Za-z0-9()\\[\\]./'@_\\-]$"})
    AmiWatermarksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#AmiWatermarksList", name: "AmiWatermarksList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#Arn", name: "Arn")
    AutoDisableFailureCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#AutoDisableFailureCount", name: "AutoDisableFailureCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    AutoDisablePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AutoDisablePolicy", name: "AutoDisablePolicy")
    AutoScalingGroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AutoScalingGroupConfiguration", name: "AutoScalingGroupConfiguration")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.imagebuilder#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BuildType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#BuildType", name: "BuildType")
    CallRateLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CallRateLimitExceededException", name: "CallRateLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    CancelImageCreationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CancelImageCreationRequest", name: "CancelImageCreationRequest")
    CancelImageCreationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CancelImageCreationResponse", name: "CancelImageCreationResponse")
    CancelLifecycleExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CancelLifecycleExecutionRequest", name: "CancelLifecycleExecutionRequest")
    CancelLifecycleExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CancelLifecycleExecutionResponse", name: "CancelLifecycleExecutionResponse")
    CapacityWaitTimeoutSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#CapacityWaitTimeoutSeconds", name: "CapacityWaitTimeoutSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 3600}})
    ClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ClientException", name: "ClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    Component = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Component", name: "Component")
    ComponentBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentBuildVersionArn", name: "ComponentBuildVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?|third-party):component/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+$"})
    ComponentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ComponentConfiguration", name: "ComponentConfiguration")
    ComponentConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ComponentConfigurationList", name: "ComponentConfigurationList", traits: {"smithy.api#length" => {"min" => 1}})
    ComponentData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentData", name: "ComponentData")
    ComponentFailureContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ComponentFailureContext", name: "ComponentFailureContext")
    ComponentFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ComponentFormat", name: "ComponentFormat")
    ComponentParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ComponentParameter", name: "ComponentParameter")
    ComponentParameterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentParameterDescription", name: "ComponentParameterDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[^\\x00]+$"})
    ComponentParameterDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ComponentParameterDetail", name: "ComponentParameterDetail")
    ComponentParameterDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ComponentParameterDetailList", name: "ComponentParameterDetailList")
    ComponentParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ComponentParameterList", name: "ComponentParameterList", traits: {"smithy.api#length" => {"min" => 1}})
    ComponentParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentParameterName", name: "ComponentParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^\\x00]+$"})
    ComponentParameterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentParameterType", name: "ComponentParameterType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^String|Integer|Boolean|StringList$"})
    ComponentParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentParameterValue", name: "ComponentParameterValue", traits: {"smithy.api#length" => {"min" => 0}, "smithy.api#pattern" => "^[^\\x00]*$"})
    ComponentParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ComponentParameterValueList", name: "ComponentParameterValueList")
    ComponentState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ComponentState", name: "ComponentState")
    ComponentStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ComponentStatus", name: "ComponentStatus")
    ComponentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ComponentSummary", name: "ComponentSummary")
    ComponentSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ComponentSummaryList", name: "ComponentSummaryList")
    ComponentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ComponentType", name: "ComponentType")
    ComponentVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ComponentVersion", name: "ComponentVersion")
    ComponentVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentVersionArn", name: "ComponentVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?|third-party):component/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+$"})
    ComponentVersionArnOrBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentVersionArnOrBuildVersionArn", name: "ComponentVersionArnOrBuildVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?|third-party):component/[a-z0-9-_]+/(?:(?:([0-9]+|x)\\.([0-9]+|x)\\.([0-9]+|x))|(?:[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+))$"})
    ComponentVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ComponentVersionList", name: "ComponentVersionList")
    ConsecutiveFailures = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#ConsecutiveFailures", name: "ConsecutiveFailures", traits: {"smithy.api#range" => {"min" => 0}})
    Container = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Container", name: "Container")
    ContainerDistributionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ContainerDistributionConfiguration", name: "ContainerDistributionConfiguration")
    ContainerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ContainerList", name: "ContainerList")
    ContainerRecipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ContainerRecipe", name: "ContainerRecipe")
    ContainerRecipeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ContainerRecipeArn", name: "ContainerRecipeArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):container-recipe/[a-z0-9-_]+/(?:[0-9]+|x)\\.(?:[0-9]+|x)\\.(?:[0-9]+|x)$"})
    ContainerRecipeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ContainerRecipeSummary", name: "ContainerRecipeSummary")
    ContainerRecipeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ContainerRecipeSummaryList", name: "ContainerRecipeSummaryList")
    ContainerRepositoryService = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ContainerRepositoryService", name: "ContainerRepositoryService")
    ContainerType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ContainerType", name: "ContainerType")
    CreateComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateComponentRequest", name: "CreateComponentRequest")
    CreateComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateComponentResponse", name: "CreateComponentResponse")
    CreateContainerRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateContainerRecipeRequest", name: "CreateContainerRecipeRequest")
    CreateContainerRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateContainerRecipeResponse", name: "CreateContainerRecipeResponse")
    CreateDistributionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateDistributionConfigurationRequest", name: "CreateDistributionConfigurationRequest")
    CreateDistributionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateDistributionConfigurationResponse", name: "CreateDistributionConfigurationResponse")
    CreateImagePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateImagePipelineRequest", name: "CreateImagePipelineRequest")
    CreateImagePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateImagePipelineResponse", name: "CreateImagePipelineResponse")
    CreateImageRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateImageRecipeRequest", name: "CreateImageRecipeRequest")
    CreateImageRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateImageRecipeResponse", name: "CreateImageRecipeResponse")
    CreateImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateImageRequest", name: "CreateImageRequest")
    CreateImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateImageResponse", name: "CreateImageResponse")
    CreateInfrastructureConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateInfrastructureConfigurationRequest", name: "CreateInfrastructureConfigurationRequest")
    CreateInfrastructureConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateInfrastructureConfigurationResponse", name: "CreateInfrastructureConfigurationResponse")
    CreateLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateLifecyclePolicyRequest", name: "CreateLifecyclePolicyRequest")
    CreateLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateLifecyclePolicyResponse", name: "CreateLifecyclePolicyResponse")
    CreateWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateWorkflowRequest", name: "CreateWorkflowRequest")
    CreateWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CreateWorkflowResponse", name: "CreateWorkflowResponse")
    CvssScore = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CvssScore", name: "CvssScore")
    CvssScoreAdjustment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CvssScoreAdjustment", name: "CvssScoreAdjustment")
    CvssScoreAdjustmentList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#CvssScoreAdjustmentList", name: "CvssScoreAdjustmentList")
    CvssScoreDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CvssScoreDetails", name: "CvssScoreDetails")
    CvssScoreList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#CvssScoreList", name: "CvssScoreList")
    DateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#DateTime", name: "DateTime")
    DateTimeTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.imagebuilder#DateTimeTimestamp", name: "DateTimeTimestamp")
    DeleteComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteComponentRequest", name: "DeleteComponentRequest")
    DeleteComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteComponentResponse", name: "DeleteComponentResponse")
    DeleteContainerRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteContainerRecipeRequest", name: "DeleteContainerRecipeRequest")
    DeleteContainerRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteContainerRecipeResponse", name: "DeleteContainerRecipeResponse")
    DeleteDistributionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteDistributionConfigurationRequest", name: "DeleteDistributionConfigurationRequest")
    DeleteDistributionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteDistributionConfigurationResponse", name: "DeleteDistributionConfigurationResponse")
    DeleteImagePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteImagePipelineRequest", name: "DeleteImagePipelineRequest")
    DeleteImagePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteImagePipelineResponse", name: "DeleteImagePipelineResponse")
    DeleteImageRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteImageRecipeRequest", name: "DeleteImageRecipeRequest")
    DeleteImageRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteImageRecipeResponse", name: "DeleteImageRecipeResponse")
    DeleteImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteImageRequest", name: "DeleteImageRequest")
    DeleteImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteImageResponse", name: "DeleteImageResponse")
    DeleteInfrastructureConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteInfrastructureConfigurationRequest", name: "DeleteInfrastructureConfigurationRequest")
    DeleteInfrastructureConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteInfrastructureConfigurationResponse", name: "DeleteInfrastructureConfigurationResponse")
    DeleteLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteLifecyclePolicyRequest", name: "DeleteLifecyclePolicyRequest")
    DeleteLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteLifecyclePolicyResponse", name: "DeleteLifecyclePolicyResponse")
    DeleteWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteWorkflowRequest", name: "DeleteWorkflowRequest")
    DeleteWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DeleteWorkflowResponse", name: "DeleteWorkflowResponse")
    DiskImageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#DiskImageFormat", name: "DiskImageFormat")
    DistributeImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DistributeImageRequest", name: "DistributeImageRequest")
    DistributeImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DistributeImageResponse", name: "DistributeImageResponse")
    Distribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Distribution", name: "Distribution")
    DistributionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DistributionConfiguration", name: "DistributionConfiguration")
    DistributionConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#DistributionConfigurationArn", name: "DistributionConfigurationArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):distribution-configuration/[a-z0-9-_]+$"})
    DistributionConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DistributionConfigurationSummary", name: "DistributionConfigurationSummary")
    DistributionConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#DistributionConfigurationSummaryList", name: "DistributionConfigurationSummaryList")
    DistributionFailureContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DistributionFailureContext", name: "DistributionFailureContext")
    DistributionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#DistributionList", name: "DistributionList")
    DistributionTimeoutMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#DistributionTimeoutMinutes", name: "DistributionTimeoutMinutes", traits: {"smithy.api#range" => {"min" => 30, "max" => 720}})
    DockerFileTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#DockerFileTemplate", name: "DockerFileTemplate")
    DryRunOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DryRunOperationException", name: "DryRunOperationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    EbsInstanceBlockDeviceSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#EbsInstanceBlockDeviceSpecification", name: "EbsInstanceBlockDeviceSpecification")
    EbsIopsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#EbsIopsInteger", name: "EbsIopsInteger", traits: {"smithy.api#range" => {"min" => 100, "max" => 64000}})
    EbsVolumeSizeInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#EbsVolumeSizeInteger", name: "EbsVolumeSizeInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 16000}})
    EbsVolumeThroughput = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#EbsVolumeThroughput", name: "EbsVolumeThroughput", traits: {"smithy.api#range" => {"min" => 125, "max" => 1000}})
    EbsVolumeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#EbsVolumeType", name: "EbsVolumeType")
    EcrConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#EcrConfiguration", name: "EcrConfiguration")
    EmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#EmptyString", name: "EmptyString", traits: {"smithy.api#length" => {"min" => 0, "max" => 0}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ErrorMessage", name: "ErrorMessage")
    FastLaunchConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#FastLaunchConfiguration", name: "FastLaunchConfiguration")
    FastLaunchConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#FastLaunchConfigurationList", name: "FastLaunchConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    FastLaunchLaunchTemplateSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#FastLaunchLaunchTemplateSpecification", name: "FastLaunchLaunchTemplateSpecification")
    FastLaunchSnapshotConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#FastLaunchSnapshotConfiguration", name: "FastLaunchSnapshotConfiguration")
    Filter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Filter", name: "Filter")
    FilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#FilterList", name: "FilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    FilterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#FilterName", name: "FilterName", traits: {"smithy.api#pattern" => "^[a-zA-Z]{1,1024}$"})
    FilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#FilterValue", name: "FilterValue", traits: {"smithy.api#pattern" => "^[0-9a-zA-Z./_ :,{}\"-]{1,1024}$"})
    FilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#FilterValues", name: "FilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetComponentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetComponentPolicyRequest", name: "GetComponentPolicyRequest")
    GetComponentPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetComponentPolicyResponse", name: "GetComponentPolicyResponse")
    GetComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetComponentRequest", name: "GetComponentRequest")
    GetComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetComponentResponse", name: "GetComponentResponse")
    GetContainerRecipePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetContainerRecipePolicyRequest", name: "GetContainerRecipePolicyRequest")
    GetContainerRecipePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetContainerRecipePolicyResponse", name: "GetContainerRecipePolicyResponse")
    GetContainerRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetContainerRecipeRequest", name: "GetContainerRecipeRequest")
    GetContainerRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetContainerRecipeResponse", name: "GetContainerRecipeResponse")
    GetDistributionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetDistributionConfigurationRequest", name: "GetDistributionConfigurationRequest")
    GetDistributionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetDistributionConfigurationResponse", name: "GetDistributionConfigurationResponse")
    GetImagePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImagePipelineRequest", name: "GetImagePipelineRequest")
    GetImagePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImagePipelineResponse", name: "GetImagePipelineResponse")
    GetImagePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImagePolicyRequest", name: "GetImagePolicyRequest")
    GetImagePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImagePolicyResponse", name: "GetImagePolicyResponse")
    GetImageRecipePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImageRecipePolicyRequest", name: "GetImageRecipePolicyRequest")
    GetImageRecipePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImageRecipePolicyResponse", name: "GetImageRecipePolicyResponse")
    GetImageRecipeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImageRecipeRequest", name: "GetImageRecipeRequest")
    GetImageRecipeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImageRecipeResponse", name: "GetImageRecipeResponse")
    GetImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImageRequest", name: "GetImageRequest")
    GetImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetImageResponse", name: "GetImageResponse")
    GetInfrastructureConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetInfrastructureConfigurationRequest", name: "GetInfrastructureConfigurationRequest")
    GetInfrastructureConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetInfrastructureConfigurationResponse", name: "GetInfrastructureConfigurationResponse")
    GetLifecycleExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetLifecycleExecutionRequest", name: "GetLifecycleExecutionRequest")
    GetLifecycleExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetLifecycleExecutionResponse", name: "GetLifecycleExecutionResponse")
    GetLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetLifecyclePolicyRequest", name: "GetLifecyclePolicyRequest")
    GetLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetLifecyclePolicyResponse", name: "GetLifecyclePolicyResponse")
    GetMarketplaceResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetMarketplaceResourceRequest", name: "GetMarketplaceResourceRequest")
    GetMarketplaceResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetMarketplaceResourceResponse", name: "GetMarketplaceResourceResponse")
    GetWorkflowExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetWorkflowExecutionRequest", name: "GetWorkflowExecutionRequest")
    GetWorkflowExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetWorkflowExecutionResponse", name: "GetWorkflowExecutionResponse")
    GetWorkflowRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetWorkflowRequest", name: "GetWorkflowRequest")
    GetWorkflowResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetWorkflowResponse", name: "GetWorkflowResponse")
    GetWorkflowStepExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetWorkflowStepExecutionRequest", name: "GetWorkflowStepExecutionRequest")
    GetWorkflowStepExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#GetWorkflowStepExecutionResponse", name: "GetWorkflowStepExecutionResponse")
    HttpPutResponseHopLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#HttpPutResponseHopLimit", name: "HttpPutResponseHopLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 64}})
    HttpTokens = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#HttpTokens", name: "HttpTokens", traits: {"smithy.api#pattern" => "^optional|required$"})
    IdempotentParameterMismatchException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#IdempotentParameterMismatchException", name: "IdempotentParameterMismatchException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Image = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Image", name: "Image")
    ImageAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageAggregation", name: "ImageAggregation")
    ImageBuildMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImageBuildMessage", name: "ImageBuildMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    ImageBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImageBuildVersionArn", name: "ImageBuildVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):image/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+$"})
    ImageBuilderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImageBuilderArn", name: "ImageBuilderArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?|third-party):(?:image-recipe|container-recipe|infrastructure-configuration|distribution-configuration|component|image|image-pipeline|lifecycle-policy|workflow\\/(?:build|test|distribution))/[a-z0-9-_]+(?:/(?:(?:x|[0-9]+)\\.(?:x|[0-9]+)\\.(?:x|[0-9]+))(?:/[0-9]+)?)?$"})
    ImageConfigurationStep = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ImageConfigurationStep", name: "ImageConfigurationStep")
    ImageFailureContext = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageFailureContext", name: "ImageFailureContext")
    ImageLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageLoggingConfiguration", name: "ImageLoggingConfiguration")
    ImagePackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImagePackage", name: "ImagePackage")
    ImagePackageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImagePackageList", name: "ImagePackageList")
    ImagePipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImagePipeline", name: "ImagePipeline")
    ImagePipelineAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImagePipelineAggregation", name: "ImagePipelineAggregation")
    ImagePipelineArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImagePipelineArn", name: "ImagePipelineArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):image-pipeline/[a-z0-9-_]+$"})
    ImagePipelineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImagePipelineList", name: "ImagePipelineList")
    ImageRecipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageRecipe", name: "ImageRecipe")
    ImageRecipeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImageRecipeArn", name: "ImageRecipeArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):image-recipe/[a-z0-9-_]+/(?:[0-9]+|x)\\.(?:[0-9]+|x)\\.(?:[0-9]+|x)$"})
    ImageRecipeSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageRecipeSummary", name: "ImageRecipeSummary")
    ImageRecipeSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImageRecipeSummaryList", name: "ImageRecipeSummaryList")
    ImageScanFinding = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageScanFinding", name: "ImageScanFinding")
    ImageScanFindingAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageScanFindingAggregation", name: "ImageScanFindingAggregation")
    ImageScanFindingAggregationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImageScanFindingAggregationsList", name: "ImageScanFindingAggregationsList")
    ImageScanFindingsFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageScanFindingsFilter", name: "ImageScanFindingsFilter")
    ImageScanFindingsFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImageScanFindingsFilterList", name: "ImageScanFindingsFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ImageScanFindingsFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImageScanFindingsFilterValues", name: "ImageScanFindingsFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ImageScanFindingsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImageScanFindingsList", name: "ImageScanFindingsList", traits: {"smithy.api#length" => {"min" => 0, "max" => 25}})
    ImageScanState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageScanState", name: "ImageScanState")
    ImageScanStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ImageScanStatus", name: "ImageScanStatus")
    ImageScanningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageScanningConfiguration", name: "ImageScanningConfiguration")
    ImageSource = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ImageSource", name: "ImageSource")
    ImageState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageState", name: "ImageState")
    ImageStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ImageStatus", name: "ImageStatus")
    ImageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageSummary", name: "ImageSummary")
    ImageSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImageSummaryList", name: "ImageSummaryList")
    ImageTestsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageTestsConfiguration", name: "ImageTestsConfiguration")
    ImageTestsTimeoutMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#ImageTestsTimeoutMinutes", name: "ImageTestsTimeoutMinutes", traits: {"smithy.api#range" => {"min" => 60, "max" => 1440}})
    ImageType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ImageType", name: "ImageType")
    ImageVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageVersion", name: "ImageVersion")
    ImageVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImageVersionArn", name: "ImageVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):image/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+$"})
    ImageVersionArnOrBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImageVersionArnOrBuildVersionArn", name: "ImageVersionArnOrBuildVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):image/[a-z0-9-_]+/(?:(?:([0-9]+|x)\\.([0-9]+|x)\\.([0-9]+|x))|(?:[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+))$"})
    ImageVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImageVersionList", name: "ImageVersionList")
    ImportComponentRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImportComponentRequest", name: "ImportComponentRequest")
    ImportComponentResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImportComponentResponse", name: "ImportComponentResponse")
    ImportDiskImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImportDiskImageRequest", name: "ImportDiskImageRequest")
    ImportDiskImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImportDiskImageResponse", name: "ImportDiskImageResponse")
    ImportVmImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImportVmImageRequest", name: "ImportVmImageRequest")
    ImportVmImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImportVmImageResponse", name: "ImportVmImageResponse")
    InfrastructureConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InfrastructureConfiguration", name: "InfrastructureConfiguration")
    InfrastructureConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#InfrastructureConfigurationArn", name: "InfrastructureConfigurationArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):infrastructure-configuration/[a-z0-9-_]+$"})
    InfrastructureConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InfrastructureConfigurationSummary", name: "InfrastructureConfigurationSummary")
    InfrastructureConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#InfrastructureConfigurationSummaryList", name: "InfrastructureConfigurationSummaryList")
    InlineComponentData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#InlineComponentData", name: "InlineComponentData", traits: {"smithy.api#length" => {"min" => 1, "max" => 16000}, "smithy.api#pattern" => "^[^\\x00]+$"})
    InlineDockerFileTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#InlineDockerFileTemplate", name: "InlineDockerFileTemplate", traits: {"smithy.api#length" => {"min" => 1, "max" => 16000}, "smithy.api#pattern" => "^[^\\x00]+$"})
    InlineWorkflowData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#InlineWorkflowData", name: "InlineWorkflowData", traits: {"smithy.api#length" => {"min" => 1, "max" => 16000}, "smithy.api#pattern" => "^[^\\x00]+$"})
    InspectorScoreDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InspectorScoreDetails", name: "InspectorScoreDetails")
    InstanceBlockDeviceMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InstanceBlockDeviceMapping", name: "InstanceBlockDeviceMapping")
    InstanceBlockDeviceMappings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#InstanceBlockDeviceMappings", name: "InstanceBlockDeviceMappings")
    InstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InstanceConfiguration", name: "InstanceConfiguration")
    InstanceMetadataOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InstanceMetadataOptions", name: "InstanceMetadataOptions")
    InstanceProfileNameType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#InstanceProfileNameType", name: "InstanceProfileNameType", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\w+=,.@-]+$"})
    InstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#InstanceType", name: "InstanceType")
    InstanceTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#InstanceTypeList", name: "InstanceTypeList")
    InvalidPaginationTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InvalidPaginationTokenException", name: "InvalidPaginationTokenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidVersionNumberException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#InvalidVersionNumberException", name: "InvalidVersionNumberException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LatestVersionReferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LatestVersionReferences", name: "LatestVersionReferences")
    LaunchPermissionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LaunchPermissionConfiguration", name: "LaunchPermissionConfiguration")
    LaunchTemplateConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LaunchTemplateConfiguration", name: "LaunchTemplateConfiguration")
    LaunchTemplateConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#LaunchTemplateConfigurationList", name: "LaunchTemplateConfigurationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    LaunchTemplateId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#LaunchTemplateId", name: "LaunchTemplateId", traits: {"smithy.api#pattern" => "^lt-[a-z0-9-_]{17}$"})
    LicenseConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#LicenseConfigurationArn", name: "LicenseConfigurationArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:license-manager:[^:]+:[0-9]{12}:license-configuration:lic-[a-z0-9-_]{32}$"})
    LicenseConfigurationArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#LicenseConfigurationArnList", name: "LicenseConfigurationArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    LifecycleExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecution", name: "LifecycleExecution")
    LifecycleExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionId", name: "LifecycleExecutionId", traits: {"smithy.api#pattern" => "^lce-[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    LifecycleExecutionResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionResource", name: "LifecycleExecutionResource")
    LifecycleExecutionResourceAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionResourceAction", name: "LifecycleExecutionResourceAction")
    LifecycleExecutionResourceActionName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionResourceActionName", name: "LifecycleExecutionResourceActionName")
    LifecycleExecutionResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionResourceList", name: "LifecycleExecutionResourceList")
    LifecycleExecutionResourceState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionResourceState", name: "LifecycleExecutionResourceState")
    LifecycleExecutionResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionResourceStatus", name: "LifecycleExecutionResourceStatus")
    LifecycleExecutionResourcesImpactedSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionResourcesImpactedSummary", name: "LifecycleExecutionResourcesImpactedSummary")
    LifecycleExecutionSnapshotResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionSnapshotResource", name: "LifecycleExecutionSnapshotResource")
    LifecycleExecutionSnapshotResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionSnapshotResourceList", name: "LifecycleExecutionSnapshotResourceList")
    LifecycleExecutionState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionState", name: "LifecycleExecutionState")
    LifecycleExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionStatus", name: "LifecycleExecutionStatus")
    LifecycleExecutionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#LifecycleExecutionsList", name: "LifecycleExecutionsList")
    LifecyclePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicy", name: "LifecyclePolicy")
    LifecyclePolicyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyArn", name: "LifecyclePolicyArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:imagebuilder:[a-z]{2,}(?:-[a-z]+)+-[0-9]+:(?:[0-9]{12}|aws):lifecycle-policy/[a-z0-9-_]+$"})
    LifecyclePolicyDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetail", name: "LifecyclePolicyDetail")
    LifecyclePolicyDetailAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailAction", name: "LifecyclePolicyDetailAction")
    LifecyclePolicyDetailActionIncludeResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailActionIncludeResources", name: "LifecyclePolicyDetailActionIncludeResources")
    LifecyclePolicyDetailActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailActionType", name: "LifecyclePolicyDetailActionType")
    LifecyclePolicyDetailExclusionRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailExclusionRules", name: "LifecyclePolicyDetailExclusionRules")
    LifecyclePolicyDetailExclusionRulesAmis = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailExclusionRulesAmis", name: "LifecyclePolicyDetailExclusionRulesAmis")
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailExclusionRulesAmisLastLaunched", name: "LifecyclePolicyDetailExclusionRulesAmisLastLaunched")
    LifecyclePolicyDetailExclusionRulesAmisLastLaunchedValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailExclusionRulesAmisLastLaunchedValue", name: "LifecyclePolicyDetailExclusionRulesAmisLastLaunchedValue", traits: {"smithy.api#range" => {"min" => 1, "max" => 365}})
    LifecyclePolicyDetailFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailFilter", name: "LifecyclePolicyDetailFilter")
    LifecyclePolicyDetailFilterRetainAtLeast = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailFilterRetainAtLeast", name: "LifecyclePolicyDetailFilterRetainAtLeast", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    LifecyclePolicyDetailFilterType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailFilterType", name: "LifecyclePolicyDetailFilterType")
    LifecyclePolicyDetailFilterValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetailFilterValue", name: "LifecyclePolicyDetailFilterValue", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    LifecyclePolicyDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyDetails", name: "LifecyclePolicyDetails", traits: {"smithy.api#length" => {"min" => 1, "max" => 3}})
    LifecyclePolicyResourceSelection = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyResourceSelection", name: "LifecyclePolicyResourceSelection")
    LifecyclePolicyResourceSelectionRecipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyResourceSelectionRecipe", name: "LifecyclePolicyResourceSelectionRecipe")
    LifecyclePolicyResourceSelectionRecipes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyResourceSelectionRecipes", name: "LifecyclePolicyResourceSelectionRecipes", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    LifecyclePolicyResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyResourceType", name: "LifecyclePolicyResourceType")
    LifecyclePolicyStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyStatus", name: "LifecyclePolicyStatus")
    LifecyclePolicySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicySummary", name: "LifecyclePolicySummary")
    LifecyclePolicySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicySummaryList", name: "LifecyclePolicySummaryList")
    LifecyclePolicyTimeUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#LifecyclePolicyTimeUnit", name: "LifecyclePolicyTimeUnit")
    ListComponentBuildVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListComponentBuildVersionsRequest", name: "ListComponentBuildVersionsRequest")
    ListComponentBuildVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListComponentBuildVersionsResponse", name: "ListComponentBuildVersionsResponse")
    ListComponentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListComponentsRequest", name: "ListComponentsRequest")
    ListComponentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListComponentsResponse", name: "ListComponentsResponse")
    ListContainerRecipesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListContainerRecipesRequest", name: "ListContainerRecipesRequest")
    ListContainerRecipesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListContainerRecipesResponse", name: "ListContainerRecipesResponse")
    ListDistributionConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListDistributionConfigurationsRequest", name: "ListDistributionConfigurationsRequest")
    ListDistributionConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListDistributionConfigurationsResponse", name: "ListDistributionConfigurationsResponse")
    ListImageBuildVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImageBuildVersionsRequest", name: "ListImageBuildVersionsRequest")
    ListImageBuildVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImageBuildVersionsResponse", name: "ListImageBuildVersionsResponse")
    ListImagePackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImagePackagesRequest", name: "ListImagePackagesRequest")
    ListImagePackagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImagePackagesResponse", name: "ListImagePackagesResponse")
    ListImagePipelineImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImagePipelineImagesRequest", name: "ListImagePipelineImagesRequest")
    ListImagePipelineImagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImagePipelineImagesResponse", name: "ListImagePipelineImagesResponse")
    ListImagePipelinesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImagePipelinesRequest", name: "ListImagePipelinesRequest")
    ListImagePipelinesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImagePipelinesResponse", name: "ListImagePipelinesResponse")
    ListImageRecipesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImageRecipesRequest", name: "ListImageRecipesRequest")
    ListImageRecipesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImageRecipesResponse", name: "ListImageRecipesResponse")
    ListImageScanFindingAggregationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImageScanFindingAggregationsRequest", name: "ListImageScanFindingAggregationsRequest")
    ListImageScanFindingAggregationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImageScanFindingAggregationsResponse", name: "ListImageScanFindingAggregationsResponse")
    ListImageScanFindingsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImageScanFindingsRequest", name: "ListImageScanFindingsRequest")
    ListImageScanFindingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImageScanFindingsResponse", name: "ListImageScanFindingsResponse")
    ListImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImagesRequest", name: "ListImagesRequest")
    ListImagesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListImagesResponse", name: "ListImagesResponse")
    ListInfrastructureConfigurationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListInfrastructureConfigurationsRequest", name: "ListInfrastructureConfigurationsRequest")
    ListInfrastructureConfigurationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListInfrastructureConfigurationsResponse", name: "ListInfrastructureConfigurationsResponse")
    ListLifecycleExecutionResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListLifecycleExecutionResourcesRequest", name: "ListLifecycleExecutionResourcesRequest")
    ListLifecycleExecutionResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListLifecycleExecutionResourcesResponse", name: "ListLifecycleExecutionResourcesResponse")
    ListLifecycleExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListLifecycleExecutionsRequest", name: "ListLifecycleExecutionsRequest")
    ListLifecycleExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListLifecycleExecutionsResponse", name: "ListLifecycleExecutionsResponse")
    ListLifecyclePoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListLifecyclePoliciesRequest", name: "ListLifecyclePoliciesRequest")
    ListLifecyclePoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListLifecyclePoliciesResponse", name: "ListLifecyclePoliciesResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    ListWaitingWorkflowStepsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWaitingWorkflowStepsRequest", name: "ListWaitingWorkflowStepsRequest")
    ListWaitingWorkflowStepsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWaitingWorkflowStepsResponse", name: "ListWaitingWorkflowStepsResponse")
    ListWorkflowBuildVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWorkflowBuildVersionsRequest", name: "ListWorkflowBuildVersionsRequest")
    ListWorkflowBuildVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWorkflowBuildVersionsResponse", name: "ListWorkflowBuildVersionsResponse")
    ListWorkflowExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWorkflowExecutionsRequest", name: "ListWorkflowExecutionsRequest")
    ListWorkflowExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWorkflowExecutionsResponse", name: "ListWorkflowExecutionsResponse")
    ListWorkflowStepExecutionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWorkflowStepExecutionsRequest", name: "ListWorkflowStepExecutionsRequest")
    ListWorkflowStepExecutionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWorkflowStepExecutionsResponse", name: "ListWorkflowStepExecutionsResponse")
    ListWorkflowsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWorkflowsRequest", name: "ListWorkflowsRequest")
    ListWorkflowsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ListWorkflowsResponse", name: "ListWorkflowsResponse")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[a-zA-Z0-9\\-_/\\.]{1,512}$"})
    Logging = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Logging", name: "Logging")
    MarketplaceResourceLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#MarketplaceResourceLocation", name: "MarketplaceResourceLocation", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3://[^/]+/.+[^/]$"})
    MarketplaceResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#MarketplaceResourceType", name: "MarketplaceResourceType")
    MaxParallelLaunches = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#MaxParallelLaunches", name: "MaxParallelLaunches", traits: {"smithy.api#range" => {"min" => 1}})
    NonEmptyMaxLengthString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#NonEmptyMaxLengthString", name: "NonEmptyMaxLengthString", traits: {"smithy.api#length" => {"min" => 1, "max" => 384000}})
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    NonEmptyStringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#NonEmptyStringList", name: "NonEmptyStringList", traits: {"smithy.api#length" => {"min" => 1}})
    NonNegativeDouble = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.imagebuilder#NonNegativeDouble", name: "NonNegativeDouble", traits: {"smithy.api#range" => {"min" => 0}})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.imagebuilder#NullableBoolean", name: "NullableBoolean")
    OnWorkflowFailure = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#OnWorkflowFailure", name: "OnWorkflowFailure")
    OrganizationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#OrganizationArn", name: "OrganizationArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:organizations::[0-9]{12}:organization/o-[a-z0-9]{10,32}$"})
    OrganizationArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#OrganizationArnList", name: "OrganizationArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    OrganizationalUnitArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#OrganizationalUnitArn", name: "OrganizationalUnitArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:organizations::[0-9]{12}:ou/o-[a-z0-9]{10,32}/ou-[0-9a-z]{4,32}-[0-9a-z]{8,32}$"})
    OrganizationalUnitArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#OrganizationalUnitArnList", name: "OrganizationalUnitArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    OsVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#OsVersion", name: "OsVersion", traits: {"smithy.api#length" => {"min" => 1}})
    OsVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#OsVersionList", name: "OsVersionList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    OutputResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#OutputResources", name: "OutputResources")
    Ownership = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#Ownership", name: "Ownership")
    PackageArchitecture = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#PackageArchitecture", name: "PackageArchitecture")
    PackageEpoch = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#PackageEpoch", name: "PackageEpoch")
    PackageVulnerabilityDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PackageVulnerabilityDetails", name: "PackageVulnerabilityDetails")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 65535}})
    ParallelGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ParallelGroup", name: "ParallelGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9-_+#]{0,99}$"})
    ParentInstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ParentInstanceConfiguration", name: "ParentInstanceConfiguration")
    PipelineExecutionStartCondition = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#PipelineExecutionStartCondition", name: "PipelineExecutionStartCondition")
    PipelineLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PipelineLoggingConfiguration", name: "PipelineLoggingConfiguration")
    PipelineStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#PipelineStatus", name: "PipelineStatus")
    Placement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Placement", name: "Placement")
    Platform = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#Platform", name: "Platform")
    ProductCodeId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ProductCodeId", name: "ProductCodeId", traits: {"smithy.api#pattern" => "^[A-Za-z0-9]{1,25}$"})
    ProductCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ProductCodeList", name: "ProductCodeList")
    ProductCodeListItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ProductCodeListItem", name: "ProductCodeListItem")
    ProductCodeType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ProductCodeType", name: "ProductCodeType")
    PutComponentPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PutComponentPolicyRequest", name: "PutComponentPolicyRequest")
    PutComponentPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PutComponentPolicyResponse", name: "PutComponentPolicyResponse")
    PutContainerRecipePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PutContainerRecipePolicyRequest", name: "PutContainerRecipePolicyRequest")
    PutContainerRecipePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PutContainerRecipePolicyResponse", name: "PutContainerRecipePolicyResponse")
    PutImagePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PutImagePolicyRequest", name: "PutImagePolicyRequest")
    PutImagePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PutImagePolicyResponse", name: "PutImagePolicyResponse")
    PutImageRecipePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PutImageRecipePolicyRequest", name: "PutImageRecipePolicyRequest")
    PutImageRecipePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#PutImageRecipePolicyResponse", name: "PutImageRecipePolicyResponse")
    RegionFailure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#RegionFailure", name: "RegionFailure")
    RegionFailureList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#RegionFailureList", name: "RegionFailureList", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    RegionFailureStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#RegionFailureStatus", name: "RegionFailureStatus")
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#RegionList", name: "RegionList")
    RegisterImageOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#RegisterImageOptions", name: "RegisterImageOptions")
    Remediation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Remediation", name: "Remediation")
    RemediationRecommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#RemediationRecommendation", name: "RemediationRecommendation")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceDependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ResourceDependencyException", name: "ResourceDependencyException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ResourceName", name: "ResourceName", traits: {"smithy.api#pattern" => "^[-_A-Za-z-0-9][-_A-Za-z0-9 ]{1,126}[-_A-Za-z-0-9]$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ResourcePolicyDocument", name: "ResourcePolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 30000}})
    ResourceState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ResourceState", name: "ResourceState")
    ResourceStateUpdateExclusionRules = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ResourceStateUpdateExclusionRules", name: "ResourceStateUpdateExclusionRules")
    ResourceStateUpdateIncludeResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ResourceStateUpdateIncludeResources", name: "ResourceStateUpdateIncludeResources")
    ResourceStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#ResourceStatus", name: "ResourceStatus")
    ResourceTagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.imagebuilder#ResourceTagMap", name: "ResourceTagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}})
    RestrictedInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#RestrictedInteger", name: "RestrictedInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 25}})
    RetryImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#RetryImageRequest", name: "RetryImageRequest")
    RetryImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#RetryImageResponse", name: "RetryImageResponse")
    RoleNameOrArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#RoleNameOrArn", name: "RoleNameOrArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^(?:arn:aws(?:-[a-z]+)*:iam::[0-9]{12}:role/)?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3ExportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#S3ExportConfiguration", name: "S3ExportConfiguration")
    S3Logs = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#S3Logs", name: "S3Logs")
    Schedule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Schedule", name: "Schedule")
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#SecurityGroupIds", name: "SecurityGroupIds")
    SendWorkflowStepActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#SendWorkflowStepActionRequest", name: "SendWorkflowStepActionRequest")
    SendWorkflowStepActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#SendWorkflowStepActionResponse", name: "SendWorkflowStepActionResponse")
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ServiceException", name: "ServiceException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SeverityCountNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#SeverityCountNumber", name: "SeverityCountNumber")
    SeverityCounts = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#SeverityCounts", name: "SeverityCounts")
    SnsTopicArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#SnsTopicArn", name: "SnsTopicArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:sns:[^:]+:[0-9]{12}:[a-zA-Z0-9-_]{1,256}$"})
    SourceLayerHash = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#SourceLayerHash", name: "SourceLayerHash")
    SsmParameterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#SsmParameterConfiguration", name: "SsmParameterConfiguration")
    SsmParameterConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#SsmParameterConfigurationList", name: "SsmParameterConfigurationList")
    SsmParameterDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#SsmParameterDataType", name: "SsmParameterDataType")
    SsmParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#SsmParameterName", name: "SsmParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[a-zA-Z0-9_.\\-\\/]+$"})
    StartImagePipelineExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#StartImagePipelineExecutionRequest", name: "StartImagePipelineExecutionRequest")
    StartImagePipelineExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#StartImagePipelineExecutionResponse", name: "StartImagePipelineExecutionResponse")
    StartResourceStateUpdateRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#StartResourceStateUpdateRequest", name: "StartResourceStateUpdateRequest")
    StartResourceStateUpdateResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#StartResourceStateUpdateResponse", name: "StartResourceStateUpdateResponse")
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#StringList", name: "StringList")
    SystemsManagerAgent = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#SystemsManagerAgent", name: "SystemsManagerAgent")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z0-9\\s_.:/=+\\-@]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.imagebuilder#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetContainerRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#TargetContainerRepository", name: "TargetContainerRepository")
    TargetResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#TargetResourceCount", name: "TargetResourceCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    TenancyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#TenancyType", name: "TenancyType")
    Timezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#Timezone", name: "Timezone", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9]{2,}(?:\\/[a-zA-Z0-9-_+]+)*$"})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UefiData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#UefiData", name: "UefiData", traits: {"smithy.api#length" => {"min" => 0, "max" => 64000}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateDistributionConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UpdateDistributionConfigurationRequest", name: "UpdateDistributionConfigurationRequest")
    UpdateDistributionConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UpdateDistributionConfigurationResponse", name: "UpdateDistributionConfigurationResponse")
    UpdateImagePipelineRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UpdateImagePipelineRequest", name: "UpdateImagePipelineRequest")
    UpdateImagePipelineResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UpdateImagePipelineResponse", name: "UpdateImagePipelineResponse")
    UpdateInfrastructureConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UpdateInfrastructureConfigurationRequest", name: "UpdateInfrastructureConfigurationRequest")
    UpdateInfrastructureConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UpdateInfrastructureConfigurationResponse", name: "UpdateInfrastructureConfigurationResponse")
    UpdateLifecyclePolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UpdateLifecyclePolicyRequest", name: "UpdateLifecyclePolicyRequest")
    UpdateLifecyclePolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#UpdateLifecyclePolicyResponse", name: "UpdateLifecyclePolicyResponse")
    Uri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#Uri", name: "Uri")
    UserDataOverride = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#UserDataOverride", name: "UserDataOverride", traits: {"smithy.api#length" => {"min" => 1, "max" => 21847}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})
    VersionNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#VersionNumber", name: "VersionNumber", traits: {"smithy.api#pattern" => "^[0-9]+\\.[0-9]+\\.[0-9]+$"})
    VersionNumberWithBuild = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#VersionNumberWithBuild", name: "VersionNumberWithBuild", traits: {"smithy.api#length" => {"min" => 5, "max" => 64}, "smithy.api#pattern" => "^[0-9]+\\.[0-9]+\\.[0-9]+(?:/[0-9]+)?$"})
    VulnerabilityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#VulnerabilityId", name: "VulnerabilityId")
    VulnerabilityIdAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#VulnerabilityIdAggregation", name: "VulnerabilityIdAggregation")
    VulnerabilityIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#VulnerabilityIdList", name: "VulnerabilityIdList")
    VulnerablePackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#VulnerablePackage", name: "VulnerablePackage")
    VulnerablePackageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#VulnerablePackageList", name: "VulnerablePackageList")
    WildcardVersionNumber = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WildcardVersionNumber", name: "WildcardVersionNumber", traits: {"smithy.api#pattern" => "^(?:[0-9]+|x)\\.(?:[0-9]+|x)\\.(?:[0-9]+|x)$"})
    WindowsConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WindowsConfiguration", name: "WindowsConfiguration")
    WindowsConfigurationImageIndex = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#WindowsConfigurationImageIndex", name: "WindowsConfigurationImageIndex", traits: {"smithy.api#range" => {"min" => 1, "max" => 4294967295}})
    Workflow = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Workflow", name: "Workflow")
    WorkflowBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowBuildVersionArn", name: "WorkflowBuildVersionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:imagebuilder:[a-z]{2,}(?:-[a-z]+)+-[0-9]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):workflow/(build|test|distribution)/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+$"})
    WorkflowConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowConfiguration", name: "WorkflowConfiguration")
    WorkflowConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowConfigurationList", name: "WorkflowConfigurationList")
    WorkflowData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowData", name: "WorkflowData")
    WorkflowExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowExecutionId", name: "WorkflowExecutionId", traits: {"smithy.api#pattern" => "^wf-[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    WorkflowExecutionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowExecutionMessage", name: "WorkflowExecutionMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    WorkflowExecutionMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowExecutionMetadata", name: "WorkflowExecutionMetadata")
    WorkflowExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#WorkflowExecutionStatus", name: "WorkflowExecutionStatus")
    WorkflowExecutionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowExecutionsList", name: "WorkflowExecutionsList")
    WorkflowParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameter", name: "WorkflowParameter")
    WorkflowParameterDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameterDescription", name: "WorkflowParameterDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[^\\x00]+$"})
    WorkflowParameterDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameterDetail", name: "WorkflowParameterDetail")
    WorkflowParameterDetailList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameterDetailList", name: "WorkflowParameterDetailList")
    WorkflowParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameterList", name: "WorkflowParameterList", traits: {"smithy.api#length" => {"min" => 1}})
    WorkflowParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameterName", name: "WorkflowParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[^\\x00]+$"})
    WorkflowParameterType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameterType", name: "WorkflowParameterType", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}, "smithy.api#pattern" => "^string|integer|boolean|stringList$"})
    WorkflowParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameterValue", name: "WorkflowParameterValue", traits: {"smithy.api#length" => {"min" => 0}, "smithy.api#pattern" => "^[^\\x00]*$"})
    WorkflowParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowParameterValueList", name: "WorkflowParameterValueList")
    WorkflowState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowState", name: "WorkflowState")
    WorkflowStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#WorkflowStatus", name: "WorkflowStatus")
    WorkflowStepAction = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepAction", name: "WorkflowStepAction", traits: {"smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9-_]{1,99}$"})
    WorkflowStepActionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepActionType", name: "WorkflowStepActionType")
    WorkflowStepAttemptCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepAttemptCount", name: "WorkflowStepAttemptCount", traits: {"smithy.api#range" => {"min" => 1}})
    WorkflowStepCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepCount", name: "WorkflowStepCount", traits: {"smithy.api#default" => 0})
    WorkflowStepDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepDescription", name: "WorkflowStepDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    WorkflowStepExecution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepExecution", name: "WorkflowStepExecution")
    WorkflowStepExecutionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepExecutionId", name: "WorkflowStepExecutionId", traits: {"smithy.api#pattern" => "^step-[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"})
    WorkflowStepExecutionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepExecutionList", name: "WorkflowStepExecutionList")
    WorkflowStepExecutionRollbackStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepExecutionRollbackStatus", name: "WorkflowStepExecutionRollbackStatus")
    WorkflowStepExecutionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepExecutionStatus", name: "WorkflowStepExecutionStatus")
    WorkflowStepExecutionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepExecutionsList", name: "WorkflowStepExecutionsList")
    WorkflowStepInputs = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepInputs", name: "WorkflowStepInputs")
    WorkflowStepMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepMessage", name: "WorkflowStepMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 500}})
    WorkflowStepMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepMetadata", name: "WorkflowStepMetadata")
    WorkflowStepName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepName", name: "WorkflowStepName", traits: {"smithy.api#pattern" => "^[A-Za-z][A-Za-z0-9-_]{1,99}$"})
    WorkflowStepOutputs = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepOutputs", name: "WorkflowStepOutputs")
    WorkflowStepTimeoutSecondsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#WorkflowStepTimeoutSecondsInteger", name: "WorkflowStepTimeoutSecondsInteger", traits: {"smithy.api#range" => {"min" => 0, "max" => 43200}})
    WorkflowSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowSummary", name: "WorkflowSummary")
    WorkflowSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowSummaryList", name: "WorkflowSummaryList")
    WorkflowType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#WorkflowType", name: "WorkflowType")
    WorkflowVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#WorkflowVersion", name: "WorkflowVersion")
    WorkflowVersionArnOrBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowVersionArnOrBuildVersionArn", name: "WorkflowVersionArnOrBuildVersionArn", traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:imagebuilder:[a-z]{2,}(?:-[a-z]+)+-[0-9]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):workflow/(build|test|distribution)/[a-z0-9-_]+/(?:(?:([0-9]+|x)\\.([0-9]+|x)\\.([0-9]+|x))|(?:[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+))$"})
    WorkflowVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowVersionList", name: "WorkflowVersionList")
    WorkflowWildcardVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowWildcardVersionArn", name: "WorkflowWildcardVersionArn", traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:imagebuilder:[a-z]{2,}(?:-[a-z]+)+-[0-9]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):workflow/(build|test|distribution)/[a-z0-9-_]+/(?:[0-9]+|x)\\.(?:[0-9]+|x)\\.(?:[0-9]+|x)$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    AccessDeniedException.type = Types::AccessDeniedException
    AccountAggregation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "accountId"))
    AccountAggregation.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    AccountAggregation.type = Types::AccountAggregation
    AccountList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "member"))
    AdditionalInstanceConfiguration.add_member(:systems_manager_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemsManagerAgent, name: "systemsManagerAgent"))
    AdditionalInstanceConfiguration.add_member(:user_data_override, ::Smithy::Schema::Shapes::MemberShape.new(target: UserDataOverride, name: "userDataOverride"))
    AdditionalInstanceConfiguration.type = Types::AdditionalInstanceConfiguration
    Ami.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "region"))
    Ami.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "image"))
    Ami.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    Ami.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    Ami.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageState, name: "state"))
    Ami.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "accountId"))
    Ami.type = Types::Ami
    AmiDistributionConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiNameString, name: "name"))
    AmiDistributionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    AmiDistributionConfiguration.add_member(:target_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "targetAccountIds"))
    AmiDistributionConfiguration.add_member(:ami_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "amiTags"))
    AmiDistributionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    AmiDistributionConfiguration.add_member(:launch_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPermissionConfiguration, name: "launchPermission"))
    AmiDistributionConfiguration.type = Types::AmiDistributionConfiguration
    AmiList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Ami, name: "member"))
    AmiWatermarksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiWatermarkName, name: "member"))
    AutoDisablePolicy.add_member(:failure_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDisableFailureCount, name: "failureCount", traits: {"smithy.api#required" => {}}))
    AutoDisablePolicy.type = Types::AutoDisablePolicy
    AutoScalingGroupConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    AutoScalingGroupConfiguration.add_member(:capacity_wait_timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityWaitTimeoutSeconds, name: "capacityWaitTimeoutSeconds"))
    AutoScalingGroupConfiguration.type = Types::AutoScalingGroupConfiguration
    BuildType.add_member(:user_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_INITIATED", traits: {"smithy.api#enumValue" => "USER_INITIATED"}))
    BuildType.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    BuildType.add_member(:import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT", traits: {"smithy.api#enumValue" => "IMPORT"}))
    BuildType.add_member(:import_iso, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORT_ISO", traits: {"smithy.api#enumValue" => "IMPORT_ISO"}))
    CallRateLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    CallRateLimitExceededException.type = Types::CallRateLimitExceededException
    CancelImageCreationRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    CancelImageCreationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CancelImageCreationRequest.type = Types::CancelImageCreationRequest
    CancelImageCreationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    CancelImageCreationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CancelImageCreationResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    CancelImageCreationResponse.type = Types::CancelImageCreationResponse
    CancelLifecycleExecutionRequest.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId", traits: {"smithy.api#required" => {}}))
    CancelLifecycleExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CancelLifecycleExecutionRequest.type = Types::CancelLifecycleExecutionRequest
    CancelLifecycleExecutionResponse.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId"))
    CancelLifecycleExecutionResponse.type = Types::CancelLifecycleExecutionResponse
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ClientException.type = Types::ClientException
    Component.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    Component.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Component.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    Component.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    Component.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "changeDescription"))
    Component.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "type"))
    Component.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    Component.add_member(:supported_os_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersionList, name: "supportedOsVersions"))
    Component.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentState, name: "state"))
    Component.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterDetailList, name: "parameters"))
    Component.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    Component.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentData, name: "data"))
    Component.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    Component.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "encrypted"))
    Component.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    Component.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Component.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "publisher"))
    Component.add_member(:obfuscate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "obfuscate", traits: {"smithy.api#default" => false}))
    Component.add_member(:product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeList, name: "productCodes"))
    Component.type = Types::Component
    ComponentConfiguration.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionArnOrBuildVersionArn, name: "componentArn", traits: {"smithy.api#required" => {}}))
    ComponentConfiguration.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterList, name: "parameters"))
    ComponentConfiguration.type = Types::ComponentConfiguration
    ComponentConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfiguration, name: "member"))
    ComponentFailureContext.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, name: "componentArn"))
    ComponentFailureContext.add_member(:phase_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "phaseName"))
    ComponentFailureContext.add_member(:step_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "stepName"))
    ComponentFailureContext.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "action"))
    ComponentFailureContext.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLengthString, name: "errorMessage"))
    ComponentFailureContext.type = Types::ComponentFailureContext
    ComponentFormat.add_member(:shell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHELL", traits: {"smithy.api#enumValue" => "SHELL"}))
    ComponentParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterName, name: "name", traits: {"smithy.api#required" => {}}))
    ComponentParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterValueList, name: "value", traits: {"smithy.api#required" => {}}))
    ComponentParameter.type = Types::ComponentParameter
    ComponentParameterDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterName, name: "name", traits: {"smithy.api#required" => {}}))
    ComponentParameterDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterType, name: "type", traits: {"smithy.api#required" => {}}))
    ComponentParameterDetail.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterValueList, name: "defaultValue"))
    ComponentParameterDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterDescription, name: "description"))
    ComponentParameterDetail.type = Types::ComponentParameterDetail
    ComponentParameterDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterDetail, name: "member"))
    ComponentParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameter, name: "member"))
    ComponentParameterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterValue, name: "member"))
    ComponentState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentStatus, name: "status"))
    ComponentState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    ComponentState.type = Types::ComponentState
    ComponentStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ComponentStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ComponentStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComponentSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ComponentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ComponentSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    ComponentSummary.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ComponentSummary.add_member(:supported_os_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersionList, name: "supportedOsVersions"))
    ComponentSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentState, name: "state"))
    ComponentSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "type"))
    ComponentSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    ComponentSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ComponentSummary.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "changeDescription"))
    ComponentSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ComponentSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ComponentSummary.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "publisher"))
    ComponentSummary.add_member(:obfuscate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "obfuscate", traits: {"smithy.api#default" => false}))
    ComponentSummary.type = Types::ComponentSummary
    ComponentSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummary, name: "member"))
    ComponentType.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    ComponentType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    ComponentVersion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ComponentVersion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ComponentVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    ComponentVersion.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ComponentVersion.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ComponentVersion.add_member(:supported_os_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersionList, name: "supportedOsVersions"))
    ComponentVersion.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "type"))
    ComponentVersion.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    ComponentVersion.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ComponentVersion.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentStatus, name: "status"))
    ComponentVersion.add_member(:product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeList, name: "productCodes"))
    ComponentVersion.type = Types::ComponentVersion
    ComponentVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersion, name: "member"))
    Container.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "region"))
    Container.add_member(:image_uris, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "imageUris"))
    Container.type = Types::Container
    ContainerDistributionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ContainerDistributionConfiguration.add_member(:container_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "containerTags"))
    ContainerDistributionConfiguration.add_member(:target_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetContainerRepository, name: "targetRepository", traits: {"smithy.api#required" => {}}))
    ContainerDistributionConfiguration.type = Types::ContainerDistributionConfiguration
    ContainerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Container, name: "member"))
    ContainerRecipe.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ContainerRecipe.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "containerType"))
    ContainerRecipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ContainerRecipe.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ContainerRecipe.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ContainerRecipe.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    ContainerRecipe.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    ContainerRecipe.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationList, name: "components"))
    ContainerRecipe.add_member(:instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, name: "instanceConfiguration"))
    ContainerRecipe.add_member(:dockerfile_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerFileTemplate, name: "dockerfileTemplateData"))
    ContainerRecipe.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    ContainerRecipe.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "encrypted"))
    ContainerRecipe.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "parentImage"))
    ContainerRecipe.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ContainerRecipe.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ContainerRecipe.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "workingDirectory"))
    ContainerRecipe.add_member(:target_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetContainerRepository, name: "targetRepository"))
    ContainerRecipe.type = Types::ContainerRecipe
    ContainerRecipeSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ContainerRecipeSummary.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "containerType"))
    ContainerRecipeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ContainerRecipeSummary.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ContainerRecipeSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    ContainerRecipeSummary.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "parentImage"))
    ContainerRecipeSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ContainerRecipeSummary.add_member(:instance_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "instanceImage"))
    ContainerRecipeSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ContainerRecipeSummary.type = Types::ContainerRecipeSummary
    ContainerRecipeSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeSummary, name: "member"))
    ContainerRepositoryService.add_member(:ecr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECR", traits: {"smithy.api#enumValue" => "ECR"}))
    ContainerType.add_member(:docker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCKER", traits: {"smithy.api#enumValue" => "DOCKER"}))
    CreateComponentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    CreateComponentRequest.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "changeDescription"))
    CreateComponentRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform", traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:supported_os_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersionList, name: "supportedOsVersions"))
    CreateComponentRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineComponentData, name: "data"))
    CreateComponentRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "uri"))
    CreateComponentRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    CreateComponentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateComponentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateComponentRequest.type = Types::CreateComponentRequest
    CreateComponentResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    CreateComponentResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateComponentResponse.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, name: "componentBuildVersionArn"))
    CreateComponentResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    CreateComponentResponse.type = Types::CreateComponentResponse
    CreateContainerRecipeRequest.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, name: "containerType", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    CreateContainerRecipeRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WildcardVersionNumber, name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationList, name: "components"))
    CreateContainerRecipeRequest.add_member(:instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, name: "instanceConfiguration"))
    CreateContainerRecipeRequest.add_member(:dockerfile_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineDockerFileTemplate, name: "dockerfileTemplateData"))
    CreateContainerRecipeRequest.add_member(:dockerfile_template_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "dockerfileTemplateUri"))
    CreateContainerRecipeRequest.add_member(:platform_override, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platformOverride"))
    CreateContainerRecipeRequest.add_member(:image_os_version_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "imageOsVersionOverride"))
    CreateContainerRecipeRequest.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "parentImage", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateContainerRecipeRequest.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "workingDirectory"))
    CreateContainerRecipeRequest.add_member(:target_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetContainerRepository, name: "targetRepository", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    CreateContainerRecipeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateContainerRecipeRequest.type = Types::CreateContainerRecipeRequest
    CreateContainerRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    CreateContainerRecipeResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateContainerRecipeResponse.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn"))
    CreateContainerRecipeResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    CreateContainerRecipeResponse.type = Types::CreateContainerRecipeResponse
    CreateDistributionConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateDistributionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    CreateDistributionConfigurationRequest.add_member(:distributions, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "distributions", traits: {"smithy.api#required" => {}}))
    CreateDistributionConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateDistributionConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateDistributionConfigurationRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateDistributionConfigurationRequest.type = Types::CreateDistributionConfigurationRequest
    CreateDistributionConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    CreateDistributionConfigurationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateDistributionConfigurationResponse.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn"))
    CreateDistributionConfigurationResponse.type = Types::CreateDistributionConfigurationResponse
    CreateImagePipelineRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateImagePipelineRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    CreateImagePipelineRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn"))
    CreateImagePipelineRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn"))
    CreateImagePipelineRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateImagePipelineRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn"))
    CreateImagePipelineRequest.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, name: "imageTestsConfiguration"))
    CreateImagePipelineRequest.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "enhancedImageMetadataEnabled"))
    CreateImagePipelineRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    CreateImagePipelineRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatus, name: "status"))
    CreateImagePipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateImagePipelineRequest.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "imageTags"))
    CreateImagePipelineRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateImagePipelineRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration"))
    CreateImagePipelineRequest.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, name: "workflows"))
    CreateImagePipelineRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    CreateImagePipelineRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineLoggingConfiguration, name: "loggingConfiguration"))
    CreateImagePipelineRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateImagePipelineRequest.type = Types::CreateImagePipelineRequest
    CreateImagePipelineResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    CreateImagePipelineResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateImagePipelineResponse.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn"))
    CreateImagePipelineResponse.type = Types::CreateImagePipelineResponse
    CreateImageRecipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateImageRecipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    CreateImageRecipeRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WildcardVersionNumber, name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    CreateImageRecipeRequest.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationList, name: "components"))
    CreateImageRecipeRequest.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "parentImage", traits: {"smithy.api#required" => {}}))
    CreateImageRecipeRequest.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMappings, name: "blockDeviceMappings"))
    CreateImageRecipeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateImageRecipeRequest.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "workingDirectory"))
    CreateImageRecipeRequest.add_member(:additional_instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInstanceConfiguration, name: "additionalInstanceConfiguration"))
    CreateImageRecipeRequest.add_member(:ami_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "amiTags"))
    CreateImageRecipeRequest.add_member(:ami_watermarks, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiWatermarksList, name: "amiWatermarks"))
    CreateImageRecipeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateImageRecipeRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateImageRecipeRequest.type = Types::CreateImageRecipeRequest
    CreateImageRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    CreateImageRecipeResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateImageRecipeResponse.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn"))
    CreateImageRecipeResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    CreateImageRecipeResponse.type = Types::CreateImageRecipeResponse
    CreateImageRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn"))
    CreateImageRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn"))
    CreateImageRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn"))
    CreateImageRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateImageRequest.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, name: "imageTestsConfiguration"))
    CreateImageRequest.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "enhancedImageMetadataEnabled"))
    CreateImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateImageRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration"))
    CreateImageRequest.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, name: "workflows"))
    CreateImageRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    CreateImageRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, name: "loggingConfiguration"))
    CreateImageRequest.type = Types::CreateImageRequest
    CreateImageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    CreateImageResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateImageResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    CreateImageResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    CreateImageResponse.type = Types::CreateImageResponse
    CreateInfrastructureConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateInfrastructureConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, name: "instanceTypes"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "instanceProfileName", traits: {"smithy.api#required" => {}}))
    CreateInfrastructureConfigurationRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    CreateInfrastructureConfigurationRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "subnetId"))
    CreateInfrastructureConfigurationRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    CreateInfrastructureConfigurationRequest.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "keyPair"))
    CreateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "terminateInstanceOnFailure"))
    CreateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "terminateInstanceOnCompletion"))
    CreateInfrastructureConfigurationRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, name: "snsTopicArn"))
    CreateInfrastructureConfigurationRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMap, name: "resourceTags"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, name: "instanceMetadataOptions"))
    CreateInfrastructureConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateInfrastructureConfigurationRequest.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, name: "placement"))
    CreateInfrastructureConfigurationRequest.add_member(:parent_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentInstanceConfiguration, name: "parentInstance"))
    CreateInfrastructureConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateInfrastructureConfigurationRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateInfrastructureConfigurationRequest.type = Types::CreateInfrastructureConfigurationRequest
    CreateInfrastructureConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    CreateInfrastructureConfigurationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn"))
    CreateInfrastructureConfigurationResponse.type = Types::CreateInfrastructureConfigurationResponse
    CreateLifecyclePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    CreateLifecyclePolicyRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStatus, name: "status"))
    CreateLifecyclePolicyRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetails, name: "policyDetails", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelection, name: "resourceSelection", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateLifecyclePolicyRequest.type = Types::CreateLifecyclePolicyRequest
    CreateLifecyclePolicyResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "lifecyclePolicyArn"))
    CreateLifecyclePolicyResponse.type = Types::CreateLifecyclePolicyResponse
    CreateWorkflowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    CreateWorkflowRequest.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "changeDescription"))
    CreateWorkflowRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineWorkflowData, name: "data"))
    CreateWorkflowRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "uri"))
    CreateWorkflowRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    CreateWorkflowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateWorkflowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun", traits: {"smithy.api#default" => false}))
    CreateWorkflowRequest.type = Types::CreateWorkflowRequest
    CreateWorkflowResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    CreateWorkflowResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowBuildVersionArn"))
    CreateWorkflowResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    CreateWorkflowResponse.type = Types::CreateWorkflowResponse
    CvssScore.add_member(:base_score, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, name: "baseScore"))
    CvssScore.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "scoringVector"))
    CvssScore.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "version"))
    CvssScore.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "source"))
    CvssScore.type = Types::CvssScore
    CvssScoreAdjustment.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "metric"))
    CvssScoreAdjustment.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    CvssScoreAdjustment.type = Types::CvssScoreAdjustment
    CvssScoreAdjustmentList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreAdjustment, name: "member"))
    CvssScoreDetails.add_member(:score_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "scoreSource"))
    CvssScoreDetails.add_member(:cvss_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "cvssSource"))
    CvssScoreDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "version"))
    CvssScoreDetails.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, name: "score"))
    CvssScoreDetails.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "scoringVector"))
    CvssScoreDetails.add_member(:adjustments, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreAdjustmentList, name: "adjustments"))
    CvssScoreDetails.type = Types::CvssScoreDetails
    CvssScoreList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScore, name: "member"))
    DeleteComponentRequest.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, name: "componentBuildVersionArn", traits: {"smithy.api#httpQuery" => "componentBuildVersionArn", "smithy.api#required" => {}}))
    DeleteComponentRequest.type = Types::DeleteComponentRequest
    DeleteComponentResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    DeleteComponentResponse.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, name: "componentBuildVersionArn"))
    DeleteComponentResponse.type = Types::DeleteComponentResponse
    DeleteContainerRecipeRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn", traits: {"smithy.api#httpQuery" => "containerRecipeArn", "smithy.api#required" => {}}))
    DeleteContainerRecipeRequest.type = Types::DeleteContainerRecipeRequest
    DeleteContainerRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    DeleteContainerRecipeResponse.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn"))
    DeleteContainerRecipeResponse.type = Types::DeleteContainerRecipeResponse
    DeleteDistributionConfigurationRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn", traits: {"smithy.api#httpQuery" => "distributionConfigurationArn", "smithy.api#required" => {}}))
    DeleteDistributionConfigurationRequest.type = Types::DeleteDistributionConfigurationRequest
    DeleteDistributionConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    DeleteDistributionConfigurationResponse.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn"))
    DeleteDistributionConfigurationResponse.type = Types::DeleteDistributionConfigurationResponse
    DeleteImagePipelineRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn", traits: {"smithy.api#httpQuery" => "imagePipelineArn", "smithy.api#required" => {}}))
    DeleteImagePipelineRequest.type = Types::DeleteImagePipelineRequest
    DeleteImagePipelineResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    DeleteImagePipelineResponse.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn"))
    DeleteImagePipelineResponse.type = Types::DeleteImagePipelineResponse
    DeleteImageRecipeRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn", traits: {"smithy.api#httpQuery" => "imageRecipeArn", "smithy.api#required" => {}}))
    DeleteImageRecipeRequest.type = Types::DeleteImageRecipeRequest
    DeleteImageRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    DeleteImageRecipeResponse.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn"))
    DeleteImageRecipeResponse.type = Types::DeleteImageRecipeResponse
    DeleteImageRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn", traits: {"smithy.api#httpQuery" => "imageBuildVersionArn", "smithy.api#required" => {}}))
    DeleteImageRequest.type = Types::DeleteImageRequest
    DeleteImageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    DeleteImageResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    DeleteImageResponse.type = Types::DeleteImageResponse
    DeleteInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn", traits: {"smithy.api#httpQuery" => "infrastructureConfigurationArn", "smithy.api#required" => {}}))
    DeleteInfrastructureConfigurationRequest.type = Types::DeleteInfrastructureConfigurationRequest
    DeleteInfrastructureConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    DeleteInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn"))
    DeleteInfrastructureConfigurationResponse.type = Types::DeleteInfrastructureConfigurationResponse
    DeleteLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "lifecyclePolicyArn", traits: {"smithy.api#httpQuery" => "lifecyclePolicyArn", "smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.type = Types::DeleteLifecyclePolicyRequest
    DeleteLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "lifecyclePolicyArn"))
    DeleteLifecyclePolicyResponse.type = Types::DeleteLifecyclePolicyResponse
    DeleteWorkflowRequest.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowBuildVersionArn", traits: {"smithy.api#httpQuery" => "workflowBuildVersionArn", "smithy.api#required" => {}}))
    DeleteWorkflowRequest.type = Types::DeleteWorkflowRequest
    DeleteWorkflowResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowBuildVersionArn"))
    DeleteWorkflowResponse.type = Types::DeleteWorkflowResponse
    DiskImageFormat.add_member(:vmdk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VMDK", traits: {"smithy.api#enumValue" => "VMDK"}))
    DiskImageFormat.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RAW", traits: {"smithy.api#enumValue" => "RAW"}))
    DiskImageFormat.add_member(:vhd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VHD", traits: {"smithy.api#enumValue" => "VHD"}))
    DistributeImageRequest.add_member(:source_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sourceImage", traits: {"smithy.api#required" => {}}))
    DistributeImageRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn", traits: {"smithy.api#required" => {}}))
    DistributeImageRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole", traits: {"smithy.api#required" => {}}))
    DistributeImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    DistributeImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    DistributeImageRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, name: "loggingConfiguration"))
    DistributeImageRequest.type = Types::DistributeImageRequest
    DistributeImageResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    DistributeImageResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    DistributeImageResponse.type = Types::DistributeImageResponse
    Distribution.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "region", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:ami_distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiDistributionConfiguration, name: "amiDistributionConfiguration"))
    Distribution.add_member(:container_distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDistributionConfiguration, name: "containerDistributionConfiguration"))
    Distribution.add_member(:license_configuration_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationArnList, name: "licenseConfigurationArns"))
    Distribution.add_member(:launch_template_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateConfigurationList, name: "launchTemplateConfigurations"))
    Distribution.add_member(:s3_export_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExportConfiguration, name: "s3ExportConfiguration"))
    Distribution.add_member(:fast_launch_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: FastLaunchConfigurationList, name: "fastLaunchConfigurations"))
    Distribution.add_member(:ssm_parameter_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterConfigurationList, name: "ssmParameterConfigurations"))
    Distribution.type = Types::Distribution
    DistributionConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    DistributionConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    DistributionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    DistributionConfiguration.add_member(:distributions, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "distributions"))
    DistributionConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTimeoutMinutes, name: "timeoutMinutes", traits: {"smithy.api#required" => {}}))
    DistributionConfiguration.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    DistributionConfiguration.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateUpdated"))
    DistributionConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    DistributionConfiguration.type = Types::DistributionConfiguration
    DistributionConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    DistributionConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    DistributionConfigurationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    DistributionConfigurationSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    DistributionConfigurationSummary.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateUpdated"))
    DistributionConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    DistributionConfigurationSummary.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, name: "regions"))
    DistributionConfigurationSummary.type = Types::DistributionConfigurationSummary
    DistributionConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationSummary, name: "member"))
    DistributionFailureContext.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLengthString, name: "errorMessage"))
    DistributionFailureContext.add_member(:region_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionFailureList, name: "regionFailures"))
    DistributionFailureContext.type = Types::DistributionFailureContext
    DistributionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution, name: "member"))
    DryRunOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DryRunOperationException.type = Types::DryRunOperationException
    EbsInstanceBlockDeviceSpecification.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "encrypted"))
    EbsInstanceBlockDeviceSpecification.add_member(:delete_on_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "deleteOnTermination"))
    EbsInstanceBlockDeviceSpecification.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsIopsInteger, name: "iops"))
    EbsInstanceBlockDeviceSpecification.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    EbsInstanceBlockDeviceSpecification.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "snapshotId"))
    EbsInstanceBlockDeviceSpecification.add_member(:volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeSizeInteger, name: "volumeSize"))
    EbsInstanceBlockDeviceSpecification.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeType, name: "volumeType"))
    EbsInstanceBlockDeviceSpecification.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeThroughput, name: "throughput"))
    EbsInstanceBlockDeviceSpecification.type = Types::EbsInstanceBlockDeviceSpecification
    EbsVolumeType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    EbsVolumeType.add_member(:io1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IO1", traits: {"smithy.api#enumValue" => "io1"}))
    EbsVolumeType.add_member(:io2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IO2", traits: {"smithy.api#enumValue" => "io2"}))
    EbsVolumeType.add_member(:gp2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GP2", traits: {"smithy.api#enumValue" => "gp2"}))
    EbsVolumeType.add_member(:gp3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GP3", traits: {"smithy.api#enumValue" => "gp3"}))
    EbsVolumeType.add_member(:sc1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SC1", traits: {"smithy.api#enumValue" => "sc1"}))
    EbsVolumeType.add_member(:st1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ST1", traits: {"smithy.api#enumValue" => "st1"}))
    EcrConfiguration.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "repositoryName"))
    EcrConfiguration.add_member(:container_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "containerTags"))
    EcrConfiguration.type = Types::EcrConfiguration
    FastLaunchConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    FastLaunchConfiguration.add_member(:snapshot_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FastLaunchSnapshotConfiguration, name: "snapshotConfiguration"))
    FastLaunchConfiguration.add_member(:max_parallel_launches, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParallelLaunches, name: "maxParallelLaunches"))
    FastLaunchConfiguration.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: FastLaunchLaunchTemplateSpecification, name: "launchTemplate"))
    FastLaunchConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    FastLaunchConfiguration.type = Types::FastLaunchConfiguration
    FastLaunchConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FastLaunchConfiguration, name: "member"))
    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateId, name: "launchTemplateId"))
    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "launchTemplateName"))
    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "launchTemplateVersion"))
    FastLaunchLaunchTemplateSpecification.type = Types::FastLaunchLaunchTemplateSpecification
    FastLaunchSnapshotConfiguration.add_member(:target_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceCount, name: "targetResourceCount"))
    FastLaunchSnapshotConfiguration.type = Types::FastLaunchSnapshotConfiguration
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, name: "values"))
    Filter.type = Types::Filter
    FilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "member"))
    FilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GetComponentPolicyRequest.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, name: "componentArn", traits: {"smithy.api#httpQuery" => "componentArn", "smithy.api#required" => {}}))
    GetComponentPolicyRequest.type = Types::GetComponentPolicyRequest
    GetComponentPolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetComponentPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, name: "policy"))
    GetComponentPolicyResponse.type = Types::GetComponentPolicyResponse
    GetComponentRequest.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionArnOrBuildVersionArn, name: "componentBuildVersionArn", traits: {"smithy.api#httpQuery" => "componentBuildVersionArn", "smithy.api#required" => {}}))
    GetComponentRequest.type = Types::GetComponentRequest
    GetComponentResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetComponentResponse.add_member(:component, ::Smithy::Schema::Shapes::MemberShape.new(target: Component, name: "component"))
    GetComponentResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    GetComponentResponse.type = Types::GetComponentResponse
    GetContainerRecipePolicyRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn", traits: {"smithy.api#httpQuery" => "containerRecipeArn", "smithy.api#required" => {}}))
    GetContainerRecipePolicyRequest.type = Types::GetContainerRecipePolicyRequest
    GetContainerRecipePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetContainerRecipePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, name: "policy"))
    GetContainerRecipePolicyResponse.type = Types::GetContainerRecipePolicyResponse
    GetContainerRecipeRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn", traits: {"smithy.api#httpQuery" => "containerRecipeArn", "smithy.api#required" => {}}))
    GetContainerRecipeRequest.type = Types::GetContainerRecipeRequest
    GetContainerRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetContainerRecipeResponse.add_member(:container_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipe, name: "containerRecipe"))
    GetContainerRecipeResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    GetContainerRecipeResponse.type = Types::GetContainerRecipeResponse
    GetDistributionConfigurationRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn", traits: {"smithy.api#httpQuery" => "distributionConfigurationArn", "smithy.api#required" => {}}))
    GetDistributionConfigurationRequest.type = Types::GetDistributionConfigurationRequest
    GetDistributionConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetDistributionConfigurationResponse.add_member(:distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfiguration, name: "distributionConfiguration"))
    GetDistributionConfigurationResponse.type = Types::GetDistributionConfigurationResponse
    GetImagePipelineRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn", traits: {"smithy.api#httpQuery" => "imagePipelineArn", "smithy.api#required" => {}}))
    GetImagePipelineRequest.type = Types::GetImagePipelineRequest
    GetImagePipelineResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetImagePipelineResponse.add_member(:image_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipeline, name: "imagePipeline"))
    GetImagePipelineResponse.type = Types::GetImagePipelineResponse
    GetImagePolicyRequest.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageArn", traits: {"smithy.api#httpQuery" => "imageArn", "smithy.api#required" => {}}))
    GetImagePolicyRequest.type = Types::GetImagePolicyRequest
    GetImagePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetImagePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, name: "policy"))
    GetImagePolicyResponse.type = Types::GetImagePolicyResponse
    GetImageRecipePolicyRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn", traits: {"smithy.api#httpQuery" => "imageRecipeArn", "smithy.api#required" => {}}))
    GetImageRecipePolicyRequest.type = Types::GetImageRecipePolicyRequest
    GetImageRecipePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetImageRecipePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, name: "policy"))
    GetImageRecipePolicyResponse.type = Types::GetImageRecipePolicyResponse
    GetImageRecipeRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn", traits: {"smithy.api#httpQuery" => "imageRecipeArn", "smithy.api#required" => {}}))
    GetImageRecipeRequest.type = Types::GetImageRecipeRequest
    GetImageRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetImageRecipeResponse.add_member(:image_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipe, name: "imageRecipe"))
    GetImageRecipeResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    GetImageRecipeResponse.type = Types::GetImageRecipeResponse
    GetImageRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersionArnOrBuildVersionArn, name: "imageBuildVersionArn", traits: {"smithy.api#httpQuery" => "imageBuildVersionArn", "smithy.api#required" => {}}))
    GetImageRequest.type = Types::GetImageRequest
    GetImageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetImageResponse.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, name: "image"))
    GetImageResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    GetImageResponse.type = Types::GetImageResponse
    GetInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn", traits: {"smithy.api#httpQuery" => "infrastructureConfigurationArn", "smithy.api#required" => {}}))
    GetInfrastructureConfigurationRequest.type = Types::GetInfrastructureConfigurationRequest
    GetInfrastructureConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetInfrastructureConfigurationResponse.add_member(:infrastructure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfiguration, name: "infrastructureConfiguration"))
    GetInfrastructureConfigurationResponse.type = Types::GetInfrastructureConfigurationResponse
    GetLifecycleExecutionRequest.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId", traits: {"smithy.api#httpQuery" => "lifecycleExecutionId", "smithy.api#required" => {}}))
    GetLifecycleExecutionRequest.type = Types::GetLifecycleExecutionRequest
    GetLifecycleExecutionResponse.add_member(:lifecycle_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecution, name: "lifecycleExecution"))
    GetLifecycleExecutionResponse.type = Types::GetLifecycleExecutionResponse
    GetLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "lifecyclePolicyArn", traits: {"smithy.api#httpQuery" => "lifecyclePolicyArn", "smithy.api#required" => {}}))
    GetLifecyclePolicyRequest.type = Types::GetLifecyclePolicyRequest
    GetLifecyclePolicyResponse.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicy, name: "lifecyclePolicy"))
    GetLifecyclePolicyResponse.type = Types::GetLifecyclePolicyResponse
    GetMarketplaceResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    GetMarketplaceResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetMarketplaceResourceRequest.add_member(:resource_location, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceResourceLocation, name: "resourceLocation"))
    GetMarketplaceResourceRequest.type = Types::GetMarketplaceResourceRequest
    GetMarketplaceResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "resourceArn"))
    GetMarketplaceResourceResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "url"))
    GetMarketplaceResourceResponse.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "data"))
    GetMarketplaceResourceResponse.type = Types::GetMarketplaceResourceResponse
    GetWorkflowExecutionRequest.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, name: "workflowExecutionId", traits: {"smithy.api#httpQuery" => "workflowExecutionId", "smithy.api#required" => {}}))
    GetWorkflowExecutionRequest.type = Types::GetWorkflowExecutionRequest
    GetWorkflowExecutionResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetWorkflowExecutionResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowBuildVersionArn"))
    GetWorkflowExecutionResponse.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, name: "workflowExecutionId"))
    GetWorkflowExecutionResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    GetWorkflowExecutionResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "type"))
    GetWorkflowExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionStatus, name: "status"))
    GetWorkflowExecutionResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionMessage, name: "message"))
    GetWorkflowExecutionResponse.add_member(:total_step_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, name: "totalStepCount", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionResponse.add_member(:total_steps_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, name: "totalStepsSucceeded", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionResponse.add_member(:total_steps_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, name: "totalStepsFailed", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionResponse.add_member(:total_steps_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, name: "totalStepsSkipped", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startTime"))
    GetWorkflowExecutionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "endTime"))
    GetWorkflowExecutionResponse.add_member(:parallel_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelGroup, name: "parallelGroup"))
    GetWorkflowExecutionResponse.type = Types::GetWorkflowExecutionResponse
    GetWorkflowRequest.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionArnOrBuildVersionArn, name: "workflowBuildVersionArn", traits: {"smithy.api#httpQuery" => "workflowBuildVersionArn", "smithy.api#required" => {}}))
    GetWorkflowRequest.type = Types::GetWorkflowRequest
    GetWorkflowResponse.add_member(:workflow, ::Smithy::Schema::Shapes::MemberShape.new(target: Workflow, name: "workflow"))
    GetWorkflowResponse.add_member(:latest_version_references, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestVersionReferences, name: "latestVersionReferences"))
    GetWorkflowResponse.type = Types::GetWorkflowResponse
    GetWorkflowStepExecutionRequest.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, name: "stepExecutionId", traits: {"smithy.api#httpQuery" => "stepExecutionId", "smithy.api#required" => {}}))
    GetWorkflowStepExecutionRequest.type = Types::GetWorkflowStepExecutionRequest
    GetWorkflowStepExecutionResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    GetWorkflowStepExecutionResponse.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, name: "stepExecutionId"))
    GetWorkflowStepExecutionResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowBuildVersionArn"))
    GetWorkflowStepExecutionResponse.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, name: "workflowExecutionId"))
    GetWorkflowStepExecutionResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    GetWorkflowStepExecutionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepName, name: "name"))
    GetWorkflowStepExecutionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepDescription, name: "description"))
    GetWorkflowStepExecutionResponse.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAction, name: "action"))
    GetWorkflowStepExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionStatus, name: "status"))
    GetWorkflowStepExecutionResponse.add_member(:rollback_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionRollbackStatus, name: "rollbackStatus"))
    GetWorkflowStepExecutionResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepMessage, name: "message"))
    GetWorkflowStepExecutionResponse.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepInputs, name: "inputs"))
    GetWorkflowStepExecutionResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputs, name: "outputs"))
    GetWorkflowStepExecutionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startTime"))
    GetWorkflowStepExecutionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "endTime"))
    GetWorkflowStepExecutionResponse.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "onFailure"))
    GetWorkflowStepExecutionResponse.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepTimeoutSecondsInteger, name: "timeoutSeconds"))
    GetWorkflowStepExecutionResponse.add_member(:attempt_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAttemptCount, name: "attemptNumber"))
    GetWorkflowStepExecutionResponse.add_member(:max_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAttemptCount, name: "maxAttempts"))
    GetWorkflowStepExecutionResponse.type = Types::GetWorkflowStepExecutionResponse
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    Image.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    Image.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, name: "type"))
    Image.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Image.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumberWithBuild, name: "version"))
    Image.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    Image.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "enhancedImageMetadataEnabled"))
    Image.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, name: "osVersion"))
    Image.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageState, name: "state"))
    Image.add_member(:image_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipe, name: "imageRecipe"))
    Image.add_member(:container_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipe, name: "containerRecipe"))
    Image.add_member(:source_pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "sourcePipelineName"))
    Image.add_member(:source_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "sourcePipelineArn"))
    Image.add_member(:infrastructure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfiguration, name: "infrastructureConfiguration"))
    Image.add_member(:distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfiguration, name: "distributionConfiguration"))
    Image.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, name: "imageTestsConfiguration"))
    Image.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    Image.add_member(:output_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputResources, name: "outputResources"))
    Image.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Image.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildType, name: "buildType"))
    Image.add_member(:image_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, name: "imageSource"))
    Image.add_member(:scan_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanState, name: "scanState"))
    Image.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration"))
    Image.add_member(:deprecation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "deprecationTime"))
    Image.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId"))
    Image.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    Image.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, name: "workflows"))
    Image.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, name: "loggingConfiguration"))
    Image.type = Types::Image
    ImageAggregation.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    ImageAggregation.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    ImageAggregation.type = Types::ImageAggregation
    ImageConfigurationStep.add_member(:associate_licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATE_LICENSES", traits: {"smithy.api#enumValue" => "ASSOCIATE_LICENSES"}))
    ImageConfigurationStep.add_member(:update_launch_templates, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_LAUNCH_TEMPLATES", traits: {"smithy.api#enumValue" => "UPDATE_LAUNCH_TEMPLATES"}))
    ImageConfigurationStep.add_member(:put_ssm_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT_SSM_PARAMETERS", traits: {"smithy.api#enumValue" => "PUT_SSM_PARAMETERS"}))
    ImageConfigurationStep.add_member(:update_fast_launch_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAST_LAUNCH_CONFIGURATIONS", traits: {"smithy.api#enumValue" => "UPDATE_FAST_LAUNCH_CONFIGURATIONS"}))
    ImageConfigurationStep.add_member(:export_ami, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPORT_AMI", traits: {"smithy.api#enumValue" => "EXPORT_AMI"}))
    ImageFailureContext.add_member(:image_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStatus, name: "imageStatus"))
    ImageFailureContext.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, name: "workflowExecutionId"))
    ImageFailureContext.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowArn"))
    ImageFailureContext.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, name: "stepExecutionId"))
    ImageFailureContext.add_member(:failed_step, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepName, name: "failedStep"))
    ImageFailureContext.add_member(:component_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentFailureContext, name: "componentFailure"))
    ImageFailureContext.add_member(:distribution_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionFailureContext, name: "distributionFailure"))
    ImageFailureContext.type = Types::ImageFailureContext
    ImageLoggingConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "logGroupName"))
    ImageLoggingConfiguration.type = Types::ImageLoggingConfiguration
    ImagePackage.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "packageName"))
    ImagePackage.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "packageVersion"))
    ImagePackage.type = Types::ImagePackage
    ImagePackageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePackage, name: "member"))
    ImagePipeline.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ImagePipeline.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ImagePipeline.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ImagePipeline.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ImagePipeline.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "enhancedImageMetadataEnabled"))
    ImagePipeline.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "imageRecipeArn"))
    ImagePipeline.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "containerRecipeArn"))
    ImagePipeline.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "infrastructureConfigurationArn"))
    ImagePipeline.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "distributionConfigurationArn"))
    ImagePipeline.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, name: "imageTestsConfiguration"))
    ImagePipeline.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    ImagePipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatus, name: "status"))
    ImagePipeline.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ImagePipeline.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateUpdated"))
    ImagePipeline.add_member(:date_last_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateLastRun"))
    ImagePipeline.add_member(:last_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStatus, name: "lastRunStatus"))
    ImagePipeline.add_member(:date_next_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateNextRun"))
    ImagePipeline.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImagePipeline.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration"))
    ImagePipeline.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "imageTags"))
    ImagePipeline.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    ImagePipeline.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, name: "workflows"))
    ImagePipeline.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineLoggingConfiguration, name: "loggingConfiguration"))
    ImagePipeline.add_member(:consecutive_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsecutiveFailures, name: "consecutiveFailures"))
    ImagePipeline.type = Types::ImagePipeline
    ImagePipelineAggregation.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn"))
    ImagePipelineAggregation.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    ImagePipelineAggregation.type = Types::ImagePipelineAggregation
    ImagePipelineList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipeline, name: "member"))
    ImageRecipe.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ImageRecipe.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, name: "type"))
    ImageRecipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ImageRecipe.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ImageRecipe.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ImageRecipe.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    ImageRecipe.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    ImageRecipe.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationList, name: "components"))
    ImageRecipe.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "parentImage"))
    ImageRecipe.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMappings, name: "blockDeviceMappings"))
    ImageRecipe.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ImageRecipe.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImageRecipe.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "workingDirectory"))
    ImageRecipe.add_member(:additional_instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInstanceConfiguration, name: "additionalInstanceConfiguration"))
    ImageRecipe.add_member(:ami_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "amiTags"))
    ImageRecipe.add_member(:ami_watermarks, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiWatermarksList, name: "amiWatermarks"))
    ImageRecipe.type = Types::ImageRecipe
    ImageRecipeSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ImageRecipeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ImageRecipeSummary.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ImageRecipeSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    ImageRecipeSummary.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "parentImage"))
    ImageRecipeSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ImageRecipeSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImageRecipeSummary.type = Types::ImageRecipeSummary
    ImageRecipeSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeSummary, name: "member"))
    ImageScanFinding.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "awsAccountId"))
    ImageScanFinding.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    ImageScanFinding.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn"))
    ImageScanFinding.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "type"))
    ImageScanFinding.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ImageScanFinding.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "title"))
    ImageScanFinding.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: Remediation, name: "remediation"))
    ImageScanFinding.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "severity"))
    ImageScanFinding.add_member(:first_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "firstObservedAt"))
    ImageScanFinding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "updatedAt"))
    ImageScanFinding.add_member(:inspector_score, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, name: "inspectorScore"))
    ImageScanFinding.add_member(:inspector_score_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InspectorScoreDetails, name: "inspectorScoreDetails"))
    ImageScanFinding.add_member(:package_vulnerability_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVulnerabilityDetails, name: "packageVulnerabilityDetails"))
    ImageScanFinding.add_member(:fix_available, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fixAvailable"))
    ImageScanFinding.type = Types::ImageScanFinding
    ImageScanFindingAggregation.add_member(:account_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregation, name: "accountAggregation"))
    ImageScanFindingAggregation.add_member(:image_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageAggregation, name: "imageAggregation"))
    ImageScanFindingAggregation.add_member(:image_pipeline_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineAggregation, name: "imagePipelineAggregation"))
    ImageScanFindingAggregation.add_member(:vulnerability_id_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityIdAggregation, name: "vulnerabilityIdAggregation"))
    ImageScanFindingAggregation.type = Types::ImageScanFindingAggregation
    ImageScanFindingAggregationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingAggregation, name: "member"))
    ImageScanFindingsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, name: "name"))
    ImageScanFindingsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsFilterValues, name: "values"))
    ImageScanFindingsFilter.type = Types::ImageScanFindingsFilter
    ImageScanFindingsFilterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsFilter, name: "member"))
    ImageScanFindingsFilterValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue, name: "member"))
    ImageScanFindingsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFinding, name: "member"))
    ImageScanState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanStatus, name: "status"))
    ImageScanState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    ImageScanState.type = Types::ImageScanState
    ImageScanStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ImageScanStatus.add_member(:scanning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCANNING", traits: {"smithy.api#enumValue" => "SCANNING"}))
    ImageScanStatus.add_member(:collecting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COLLECTING", traits: {"smithy.api#enumValue" => "COLLECTING"}))
    ImageScanStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ImageScanStatus.add_member(:abandoned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABANDONED", traits: {"smithy.api#enumValue" => "ABANDONED"}))
    ImageScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImageScanStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    ImageScanningConfiguration.add_member(:image_scanning_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "imageScanningEnabled"))
    ImageScanningConfiguration.add_member(:ecr_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrConfiguration, name: "ecrConfiguration"))
    ImageScanningConfiguration.type = Types::ImageScanningConfiguration
    ImageSource.add_member(:amazon_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_MANAGED", traits: {"smithy.api#enumValue" => "AMAZON_MANAGED"}))
    ImageSource.add_member(:aws_marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MARKETPLACE", traits: {"smithy.api#enumValue" => "AWS_MARKETPLACE"}))
    ImageSource.add_member(:imported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTED", traits: {"smithy.api#enumValue" => "IMPORTED"}))
    ImageSource.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ImageState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStatus, name: "status"))
    ImageState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    ImageState.add_member(:failure_context, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageFailureContext, name: "failureContext"))
    ImageState.type = Types::ImageState
    ImageStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ImageStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ImageStatus.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILDING", traits: {"smithy.api#enumValue" => "BUILDING"}))
    ImageStatus.add_member(:testing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TESTING", traits: {"smithy.api#enumValue" => "TESTING"}))
    ImageStatus.add_member(:distributing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTING", traits: {"smithy.api#enumValue" => "DISTRIBUTING"}))
    ImageStatus.add_member(:integrating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTEGRATING", traits: {"smithy.api#enumValue" => "INTEGRATING"}))
    ImageStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ImageStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ImageStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImageStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ImageStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ImageStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ImageSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ImageSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ImageSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, name: "type"))
    ImageSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumberWithBuild, name: "version"))
    ImageSummary.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ImageSummary.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, name: "osVersion"))
    ImageSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageState, name: "state"))
    ImageSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    ImageSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ImageSummary.add_member(:output_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputResources, name: "outputResources"))
    ImageSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImageSummary.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildType, name: "buildType"))
    ImageSummary.add_member(:image_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, name: "imageSource"))
    ImageSummary.add_member(:deprecation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "deprecationTime"))
    ImageSummary.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId"))
    ImageSummary.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, name: "loggingConfiguration"))
    ImageSummary.type = Types::ImageSummary
    ImageSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSummary, name: "member"))
    ImageTestsConfiguration.add_member(:image_tests_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "imageTestsEnabled"))
    ImageTestsConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsTimeoutMinutes, name: "timeoutMinutes"))
    ImageTestsConfiguration.type = Types::ImageTestsConfiguration
    ImageType.add_member(:ami, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMI", traits: {"smithy.api#enumValue" => "AMI"}))
    ImageType.add_member(:docker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOCKER", traits: {"smithy.api#enumValue" => "DOCKER"}))
    ImageVersion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    ImageVersion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ImageVersion.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, name: "type"))
    ImageVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    ImageVersion.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform"))
    ImageVersion.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, name: "osVersion"))
    ImageVersion.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    ImageVersion.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    ImageVersion.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildType, name: "buildType"))
    ImageVersion.add_member(:image_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, name: "imageSource"))
    ImageVersion.type = Types::ImageVersion
    ImageVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersion, name: "member"))
    ImportComponentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ImportComponentRequest.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "changeDescription"))
    ImportComponentRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, name: "type", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentFormat, name: "format", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "data"))
    ImportComponentRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "uri"))
    ImportComponentRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    ImportComponentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImportComponentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportComponentRequest.type = Types::ImportComponentRequest
    ImportComponentResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ImportComponentResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    ImportComponentResponse.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, name: "componentBuildVersionArn"))
    ImportComponentResponse.type = Types::ImportComponentResponse
    ImportDiskImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ImportDiskImageRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "platform", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, name: "osVersion", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    ImportDiskImageRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, name: "uri", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, name: "loggingConfiguration"))
    ImportDiskImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImportDiskImageRequest.add_member(:register_image_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RegisterImageOptions, name: "registerImageOptions"))
    ImportDiskImageRequest.add_member(:windows_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsConfiguration, name: "windowsConfiguration"))
    ImportDiskImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportDiskImageRequest.type = Types::ImportDiskImageRequest
    ImportDiskImageResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    ImportDiskImageResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    ImportDiskImageResponse.type = Types::ImportDiskImageResponse
    ImportVmImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name", traits: {"smithy.api#required" => {}}))
    ImportVmImageRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    ImportVmImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    ImportVmImageRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, name: "platform", traits: {"smithy.api#required" => {}}))
    ImportVmImageRequest.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, name: "osVersion"))
    ImportVmImageRequest.add_member(:vm_import_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "vmImportTaskId", traits: {"smithy.api#required" => {}}))
    ImportVmImageRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, name: "loggingConfiguration"))
    ImportVmImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ImportVmImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportVmImageRequest.type = Types::ImportVmImageRequest
    ImportVmImageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ImportVmImageResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "imageArn"))
    ImportVmImageResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    ImportVmImageResponse.type = Types::ImportVmImageResponse
    InfrastructureConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    InfrastructureConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    InfrastructureConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    InfrastructureConfiguration.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, name: "instanceTypes"))
    InfrastructureConfiguration.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "instanceProfileName"))
    InfrastructureConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    InfrastructureConfiguration.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "subnetId"))
    InfrastructureConfiguration.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    InfrastructureConfiguration.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "keyPair"))
    InfrastructureConfiguration.add_member(:terminate_instance_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "terminateInstanceOnFailure"))
    InfrastructureConfiguration.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "snsTopicArn"))
    InfrastructureConfiguration.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    InfrastructureConfiguration.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateUpdated"))
    InfrastructureConfiguration.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMap, name: "resourceTags"))
    InfrastructureConfiguration.add_member(:instance_metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, name: "instanceMetadataOptions"))
    InfrastructureConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    InfrastructureConfiguration.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, name: "placement"))
    InfrastructureConfiguration.add_member(:terminate_instance_on_completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "terminateInstanceOnCompletion"))
    InfrastructureConfiguration.add_member(:parent_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentInstanceConfiguration, name: "parentInstance"))
    InfrastructureConfiguration.type = Types::InfrastructureConfiguration
    InfrastructureConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "arn"))
    InfrastructureConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    InfrastructureConfigurationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    InfrastructureConfigurationSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    InfrastructureConfigurationSummary.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateUpdated"))
    InfrastructureConfigurationSummary.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMap, name: "resourceTags"))
    InfrastructureConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    InfrastructureConfigurationSummary.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, name: "instanceTypes"))
    InfrastructureConfigurationSummary.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "instanceProfileName"))
    InfrastructureConfigurationSummary.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, name: "placement"))
    InfrastructureConfigurationSummary.type = Types::InfrastructureConfigurationSummary
    InfrastructureConfigurationSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationSummary, name: "member"))
    InspectorScoreDetails.add_member(:adjusted_cvss, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreDetails, name: "adjustedCvss"))
    InspectorScoreDetails.type = Types::InspectorScoreDetails
    InstanceBlockDeviceMapping.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "deviceName"))
    InstanceBlockDeviceMapping.add_member(:ebs, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsInstanceBlockDeviceSpecification, name: "ebs"))
    InstanceBlockDeviceMapping.add_member(:virtual_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "virtualName"))
    InstanceBlockDeviceMapping.add_member(:no_device, ::Smithy::Schema::Shapes::MemberShape.new(target: EmptyString, name: "noDevice"))
    InstanceBlockDeviceMapping.type = Types::InstanceBlockDeviceMapping
    InstanceBlockDeviceMappings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMapping, name: "member"))
    InstanceConfiguration.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "image"))
    InstanceConfiguration.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMappings, name: "blockDeviceMappings"))
    InstanceConfiguration.type = Types::InstanceConfiguration
    InstanceMetadataOptions.add_member(:http_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpTokens, name: "httpTokens"))
    InstanceMetadataOptions.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPutResponseHopLimit, name: "httpPutResponseHopLimit"))
    InstanceMetadataOptions.type = Types::InstanceMetadataOptions
    InstanceTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType, name: "member"))
    InvalidPaginationTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidVersionNumberException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidVersionNumberException.type = Types::InvalidVersionNumberException
    LatestVersionReferences.add_member(:latest_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "latestVersionArn"))
    LatestVersionReferences.add_member(:latest_major_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "latestMajorVersionArn"))
    LatestVersionReferences.add_member(:latest_minor_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "latestMinorVersionArn"))
    LatestVersionReferences.add_member(:latest_patch_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "latestPatchVersionArn"))
    LatestVersionReferences.type = Types::LatestVersionReferences
    LaunchPermissionConfiguration.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "userIds"))
    LaunchPermissionConfiguration.add_member(:user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "userGroups"))
    LaunchPermissionConfiguration.add_member(:organization_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationArnList, name: "organizationArns"))
    LaunchPermissionConfiguration.add_member(:organizational_unit_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitArnList, name: "organizationalUnitArns"))
    LaunchPermissionConfiguration.type = Types::LaunchPermissionConfiguration
    LaunchTemplateConfiguration.add_member(:launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateId, name: "launchTemplateId", traits: {"smithy.api#required" => {}}))
    LaunchTemplateConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "accountId"))
    LaunchTemplateConfiguration.add_member(:set_default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "setDefaultVersion", traits: {"smithy.api#default" => false}))
    LaunchTemplateConfiguration.type = Types::LaunchTemplateConfiguration
    LaunchTemplateConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateConfiguration, name: "member"))
    LicenseConfigurationArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationArn, name: "member"))
    LifecycleExecution.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId"))
    LifecycleExecution.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "lifecyclePolicyArn"))
    LifecycleExecution.add_member(:resources_impacted_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourcesImpactedSummary, name: "resourcesImpactedSummary"))
    LifecycleExecution.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionState, name: "state"))
    LifecycleExecution.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "startTime"))
    LifecycleExecution.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "endTime"))
    LifecycleExecution.type = Types::LifecycleExecution
    LifecycleExecutionResource.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "accountId"))
    LifecycleExecutionResource.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "resourceId"))
    LifecycleExecutionResource.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceState, name: "state"))
    LifecycleExecutionResource.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceAction, name: "action"))
    LifecycleExecutionResource.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "region"))
    LifecycleExecutionResource.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionSnapshotResourceList, name: "snapshots"))
    LifecycleExecutionResource.add_member(:image_uris, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "imageUris"))
    LifecycleExecutionResource.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "startTime"))
    LifecycleExecutionResource.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "endTime"))
    LifecycleExecutionResource.type = Types::LifecycleExecutionResource
    LifecycleExecutionResourceAction.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceActionName, name: "name"))
    LifecycleExecutionResourceAction.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    LifecycleExecutionResourceAction.type = Types::LifecycleExecutionResourceAction
    LifecycleExecutionResourceActionName.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LifecycleExecutionResourceActionName.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    LifecycleExecutionResourceActionName.add_member(:deprecate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATE", traits: {"smithy.api#enumValue" => "DEPRECATE"}))
    LifecycleExecutionResourceActionName.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    LifecycleExecutionResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResource, name: "member"))
    LifecycleExecutionResourceState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceStatus, name: "status"))
    LifecycleExecutionResourceState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    LifecycleExecutionResourceState.type = Types::LifecycleExecutionResourceState
    LifecycleExecutionResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LifecycleExecutionResourceStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LifecycleExecutionResourceStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    LifecycleExecutionResourceStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LifecycleExecutionResourcesImpactedSummary.add_member(:has_impacted_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "hasImpactedResources", traits: {"smithy.api#default" => false}))
    LifecycleExecutionResourcesImpactedSummary.type = Types::LifecycleExecutionResourcesImpactedSummary
    LifecycleExecutionSnapshotResource.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "snapshotId"))
    LifecycleExecutionSnapshotResource.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceState, name: "state"))
    LifecycleExecutionSnapshotResource.type = Types::LifecycleExecutionSnapshotResource
    LifecycleExecutionSnapshotResourceList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionSnapshotResource, name: "member"))
    LifecycleExecutionState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionStatus, name: "status"))
    LifecycleExecutionState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    LifecycleExecutionState.type = Types::LifecycleExecutionState
    LifecycleExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LifecycleExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    LifecycleExecutionStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    LifecycleExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LifecycleExecutionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LifecycleExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    LifecycleExecutionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecution, name: "member"))
    LifecyclePolicy.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "arn"))
    LifecyclePolicy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    LifecyclePolicy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    LifecyclePolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStatus, name: "status"))
    LifecyclePolicy.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    LifecyclePolicy.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceType, name: "resourceType"))
    LifecyclePolicy.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetails, name: "policyDetails"))
    LifecyclePolicy.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelection, name: "resourceSelection"))
    LifecyclePolicy.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "dateCreated"))
    LifecyclePolicy.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "dateUpdated"))
    LifecyclePolicy.add_member(:date_last_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "dateLastRun"))
    LifecyclePolicy.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    LifecyclePolicy.type = Types::LifecyclePolicy
    LifecyclePolicyDetail.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailAction, name: "action", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetail.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailFilter, name: "filter", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetail.add_member(:exclusion_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRules, name: "exclusionRules"))
    LifecyclePolicyDetail.type = Types::LifecyclePolicyDetail
    LifecyclePolicyDetailAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailActionType, name: "type", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailAction.add_member(:include_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailActionIncludeResources, name: "includeResources"))
    LifecyclePolicyDetailAction.type = Types::LifecyclePolicyDetailAction
    LifecyclePolicyDetailActionIncludeResources.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "amis", traits: {"smithy.api#default" => false}))
    LifecyclePolicyDetailActionIncludeResources.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "snapshots", traits: {"smithy.api#default" => false}))
    LifecyclePolicyDetailActionIncludeResources.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "containers", traits: {"smithy.api#default" => false}))
    LifecyclePolicyDetailActionIncludeResources.type = Types::LifecyclePolicyDetailActionIncludeResources
    LifecyclePolicyDetailActionType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    LifecyclePolicyDetailActionType.add_member(:deprecate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATE", traits: {"smithy.api#enumValue" => "DEPRECATE"}))
    LifecyclePolicyDetailActionType.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    LifecyclePolicyDetailExclusionRules.add_member(:tag_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tagMap"))
    LifecyclePolicyDetailExclusionRules.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRulesAmis, name: "amis"))
    LifecyclePolicyDetailExclusionRules.type = Types::LifecyclePolicyDetailExclusionRules
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isPublic", traits: {"smithy.api#default" => false}))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "regions"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:shared_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, name: "sharedAccounts"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:last_launched, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRulesAmisLastLaunched, name: "lastLaunched"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:tag_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tagMap"))
    LifecyclePolicyDetailExclusionRulesAmis.type = Types::LifecyclePolicyDetailExclusionRulesAmis
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRulesAmisLastLaunchedValue, name: "value", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyTimeUnit, name: "unit", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.type = Types::LifecyclePolicyDetailExclusionRulesAmisLastLaunched
    LifecyclePolicyDetailFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailFilterType, name: "type", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailFilterValue, name: "value", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailFilter.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyTimeUnit, name: "unit"))
    LifecyclePolicyDetailFilter.add_member(:retain_at_least, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailFilterRetainAtLeast, name: "retainAtLeast"))
    LifecyclePolicyDetailFilter.type = Types::LifecyclePolicyDetailFilter
    LifecyclePolicyDetailFilterType.add_member(:age, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AGE", traits: {"smithy.api#enumValue" => "AGE"}))
    LifecyclePolicyDetailFilterType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    LifecyclePolicyDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetail, name: "member"))
    LifecyclePolicyResourceSelection.add_member(:recipes, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelectionRecipes, name: "recipes"))
    LifecyclePolicyResourceSelection.add_member(:tag_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tagMap"))
    LifecyclePolicyResourceSelection.type = Types::LifecyclePolicyResourceSelection
    LifecyclePolicyResourceSelectionRecipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyResourceSelectionRecipe.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: WildcardVersionNumber, name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyResourceSelectionRecipe.type = Types::LifecyclePolicyResourceSelectionRecipe
    LifecyclePolicyResourceSelectionRecipes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelectionRecipe, name: "member"))
    LifecyclePolicyResourceType.add_member(:ami_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMI_IMAGE", traits: {"smithy.api#enumValue" => "AMI_IMAGE"}))
    LifecyclePolicyResourceType.add_member(:container_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTAINER_IMAGE", traits: {"smithy.api#enumValue" => "CONTAINER_IMAGE"}))
    LifecyclePolicyStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    LifecyclePolicyStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    LifecyclePolicySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "arn"))
    LifecyclePolicySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    LifecyclePolicySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    LifecyclePolicySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStatus, name: "status"))
    LifecyclePolicySummary.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    LifecyclePolicySummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceType, name: "resourceType"))
    LifecyclePolicySummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "dateCreated"))
    LifecyclePolicySummary.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "dateUpdated"))
    LifecyclePolicySummary.add_member(:date_last_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "dateLastRun"))
    LifecyclePolicySummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    LifecyclePolicySummary.type = Types::LifecyclePolicySummary
    LifecyclePolicySummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicySummary, name: "member"))
    LifecyclePolicyTimeUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    LifecyclePolicyTimeUnit.add_member(:weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEEKS", traits: {"smithy.api#enumValue" => "WEEKS"}))
    LifecyclePolicyTimeUnit.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    LifecyclePolicyTimeUnit.add_member(:years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "YEARS", traits: {"smithy.api#enumValue" => "YEARS"}))
    ListComponentBuildVersionsRequest.add_member(:component_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionArn, name: "componentVersionArn"))
    ListComponentBuildVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListComponentBuildVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListComponentBuildVersionsRequest.type = Types::ListComponentBuildVersionsRequest
    ListComponentBuildVersionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListComponentBuildVersionsResponse.add_member(:component_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummaryList, name: "componentSummaryList"))
    ListComponentBuildVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListComponentBuildVersionsResponse.type = Types::ListComponentBuildVersionsResponse
    ListComponentsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, name: "owner"))
    ListComponentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListComponentsRequest.add_member(:by_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "byName", traits: {"smithy.api#default" => false}))
    ListComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListComponentsResponse.add_member(:component_version_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionList, name: "componentVersionList"))
    ListComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListContainerRecipesRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, name: "owner"))
    ListContainerRecipesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListContainerRecipesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListContainerRecipesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListContainerRecipesRequest.type = Types::ListContainerRecipesRequest
    ListContainerRecipesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListContainerRecipesResponse.add_member(:container_recipe_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeSummaryList, name: "containerRecipeSummaryList"))
    ListContainerRecipesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "nextToken"))
    ListContainerRecipesResponse.type = Types::ListContainerRecipesResponse
    ListDistributionConfigurationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListDistributionConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListDistributionConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDistributionConfigurationsRequest.type = Types::ListDistributionConfigurationsRequest
    ListDistributionConfigurationsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListDistributionConfigurationsResponse.add_member(:distribution_configuration_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationSummaryList, name: "distributionConfigurationSummaryList"))
    ListDistributionConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDistributionConfigurationsResponse.type = Types::ListDistributionConfigurationsResponse
    ListImageBuildVersionsRequest.add_member(:image_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersionArn, name: "imageVersionArn"))
    ListImageBuildVersionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListImageBuildVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListImageBuildVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImageBuildVersionsRequest.type = Types::ListImageBuildVersionsRequest
    ListImageBuildVersionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListImageBuildVersionsResponse.add_member(:image_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSummaryList, name: "imageSummaryList"))
    ListImageBuildVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImageBuildVersionsResponse.type = Types::ListImageBuildVersionsResponse
    ListImagePackagesRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    ListImagePackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListImagePackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImagePackagesRequest.type = Types::ListImagePackagesRequest
    ListImagePackagesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListImagePackagesResponse.add_member(:image_package_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePackageList, name: "imagePackageList"))
    ListImagePackagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImagePackagesResponse.type = Types::ListImagePackagesResponse
    ListImagePipelineImagesRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn", traits: {"smithy.api#required" => {}}))
    ListImagePipelineImagesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListImagePipelineImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListImagePipelineImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImagePipelineImagesRequest.type = Types::ListImagePipelineImagesRequest
    ListImagePipelineImagesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListImagePipelineImagesResponse.add_member(:image_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSummaryList, name: "imageSummaryList"))
    ListImagePipelineImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImagePipelineImagesResponse.type = Types::ListImagePipelineImagesResponse
    ListImagePipelinesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListImagePipelinesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListImagePipelinesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImagePipelinesRequest.type = Types::ListImagePipelinesRequest
    ListImagePipelinesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListImagePipelinesResponse.add_member(:image_pipeline_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineList, name: "imagePipelineList"))
    ListImagePipelinesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImagePipelinesResponse.type = Types::ListImagePipelinesResponse
    ListImageRecipesRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, name: "owner"))
    ListImageRecipesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListImageRecipesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListImageRecipesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImageRecipesRequest.type = Types::ListImageRecipesRequest
    ListImageRecipesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListImageRecipesResponse.add_member(:image_recipe_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeSummaryList, name: "imageRecipeSummaryList"))
    ListImageRecipesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImageRecipesResponse.type = Types::ListImageRecipesResponse
    ListImageScanFindingAggregationsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, name: "filter"))
    ListImageScanFindingAggregationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImageScanFindingAggregationsRequest.type = Types::ListImageScanFindingAggregationsRequest
    ListImageScanFindingAggregationsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListImageScanFindingAggregationsResponse.add_member(:aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "aggregationType"))
    ListImageScanFindingAggregationsResponse.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingAggregationsList, name: "responses"))
    ListImageScanFindingAggregationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImageScanFindingAggregationsResponse.type = Types::ListImageScanFindingAggregationsResponse
    ListImageScanFindingsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsFilterList, name: "filters"))
    ListImageScanFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListImageScanFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImageScanFindingsRequest.type = Types::ListImageScanFindingsRequest
    ListImageScanFindingsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListImageScanFindingsResponse.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsList, name: "findings"))
    ListImageScanFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImageScanFindingsResponse.type = Types::ListImageScanFindingsResponse
    ListImagesRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, name: "owner"))
    ListImagesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListImagesRequest.add_member(:by_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "byName", traits: {"smithy.api#default" => false}))
    ListImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImagesRequest.add_member(:include_deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "includeDeprecated"))
    ListImagesRequest.type = Types::ListImagesRequest
    ListImagesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListImagesResponse.add_member(:image_version_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersionList, name: "imageVersionList"))
    ListImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListImagesResponse.type = Types::ListImagesResponse
    ListInfrastructureConfigurationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListInfrastructureConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListInfrastructureConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListInfrastructureConfigurationsRequest.type = Types::ListInfrastructureConfigurationsRequest
    ListInfrastructureConfigurationsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListInfrastructureConfigurationsResponse.add_member(:infrastructure_configuration_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationSummaryList, name: "infrastructureConfigurationSummaryList"))
    ListInfrastructureConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListInfrastructureConfigurationsResponse.type = Types::ListInfrastructureConfigurationsResponse
    ListLifecycleExecutionResourcesRequest.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId", traits: {"smithy.api#required" => {}}))
    ListLifecycleExecutionResourcesRequest.add_member(:parent_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "parentResourceId"))
    ListLifecycleExecutionResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListLifecycleExecutionResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLifecycleExecutionResourcesRequest.type = Types::ListLifecycleExecutionResourcesRequest
    ListLifecycleExecutionResourcesResponse.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId"))
    ListLifecycleExecutionResourcesResponse.add_member(:lifecycle_execution_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionState, name: "lifecycleExecutionState"))
    ListLifecycleExecutionResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceList, name: "resources"))
    ListLifecycleExecutionResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLifecycleExecutionResourcesResponse.type = Types::ListLifecycleExecutionResourcesResponse
    ListLifecycleExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListLifecycleExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLifecycleExecutionsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListLifecycleExecutionsRequest.type = Types::ListLifecycleExecutionsRequest
    ListLifecycleExecutionsResponse.add_member(:lifecycle_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionsList, name: "lifecycleExecutions"))
    ListLifecycleExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLifecycleExecutionsResponse.type = Types::ListLifecycleExecutionsResponse
    ListLifecyclePoliciesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListLifecyclePoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListLifecyclePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLifecyclePoliciesRequest.type = Types::ListLifecyclePoliciesRequest
    ListLifecyclePoliciesResponse.add_member(:lifecycle_policy_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicySummaryList, name: "lifecyclePolicySummaryList"))
    ListLifecyclePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListLifecyclePoliciesResponse.type = Types::ListLifecyclePoliciesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWaitingWorkflowStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListWaitingWorkflowStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWaitingWorkflowStepsRequest.type = Types::ListWaitingWorkflowStepsRequest
    ListWaitingWorkflowStepsResponse.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionList, name: "steps"))
    ListWaitingWorkflowStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWaitingWorkflowStepsResponse.type = Types::ListWaitingWorkflowStepsResponse
    ListWorkflowBuildVersionsRequest.add_member(:workflow_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowWildcardVersionArn, name: "workflowVersionArn"))
    ListWorkflowBuildVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListWorkflowBuildVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkflowBuildVersionsRequest.type = Types::ListWorkflowBuildVersionsRequest
    ListWorkflowBuildVersionsResponse.add_member(:workflow_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowSummaryList, name: "workflowSummaryList"))
    ListWorkflowBuildVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkflowBuildVersionsResponse.type = Types::ListWorkflowBuildVersionsResponse
    ListWorkflowExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListWorkflowExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkflowExecutionsRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    ListWorkflowExecutionsRequest.type = Types::ListWorkflowExecutionsRequest
    ListWorkflowExecutionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListWorkflowExecutionsResponse.add_member(:workflow_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionsList, name: "workflowExecutions"))
    ListWorkflowExecutionsResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    ListWorkflowExecutionsResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildMessage, name: "message"))
    ListWorkflowExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkflowExecutionsResponse.type = Types::ListWorkflowExecutionsResponse
    ListWorkflowStepExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListWorkflowStepExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkflowStepExecutionsRequest.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, name: "workflowExecutionId", traits: {"smithy.api#required" => {}}))
    ListWorkflowStepExecutionsRequest.type = Types::ListWorkflowStepExecutionsRequest
    ListWorkflowStepExecutionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    ListWorkflowStepExecutionsResponse.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionsList, name: "steps"))
    ListWorkflowStepExecutionsResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowBuildVersionArn"))
    ListWorkflowStepExecutionsResponse.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, name: "workflowExecutionId"))
    ListWorkflowStepExecutionsResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    ListWorkflowStepExecutionsResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildMessage, name: "message"))
    ListWorkflowStepExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkflowStepExecutionsResponse.type = Types::ListWorkflowStepExecutionsResponse
    ListWorkflowsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, name: "owner"))
    ListWorkflowsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, name: "filters"))
    ListWorkflowsRequest.add_member(:by_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "byName", traits: {"smithy.api#default" => false}))
    ListWorkflowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, name: "maxResults"))
    ListWorkflowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkflowsRequest.type = Types::ListWorkflowsRequest
    ListWorkflowsResponse.add_member(:workflow_version_list, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionList, name: "workflowVersionList"))
    ListWorkflowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListWorkflowsResponse.type = Types::ListWorkflowsResponse
    Logging.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Logs, name: "s3Logs"))
    Logging.type = Types::Logging
    MarketplaceResourceType.add_member(:component_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPONENT_DATA", traits: {"smithy.api#enumValue" => "COMPONENT_DATA"}))
    MarketplaceResourceType.add_member(:component_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPONENT_ARTIFACT", traits: {"smithy.api#enumValue" => "COMPONENT_ARTIFACT"}))
    NonEmptyStringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    OnWorkflowFailure.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    OnWorkflowFailure.add_member(:abort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ABORT", traits: {"smithy.api#enumValue" => "ABORT"}))
    OrganizationArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationArn, name: "member"))
    OrganizationalUnitArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitArn, name: "member"))
    OsVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, name: "member"))
    OutputResources.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiList, name: "amis"))
    OutputResources.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerList, name: "containers"))
    OutputResources.type = Types::OutputResources
    Ownership.add_member(:self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SELF", traits: {"smithy.api#enumValue" => "Self"}))
    Ownership.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "Shared"}))
    Ownership.add_member(:amazon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON", traits: {"smithy.api#enumValue" => "Amazon"}))
    Ownership.add_member(:thirdparty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THIRDPARTY", traits: {"smithy.api#enumValue" => "ThirdParty"}))
    Ownership.add_member(:aws_marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_MARKETPLACE", traits: {"smithy.api#enumValue" => "AWSMarketplace"}))
    PackageVulnerabilityDetails.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityId, name: "vulnerabilityId", traits: {"smithy.api#required" => {}}))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackageList, name: "vulnerablePackages"))
    PackageVulnerabilityDetails.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "source"))
    PackageVulnerabilityDetails.add_member(:cvss, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreList, name: "cvss"))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityIdList, name: "relatedVulnerabilities"))
    PackageVulnerabilityDetails.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "sourceUrl"))
    PackageVulnerabilityDetails.add_member(:vendor_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "vendorSeverity"))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "vendorCreatedAt"))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "vendorUpdatedAt"))
    PackageVulnerabilityDetails.add_member(:reference_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringList, name: "referenceUrls"))
    PackageVulnerabilityDetails.type = Types::PackageVulnerabilityDetails
    ParentInstanceConfiguration.add_member(:auto_scaling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoScalingGroupConfiguration, name: "autoScalingGroup", traits: {"smithy.api#required" => {}}))
    ParentInstanceConfiguration.type = Types::ParentInstanceConfiguration
    PipelineExecutionStartCondition.add_member(:expression_match_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPRESSION_MATCH_ONLY", traits: {"smithy.api#enumValue" => "EXPRESSION_MATCH_ONLY"}))
    PipelineExecutionStartCondition.add_member(:expression_match_and_dependency_updates_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE", traits: {"smithy.api#enumValue" => "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"}))
    PipelineLoggingConfiguration.add_member(:image_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "imageLogGroupName"))
    PipelineLoggingConfiguration.add_member(:pipeline_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "pipelineLogGroupName"))
    PipelineLoggingConfiguration.type = Types::PipelineLoggingConfiguration
    PipelineStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PipelineStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Placement.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "availabilityZone"))
    Placement.add_member(:tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyType, name: "tenancy"))
    Placement.add_member(:host_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "hostId"))
    Placement.add_member(:host_resource_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "hostResourceGroupArn"))
    Placement.type = Types::Placement
    Platform.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "Windows"}))
    Platform.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LINUX", traits: {"smithy.api#enumValue" => "Linux"}))
    Platform.add_member(:macos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MACOS", traits: {"smithy.api#enumValue" => "macOS"}))
    ProductCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeListItem, name: "member"))
    ProductCodeListItem.add_member(:product_code_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeId, name: "productCodeId", traits: {"smithy.api#required" => {}}))
    ProductCodeListItem.add_member(:product_code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeType, name: "productCodeType", traits: {"smithy.api#required" => {}}))
    ProductCodeListItem.type = Types::ProductCodeListItem
    ProductCodeType.add_member(:marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MARKETPLACE", traits: {"smithy.api#enumValue" => "marketplace"}))
    PutComponentPolicyRequest.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, name: "componentArn", traits: {"smithy.api#required" => {}}))
    PutComponentPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    PutComponentPolicyRequest.type = Types::PutComponentPolicyRequest
    PutComponentPolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    PutComponentPolicyResponse.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, name: "componentArn"))
    PutComponentPolicyResponse.type = Types::PutComponentPolicyResponse
    PutContainerRecipePolicyRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn", traits: {"smithy.api#required" => {}}))
    PutContainerRecipePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    PutContainerRecipePolicyRequest.type = Types::PutContainerRecipePolicyRequest
    PutContainerRecipePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    PutContainerRecipePolicyResponse.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn"))
    PutContainerRecipePolicyResponse.type = Types::PutContainerRecipePolicyResponse
    PutImagePolicyRequest.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageArn", traits: {"smithy.api#required" => {}}))
    PutImagePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    PutImagePolicyRequest.type = Types::PutImagePolicyRequest
    PutImagePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    PutImagePolicyResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageArn"))
    PutImagePolicyResponse.type = Types::PutImagePolicyResponse
    PutImageRecipePolicyRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn", traits: {"smithy.api#required" => {}}))
    PutImageRecipePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, name: "policy", traits: {"smithy.api#required" => {}}))
    PutImageRecipePolicyRequest.type = Types::PutImageRecipePolicyRequest
    PutImageRecipePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    PutImageRecipePolicyResponse.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn"))
    PutImageRecipePolicyResponse.type = Types::PutImageRecipePolicyResponse
    RegionFailure.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "region"))
    RegionFailure.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionFailureStatus, name: "status"))
    RegionFailure.add_member(:image_configuration_step, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigurationStep, name: "imageConfigurationStep"))
    RegionFailure.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyMaxLengthString, name: "errorMessage"))
    RegionFailure.add_member(:target_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "targetAccountId"))
    RegionFailure.type = Types::RegionFailure
    RegionFailureList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionFailure, name: "member"))
    RegionFailureStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    RegionFailureStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    RegionFailureStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    RegionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    RegisterImageOptions.add_member(:secure_boot_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "secureBootEnabled"))
    RegisterImageOptions.add_member(:uefi_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UefiData, name: "uefiData"))
    RegisterImageOptions.type = Types::RegisterImageOptions
    Remediation.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationRecommendation, name: "recommendation"))
    Remediation.type = Types::Remediation
    RemediationRecommendation.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "text"))
    RemediationRecommendation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "url"))
    RemediationRecommendation.type = Types::RemediationRecommendation
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceDependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceDependencyException.type = Types::ResourceDependencyException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, name: "status"))
    ResourceState.type = Types::ResourceState
    ResourceStateUpdateExclusionRules.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRulesAmis, name: "amis"))
    ResourceStateUpdateExclusionRules.type = Types::ResourceStateUpdateExclusionRules
    ResourceStateUpdateIncludeResources.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "amis", traits: {"smithy.api#default" => false}))
    ResourceStateUpdateIncludeResources.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "snapshots", traits: {"smithy.api#default" => false}))
    ResourceStateUpdateIncludeResources.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "containers", traits: {"smithy.api#default" => false}))
    ResourceStateUpdateIncludeResources.type = Types::ResourceStateUpdateIncludeResources
    ResourceStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ResourceStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ResourceStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ResourceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResourceTagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    ResourceTagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    RetryImageRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    RetryImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    RetryImageRequest.type = Types::RetryImageRequest
    RetryImageResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    RetryImageResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    RetryImageResponse.type = Types::RetryImageResponse
    S3ExportConfiguration.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "roleName", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:disk_image_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskImageFormat, name: "diskImageFormat", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "s3Prefix"))
    S3ExportConfiguration.type = Types::S3ExportConfiguration
    S3Logs.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "s3BucketName"))
    S3Logs.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "s3KeyPrefix"))
    S3Logs.type = Types::S3Logs
    Schedule.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "scheduleExpression"))
    Schedule.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, name: "timezone"))
    Schedule.add_member(:pipeline_execution_start_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionStartCondition, name: "pipelineExecutionStartCondition"))
    Schedule.add_member(:auto_disable_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDisablePolicy, name: "autoDisablePolicy"))
    Schedule.type = Types::Schedule
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    SendWorkflowStepActionRequest.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, name: "stepExecutionId", traits: {"smithy.api#required" => {}}))
    SendWorkflowStepActionRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    SendWorkflowStepActionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepActionType, name: "action", traits: {"smithy.api#required" => {}}))
    SendWorkflowStepActionRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    SendWorkflowStepActionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    SendWorkflowStepActionRequest.type = Types::SendWorkflowStepActionRequest
    SendWorkflowStepActionResponse.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, name: "stepExecutionId"))
    SendWorkflowStepActionResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    SendWorkflowStepActionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    SendWorkflowStepActionResponse.type = Types::SendWorkflowStepActionResponse
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceException.type = Types::ServiceException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SeverityCounts.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCountNumber, name: "all"))
    SeverityCounts.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCountNumber, name: "critical"))
    SeverityCounts.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCountNumber, name: "high"))
    SeverityCounts.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCountNumber, name: "medium"))
    SeverityCounts.type = Types::SeverityCounts
    SsmParameterConfiguration.add_member(:ami_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "amiAccountId"))
    SsmParameterConfiguration.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterName, name: "parameterName", traits: {"smithy.api#required" => {}}))
    SsmParameterConfiguration.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterDataType, name: "dataType"))
    SsmParameterConfiguration.type = Types::SsmParameterConfiguration
    SsmParameterConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterConfiguration, name: "member"))
    SsmParameterDataType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT", traits: {"smithy.api#enumValue" => "text"}))
    SsmParameterDataType.add_member(:aws_ec2_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_EC2_IMAGE", traits: {"smithy.api#enumValue" => "aws:ec2:image"}))
    StartImagePipelineExecutionRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn", traits: {"smithy.api#required" => {}}))
    StartImagePipelineExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartImagePipelineExecutionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    StartImagePipelineExecutionRequest.type = Types::StartImagePipelineExecutionRequest
    StartImagePipelineExecutionResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    StartImagePipelineExecutionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    StartImagePipelineExecutionResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    StartImagePipelineExecutionResponse.type = Types::StartImagePipelineExecutionResponse
    StartResourceStateUpdateRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "resourceArn", traits: {"smithy.api#required" => {}}))
    StartResourceStateUpdateRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceState, name: "state", traits: {"smithy.api#required" => {}}))
    StartResourceStateUpdateRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    StartResourceStateUpdateRequest.add_member(:include_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStateUpdateIncludeResources, name: "includeResources"))
    StartResourceStateUpdateRequest.add_member(:exclusion_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStateUpdateExclusionRules, name: "exclusionRules"))
    StartResourceStateUpdateRequest.add_member(:update_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, name: "updateAt"))
    StartResourceStateUpdateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartResourceStateUpdateRequest.type = Types::StartResourceStateUpdateRequest
    StartResourceStateUpdateResponse.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, name: "lifecycleExecutionId"))
    StartResourceStateUpdateResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "resourceArn"))
    StartResourceStateUpdateResponse.type = Types::StartResourceStateUpdateResponse
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    SystemsManagerAgent.add_member(:uninstall_after_build, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "uninstallAfterBuild"))
    SystemsManagerAgent.type = Types::SystemsManagerAgent
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetContainerRepository.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRepositoryService, name: "service", traits: {"smithy.api#required" => {}}))
    TargetContainerRepository.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    TargetContainerRepository.type = Types::TargetContainerRepository
    TenancyType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    TenancyType.add_member(:dedicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEDICATED", traits: {"smithy.api#enumValue" => "dedicated"}))
    TenancyType.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDistributionConfigurationRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateDistributionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    UpdateDistributionConfigurationRequest.add_member(:distributions, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, name: "distributions", traits: {"smithy.api#required" => {}}))
    UpdateDistributionConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateDistributionConfigurationRequest.type = Types::UpdateDistributionConfigurationRequest
    UpdateDistributionConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    UpdateDistributionConfigurationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    UpdateDistributionConfigurationResponse.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn"))
    UpdateDistributionConfigurationResponse.type = Types::UpdateDistributionConfigurationResponse
    UpdateImagePipelineRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn", traits: {"smithy.api#required" => {}}))
    UpdateImagePipelineRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    UpdateImagePipelineRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, name: "imageRecipeArn"))
    UpdateImagePipelineRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, name: "containerRecipeArn"))
    UpdateImagePipelineRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateImagePipelineRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, name: "distributionConfigurationArn"))
    UpdateImagePipelineRequest.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, name: "imageTestsConfiguration"))
    UpdateImagePipelineRequest.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "enhancedImageMetadataEnabled"))
    UpdateImagePipelineRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, name: "schedule"))
    UpdateImagePipelineRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatus, name: "status"))
    UpdateImagePipelineRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateImagePipelineRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, name: "imageScanningConfiguration"))
    UpdateImagePipelineRequest.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, name: "workflows"))
    UpdateImagePipelineRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineLoggingConfiguration, name: "loggingConfiguration"))
    UpdateImagePipelineRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole"))
    UpdateImagePipelineRequest.add_member(:image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "imageTags"))
    UpdateImagePipelineRequest.type = Types::UpdateImagePipelineRequest
    UpdateImagePipelineResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    UpdateImagePipelineResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    UpdateImagePipelineResponse.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, name: "imagePipelineArn"))
    UpdateImagePipelineResponse.type = Types::UpdateImagePipelineResponse
    UpdateInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateInfrastructureConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, name: "instanceTypes"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, name: "instanceProfileName", traits: {"smithy.api#required" => {}}))
    UpdateInfrastructureConfigurationRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    UpdateInfrastructureConfigurationRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "subnetId"))
    UpdateInfrastructureConfigurationRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, name: "logging"))
    UpdateInfrastructureConfigurationRequest.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "keyPair"))
    UpdateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "terminateInstanceOnFailure"))
    UpdateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_completion, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "terminateInstanceOnCompletion"))
    UpdateInfrastructureConfigurationRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, name: "snsTopicArn"))
    UpdateInfrastructureConfigurationRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMap, name: "resourceTags"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, name: "instanceMetadataOptions"))
    UpdateInfrastructureConfigurationRequest.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, name: "placement"))
    UpdateInfrastructureConfigurationRequest.add_member(:parent_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ParentInstanceConfiguration, name: "parentInstance"))
    UpdateInfrastructureConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateInfrastructureConfigurationRequest.type = Types::UpdateInfrastructureConfigurationRequest
    UpdateInfrastructureConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "requestId"))
    UpdateInfrastructureConfigurationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken"))
    UpdateInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, name: "infrastructureConfigurationArn"))
    UpdateInfrastructureConfigurationResponse.type = Types::UpdateInfrastructureConfigurationResponse
    UpdateLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "lifecyclePolicyArn", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    UpdateLifecyclePolicyRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStatus, name: "status"))
    UpdateLifecyclePolicyRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, name: "executionRole", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceType, name: "resourceType", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetails, name: "policyDetails", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelection, name: "resourceSelection", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.type = Types::UpdateLifecyclePolicyRequest
    UpdateLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, name: "lifecyclePolicyArn"))
    UpdateLifecyclePolicyResponse.type = Types::UpdateLifecyclePolicyResponse
    VulnerabilityIdAggregation.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "vulnerabilityId"))
    VulnerabilityIdAggregation.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, name: "severityCounts"))
    VulnerabilityIdAggregation.type = Types::VulnerabilityIdAggregation
    VulnerabilityIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityId, name: "member"))
    VulnerablePackage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "name"))
    VulnerablePackage.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "version"))
    VulnerablePackage.add_member(:source_layer_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLayerHash, name: "sourceLayerHash"))
    VulnerablePackage.add_member(:epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageEpoch, name: "epoch"))
    VulnerablePackage.add_member(:release, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "release"))
    VulnerablePackage.add_member(:arch, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageArchitecture, name: "arch"))
    VulnerablePackage.add_member(:package_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "packageManager"))
    VulnerablePackage.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "filePath"))
    VulnerablePackage.add_member(:fixed_in_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "fixedInVersion"))
    VulnerablePackage.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "remediation"))
    VulnerablePackage.type = Types::VulnerablePackage
    VulnerablePackageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackage, name: "member"))
    WindowsConfiguration.add_member(:image_index, ::Smithy::Schema::Shapes::MemberShape.new(target: WindowsConfigurationImageIndex, name: "imageIndex", traits: {"smithy.api#required" => {}}))
    WindowsConfiguration.type = Types::WindowsConfiguration
    Workflow.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "arn"))
    Workflow.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    Workflow.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    Workflow.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    Workflow.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "changeDescription"))
    Workflow.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "type"))
    Workflow.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowState, name: "state"))
    Workflow.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    Workflow.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowData, name: "data"))
    Workflow.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "kmsKeyId"))
    Workflow.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    Workflow.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Workflow.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterDetailList, name: "parameters"))
    Workflow.type = Types::Workflow
    WorkflowConfiguration.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionArnOrBuildVersionArn, name: "workflowArn", traits: {"smithy.api#required" => {}}))
    WorkflowConfiguration.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterList, name: "parameters"))
    WorkflowConfiguration.add_member(:parallel_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelGroup, name: "parallelGroup"))
    WorkflowConfiguration.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnWorkflowFailure, name: "onFailure"))
    WorkflowConfiguration.type = Types::WorkflowConfiguration
    WorkflowConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfiguration, name: "member"))
    WorkflowExecutionMetadata.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowBuildVersionArn"))
    WorkflowExecutionMetadata.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, name: "workflowExecutionId"))
    WorkflowExecutionMetadata.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "type"))
    WorkflowExecutionMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionStatus, name: "status"))
    WorkflowExecutionMetadata.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionMessage, name: "message"))
    WorkflowExecutionMetadata.add_member(:total_step_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, name: "totalStepCount", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionMetadata.add_member(:total_steps_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, name: "totalStepsSucceeded", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionMetadata.add_member(:total_steps_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, name: "totalStepsFailed", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionMetadata.add_member(:total_steps_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, name: "totalStepsSkipped", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionMetadata.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startTime"))
    WorkflowExecutionMetadata.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "endTime"))
    WorkflowExecutionMetadata.add_member(:parallel_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelGroup, name: "parallelGroup"))
    WorkflowExecutionMetadata.add_member(:retried, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, name: "retried"))
    WorkflowExecutionMetadata.type = Types::WorkflowExecutionMetadata
    WorkflowExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkflowExecutionStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    WorkflowExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkflowExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    WorkflowExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WorkflowExecutionStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    WorkflowExecutionStatus.add_member(:rollback_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLLBACK_COMPLETED", traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETED"}))
    WorkflowExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    WorkflowExecutionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionMetadata, name: "member"))
    WorkflowParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterName, name: "name", traits: {"smithy.api#required" => {}}))
    WorkflowParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterValueList, name: "value", traits: {"smithy.api#required" => {}}))
    WorkflowParameter.type = Types::WorkflowParameter
    WorkflowParameterDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterName, name: "name", traits: {"smithy.api#required" => {}}))
    WorkflowParameterDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterType, name: "type", traits: {"smithy.api#required" => {}}))
    WorkflowParameterDetail.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterValueList, name: "defaultValue"))
    WorkflowParameterDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterDescription, name: "description"))
    WorkflowParameterDetail.type = Types::WorkflowParameterDetail
    WorkflowParameterDetailList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterDetail, name: "member"))
    WorkflowParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameter, name: "member"))
    WorkflowParameterValueList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterValue, name: "member"))
    WorkflowState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, name: "status"))
    WorkflowState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "reason"))
    WorkflowState.type = Types::WorkflowState
    WorkflowStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    WorkflowStepActionType.add_member(:resume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESUME", traits: {"smithy.api#enumValue" => "RESUME"}))
    WorkflowStepActionType.add_member(:stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOP", traits: {"smithy.api#enumValue" => "STOP"}))
    WorkflowStepExecution.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, name: "stepExecutionId"))
    WorkflowStepExecution.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, name: "imageBuildVersionArn"))
    WorkflowStepExecution.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, name: "workflowExecutionId"))
    WorkflowStepExecution.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "workflowBuildVersionArn"))
    WorkflowStepExecution.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepName, name: "name"))
    WorkflowStepExecution.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAction, name: "action"))
    WorkflowStepExecution.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startTime"))
    WorkflowStepExecution.type = Types::WorkflowStepExecution
    WorkflowStepExecutionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecution, name: "member"))
    WorkflowStepExecutionRollbackStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkflowStepExecutionRollbackStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    WorkflowStepExecutionRollbackStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    WorkflowStepExecutionRollbackStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WorkflowStepExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkflowStepExecutionStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    WorkflowStepExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkflowStepExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    WorkflowStepExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WorkflowStepExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    WorkflowStepExecutionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepMetadata, name: "member"))
    WorkflowStepMetadata.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, name: "stepExecutionId"))
    WorkflowStepMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepName, name: "name"))
    WorkflowStepMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepDescription, name: "description"))
    WorkflowStepMetadata.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAction, name: "action"))
    WorkflowStepMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionStatus, name: "status"))
    WorkflowStepMetadata.add_member(:rollback_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionRollbackStatus, name: "rollbackStatus"))
    WorkflowStepMetadata.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepMessage, name: "message"))
    WorkflowStepMetadata.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepInputs, name: "inputs"))
    WorkflowStepMetadata.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputs, name: "outputs"))
    WorkflowStepMetadata.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "startTime"))
    WorkflowStepMetadata.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "endTime"))
    WorkflowStepMetadata.add_member(:attempt_number, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAttemptCount, name: "attemptNumber"))
    WorkflowStepMetadata.add_member(:max_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAttemptCount, name: "maxAttempts"))
    WorkflowStepMetadata.type = Types::WorkflowStepMetadata
    WorkflowSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, name: "arn"))
    WorkflowSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    WorkflowSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    WorkflowSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    WorkflowSummary.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "changeDescription"))
    WorkflowSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "type"))
    WorkflowSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    WorkflowSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowState, name: "state"))
    WorkflowSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    WorkflowSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    WorkflowSummary.type = Types::WorkflowSummary
    WorkflowSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowSummary, name: "member"))
    WorkflowType.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    WorkflowType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    WorkflowType.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISTRIBUTION", traits: {"smithy.api#enumValue" => "DISTRIBUTION"}))
    WorkflowVersion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowWildcardVersionArn, name: "arn"))
    WorkflowVersion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    WorkflowVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, name: "version"))
    WorkflowVersion.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "description"))
    WorkflowVersion.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, name: "type"))
    WorkflowVersion.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "owner"))
    WorkflowVersion.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "dateCreated"))
    WorkflowVersion.type = Types::WorkflowVersion
    WorkflowVersionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion, name: "member"))

    Imagebuilder = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.imagebuilder#imagebuilder"
      service.name = "Imagebuilder"
      service.version = "2019-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "imagebuilder", "arnNamespace" => "imagebuilder", "cloudFormationName" => "Imagebuilder", "cloudTrailEventSource" => "imagebuilder.amazonaws.com", "endpointPrefix" => "imagebuilder"}, "aws.auth#sigv4" => {"name" => "imagebuilder"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "EC2 Image Builder", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://imagebuilder-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://imagebuilder.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://imagebuilder-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://imagebuilder.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://imagebuilder.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:cancel_image_creation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CancelImageCreation"
        operation.name = "CancelImageCreation"
        operation.input = CancelImageCreationRequest
        operation.output = CancelImageCreationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CancelImageCreation", "code" => 200}}
      end)
      service.add_operation(:cancel_lifecycle_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CancelLifecycleExecution"
        operation.name = "CancelLifecycleExecution"
        operation.input = CancelLifecycleExecutionRequest
        operation.output = CancelLifecycleExecutionResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CancelLifecycleExecution", "code" => 200}}
      end)
      service.add_operation(:create_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateComponent"
        operation.name = "CreateComponent"
        operation.input = CreateComponentRequest
        operation.output = CreateComponentResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << DryRunOperationException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidVersionNumberException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateComponent", "code" => 200}}
      end)
      service.add_operation(:create_container_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateContainerRecipe"
        operation.name = "CreateContainerRecipe"
        operation.input = CreateContainerRecipeRequest
        operation.output = CreateContainerRecipeResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << DryRunOperationException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << InvalidVersionNumberException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateContainerRecipe", "code" => 200}}
      end)
      service.add_operation(:create_distribution_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateDistributionConfiguration"
        operation.name = "CreateDistributionConfiguration"
        operation.input = CreateDistributionConfigurationRequest
        operation.output = CreateDistributionConfigurationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << DryRunOperationException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateDistributionConfiguration", "code" => 200}}
      end)
      service.add_operation(:create_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateImage"
        operation.name = "CreateImage"
        operation.input = CreateImageRequest
        operation.output = CreateImageResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateImage", "code" => 200}}
      end)
      service.add_operation(:create_image_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateImagePipeline"
        operation.name = "CreateImagePipeline"
        operation.input = CreateImagePipelineRequest
        operation.output = CreateImagePipelineResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << DryRunOperationException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateImagePipeline", "code" => 200}}
      end)
      service.add_operation(:create_image_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateImageRecipe"
        operation.name = "CreateImageRecipe"
        operation.input = CreateImageRecipeRequest
        operation.output = CreateImageRecipeResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << DryRunOperationException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << InvalidVersionNumberException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateImageRecipe", "code" => 200}}
      end)
      service.add_operation(:create_infrastructure_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateInfrastructureConfiguration"
        operation.name = "CreateInfrastructureConfiguration"
        operation.input = CreateInfrastructureConfigurationRequest
        operation.output = CreateInfrastructureConfigurationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << DryRunOperationException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateInfrastructureConfiguration", "code" => 200}}
      end)
      service.add_operation(:create_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateLifecyclePolicy"
        operation.name = "CreateLifecyclePolicy"
        operation.input = CreateLifecyclePolicyRequest
        operation.output = CreateLifecyclePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << DryRunOperationException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateLifecyclePolicy", "code" => 200}}
      end)
      service.add_operation(:create_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#CreateWorkflow"
        operation.name = "CreateWorkflow"
        operation.input = CreateWorkflowRequest
        operation.output = CreateWorkflowResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << DryRunOperationException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidVersionNumberException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/CreateWorkflow", "code" => 200}}
      end)
      service.add_operation(:delete_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteComponent"
        operation.name = "DeleteComponent"
        operation.input = DeleteComponentRequest
        operation.output = DeleteComponentResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteComponent", "code" => 200}}
      end)
      service.add_operation(:delete_container_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteContainerRecipe"
        operation.name = "DeleteContainerRecipe"
        operation.input = DeleteContainerRecipeRequest
        operation.output = DeleteContainerRecipeResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteContainerRecipe", "code" => 200}}
      end)
      service.add_operation(:delete_distribution_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteDistributionConfiguration"
        operation.name = "DeleteDistributionConfiguration"
        operation.input = DeleteDistributionConfigurationRequest
        operation.output = DeleteDistributionConfigurationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteDistributionConfiguration", "code" => 200}}
      end)
      service.add_operation(:delete_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteImage"
        operation.name = "DeleteImage"
        operation.input = DeleteImageRequest
        operation.output = DeleteImageResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteImage", "code" => 200}}
      end)
      service.add_operation(:delete_image_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteImagePipeline"
        operation.name = "DeleteImagePipeline"
        operation.input = DeleteImagePipelineRequest
        operation.output = DeleteImagePipelineResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteImagePipeline", "code" => 200}}
      end)
      service.add_operation(:delete_image_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteImageRecipe"
        operation.name = "DeleteImageRecipe"
        operation.input = DeleteImageRecipeRequest
        operation.output = DeleteImageRecipeResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteImageRecipe", "code" => 200}}
      end)
      service.add_operation(:delete_infrastructure_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteInfrastructureConfiguration"
        operation.name = "DeleteInfrastructureConfiguration"
        operation.input = DeleteInfrastructureConfigurationRequest
        operation.output = DeleteInfrastructureConfigurationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteInfrastructureConfiguration", "code" => 200}}
      end)
      service.add_operation(:delete_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = DeleteLifecyclePolicyRequest
        operation.output = DeleteLifecyclePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteLifecyclePolicy", "code" => 200}}
      end)
      service.add_operation(:delete_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DeleteWorkflow"
        operation.name = "DeleteWorkflow"
        operation.input = DeleteWorkflowRequest
        operation.output = DeleteWorkflowResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceDependencyException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/DeleteWorkflow", "code" => 200}}
      end)
      service.add_operation(:distribute_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#DistributeImage"
        operation.name = "DistributeImage"
        operation.input = DistributeImageRequest
        operation.output = DistributeImageResponse
        operation.errors << AccessDeniedException
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/DistributeImage", "code" => 200}}
      end)
      service.add_operation(:get_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetComponent"
        operation.name = "GetComponent"
        operation.input = GetComponentRequest
        operation.output = GetComponentResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetComponent", "code" => 200}}
      end)
      service.add_operation(:get_component_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetComponentPolicy"
        operation.name = "GetComponentPolicy"
        operation.input = GetComponentPolicyRequest
        operation.output = GetComponentPolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetComponentPolicy", "code" => 200}}
      end)
      service.add_operation(:get_container_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetContainerRecipe"
        operation.name = "GetContainerRecipe"
        operation.input = GetContainerRecipeRequest
        operation.output = GetContainerRecipeResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetContainerRecipe", "code" => 200}}
      end)
      service.add_operation(:get_container_recipe_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetContainerRecipePolicy"
        operation.name = "GetContainerRecipePolicy"
        operation.input = GetContainerRecipePolicyRequest
        operation.output = GetContainerRecipePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetContainerRecipePolicy", "code" => 200}}
      end)
      service.add_operation(:get_distribution_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetDistributionConfiguration"
        operation.name = "GetDistributionConfiguration"
        operation.input = GetDistributionConfigurationRequest
        operation.output = GetDistributionConfigurationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetDistributionConfiguration", "code" => 200}}
      end)
      service.add_operation(:get_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetImage"
        operation.name = "GetImage"
        operation.input = GetImageRequest
        operation.output = GetImageResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetImage", "code" => 200}}
      end)
      service.add_operation(:get_image_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetImagePipeline"
        operation.name = "GetImagePipeline"
        operation.input = GetImagePipelineRequest
        operation.output = GetImagePipelineResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetImagePipeline", "code" => 200}}
      end)
      service.add_operation(:get_image_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetImagePolicy"
        operation.name = "GetImagePolicy"
        operation.input = GetImagePolicyRequest
        operation.output = GetImagePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetImagePolicy", "code" => 200}}
      end)
      service.add_operation(:get_image_recipe, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetImageRecipe"
        operation.name = "GetImageRecipe"
        operation.input = GetImageRecipeRequest
        operation.output = GetImageRecipeResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetImageRecipe", "code" => 200}}
      end)
      service.add_operation(:get_image_recipe_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetImageRecipePolicy"
        operation.name = "GetImageRecipePolicy"
        operation.input = GetImageRecipePolicyRequest
        operation.output = GetImageRecipePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetImageRecipePolicy", "code" => 200}}
      end)
      service.add_operation(:get_infrastructure_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetInfrastructureConfiguration"
        operation.name = "GetInfrastructureConfiguration"
        operation.input = GetInfrastructureConfigurationRequest
        operation.output = GetInfrastructureConfigurationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetInfrastructureConfiguration", "code" => 200}}
      end)
      service.add_operation(:get_lifecycle_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetLifecycleExecution"
        operation.name = "GetLifecycleExecution"
        operation.input = GetLifecycleExecutionRequest
        operation.output = GetLifecycleExecutionResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetLifecycleExecution", "code" => 200}}
      end)
      service.add_operation(:get_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetLifecyclePolicy"
        operation.name = "GetLifecyclePolicy"
        operation.input = GetLifecyclePolicyRequest
        operation.output = GetLifecyclePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetLifecyclePolicy", "code" => 200}}
      end)
      service.add_operation(:get_marketplace_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetMarketplaceResource"
        operation.name = "GetMarketplaceResource"
        operation.input = GetMarketplaceResourceRequest
        operation.output = GetMarketplaceResourceResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/GetMarketplaceResource", "code" => 200}}
      end)
      service.add_operation(:get_workflow, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetWorkflow"
        operation.name = "GetWorkflow"
        operation.input = GetWorkflowRequest
        operation.output = GetWorkflowResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetWorkflow", "code" => 200}}
      end)
      service.add_operation(:get_workflow_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetWorkflowExecution"
        operation.name = "GetWorkflowExecution"
        operation.input = GetWorkflowExecutionRequest
        operation.output = GetWorkflowExecutionResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetWorkflowExecution", "code" => 200}}
      end)
      service.add_operation(:get_workflow_step_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#GetWorkflowStepExecution"
        operation.name = "GetWorkflowStepExecution"
        operation.input = GetWorkflowStepExecutionRequest
        operation.output = GetWorkflowStepExecutionResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/GetWorkflowStepExecution", "code" => 200}}
      end)
      service.add_operation(:import_component, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ImportComponent"
        operation.name = "ImportComponent"
        operation.input = ImportComponentRequest
        operation.output = ImportComponentResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRequestException
        operation.errors << InvalidVersionNumberException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/ImportComponent", "code" => 200}}
      end)
      service.add_operation(:import_disk_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ImportDiskImage"
        operation.name = "ImportDiskImage"
        operation.input = ImportDiskImageRequest
        operation.output = ImportDiskImageResponse
        operation.errors << AccessDeniedException
        operation.errors << ClientException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/ImportDiskImage", "code" => 200}}
      end)
      service.add_operation(:import_vm_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ImportVmImage"
        operation.name = "ImportVmImage"
        operation.input = ImportVmImageRequest
        operation.output = ImportVmImageResponse
        operation.errors << ClientException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/ImportVmImage", "code" => 200}}
      end)
      service.add_operation(:list_component_build_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListComponentBuildVersions"
        operation.name = "ListComponentBuildVersions"
        operation.input = ListComponentBuildVersionsRequest
        operation.output = ListComponentBuildVersionsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListComponentBuildVersions", "code" => 200}}
        operation[:paginator] = Paginators::ListComponentBuildVersions.new
      end)
      service.add_operation(:list_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListComponents"
        operation.name = "ListComponents"
        operation.input = ListComponentsRequest
        operation.output = ListComponentsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListComponents", "code" => 200}}
        operation[:paginator] = Paginators::ListComponents.new
      end)
      service.add_operation(:list_container_recipes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListContainerRecipes"
        operation.name = "ListContainerRecipes"
        operation.input = ListContainerRecipesRequest
        operation.output = ListContainerRecipesResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListContainerRecipes", "code" => 200}}
        operation[:paginator] = Paginators::ListContainerRecipes.new
      end)
      service.add_operation(:list_distribution_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListDistributionConfigurations"
        operation.name = "ListDistributionConfigurations"
        operation.input = ListDistributionConfigurationsRequest
        operation.output = ListDistributionConfigurationsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListDistributionConfigurations", "code" => 200}}
        operation[:paginator] = Paginators::ListDistributionConfigurations.new
      end)
      service.add_operation(:list_image_build_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListImageBuildVersions"
        operation.name = "ListImageBuildVersions"
        operation.input = ListImageBuildVersionsRequest
        operation.output = ListImageBuildVersionsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListImageBuildVersions", "code" => 200}}
        operation[:paginator] = Paginators::ListImageBuildVersions.new
      end)
      service.add_operation(:list_image_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListImagePackages"
        operation.name = "ListImagePackages"
        operation.input = ListImagePackagesRequest
        operation.output = ListImagePackagesResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListImagePackages", "code" => 200}}
        operation[:paginator] = Paginators::ListImagePackages.new
      end)
      service.add_operation(:list_image_pipeline_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListImagePipelineImages"
        operation.name = "ListImagePipelineImages"
        operation.input = ListImagePipelineImagesRequest
        operation.output = ListImagePipelineImagesResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListImagePipelineImages", "code" => 200}}
        operation[:paginator] = Paginators::ListImagePipelineImages.new
      end)
      service.add_operation(:list_image_pipelines, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListImagePipelines"
        operation.name = "ListImagePipelines"
        operation.input = ListImagePipelinesRequest
        operation.output = ListImagePipelinesResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListImagePipelines", "code" => 200}}
        operation[:paginator] = Paginators::ListImagePipelines.new
      end)
      service.add_operation(:list_image_recipes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListImageRecipes"
        operation.name = "ListImageRecipes"
        operation.input = ListImageRecipesRequest
        operation.output = ListImageRecipesResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListImageRecipes", "code" => 200}}
        operation[:paginator] = Paginators::ListImageRecipes.new
      end)
      service.add_operation(:list_image_scan_finding_aggregations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListImageScanFindingAggregations"
        operation.name = "ListImageScanFindingAggregations"
        operation.input = ListImageScanFindingAggregationsRequest
        operation.output = ListImageScanFindingAggregationsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListImageScanFindingAggregations", "code" => 200}}
        operation[:paginator] = Paginators::ListImageScanFindingAggregations.new
      end)
      service.add_operation(:list_image_scan_findings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListImageScanFindings"
        operation.name = "ListImageScanFindings"
        operation.input = ListImageScanFindingsRequest
        operation.output = ListImageScanFindingsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListImageScanFindings", "code" => 200}}
        operation[:paginator] = Paginators::ListImageScanFindings.new
      end)
      service.add_operation(:list_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListImages"
        operation.name = "ListImages"
        operation.input = ListImagesRequest
        operation.output = ListImagesResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListImages", "code" => 200}}
        operation[:paginator] = Paginators::ListImages.new
      end)
      service.add_operation(:list_infrastructure_configurations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListInfrastructureConfigurations"
        operation.name = "ListInfrastructureConfigurations"
        operation.input = ListInfrastructureConfigurationsRequest
        operation.output = ListInfrastructureConfigurationsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListInfrastructureConfigurations", "code" => 200}}
        operation[:paginator] = Paginators::ListInfrastructureConfigurations.new
      end)
      service.add_operation(:list_lifecycle_execution_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListLifecycleExecutionResources"
        operation.name = "ListLifecycleExecutionResources"
        operation.input = ListLifecycleExecutionResourcesRequest
        operation.output = ListLifecycleExecutionResourcesResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLifecycleExecutionResources", "code" => 200}}
        operation[:paginator] = Paginators::ListLifecycleExecutionResources.new
      end)
      service.add_operation(:list_lifecycle_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListLifecycleExecutions"
        operation.name = "ListLifecycleExecutions"
        operation.input = ListLifecycleExecutionsRequest
        operation.output = ListLifecycleExecutionsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLifecycleExecutions", "code" => 200}}
        operation[:paginator] = Paginators::ListLifecycleExecutions.new
      end)
      service.add_operation(:list_lifecycle_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListLifecyclePolicies"
        operation.name = "ListLifecyclePolicies"
        operation.input = ListLifecyclePoliciesRequest
        operation.output = ListLifecyclePoliciesResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListLifecyclePolicies", "code" => 200}}
        operation[:paginator] = Paginators::ListLifecyclePolicies.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:list_waiting_workflow_steps, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListWaitingWorkflowSteps"
        operation.name = "ListWaitingWorkflowSteps"
        operation.input = ListWaitingWorkflowStepsRequest
        operation.output = ListWaitingWorkflowStepsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListWaitingWorkflowSteps", "code" => 200}}
        operation[:paginator] = Paginators::ListWaitingWorkflowSteps.new
      end)
      service.add_operation(:list_workflow_build_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListWorkflowBuildVersions"
        operation.name = "ListWorkflowBuildVersions"
        operation.input = ListWorkflowBuildVersionsRequest
        operation.output = ListWorkflowBuildVersionsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListWorkflowBuildVersions", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkflowBuildVersions.new
      end)
      service.add_operation(:list_workflow_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListWorkflowExecutions"
        operation.name = "ListWorkflowExecutions"
        operation.input = ListWorkflowExecutionsRequest
        operation.output = ListWorkflowExecutionsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListWorkflowExecutions", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkflowExecutions.new
      end)
      service.add_operation(:list_workflow_step_executions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListWorkflowStepExecutions"
        operation.name = "ListWorkflowStepExecutions"
        operation.input = ListWorkflowStepExecutionsRequest
        operation.output = ListWorkflowStepExecutionsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListWorkflowStepExecutions", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkflowStepExecutions.new
      end)
      service.add_operation(:list_workflows, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#ListWorkflows"
        operation.name = "ListWorkflows"
        operation.input = ListWorkflowsRequest
        operation.output = ListWorkflowsResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidPaginationTokenException
        operation.errors << InvalidRequestException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ListWorkflows", "code" => 200}}
        operation[:paginator] = Paginators::ListWorkflows.new
      end)
      service.add_operation(:put_component_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#PutComponentPolicy"
        operation.name = "PutComponentPolicy"
        operation.input = PutComponentPolicyRequest
        operation.output = PutComponentPolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/PutComponentPolicy", "code" => 200}}
      end)
      service.add_operation(:put_container_recipe_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#PutContainerRecipePolicy"
        operation.name = "PutContainerRecipePolicy"
        operation.input = PutContainerRecipePolicyRequest
        operation.output = PutContainerRecipePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/PutContainerRecipePolicy", "code" => 200}}
      end)
      service.add_operation(:put_image_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#PutImagePolicy"
        operation.name = "PutImagePolicy"
        operation.input = PutImagePolicyRequest
        operation.output = PutImagePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/PutImagePolicy", "code" => 200}}
      end)
      service.add_operation(:put_image_recipe_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#PutImageRecipePolicy"
        operation.name = "PutImageRecipePolicy"
        operation.input = PutImageRecipePolicyRequest
        operation.output = PutImageRecipePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/PutImageRecipePolicy", "code" => 200}}
      end)
      service.add_operation(:retry_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#RetryImage"
        operation.name = "RetryImage"
        operation.input = RetryImageRequest
        operation.output = RetryImageResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/RetryImage", "code" => 200}}
      end)
      service.add_operation(:send_workflow_step_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#SendWorkflowStepAction"
        operation.name = "SendWorkflowStepAction"
        operation.input = SendWorkflowStepActionRequest
        operation.output = SendWorkflowStepActionResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidParameterValueException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/SendWorkflowStepAction", "code" => 200}}
      end)
      service.add_operation(:start_image_pipeline_execution, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#StartImagePipelineExecution"
        operation.name = "StartImagePipelineExecution"
        operation.input = StartImagePipelineExecutionRequest
        operation.output = StartImagePipelineExecutionResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/StartImagePipelineExecution", "code" => 200}}
      end)
      service.add_operation(:start_resource_state_update, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#StartResourceStateUpdate"
        operation.name = "StartResourceStateUpdate"
        operation.input = StartResourceStateUpdateRequest
        operation.output = StartResourceStateUpdateResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/StartResourceStateUpdate", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_distribution_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#UpdateDistributionConfiguration"
        operation.name = "UpdateDistributionConfiguration"
        operation.input = UpdateDistributionConfigurationRequest
        operation.output = UpdateDistributionConfigurationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/UpdateDistributionConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_image_pipeline, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#UpdateImagePipeline"
        operation.name = "UpdateImagePipeline"
        operation.input = UpdateImagePipelineRequest
        operation.output = UpdateImagePipelineResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/UpdateImagePipeline", "code" => 200}}
      end)
      service.add_operation(:update_infrastructure_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#UpdateInfrastructureConfiguration"
        operation.name = "UpdateInfrastructureConfiguration"
        operation.input = UpdateInfrastructureConfigurationRequest
        operation.output = UpdateInfrastructureConfigurationResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/UpdateInfrastructureConfiguration", "code" => 200}}
      end)
      service.add_operation(:update_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.imagebuilder#UpdateLifecyclePolicy"
        operation.name = "UpdateLifecyclePolicy"
        operation.input = UpdateLifecyclePolicyRequest
        operation.output = UpdateLifecyclePolicyResponse
        operation.errors << CallRateLimitExceededException
        operation.errors << ClientException
        operation.errors << ForbiddenException
        operation.errors << IdempotentParameterMismatchException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRequestException
        operation.errors << ResourceInUseException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/UpdateLifecyclePolicy", "code" => 200}}
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
