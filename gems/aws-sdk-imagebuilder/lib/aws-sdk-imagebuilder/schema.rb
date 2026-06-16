# frozen_string_literal: true

# This is generated code!

module Aws::Imagebuilder
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AccountAggregation", name: "AccountAggregation")
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#AccountId", name: "AccountId", traits: {"smithy.api#pattern" => "^[0-9]{12}$"})
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#AccountList", name: "AccountList", traits: {"smithy.api#length" => {"min" => 1, "max" => 1536}})
    AdditionalInstanceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AdditionalInstanceConfiguration", name: "AdditionalInstanceConfiguration")
    Ami = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Ami", name: "Ami")
    AmiDistributionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AmiDistributionConfiguration", name: "AmiDistributionConfiguration")
    AmiList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#AmiList", name: "AmiList")
    AmiNameString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#AmiNameString", name: "AmiNameString", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#pattern" => "^[-_A-Za-z0-9{][-_A-Za-z0-9\\s:{}\\.]+[-_A-Za-z0-9}]$"})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#Arn", name: "Arn")
    AutoDisableFailureCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#AutoDisableFailureCount", name: "AutoDisableFailureCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    AutoDisablePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#AutoDisablePolicy", name: "AutoDisablePolicy")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.imagebuilder#Boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    BuildType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#BuildType", name: "BuildType")
    CallRateLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CallRateLimitExceededException", name: "CallRateLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    CancelImageCreationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CancelImageCreationRequest", name: "CancelImageCreationRequest")
    CancelImageCreationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CancelImageCreationResponse", name: "CancelImageCreationResponse")
    CancelLifecycleExecutionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CancelLifecycleExecutionRequest", name: "CancelLifecycleExecutionRequest")
    CancelLifecycleExecutionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#CancelLifecycleExecutionResponse", name: "CancelLifecycleExecutionResponse")
    ClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ClientException", name: "ClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 36}})
    Component = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Component", name: "Component")
    ComponentBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentBuildVersionArn", name: "ComponentBuildVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):component/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+$"})
    ComponentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ComponentConfiguration", name: "ComponentConfiguration")
    ComponentConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ComponentConfigurationList", name: "ComponentConfigurationList", traits: {"smithy.api#length" => {"min" => 1}})
    ComponentData = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentData", name: "ComponentData")
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
    ComponentVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentVersionArn", name: "ComponentVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):component/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+$"})
    ComponentVersionArnOrBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ComponentVersionArnOrBuildVersionArn", name: "ComponentVersionArnOrBuildVersionArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):component/[a-z0-9-_]+/(?:(?:([0-9]+|x)\\.([0-9]+|x)\\.([0-9]+|x))|(?:[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+))$"})
    ComponentVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ComponentVersionList", name: "ComponentVersionList")
    ConsecutiveFailures = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#ConsecutiveFailures", name: "ConsecutiveFailures", traits: {"smithy.api#range" => {"min" => 0}})
    Container = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Container", name: "Container")
    ContainerDistributionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ContainerDistributionConfiguration", name: "ContainerDistributionConfiguration")
    ContainerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ContainerList", name: "ContainerList")
    ContainerRecipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ContainerRecipe", name: "ContainerRecipe")
    ContainerRecipeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ContainerRecipeArn", name: "ContainerRecipeArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):container-recipe/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+$"})
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
    Distribution = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#Distribution", name: "Distribution")
    DistributionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DistributionConfiguration", name: "DistributionConfiguration")
    DistributionConfigurationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#DistributionConfigurationArn", name: "DistributionConfigurationArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):distribution-configuration/[a-z0-9-_]+$"})
    DistributionConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#DistributionConfigurationSummary", name: "DistributionConfigurationSummary")
    DistributionConfigurationSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#DistributionConfigurationSummaryList", name: "DistributionConfigurationSummaryList")
    DistributionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#DistributionList", name: "DistributionList")
    DistributionTimeoutMinutes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#DistributionTimeoutMinutes", name: "DistributionTimeoutMinutes", traits: {"smithy.api#range" => {"min" => 30, "max" => 720}})
    DockerFileTemplate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#DockerFileTemplate", name: "DockerFileTemplate")
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
    ImageBuilderArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImageBuilderArn", name: "ImageBuilderArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):(?:image-recipe|container-recipe|infrastructure-configuration|distribution-configuration|component|image|image-pipeline|lifecycle-policy|workflow\\/(?:build|test|distribution))/[a-z0-9-_]+(?:/(?:(?:x|[0-9]+)\\.(?:x|[0-9]+)\\.(?:x|[0-9]+))(?:/[0-9]+)?)?$"})
    ImageLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageLoggingConfiguration", name: "ImageLoggingConfiguration")
    ImagePackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImagePackage", name: "ImagePackage")
    ImagePackageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImagePackageList", name: "ImagePackageList")
    ImagePipeline = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImagePipeline", name: "ImagePipeline")
    ImagePipelineAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImagePipelineAggregation", name: "ImagePipelineAggregation")
    ImagePipelineArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImagePipelineArn", name: "ImagePipelineArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):image-pipeline/[a-z0-9-_]+$"})
    ImagePipelineList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#ImagePipelineList", name: "ImagePipelineList")
    ImageRecipe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#ImageRecipe", name: "ImageRecipe")
    ImageRecipeArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#ImageRecipeArn", name: "ImageRecipeArn", traits: {"smithy.api#pattern" => "^arn:aws[^:]*:imagebuilder:[^:]+:(?:[0-9]{12}|aws):image-recipe/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+$"})
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
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#RegionList", name: "RegionList")
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
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.imagebuilder#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetContainerRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#TargetContainerRepository", name: "TargetContainerRepository")
    TargetResourceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.imagebuilder#TargetResourceCount", name: "TargetResourceCount", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    TenancyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.imagebuilder#TenancyType", name: "TenancyType")
    Timezone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#Timezone", name: "Timezone", traits: {"smithy.api#length" => {"min" => 3, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9]{2,}(?:\\/[a-zA-Z0-9-_+]+)*$"})
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
    VulnerabilityId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#VulnerabilityId", name: "VulnerabilityId")
    VulnerabilityIdAggregation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#VulnerabilityIdAggregation", name: "VulnerabilityIdAggregation")
    VulnerabilityIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#VulnerabilityIdList", name: "VulnerabilityIdList")
    VulnerablePackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.imagebuilder#VulnerablePackage", name: "VulnerablePackage")
    VulnerablePackageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#VulnerablePackageList", name: "VulnerablePackageList")
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
    WorkflowNameArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowNameArn", name: "WorkflowNameArn", traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:imagebuilder:[a-z]{2,}(?:-[a-z]+)+-[0-9]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):workflow/(build|test|distribution)/[a-z0-9-_]+/x\\.x\\.x$"})
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
    WorkflowVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowVersionArn", name: "WorkflowVersionArn", traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:imagebuilder:[a-z]{2,}(?:-[a-z]+)+-[0-9]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):workflow/(build|test|distribution)/[a-z0-9-_]+/[0-9]+\\.[0-9]+\\.[0-9]+$"})
    WorkflowVersionArnOrBuildVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowVersionArnOrBuildVersionArn", name: "WorkflowVersionArnOrBuildVersionArn", traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:imagebuilder:[a-z]{2,}(?:-[a-z]+)+-[0-9]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):workflow/(build|test|distribution)/[a-z0-9-_]+/(?:(?:([0-9]+|x)\\.([0-9]+|x)\\.([0-9]+|x))|(?:[0-9]+\\.[0-9]+\\.[0-9]+/[0-9]+))$"})
    WorkflowVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.imagebuilder#WorkflowVersionList", name: "WorkflowVersionList")
    WorkflowWildcardVersionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.imagebuilder#WorkflowWildcardVersionArn", name: "WorkflowWildcardVersionArn", traits: {"smithy.api#pattern" => "^arn:aws(?:-[a-z]+)*:imagebuilder:[a-z]{2,}(?:-[a-z]+)+-[0-9]+:(?:[0-9]{12}|aws(?:-[a-z-]+)?):workflow/(build|test|distribution)/[a-z0-9-_]+/(?:[0-9]+|x)\\.(?:[0-9]+|x)\\.(?:[0-9]+|x)$"})

    AccountAggregation.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "accountId"))
    AccountAggregation.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, location_name: "severityCounts"))
    AccountAggregation.type = Types::AccountAggregation
    AccountList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId)
    AdditionalInstanceConfiguration.add_member(:systems_manager_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemsManagerAgent, location_name: "systemsManagerAgent"))
    AdditionalInstanceConfiguration.add_member(:user_data_override, ::Smithy::Schema::Shapes::MemberShape.new(target: UserDataOverride, location_name: "userDataOverride"))
    AdditionalInstanceConfiguration.type = Types::AdditionalInstanceConfiguration
    Ami.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "region"))
    Ami.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "image"))
    Ami.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "name"))
    Ami.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    Ami.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageState, location_name: "state"))
    Ami.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "accountId"))
    Ami.type = Types::Ami
    AmiDistributionConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiNameString, location_name: "name"))
    AmiDistributionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    AmiDistributionConfiguration.add_member(:target_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, location_name: "targetAccountIds"))
    AmiDistributionConfiguration.add_member(:ami_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "amiTags"))
    AmiDistributionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    AmiDistributionConfiguration.add_member(:launch_permission, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchPermissionConfiguration, location_name: "launchPermission"))
    AmiDistributionConfiguration.type = Types::AmiDistributionConfiguration
    AmiList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Ami)
    AutoDisablePolicy.add_member(:failure_count, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDisableFailureCount, location_name: "failureCount", traits: {"smithy.api#required" => {}}))
    AutoDisablePolicy.type = Types::AutoDisablePolicy
    BuildType.add_member(:user_initiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "USER_INITIATED", traits: {"smithy.api#enumValue" => "USER_INITIATED"}))
    BuildType.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    BuildType.add_member(:import, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT", traits: {"smithy.api#enumValue" => "IMPORT"}))
    BuildType.add_member(:import_iso, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORT_ISO", traits: {"smithy.api#enumValue" => "IMPORT_ISO"}))
    CallRateLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    CallRateLimitExceededException.type = Types::CallRateLimitExceededException
    CancelImageCreationRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    CancelImageCreationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CancelImageCreationRequest.type = Types::CancelImageCreationRequest
    CancelImageCreationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    CancelImageCreationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CancelImageCreationResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    CancelImageCreationResponse.type = Types::CancelImageCreationResponse
    CancelLifecycleExecutionRequest.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId", traits: {"smithy.api#required" => {}}))
    CancelLifecycleExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CancelLifecycleExecutionRequest.type = Types::CancelLifecycleExecutionRequest
    CancelLifecycleExecutionResponse.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    CancelLifecycleExecutionResponse.type = Types::CancelLifecycleExecutionResponse
    ClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ClientException.type = Types::ClientException
    Component.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    Component.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    Component.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    Component.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    Component.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "changeDescription"))
    Component.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, location_name: "type"))
    Component.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    Component.add_member(:supported_os_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersionList, location_name: "supportedOsVersions"))
    Component.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentState, location_name: "state"))
    Component.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterDetailList, location_name: "parameters"))
    Component.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    Component.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentData, location_name: "data"))
    Component.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    Component.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "encrypted"))
    Component.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    Component.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    Component.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "publisher"))
    Component.add_member(:obfuscate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "obfuscate", traits: {"smithy.api#default" => false}))
    Component.add_member(:product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeList, location_name: "productCodes"))
    Component.type = Types::Component
    ComponentConfiguration.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionArnOrBuildVersionArn, location_name: "componentArn", traits: {"smithy.api#required" => {}}))
    ComponentConfiguration.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterList, location_name: "parameters"))
    ComponentConfiguration.type = Types::ComponentConfiguration
    ComponentConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfiguration)
    ComponentFormat.add_member(:shell, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHELL", traits: {"smithy.api#enumValue" => "SHELL"}))
    ComponentParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ComponentParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterValueList, location_name: "value", traits: {"smithy.api#required" => {}}))
    ComponentParameter.type = Types::ComponentParameter
    ComponentParameterDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ComponentParameterDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    ComponentParameterDetail.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterValueList, location_name: "defaultValue"))
    ComponentParameterDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterDescription, location_name: "description"))
    ComponentParameterDetail.type = Types::ComponentParameterDetail
    ComponentParameterDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterDetail)
    ComponentParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameter)
    ComponentParameterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentParameterValue)
    ComponentState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentStatus, location_name: "status"))
    ComponentState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    ComponentState.type = Types::ComponentState
    ComponentStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ComponentStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ComponentStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ComponentSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ComponentSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ComponentSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    ComponentSummary.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ComponentSummary.add_member(:supported_os_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersionList, location_name: "supportedOsVersions"))
    ComponentSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentState, location_name: "state"))
    ComponentSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, location_name: "type"))
    ComponentSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    ComponentSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ComponentSummary.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "changeDescription"))
    ComponentSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ComponentSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ComponentSummary.add_member(:publisher, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "publisher"))
    ComponentSummary.add_member(:obfuscate, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "obfuscate", traits: {"smithy.api#default" => false}))
    ComponentSummary.type = Types::ComponentSummary
    ComponentSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummary)
    ComponentType.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    ComponentType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    ComponentVersion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ComponentVersion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ComponentVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    ComponentVersion.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ComponentVersion.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ComponentVersion.add_member(:supported_os_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersionList, location_name: "supportedOsVersions"))
    ComponentVersion.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, location_name: "type"))
    ComponentVersion.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    ComponentVersion.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ComponentVersion.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentStatus, location_name: "status"))
    ComponentVersion.add_member(:product_codes, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeList, location_name: "productCodes"))
    ComponentVersion.type = Types::ComponentVersion
    ComponentVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersion)
    Container.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "region"))
    Container.add_member(:image_uris, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "imageUris"))
    Container.type = Types::Container
    ContainerDistributionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ContainerDistributionConfiguration.add_member(:container_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "containerTags"))
    ContainerDistributionConfiguration.add_member(:target_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetContainerRepository, location_name: "targetRepository", traits: {"smithy.api#required" => {}}))
    ContainerDistributionConfiguration.type = Types::ContainerDistributionConfiguration
    ContainerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Container)
    ContainerRecipe.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ContainerRecipe.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, location_name: "containerType"))
    ContainerRecipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ContainerRecipe.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ContainerRecipe.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ContainerRecipe.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    ContainerRecipe.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    ContainerRecipe.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationList, location_name: "components"))
    ContainerRecipe.add_member(:instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, location_name: "instanceConfiguration"))
    ContainerRecipe.add_member(:dockerfile_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: DockerFileTemplate, location_name: "dockerfileTemplateData"))
    ContainerRecipe.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    ContainerRecipe.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "encrypted"))
    ContainerRecipe.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "parentImage"))
    ContainerRecipe.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ContainerRecipe.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ContainerRecipe.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "workingDirectory"))
    ContainerRecipe.add_member(:target_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetContainerRepository, location_name: "targetRepository"))
    ContainerRecipe.type = Types::ContainerRecipe
    ContainerRecipeSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ContainerRecipeSummary.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, location_name: "containerType"))
    ContainerRecipeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ContainerRecipeSummary.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ContainerRecipeSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    ContainerRecipeSummary.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "parentImage"))
    ContainerRecipeSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ContainerRecipeSummary.add_member(:instance_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "instanceImage"))
    ContainerRecipeSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ContainerRecipeSummary.type = Types::ContainerRecipeSummary
    ContainerRecipeSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeSummary)
    ContainerRepositoryService.add_member(:ecr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ECR", traits: {"smithy.api#enumValue" => "ECR"}))
    ContainerType.add_member(:docker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOCKER", traits: {"smithy.api#enumValue" => "DOCKER"}))
    CreateComponentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    CreateComponentRequest.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "changeDescription"))
    CreateComponentRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform", traits: {"smithy.api#required" => {}}))
    CreateComponentRequest.add_member(:supported_os_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersionList, location_name: "supportedOsVersions"))
    CreateComponentRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineComponentData, location_name: "data"))
    CreateComponentRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "uri"))
    CreateComponentRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    CreateComponentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateComponentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateComponentRequest.type = Types::CreateComponentRequest
    CreateComponentResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    CreateComponentResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateComponentResponse.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    CreateComponentResponse.type = Types::CreateComponentResponse
    CreateContainerRecipeRequest.add_member(:container_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerType, location_name: "containerType", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    CreateContainerRecipeRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationList, location_name: "components", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceConfiguration, location_name: "instanceConfiguration"))
    CreateContainerRecipeRequest.add_member(:dockerfile_template_data, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineDockerFileTemplate, location_name: "dockerfileTemplateData"))
    CreateContainerRecipeRequest.add_member(:dockerfile_template_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "dockerfileTemplateUri"))
    CreateContainerRecipeRequest.add_member(:platform_override, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platformOverride"))
    CreateContainerRecipeRequest.add_member(:image_os_version_override, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "imageOsVersionOverride"))
    CreateContainerRecipeRequest.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "parentImage", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateContainerRecipeRequest.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "workingDirectory"))
    CreateContainerRecipeRequest.add_member(:target_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetContainerRepository, location_name: "targetRepository", traits: {"smithy.api#required" => {}}))
    CreateContainerRecipeRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    CreateContainerRecipeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateContainerRecipeRequest.type = Types::CreateContainerRecipeRequest
    CreateContainerRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    CreateContainerRecipeResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateContainerRecipeResponse.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn"))
    CreateContainerRecipeResponse.type = Types::CreateContainerRecipeResponse
    CreateDistributionConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateDistributionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    CreateDistributionConfigurationRequest.add_member(:distributions, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, location_name: "distributions", traits: {"smithy.api#required" => {}}))
    CreateDistributionConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateDistributionConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateDistributionConfigurationRequest.type = Types::CreateDistributionConfigurationRequest
    CreateDistributionConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    CreateDistributionConfigurationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateDistributionConfigurationResponse.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateDistributionConfigurationResponse.type = Types::CreateDistributionConfigurationResponse
    CreateImagePipelineRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateImagePipelineRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    CreateImagePipelineRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn"))
    CreateImagePipelineRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn"))
    CreateImagePipelineRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateImagePipelineRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateImagePipelineRequest.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    CreateImagePipelineRequest.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    CreateImagePipelineRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, location_name: "schedule"))
    CreateImagePipelineRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatus, location_name: "status"))
    CreateImagePipelineRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateImagePipelineRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateImagePipelineRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    CreateImagePipelineRequest.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, location_name: "workflows"))
    CreateImagePipelineRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    CreateImagePipelineRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineLoggingConfiguration, location_name: "loggingConfiguration"))
    CreateImagePipelineRequest.type = Types::CreateImagePipelineRequest
    CreateImagePipelineResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    CreateImagePipelineResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateImagePipelineResponse.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn"))
    CreateImagePipelineResponse.type = Types::CreateImagePipelineResponse
    CreateImageRecipeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateImageRecipeRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    CreateImageRecipeRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    CreateImageRecipeRequest.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationList, location_name: "components", traits: {"smithy.api#required" => {}}))
    CreateImageRecipeRequest.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "parentImage", traits: {"smithy.api#required" => {}}))
    CreateImageRecipeRequest.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMappings, location_name: "blockDeviceMappings"))
    CreateImageRecipeRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateImageRecipeRequest.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "workingDirectory"))
    CreateImageRecipeRequest.add_member(:additional_instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInstanceConfiguration, location_name: "additionalInstanceConfiguration"))
    CreateImageRecipeRequest.add_member(:ami_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "amiTags"))
    CreateImageRecipeRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateImageRecipeRequest.type = Types::CreateImageRecipeRequest
    CreateImageRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    CreateImageRecipeResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateImageRecipeResponse.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn"))
    CreateImageRecipeResponse.type = Types::CreateImageRecipeResponse
    CreateImageRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn"))
    CreateImageRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn"))
    CreateImageRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateImageRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    CreateImageRequest.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    CreateImageRequest.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    CreateImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateImageRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    CreateImageRequest.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, location_name: "workflows"))
    CreateImageRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    CreateImageRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    CreateImageRequest.type = Types::CreateImageRequest
    CreateImageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    CreateImageResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateImageResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    CreateImageResponse.type = Types::CreateImageResponse
    CreateInfrastructureConfigurationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateInfrastructureConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, location_name: "instanceTypes"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, location_name: "instanceProfileName", traits: {"smithy.api#required" => {}}))
    CreateInfrastructureConfigurationRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, location_name: "securityGroupIds"))
    CreateInfrastructureConfigurationRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "subnetId"))
    CreateInfrastructureConfigurationRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging"))
    CreateInfrastructureConfigurationRequest.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "keyPair"))
    CreateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    CreateInfrastructureConfigurationRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, location_name: "snsTopicArn"))
    CreateInfrastructureConfigurationRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMap, location_name: "resourceTags"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, location_name: "instanceMetadataOptions"))
    CreateInfrastructureConfigurationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateInfrastructureConfigurationRequest.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, location_name: "placement"))
    CreateInfrastructureConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateInfrastructureConfigurationRequest.type = Types::CreateInfrastructureConfigurationRequest
    CreateInfrastructureConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    CreateInfrastructureConfigurationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn"))
    CreateInfrastructureConfigurationResponse.type = Types::CreateInfrastructureConfigurationResponse
    CreateLifecyclePolicyRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    CreateLifecyclePolicyRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStatus, location_name: "status"))
    CreateLifecyclePolicyRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetails, location_name: "policyDetails", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelection, location_name: "resourceSelection", traits: {"smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateLifecyclePolicyRequest.type = Types::CreateLifecyclePolicyRequest
    CreateLifecyclePolicyResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "lifecyclePolicyArn"))
    CreateLifecyclePolicyResponse.type = Types::CreateLifecyclePolicyResponse
    CreateWorkflowRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    CreateWorkflowRequest.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "changeDescription"))
    CreateWorkflowRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: InlineWorkflowData, location_name: "data"))
    CreateWorkflowRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "uri"))
    CreateWorkflowRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    CreateWorkflowRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    CreateWorkflowRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateWorkflowRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type", traits: {"smithy.api#required" => {}}))
    CreateWorkflowRequest.type = Types::CreateWorkflowRequest
    CreateWorkflowResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    CreateWorkflowResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    CreateWorkflowResponse.type = Types::CreateWorkflowResponse
    CvssScore.add_member(:base_score, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, location_name: "baseScore"))
    CvssScore.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "scoringVector"))
    CvssScore.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "version"))
    CvssScore.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "source"))
    CvssScore.type = Types::CvssScore
    CvssScoreAdjustment.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "metric"))
    CvssScoreAdjustment.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    CvssScoreAdjustment.type = Types::CvssScoreAdjustment
    CvssScoreAdjustmentList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreAdjustment)
    CvssScoreDetails.add_member(:score_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "scoreSource"))
    CvssScoreDetails.add_member(:cvss_source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "cvssSource"))
    CvssScoreDetails.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "version"))
    CvssScoreDetails.add_member(:score, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, location_name: "score"))
    CvssScoreDetails.add_member(:scoring_vector, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "scoringVector"))
    CvssScoreDetails.add_member(:adjustments, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreAdjustmentList, location_name: "adjustments"))
    CvssScoreDetails.type = Types::CvssScoreDetails
    CvssScoreList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScore)
    DeleteComponentRequest.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, location_name: "componentBuildVersionArn", traits: {"smithy.api#httpQuery" => "componentBuildVersionArn", "smithy.api#required" => {}}))
    DeleteComponentRequest.type = Types::DeleteComponentRequest
    DeleteComponentResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    DeleteComponentResponse.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    DeleteComponentResponse.type = Types::DeleteComponentResponse
    DeleteContainerRecipeRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn", traits: {"smithy.api#httpQuery" => "containerRecipeArn", "smithy.api#required" => {}}))
    DeleteContainerRecipeRequest.type = Types::DeleteContainerRecipeRequest
    DeleteContainerRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    DeleteContainerRecipeResponse.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn"))
    DeleteContainerRecipeResponse.type = Types::DeleteContainerRecipeResponse
    DeleteDistributionConfigurationRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn", traits: {"smithy.api#httpQuery" => "distributionConfigurationArn", "smithy.api#required" => {}}))
    DeleteDistributionConfigurationRequest.type = Types::DeleteDistributionConfigurationRequest
    DeleteDistributionConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    DeleteDistributionConfigurationResponse.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    DeleteDistributionConfigurationResponse.type = Types::DeleteDistributionConfigurationResponse
    DeleteImagePipelineRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn", traits: {"smithy.api#httpQuery" => "imagePipelineArn", "smithy.api#required" => {}}))
    DeleteImagePipelineRequest.type = Types::DeleteImagePipelineRequest
    DeleteImagePipelineResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    DeleteImagePipelineResponse.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn"))
    DeleteImagePipelineResponse.type = Types::DeleteImagePipelineResponse
    DeleteImageRecipeRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn", traits: {"smithy.api#httpQuery" => "imageRecipeArn", "smithy.api#required" => {}}))
    DeleteImageRecipeRequest.type = Types::DeleteImageRecipeRequest
    DeleteImageRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    DeleteImageRecipeResponse.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn"))
    DeleteImageRecipeResponse.type = Types::DeleteImageRecipeResponse
    DeleteImageRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn", traits: {"smithy.api#httpQuery" => "imageBuildVersionArn", "smithy.api#required" => {}}))
    DeleteImageRequest.type = Types::DeleteImageRequest
    DeleteImageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    DeleteImageResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    DeleteImageResponse.type = Types::DeleteImageResponse
    DeleteInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn", traits: {"smithy.api#httpQuery" => "infrastructureConfigurationArn", "smithy.api#required" => {}}))
    DeleteInfrastructureConfigurationRequest.type = Types::DeleteInfrastructureConfigurationRequest
    DeleteInfrastructureConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    DeleteInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn"))
    DeleteInfrastructureConfigurationResponse.type = Types::DeleteInfrastructureConfigurationResponse
    DeleteLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "lifecyclePolicyArn", traits: {"smithy.api#httpQuery" => "lifecyclePolicyArn", "smithy.api#required" => {}}))
    DeleteLifecyclePolicyRequest.type = Types::DeleteLifecyclePolicyRequest
    DeleteLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "lifecyclePolicyArn"))
    DeleteLifecyclePolicyResponse.type = Types::DeleteLifecyclePolicyResponse
    DeleteWorkflowRequest.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn", traits: {"smithy.api#httpQuery" => "workflowBuildVersionArn", "smithy.api#required" => {}}))
    DeleteWorkflowRequest.type = Types::DeleteWorkflowRequest
    DeleteWorkflowResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    DeleteWorkflowResponse.type = Types::DeleteWorkflowResponse
    DiskImageFormat.add_member(:vmdk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VMDK", traits: {"smithy.api#enumValue" => "VMDK"}))
    DiskImageFormat.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RAW", traits: {"smithy.api#enumValue" => "RAW"}))
    DiskImageFormat.add_member(:vhd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "VHD", traits: {"smithy.api#enumValue" => "VHD"}))
    Distribution.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "region", traits: {"smithy.api#required" => {}}))
    Distribution.add_member(:ami_distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiDistributionConfiguration, location_name: "amiDistributionConfiguration"))
    Distribution.add_member(:container_distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerDistributionConfiguration, location_name: "containerDistributionConfiguration"))
    Distribution.add_member(:license_configuration_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationArnList, location_name: "licenseConfigurationArns"))
    Distribution.add_member(:launch_template_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateConfigurationList, location_name: "launchTemplateConfigurations"))
    Distribution.add_member(:s3_export_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExportConfiguration, location_name: "s3ExportConfiguration"))
    Distribution.add_member(:fast_launch_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: FastLaunchConfigurationList, location_name: "fastLaunchConfigurations"))
    Distribution.add_member(:ssm_parameter_configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterConfigurationList, location_name: "ssmParameterConfigurations"))
    Distribution.type = Types::Distribution
    DistributionConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    DistributionConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    DistributionConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    DistributionConfiguration.add_member(:distributions, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, location_name: "distributions"))
    DistributionConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionTimeoutMinutes, location_name: "timeoutMinutes", traits: {"smithy.api#required" => {}}))
    DistributionConfiguration.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    DistributionConfiguration.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateUpdated"))
    DistributionConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    DistributionConfiguration.type = Types::DistributionConfiguration
    DistributionConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    DistributionConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    DistributionConfigurationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    DistributionConfigurationSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    DistributionConfigurationSummary.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateUpdated"))
    DistributionConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    DistributionConfigurationSummary.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionList, location_name: "regions"))
    DistributionConfigurationSummary.type = Types::DistributionConfigurationSummary
    DistributionConfigurationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationSummary)
    DistributionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Distribution)
    EbsInstanceBlockDeviceSpecification.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "encrypted"))
    EbsInstanceBlockDeviceSpecification.add_member(:delete_on_termination, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "deleteOnTermination"))
    EbsInstanceBlockDeviceSpecification.add_member(:iops, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsIopsInteger, location_name: "iops"))
    EbsInstanceBlockDeviceSpecification.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    EbsInstanceBlockDeviceSpecification.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "snapshotId"))
    EbsInstanceBlockDeviceSpecification.add_member(:volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeSizeInteger, location_name: "volumeSize"))
    EbsInstanceBlockDeviceSpecification.add_member(:volume_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeType, location_name: "volumeType"))
    EbsInstanceBlockDeviceSpecification.add_member(:throughput, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsVolumeThroughput, location_name: "throughput"))
    EbsInstanceBlockDeviceSpecification.type = Types::EbsInstanceBlockDeviceSpecification
    EbsVolumeType.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STANDARD", traits: {"smithy.api#enumValue" => "standard"}))
    EbsVolumeType.add_member(:io1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IO1", traits: {"smithy.api#enumValue" => "io1"}))
    EbsVolumeType.add_member(:io2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IO2", traits: {"smithy.api#enumValue" => "io2"}))
    EbsVolumeType.add_member(:gp2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GP2", traits: {"smithy.api#enumValue" => "gp2"}))
    EbsVolumeType.add_member(:gp3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GP3", traits: {"smithy.api#enumValue" => "gp3"}))
    EbsVolumeType.add_member(:sc1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SC1", traits: {"smithy.api#enumValue" => "sc1"}))
    EbsVolumeType.add_member(:st1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ST1", traits: {"smithy.api#enumValue" => "st1"}))
    EcrConfiguration.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "repositoryName"))
    EcrConfiguration.add_member(:container_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "containerTags"))
    EcrConfiguration.type = Types::EcrConfiguration
    FastLaunchConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "enabled", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    FastLaunchConfiguration.add_member(:snapshot_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: FastLaunchSnapshotConfiguration, location_name: "snapshotConfiguration"))
    FastLaunchConfiguration.add_member(:max_parallel_launches, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxParallelLaunches, location_name: "maxParallelLaunches"))
    FastLaunchConfiguration.add_member(:launch_template, ::Smithy::Schema::Shapes::MemberShape.new(target: FastLaunchLaunchTemplateSpecification, location_name: "launchTemplate"))
    FastLaunchConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "accountId"))
    FastLaunchConfiguration.type = Types::FastLaunchConfiguration
    FastLaunchConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FastLaunchConfiguration)
    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateId, location_name: "launchTemplateId"))
    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "launchTemplateName"))
    FastLaunchLaunchTemplateSpecification.add_member(:launch_template_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "launchTemplateVersion"))
    FastLaunchLaunchTemplateSpecification.type = Types::FastLaunchLaunchTemplateSpecification
    FastLaunchSnapshotConfiguration.add_member(:target_resource_count, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetResourceCount, location_name: "targetResourceCount"))
    FastLaunchSnapshotConfiguration.type = Types::FastLaunchSnapshotConfiguration
    Filter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "name"))
    Filter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValues, location_name: "values"))
    Filter.type = Types::Filter
    FilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Filter)
    FilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue)
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ForbiddenException.type = Types::ForbiddenException
    GetComponentPolicyRequest.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, location_name: "componentArn", traits: {"smithy.api#httpQuery" => "componentArn", "smithy.api#required" => {}}))
    GetComponentPolicyRequest.type = Types::GetComponentPolicyRequest
    GetComponentPolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetComponentPolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, location_name: "policy"))
    GetComponentPolicyResponse.type = Types::GetComponentPolicyResponse
    GetComponentRequest.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionArnOrBuildVersionArn, location_name: "componentBuildVersionArn", traits: {"smithy.api#httpQuery" => "componentBuildVersionArn", "smithy.api#required" => {}}))
    GetComponentRequest.type = Types::GetComponentRequest
    GetComponentResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetComponentResponse.add_member(:component, ::Smithy::Schema::Shapes::MemberShape.new(target: Component, location_name: "component"))
    GetComponentResponse.type = Types::GetComponentResponse
    GetContainerRecipePolicyRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn", traits: {"smithy.api#httpQuery" => "containerRecipeArn", "smithy.api#required" => {}}))
    GetContainerRecipePolicyRequest.type = Types::GetContainerRecipePolicyRequest
    GetContainerRecipePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetContainerRecipePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, location_name: "policy"))
    GetContainerRecipePolicyResponse.type = Types::GetContainerRecipePolicyResponse
    GetContainerRecipeRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn", traits: {"smithy.api#httpQuery" => "containerRecipeArn", "smithy.api#required" => {}}))
    GetContainerRecipeRequest.type = Types::GetContainerRecipeRequest
    GetContainerRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetContainerRecipeResponse.add_member(:container_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipe, location_name: "containerRecipe"))
    GetContainerRecipeResponse.type = Types::GetContainerRecipeResponse
    GetDistributionConfigurationRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn", traits: {"smithy.api#httpQuery" => "distributionConfigurationArn", "smithy.api#required" => {}}))
    GetDistributionConfigurationRequest.type = Types::GetDistributionConfigurationRequest
    GetDistributionConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetDistributionConfigurationResponse.add_member(:distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfiguration, location_name: "distributionConfiguration"))
    GetDistributionConfigurationResponse.type = Types::GetDistributionConfigurationResponse
    GetImagePipelineRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn", traits: {"smithy.api#httpQuery" => "imagePipelineArn", "smithy.api#required" => {}}))
    GetImagePipelineRequest.type = Types::GetImagePipelineRequest
    GetImagePipelineResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetImagePipelineResponse.add_member(:image_pipeline, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipeline, location_name: "imagePipeline"))
    GetImagePipelineResponse.type = Types::GetImagePipelineResponse
    GetImagePolicyRequest.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageArn", traits: {"smithy.api#httpQuery" => "imageArn", "smithy.api#required" => {}}))
    GetImagePolicyRequest.type = Types::GetImagePolicyRequest
    GetImagePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetImagePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, location_name: "policy"))
    GetImagePolicyResponse.type = Types::GetImagePolicyResponse
    GetImageRecipePolicyRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn", traits: {"smithy.api#httpQuery" => "imageRecipeArn", "smithy.api#required" => {}}))
    GetImageRecipePolicyRequest.type = Types::GetImageRecipePolicyRequest
    GetImageRecipePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetImageRecipePolicyResponse.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, location_name: "policy"))
    GetImageRecipePolicyResponse.type = Types::GetImageRecipePolicyResponse
    GetImageRecipeRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn", traits: {"smithy.api#httpQuery" => "imageRecipeArn", "smithy.api#required" => {}}))
    GetImageRecipeRequest.type = Types::GetImageRecipeRequest
    GetImageRecipeResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetImageRecipeResponse.add_member(:image_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipe, location_name: "imageRecipe"))
    GetImageRecipeResponse.type = Types::GetImageRecipeResponse
    GetImageRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersionArnOrBuildVersionArn, location_name: "imageBuildVersionArn", traits: {"smithy.api#httpQuery" => "imageBuildVersionArn", "smithy.api#required" => {}}))
    GetImageRequest.type = Types::GetImageRequest
    GetImageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetImageResponse.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, location_name: "image"))
    GetImageResponse.type = Types::GetImageResponse
    GetInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn", traits: {"smithy.api#httpQuery" => "infrastructureConfigurationArn", "smithy.api#required" => {}}))
    GetInfrastructureConfigurationRequest.type = Types::GetInfrastructureConfigurationRequest
    GetInfrastructureConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetInfrastructureConfigurationResponse.add_member(:infrastructure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfiguration, location_name: "infrastructureConfiguration"))
    GetInfrastructureConfigurationResponse.type = Types::GetInfrastructureConfigurationResponse
    GetLifecycleExecutionRequest.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId", traits: {"smithy.api#httpQuery" => "lifecycleExecutionId", "smithy.api#required" => {}}))
    GetLifecycleExecutionRequest.type = Types::GetLifecycleExecutionRequest
    GetLifecycleExecutionResponse.add_member(:lifecycle_execution, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecution, location_name: "lifecycleExecution"))
    GetLifecycleExecutionResponse.type = Types::GetLifecycleExecutionResponse
    GetLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "lifecyclePolicyArn", traits: {"smithy.api#httpQuery" => "lifecyclePolicyArn", "smithy.api#required" => {}}))
    GetLifecyclePolicyRequest.type = Types::GetLifecyclePolicyRequest
    GetLifecyclePolicyResponse.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicy, location_name: "lifecyclePolicy"))
    GetLifecyclePolicyResponse.type = Types::GetLifecyclePolicyResponse
    GetMarketplaceResourceRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    GetMarketplaceResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    GetMarketplaceResourceRequest.add_member(:resource_location, ::Smithy::Schema::Shapes::MemberShape.new(target: MarketplaceResourceLocation, location_name: "resourceLocation"))
    GetMarketplaceResourceRequest.type = Types::GetMarketplaceResourceRequest
    GetMarketplaceResourceResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "resourceArn"))
    GetMarketplaceResourceResponse.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "url"))
    GetMarketplaceResourceResponse.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "data"))
    GetMarketplaceResourceResponse.type = Types::GetMarketplaceResourceResponse
    GetWorkflowExecutionRequest.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, location_name: "workflowExecutionId", traits: {"smithy.api#httpQuery" => "workflowExecutionId", "smithy.api#required" => {}}))
    GetWorkflowExecutionRequest.type = Types::GetWorkflowExecutionRequest
    GetWorkflowExecutionResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetWorkflowExecutionResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    GetWorkflowExecutionResponse.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, location_name: "workflowExecutionId"))
    GetWorkflowExecutionResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    GetWorkflowExecutionResponse.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    GetWorkflowExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionStatus, location_name: "status"))
    GetWorkflowExecutionResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionMessage, location_name: "message"))
    GetWorkflowExecutionResponse.add_member(:total_step_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, location_name: "totalStepCount", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionResponse.add_member(:total_steps_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, location_name: "totalStepsSucceeded", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionResponse.add_member(:total_steps_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, location_name: "totalStepsFailed", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionResponse.add_member(:total_steps_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, location_name: "totalStepsSkipped", traits: {"smithy.api#default" => 0}))
    GetWorkflowExecutionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "startTime"))
    GetWorkflowExecutionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "endTime"))
    GetWorkflowExecutionResponse.add_member(:parallel_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelGroup, location_name: "parallelGroup"))
    GetWorkflowExecutionResponse.type = Types::GetWorkflowExecutionResponse
    GetWorkflowRequest.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionArnOrBuildVersionArn, location_name: "workflowBuildVersionArn", traits: {"smithy.api#httpQuery" => "workflowBuildVersionArn", "smithy.api#required" => {}}))
    GetWorkflowRequest.type = Types::GetWorkflowRequest
    GetWorkflowResponse.add_member(:workflow, ::Smithy::Schema::Shapes::MemberShape.new(target: Workflow, location_name: "workflow"))
    GetWorkflowResponse.type = Types::GetWorkflowResponse
    GetWorkflowStepExecutionRequest.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, location_name: "stepExecutionId", traits: {"smithy.api#httpQuery" => "stepExecutionId", "smithy.api#required" => {}}))
    GetWorkflowStepExecutionRequest.type = Types::GetWorkflowStepExecutionRequest
    GetWorkflowStepExecutionResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    GetWorkflowStepExecutionResponse.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, location_name: "stepExecutionId"))
    GetWorkflowStepExecutionResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    GetWorkflowStepExecutionResponse.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, location_name: "workflowExecutionId"))
    GetWorkflowStepExecutionResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    GetWorkflowStepExecutionResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepName, location_name: "name"))
    GetWorkflowStepExecutionResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepDescription, location_name: "description"))
    GetWorkflowStepExecutionResponse.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAction, location_name: "action"))
    GetWorkflowStepExecutionResponse.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionStatus, location_name: "status"))
    GetWorkflowStepExecutionResponse.add_member(:rollback_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionRollbackStatus, location_name: "rollbackStatus"))
    GetWorkflowStepExecutionResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepMessage, location_name: "message"))
    GetWorkflowStepExecutionResponse.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepInputs, location_name: "inputs"))
    GetWorkflowStepExecutionResponse.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputs, location_name: "outputs"))
    GetWorkflowStepExecutionResponse.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "startTime"))
    GetWorkflowStepExecutionResponse.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "endTime"))
    GetWorkflowStepExecutionResponse.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "onFailure"))
    GetWorkflowStepExecutionResponse.add_member(:timeout_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepTimeoutSecondsInteger, location_name: "timeoutSeconds"))
    GetWorkflowStepExecutionResponse.type = Types::GetWorkflowStepExecutionResponse
    IdempotentParameterMismatchException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    IdempotentParameterMismatchException.type = Types::IdempotentParameterMismatchException
    Image.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    Image.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, location_name: "type"))
    Image.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    Image.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    Image.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    Image.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    Image.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, location_name: "osVersion"))
    Image.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageState, location_name: "state"))
    Image.add_member(:image_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipe, location_name: "imageRecipe"))
    Image.add_member(:container_recipe, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipe, location_name: "containerRecipe"))
    Image.add_member(:source_pipeline_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "sourcePipelineName"))
    Image.add_member(:source_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "sourcePipelineArn"))
    Image.add_member(:infrastructure_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfiguration, location_name: "infrastructureConfiguration"))
    Image.add_member(:distribution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfiguration, location_name: "distributionConfiguration"))
    Image.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    Image.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    Image.add_member(:output_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputResources, location_name: "outputResources"))
    Image.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    Image.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildType, location_name: "buildType"))
    Image.add_member(:image_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, location_name: "imageSource"))
    Image.add_member(:scan_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanState, location_name: "scanState"))
    Image.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    Image.add_member(:deprecation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "deprecationTime"))
    Image.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    Image.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    Image.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, location_name: "workflows"))
    Image.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    Image.type = Types::Image
    ImageAggregation.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ImageAggregation.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, location_name: "severityCounts"))
    ImageAggregation.type = Types::ImageAggregation
    ImageLoggingConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "logGroupName"))
    ImageLoggingConfiguration.type = Types::ImageLoggingConfiguration
    ImagePackage.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "packageName"))
    ImagePackage.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "packageVersion"))
    ImagePackage.type = Types::ImagePackage
    ImagePackageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePackage)
    ImagePipeline.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ImagePipeline.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ImagePipeline.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ImagePipeline.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ImagePipeline.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    ImagePipeline.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "imageRecipeArn"))
    ImagePipeline.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "containerRecipeArn"))
    ImagePipeline.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "infrastructureConfigurationArn"))
    ImagePipeline.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "distributionConfigurationArn"))
    ImagePipeline.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    ImagePipeline.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, location_name: "schedule"))
    ImagePipeline.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatus, location_name: "status"))
    ImagePipeline.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ImagePipeline.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateUpdated"))
    ImagePipeline.add_member(:date_last_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateLastRun"))
    ImagePipeline.add_member(:last_run_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStatus, location_name: "lastRunStatus"))
    ImagePipeline.add_member(:date_next_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateNextRun"))
    ImagePipeline.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImagePipeline.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    ImagePipeline.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    ImagePipeline.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, location_name: "workflows"))
    ImagePipeline.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineLoggingConfiguration, location_name: "loggingConfiguration"))
    ImagePipeline.add_member(:consecutive_failures, ::Smithy::Schema::Shapes::MemberShape.new(target: ConsecutiveFailures, location_name: "consecutiveFailures"))
    ImagePipeline.type = Types::ImagePipeline
    ImagePipelineAggregation.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn"))
    ImagePipelineAggregation.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, location_name: "severityCounts"))
    ImagePipelineAggregation.type = Types::ImagePipelineAggregation
    ImagePipelineList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipeline)
    ImageRecipe.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ImageRecipe.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, location_name: "type"))
    ImageRecipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ImageRecipe.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ImageRecipe.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ImageRecipe.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    ImageRecipe.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    ImageRecipe.add_member(:components, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentConfigurationList, location_name: "components"))
    ImageRecipe.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "parentImage"))
    ImageRecipe.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMappings, location_name: "blockDeviceMappings"))
    ImageRecipe.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ImageRecipe.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImageRecipe.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "workingDirectory"))
    ImageRecipe.add_member(:additional_instance_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalInstanceConfiguration, location_name: "additionalInstanceConfiguration"))
    ImageRecipe.add_member(:ami_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "amiTags"))
    ImageRecipe.type = Types::ImageRecipe
    ImageRecipeSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ImageRecipeSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ImageRecipeSummary.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ImageRecipeSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    ImageRecipeSummary.add_member(:parent_image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "parentImage"))
    ImageRecipeSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ImageRecipeSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImageRecipeSummary.type = Types::ImageRecipeSummary
    ImageRecipeSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeSummary)
    ImageScanFinding.add_member(:aws_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "awsAccountId"))
    ImageScanFinding.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ImageScanFinding.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn"))
    ImageScanFinding.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "type"))
    ImageScanFinding.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ImageScanFinding.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "title"))
    ImageScanFinding.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: Remediation, location_name: "remediation"))
    ImageScanFinding.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "severity"))
    ImageScanFinding.add_member(:first_observed_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "firstObservedAt"))
    ImageScanFinding.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "updatedAt"))
    ImageScanFinding.add_member(:inspector_score, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeDouble, location_name: "inspectorScore"))
    ImageScanFinding.add_member(:inspector_score_details, ::Smithy::Schema::Shapes::MemberShape.new(target: InspectorScoreDetails, location_name: "inspectorScoreDetails"))
    ImageScanFinding.add_member(:package_vulnerability_details, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVulnerabilityDetails, location_name: "packageVulnerabilityDetails"))
    ImageScanFinding.add_member(:fix_available, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "fixAvailable"))
    ImageScanFinding.type = Types::ImageScanFinding
    ImageScanFindingAggregation.add_member(:account_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountAggregation, location_name: "accountAggregation"))
    ImageScanFindingAggregation.add_member(:image_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageAggregation, location_name: "imageAggregation"))
    ImageScanFindingAggregation.add_member(:image_pipeline_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineAggregation, location_name: "imagePipelineAggregation"))
    ImageScanFindingAggregation.add_member(:vulnerability_id_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityIdAggregation, location_name: "vulnerabilityIdAggregation"))
    ImageScanFindingAggregation.type = Types::ImageScanFindingAggregation
    ImageScanFindingAggregationsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingAggregation)
    ImageScanFindingsFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterName, location_name: "name"))
    ImageScanFindingsFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsFilterValues, location_name: "values"))
    ImageScanFindingsFilter.type = Types::ImageScanFindingsFilter
    ImageScanFindingsFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsFilter)
    ImageScanFindingsFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FilterValue)
    ImageScanFindingsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFinding)
    ImageScanState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanStatus, location_name: "status"))
    ImageScanState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    ImageScanState.type = Types::ImageScanState
    ImageScanStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ImageScanStatus.add_member(:scanning, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCANNING", traits: {"smithy.api#enumValue" => "SCANNING"}))
    ImageScanStatus.add_member(:collecting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COLLECTING", traits: {"smithy.api#enumValue" => "COLLECTING"}))
    ImageScanStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ImageScanStatus.add_member(:abandoned, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ABANDONED", traits: {"smithy.api#enumValue" => "ABANDONED"}))
    ImageScanStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImageScanStatus.add_member(:timed_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TIMED_OUT", traits: {"smithy.api#enumValue" => "TIMED_OUT"}))
    ImageScanningConfiguration.add_member(:image_scanning_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "imageScanningEnabled"))
    ImageScanningConfiguration.add_member(:ecr_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EcrConfiguration, location_name: "ecrConfiguration"))
    ImageScanningConfiguration.type = Types::ImageScanningConfiguration
    ImageSource.add_member(:amazon_managed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON_MANAGED", traits: {"smithy.api#enumValue" => "AMAZON_MANAGED"}))
    ImageSource.add_member(:aws_marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_MARKETPLACE", traits: {"smithy.api#enumValue" => "AWS_MARKETPLACE"}))
    ImageSource.add_member(:imported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPORTED", traits: {"smithy.api#enumValue" => "IMPORTED"}))
    ImageSource.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    ImageState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStatus, location_name: "status"))
    ImageState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    ImageState.type = Types::ImageState
    ImageStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ImageStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ImageStatus.add_member(:building, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILDING", traits: {"smithy.api#enumValue" => "BUILDING"}))
    ImageStatus.add_member(:testing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TESTING", traits: {"smithy.api#enumValue" => "TESTING"}))
    ImageStatus.add_member(:distributing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISTRIBUTING", traits: {"smithy.api#enumValue" => "DISTRIBUTING"}))
    ImageStatus.add_member(:integrating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTEGRATING", traits: {"smithy.api#enumValue" => "INTEGRATING"}))
    ImageStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ImageStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    ImageStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImageStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ImageStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ImageStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ImageSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ImageSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ImageSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, location_name: "type"))
    ImageSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    ImageSummary.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ImageSummary.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, location_name: "osVersion"))
    ImageSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageState, location_name: "state"))
    ImageSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    ImageSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ImageSummary.add_member(:output_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputResources, location_name: "outputResources"))
    ImageSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImageSummary.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildType, location_name: "buildType"))
    ImageSummary.add_member(:image_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, location_name: "imageSource"))
    ImageSummary.add_member(:deprecation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "deprecationTime"))
    ImageSummary.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    ImageSummary.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    ImageSummary.type = Types::ImageSummary
    ImageSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSummary)
    ImageTestsConfiguration.add_member(:image_tests_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "imageTestsEnabled"))
    ImageTestsConfiguration.add_member(:timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsTimeoutMinutes, location_name: "timeoutMinutes"))
    ImageTestsConfiguration.type = Types::ImageTestsConfiguration
    ImageType.add_member(:ami, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMI", traits: {"smithy.api#enumValue" => "AMI"}))
    ImageType.add_member(:docker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DOCKER", traits: {"smithy.api#enumValue" => "DOCKER"}))
    ImageVersion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    ImageVersion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    ImageVersion.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageType, location_name: "type"))
    ImageVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    ImageVersion.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform"))
    ImageVersion.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, location_name: "osVersion"))
    ImageVersion.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    ImageVersion.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    ImageVersion.add_member(:build_type, ::Smithy::Schema::Shapes::MemberShape.new(target: BuildType, location_name: "buildType"))
    ImageVersion.add_member(:image_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSource, location_name: "imageSource"))
    ImageVersion.type = Types::ImageVersion
    ImageVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersion)
    ImportComponentRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ImportComponentRequest.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "changeDescription"))
    ImportComponentRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentType, location_name: "type", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentFormat, location_name: "format", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform", traits: {"smithy.api#required" => {}}))
    ImportComponentRequest.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "data"))
    ImportComponentRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "uri"))
    ImportComponentRequest.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    ImportComponentRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImportComponentRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportComponentRequest.type = Types::ImportComponentRequest
    ImportComponentResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ImportComponentResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    ImportComponentResponse.add_member(:component_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    ImportComponentResponse.type = Types::ImportComponentResponse
    ImportDiskImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "name", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ImportDiskImageRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "platform", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, location_name: "osVersion", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    ImportDiskImageRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: Uri, location_name: "uri", traits: {"smithy.api#required" => {}}))
    ImportDiskImageRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    ImportDiskImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImportDiskImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportDiskImageRequest.type = Types::ImportDiskImageRequest
    ImportDiskImageResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    ImportDiskImageResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ImportDiskImageResponse.type = Types::ImportDiskImageResponse
    ImportVmImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "name", traits: {"smithy.api#required" => {}}))
    ImportVmImageRequest.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    ImportVmImageRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    ImportVmImageRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: Platform, location_name: "platform", traits: {"smithy.api#required" => {}}))
    ImportVmImageRequest.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion, location_name: "osVersion"))
    ImportVmImageRequest.add_member(:vm_import_task_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "vmImportTaskId", traits: {"smithy.api#required" => {}}))
    ImportVmImageRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageLoggingConfiguration, location_name: "loggingConfiguration"))
    ImportVmImageRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ImportVmImageRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    ImportVmImageRequest.type = Types::ImportVmImageRequest
    ImportVmImageResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ImportVmImageResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, location_name: "imageArn"))
    ImportVmImageResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    ImportVmImageResponse.type = Types::ImportVmImageResponse
    InfrastructureConfiguration.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    InfrastructureConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    InfrastructureConfiguration.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    InfrastructureConfiguration.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, location_name: "instanceTypes"))
    InfrastructureConfiguration.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, location_name: "instanceProfileName"))
    InfrastructureConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, location_name: "securityGroupIds"))
    InfrastructureConfiguration.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "subnetId"))
    InfrastructureConfiguration.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging"))
    InfrastructureConfiguration.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "keyPair"))
    InfrastructureConfiguration.add_member(:terminate_instance_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    InfrastructureConfiguration.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "snsTopicArn"))
    InfrastructureConfiguration.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    InfrastructureConfiguration.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateUpdated"))
    InfrastructureConfiguration.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMap, location_name: "resourceTags"))
    InfrastructureConfiguration.add_member(:instance_metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, location_name: "instanceMetadataOptions"))
    InfrastructureConfiguration.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    InfrastructureConfiguration.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, location_name: "placement"))
    InfrastructureConfiguration.type = Types::InfrastructureConfiguration
    InfrastructureConfigurationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "arn"))
    InfrastructureConfigurationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    InfrastructureConfigurationSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    InfrastructureConfigurationSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    InfrastructureConfigurationSummary.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateUpdated"))
    InfrastructureConfigurationSummary.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMap, location_name: "resourceTags"))
    InfrastructureConfigurationSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    InfrastructureConfigurationSummary.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, location_name: "instanceTypes"))
    InfrastructureConfigurationSummary.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, location_name: "instanceProfileName"))
    InfrastructureConfigurationSummary.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, location_name: "placement"))
    InfrastructureConfigurationSummary.type = Types::InfrastructureConfigurationSummary
    InfrastructureConfigurationSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationSummary)
    InspectorScoreDetails.add_member(:adjusted_cvss, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreDetails, location_name: "adjustedCvss"))
    InspectorScoreDetails.type = Types::InspectorScoreDetails
    InstanceBlockDeviceMapping.add_member(:device_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "deviceName"))
    InstanceBlockDeviceMapping.add_member(:ebs, ::Smithy::Schema::Shapes::MemberShape.new(target: EbsInstanceBlockDeviceSpecification, location_name: "ebs"))
    InstanceBlockDeviceMapping.add_member(:virtual_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "virtualName"))
    InstanceBlockDeviceMapping.add_member(:no_device, ::Smithy::Schema::Shapes::MemberShape.new(target: EmptyString, location_name: "noDevice"))
    InstanceBlockDeviceMapping.type = Types::InstanceBlockDeviceMapping
    InstanceBlockDeviceMappings.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMapping)
    InstanceConfiguration.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "image"))
    InstanceConfiguration.add_member(:block_device_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceBlockDeviceMappings, location_name: "blockDeviceMappings"))
    InstanceConfiguration.type = Types::InstanceConfiguration
    InstanceMetadataOptions.add_member(:http_tokens, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpTokens, location_name: "httpTokens"))
    InstanceMetadataOptions.add_member(:http_put_response_hop_limit, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpPutResponseHopLimit, location_name: "httpPutResponseHopLimit"))
    InstanceMetadataOptions.type = Types::InstanceMetadataOptions
    InstanceTypeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceType)
    InvalidPaginationTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidPaginationTokenException.type = Types::InvalidPaginationTokenException
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidVersionNumberException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    InvalidVersionNumberException.type = Types::InvalidVersionNumberException
    LaunchPermissionConfiguration.add_member(:user_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, location_name: "userIds"))
    LaunchPermissionConfiguration.add_member(:user_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "userGroups"))
    LaunchPermissionConfiguration.add_member(:organization_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationArnList, location_name: "organizationArns"))
    LaunchPermissionConfiguration.add_member(:organizational_unit_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitArnList, location_name: "organizationalUnitArns"))
    LaunchPermissionConfiguration.type = Types::LaunchPermissionConfiguration
    LaunchTemplateConfiguration.add_member(:launch_template_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateId, location_name: "launchTemplateId", traits: {"smithy.api#required" => {}}))
    LaunchTemplateConfiguration.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "accountId"))
    LaunchTemplateConfiguration.add_member(:set_default_version, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "setDefaultVersion", traits: {"smithy.api#default" => false}))
    LaunchTemplateConfiguration.type = Types::LaunchTemplateConfiguration
    LaunchTemplateConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LaunchTemplateConfiguration)
    LicenseConfigurationArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseConfigurationArn)
    LifecycleExecution.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    LifecycleExecution.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "lifecyclePolicyArn"))
    LifecycleExecution.add_member(:resources_impacted_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourcesImpactedSummary, location_name: "resourcesImpactedSummary"))
    LifecycleExecution.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionState, location_name: "state"))
    LifecycleExecution.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "startTime"))
    LifecycleExecution.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "endTime"))
    LifecycleExecution.type = Types::LifecycleExecution
    LifecycleExecutionResource.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "accountId"))
    LifecycleExecutionResource.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "resourceId"))
    LifecycleExecutionResource.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceState, location_name: "state"))
    LifecycleExecutionResource.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceAction, location_name: "action"))
    LifecycleExecutionResource.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "region"))
    LifecycleExecutionResource.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionSnapshotResourceList, location_name: "snapshots"))
    LifecycleExecutionResource.add_member(:image_uris, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "imageUris"))
    LifecycleExecutionResource.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "startTime"))
    LifecycleExecutionResource.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "endTime"))
    LifecycleExecutionResource.type = Types::LifecycleExecutionResource
    LifecycleExecutionResourceAction.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceActionName, location_name: "name"))
    LifecycleExecutionResourceAction.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    LifecycleExecutionResourceAction.type = Types::LifecycleExecutionResourceAction
    LifecycleExecutionResourceActionName.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    LifecycleExecutionResourceActionName.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    LifecycleExecutionResourceActionName.add_member(:deprecate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATE", traits: {"smithy.api#enumValue" => "DEPRECATE"}))
    LifecycleExecutionResourceActionName.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    LifecycleExecutionResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResource)
    LifecycleExecutionResourceState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceStatus, location_name: "status"))
    LifecycleExecutionResourceState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    LifecycleExecutionResourceState.type = Types::LifecycleExecutionResourceState
    LifecycleExecutionResourceStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LifecycleExecutionResourceStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LifecycleExecutionResourceStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    LifecycleExecutionResourceStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LifecycleExecutionResourcesImpactedSummary.add_member(:has_impacted_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "hasImpactedResources", traits: {"smithy.api#default" => false}))
    LifecycleExecutionResourcesImpactedSummary.type = Types::LifecycleExecutionResourcesImpactedSummary
    LifecycleExecutionSnapshotResource.add_member(:snapshot_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "snapshotId"))
    LifecycleExecutionSnapshotResource.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceState, location_name: "state"))
    LifecycleExecutionSnapshotResource.type = Types::LifecycleExecutionSnapshotResource
    LifecycleExecutionSnapshotResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionSnapshotResource)
    LifecycleExecutionState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionStatus, location_name: "status"))
    LifecycleExecutionState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    LifecycleExecutionState.type = Types::LifecycleExecutionState
    LifecycleExecutionStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    LifecycleExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    LifecycleExecutionStatus.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    LifecycleExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    LifecycleExecutionStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LifecycleExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    LifecycleExecutionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecution)
    LifecyclePolicy.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "arn"))
    LifecyclePolicy.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    LifecyclePolicy.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    LifecyclePolicy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStatus, location_name: "status"))
    LifecyclePolicy.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    LifecyclePolicy.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceType, location_name: "resourceType"))
    LifecyclePolicy.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetails, location_name: "policyDetails"))
    LifecyclePolicy.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelection, location_name: "resourceSelection"))
    LifecyclePolicy.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "dateCreated"))
    LifecyclePolicy.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "dateUpdated"))
    LifecyclePolicy.add_member(:date_last_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "dateLastRun"))
    LifecyclePolicy.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    LifecyclePolicy.type = Types::LifecyclePolicy
    LifecyclePolicyDetail.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailAction, location_name: "action", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetail.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailFilter, location_name: "filter", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetail.add_member(:exclusion_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRules, location_name: "exclusionRules"))
    LifecyclePolicyDetail.type = Types::LifecyclePolicyDetail
    LifecyclePolicyDetailAction.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailActionType, location_name: "type", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailAction.add_member(:include_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailActionIncludeResources, location_name: "includeResources"))
    LifecyclePolicyDetailAction.type = Types::LifecyclePolicyDetailAction
    LifecyclePolicyDetailActionIncludeResources.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "amis", traits: {"smithy.api#default" => false}))
    LifecyclePolicyDetailActionIncludeResources.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "snapshots", traits: {"smithy.api#default" => false}))
    LifecyclePolicyDetailActionIncludeResources.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "containers", traits: {"smithy.api#default" => false}))
    LifecyclePolicyDetailActionIncludeResources.type = Types::LifecyclePolicyDetailActionIncludeResources
    LifecyclePolicyDetailActionType.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    LifecyclePolicyDetailActionType.add_member(:deprecate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATE", traits: {"smithy.api#enumValue" => "DEPRECATE"}))
    LifecyclePolicyDetailActionType.add_member(:disable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLE", traits: {"smithy.api#enumValue" => "DISABLE"}))
    LifecyclePolicyDetailExclusionRules.add_member(:tag_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tagMap"))
    LifecyclePolicyDetailExclusionRules.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRulesAmis, location_name: "amis"))
    LifecyclePolicyDetailExclusionRules.type = Types::LifecyclePolicyDetailExclusionRules
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:is_public, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "isPublic", traits: {"smithy.api#default" => false}))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:regions, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, location_name: "regions"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:shared_accounts, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountList, location_name: "sharedAccounts"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:last_launched, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRulesAmisLastLaunched, location_name: "lastLaunched"))
    LifecyclePolicyDetailExclusionRulesAmis.add_member(:tag_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tagMap"))
    LifecyclePolicyDetailExclusionRulesAmis.type = Types::LifecyclePolicyDetailExclusionRulesAmis
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRulesAmisLastLaunchedValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyTimeUnit, location_name: "unit", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailExclusionRulesAmisLastLaunched.type = Types::LifecyclePolicyDetailExclusionRulesAmisLastLaunched
    LifecyclePolicyDetailFilter.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailFilterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailFilter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailFilterValue, location_name: "value", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyDetailFilter.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyTimeUnit, location_name: "unit"))
    LifecyclePolicyDetailFilter.add_member(:retain_at_least, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailFilterRetainAtLeast, location_name: "retainAtLeast"))
    LifecyclePolicyDetailFilter.type = Types::LifecyclePolicyDetailFilter
    LifecyclePolicyDetailFilterType.add_member(:age, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AGE", traits: {"smithy.api#enumValue" => "AGE"}))
    LifecyclePolicyDetailFilterType.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COUNT", traits: {"smithy.api#enumValue" => "COUNT"}))
    LifecyclePolicyDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetail)
    LifecyclePolicyResourceSelection.add_member(:recipes, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelectionRecipes, location_name: "recipes"))
    LifecyclePolicyResourceSelection.add_member(:tag_map, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tagMap"))
    LifecyclePolicyResourceSelection.type = Types::LifecyclePolicyResourceSelection
    LifecyclePolicyResourceSelectionRecipe.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyResourceSelectionRecipe.add_member(:semantic_version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "semanticVersion", traits: {"smithy.api#required" => {}}))
    LifecyclePolicyResourceSelectionRecipe.type = Types::LifecyclePolicyResourceSelectionRecipe
    LifecyclePolicyResourceSelectionRecipes.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelectionRecipe)
    LifecyclePolicyResourceType.add_member(:ami_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMI_IMAGE", traits: {"smithy.api#enumValue" => "AMI_IMAGE"}))
    LifecyclePolicyResourceType.add_member(:container_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTAINER_IMAGE", traits: {"smithy.api#enumValue" => "CONTAINER_IMAGE"}))
    LifecyclePolicyStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    LifecyclePolicyStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    LifecyclePolicySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "arn"))
    LifecyclePolicySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    LifecyclePolicySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    LifecyclePolicySummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStatus, location_name: "status"))
    LifecyclePolicySummary.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    LifecyclePolicySummary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceType, location_name: "resourceType"))
    LifecyclePolicySummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "dateCreated"))
    LifecyclePolicySummary.add_member(:date_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "dateUpdated"))
    LifecyclePolicySummary.add_member(:date_last_run, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "dateLastRun"))
    LifecyclePolicySummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    LifecyclePolicySummary.type = Types::LifecyclePolicySummary
    LifecyclePolicySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicySummary)
    LifecyclePolicyTimeUnit.add_member(:days, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DAYS", traits: {"smithy.api#enumValue" => "DAYS"}))
    LifecyclePolicyTimeUnit.add_member(:weeks, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WEEKS", traits: {"smithy.api#enumValue" => "WEEKS"}))
    LifecyclePolicyTimeUnit.add_member(:months, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MONTHS", traits: {"smithy.api#enumValue" => "MONTHS"}))
    LifecyclePolicyTimeUnit.add_member(:years, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "YEARS", traits: {"smithy.api#enumValue" => "YEARS"}))
    ListComponentBuildVersionsRequest.add_member(:component_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionArn, location_name: "componentVersionArn"))
    ListComponentBuildVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListComponentBuildVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListComponentBuildVersionsRequest.type = Types::ListComponentBuildVersionsRequest
    ListComponentBuildVersionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListComponentBuildVersionsResponse.add_member(:component_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentSummaryList, location_name: "componentSummaryList"))
    ListComponentBuildVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListComponentBuildVersionsResponse.type = Types::ListComponentBuildVersionsResponse
    ListComponentsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, location_name: "owner"))
    ListComponentsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListComponentsRequest.add_member(:by_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "byName", traits: {"smithy.api#default" => false}))
    ListComponentsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListComponentsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListComponentsRequest.type = Types::ListComponentsRequest
    ListComponentsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListComponentsResponse.add_member(:component_version_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentVersionList, location_name: "componentVersionList"))
    ListComponentsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListComponentsResponse.type = Types::ListComponentsResponse
    ListContainerRecipesRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, location_name: "owner"))
    ListContainerRecipesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListContainerRecipesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListContainerRecipesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "nextToken"))
    ListContainerRecipesRequest.type = Types::ListContainerRecipesRequest
    ListContainerRecipesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListContainerRecipesResponse.add_member(:container_recipe_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeSummaryList, location_name: "containerRecipeSummaryList"))
    ListContainerRecipesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "nextToken"))
    ListContainerRecipesResponse.type = Types::ListContainerRecipesResponse
    ListDistributionConfigurationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListDistributionConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListDistributionConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListDistributionConfigurationsRequest.type = Types::ListDistributionConfigurationsRequest
    ListDistributionConfigurationsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListDistributionConfigurationsResponse.add_member(:distribution_configuration_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationSummaryList, location_name: "distributionConfigurationSummaryList"))
    ListDistributionConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListDistributionConfigurationsResponse.type = Types::ListDistributionConfigurationsResponse
    ListImageBuildVersionsRequest.add_member(:image_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersionArn, location_name: "imageVersionArn"))
    ListImageBuildVersionsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListImageBuildVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListImageBuildVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImageBuildVersionsRequest.type = Types::ListImageBuildVersionsRequest
    ListImageBuildVersionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListImageBuildVersionsResponse.add_member(:image_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSummaryList, location_name: "imageSummaryList"))
    ListImageBuildVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImageBuildVersionsResponse.type = Types::ListImageBuildVersionsResponse
    ListImagePackagesRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    ListImagePackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListImagePackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImagePackagesRequest.type = Types::ListImagePackagesRequest
    ListImagePackagesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListImagePackagesResponse.add_member(:image_package_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePackageList, location_name: "imagePackageList"))
    ListImagePackagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImagePackagesResponse.type = Types::ListImagePackagesResponse
    ListImagePipelineImagesRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn", traits: {"smithy.api#required" => {}}))
    ListImagePipelineImagesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListImagePipelineImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListImagePipelineImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImagePipelineImagesRequest.type = Types::ListImagePipelineImagesRequest
    ListImagePipelineImagesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListImagePipelineImagesResponse.add_member(:image_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSummaryList, location_name: "imageSummaryList"))
    ListImagePipelineImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImagePipelineImagesResponse.type = Types::ListImagePipelineImagesResponse
    ListImagePipelinesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListImagePipelinesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListImagePipelinesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImagePipelinesRequest.type = Types::ListImagePipelinesRequest
    ListImagePipelinesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListImagePipelinesResponse.add_member(:image_pipeline_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineList, location_name: "imagePipelineList"))
    ListImagePipelinesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImagePipelinesResponse.type = Types::ListImagePipelinesResponse
    ListImageRecipesRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, location_name: "owner"))
    ListImageRecipesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListImageRecipesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListImageRecipesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImageRecipesRequest.type = Types::ListImageRecipesRequest
    ListImageRecipesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListImageRecipesResponse.add_member(:image_recipe_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeSummaryList, location_name: "imageRecipeSummaryList"))
    ListImageRecipesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImageRecipesResponse.type = Types::ListImageRecipesResponse
    ListImageScanFindingAggregationsRequest.add_member(:filter, ::Smithy::Schema::Shapes::MemberShape.new(target: Filter, location_name: "filter"))
    ListImageScanFindingAggregationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImageScanFindingAggregationsRequest.type = Types::ListImageScanFindingAggregationsRequest
    ListImageScanFindingAggregationsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListImageScanFindingAggregationsResponse.add_member(:aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "aggregationType"))
    ListImageScanFindingAggregationsResponse.add_member(:responses, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingAggregationsList, location_name: "responses"))
    ListImageScanFindingAggregationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImageScanFindingAggregationsResponse.type = Types::ListImageScanFindingAggregationsResponse
    ListImageScanFindingsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsFilterList, location_name: "filters"))
    ListImageScanFindingsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListImageScanFindingsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImageScanFindingsRequest.type = Types::ListImageScanFindingsRequest
    ListImageScanFindingsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListImageScanFindingsResponse.add_member(:findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanFindingsList, location_name: "findings"))
    ListImageScanFindingsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImageScanFindingsResponse.type = Types::ListImageScanFindingsResponse
    ListImagesRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, location_name: "owner"))
    ListImagesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListImagesRequest.add_member(:by_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "byName", traits: {"smithy.api#default" => false}))
    ListImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImagesRequest.add_member(:include_deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "includeDeprecated"))
    ListImagesRequest.type = Types::ListImagesRequest
    ListImagesResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListImagesResponse.add_member(:image_version_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageVersionList, location_name: "imageVersionList"))
    ListImagesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListImagesResponse.type = Types::ListImagesResponse
    ListInfrastructureConfigurationsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListInfrastructureConfigurationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListInfrastructureConfigurationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListInfrastructureConfigurationsRequest.type = Types::ListInfrastructureConfigurationsRequest
    ListInfrastructureConfigurationsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListInfrastructureConfigurationsResponse.add_member(:infrastructure_configuration_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationSummaryList, location_name: "infrastructureConfigurationSummaryList"))
    ListInfrastructureConfigurationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListInfrastructureConfigurationsResponse.type = Types::ListInfrastructureConfigurationsResponse
    ListLifecycleExecutionResourcesRequest.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId", traits: {"smithy.api#required" => {}}))
    ListLifecycleExecutionResourcesRequest.add_member(:parent_resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "parentResourceId"))
    ListLifecycleExecutionResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListLifecycleExecutionResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListLifecycleExecutionResourcesRequest.type = Types::ListLifecycleExecutionResourcesRequest
    ListLifecycleExecutionResourcesResponse.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    ListLifecycleExecutionResourcesResponse.add_member(:lifecycle_execution_state, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionState, location_name: "lifecycleExecutionState"))
    ListLifecycleExecutionResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionResourceList, location_name: "resources"))
    ListLifecycleExecutionResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListLifecycleExecutionResourcesResponse.type = Types::ListLifecycleExecutionResourcesResponse
    ListLifecycleExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListLifecycleExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListLifecycleExecutionsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    ListLifecycleExecutionsRequest.type = Types::ListLifecycleExecutionsRequest
    ListLifecycleExecutionsResponse.add_member(:lifecycle_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionsList, location_name: "lifecycleExecutions"))
    ListLifecycleExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListLifecycleExecutionsResponse.type = Types::ListLifecycleExecutionsResponse
    ListLifecyclePoliciesRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListLifecyclePoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListLifecyclePoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListLifecyclePoliciesRequest.type = Types::ListLifecyclePoliciesRequest
    ListLifecyclePoliciesResponse.add_member(:lifecycle_policy_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicySummaryList, location_name: "lifecyclePolicySummaryList"))
    ListLifecyclePoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListLifecyclePoliciesResponse.type = Types::ListLifecyclePoliciesResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListWaitingWorkflowStepsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListWaitingWorkflowStepsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWaitingWorkflowStepsRequest.type = Types::ListWaitingWorkflowStepsRequest
    ListWaitingWorkflowStepsResponse.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionList, location_name: "steps"))
    ListWaitingWorkflowStepsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWaitingWorkflowStepsResponse.type = Types::ListWaitingWorkflowStepsResponse
    ListWorkflowBuildVersionsRequest.add_member(:workflow_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowWildcardVersionArn, location_name: "workflowVersionArn"))
    ListWorkflowBuildVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListWorkflowBuildVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWorkflowBuildVersionsRequest.type = Types::ListWorkflowBuildVersionsRequest
    ListWorkflowBuildVersionsResponse.add_member(:workflow_summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowSummaryList, location_name: "workflowSummaryList"))
    ListWorkflowBuildVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWorkflowBuildVersionsResponse.type = Types::ListWorkflowBuildVersionsResponse
    ListWorkflowExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListWorkflowExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWorkflowExecutionsRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    ListWorkflowExecutionsRequest.type = Types::ListWorkflowExecutionsRequest
    ListWorkflowExecutionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListWorkflowExecutionsResponse.add_member(:workflow_executions, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionsList, location_name: "workflowExecutions"))
    ListWorkflowExecutionsResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ListWorkflowExecutionsResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildMessage, location_name: "message"))
    ListWorkflowExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWorkflowExecutionsResponse.type = Types::ListWorkflowExecutionsResponse
    ListWorkflowStepExecutionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListWorkflowStepExecutionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWorkflowStepExecutionsRequest.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, location_name: "workflowExecutionId", traits: {"smithy.api#required" => {}}))
    ListWorkflowStepExecutionsRequest.type = Types::ListWorkflowStepExecutionsRequest
    ListWorkflowStepExecutionsResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    ListWorkflowStepExecutionsResponse.add_member(:steps, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionsList, location_name: "steps"))
    ListWorkflowStepExecutionsResponse.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    ListWorkflowStepExecutionsResponse.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, location_name: "workflowExecutionId"))
    ListWorkflowStepExecutionsResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    ListWorkflowStepExecutionsResponse.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildMessage, location_name: "message"))
    ListWorkflowStepExecutionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWorkflowStepExecutionsResponse.type = Types::ListWorkflowStepExecutionsResponse
    ListWorkflowsRequest.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Ownership, location_name: "owner"))
    ListWorkflowsRequest.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: FilterList, location_name: "filters"))
    ListWorkflowsRequest.add_member(:by_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "byName", traits: {"smithy.api#default" => false}))
    ListWorkflowsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: RestrictedInteger, location_name: "maxResults"))
    ListWorkflowsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWorkflowsRequest.type = Types::ListWorkflowsRequest
    ListWorkflowsResponse.add_member(:workflow_version_list, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionList, location_name: "workflowVersionList"))
    ListWorkflowsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "nextToken"))
    ListWorkflowsResponse.type = Types::ListWorkflowsResponse
    Logging.add_member(:s3_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Logs, location_name: "s3Logs"))
    Logging.type = Types::Logging
    MarketplaceResourceType.add_member(:component_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPONENT_DATA", traits: {"smithy.api#enumValue" => "COMPONENT_DATA"}))
    MarketplaceResourceType.add_member(:component_artifact, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPONENT_ARTIFACT", traits: {"smithy.api#enumValue" => "COMPONENT_ARTIFACT"}))
    NonEmptyStringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    OnWorkflowFailure.add_member(:continue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CONTINUE", traits: {"smithy.api#enumValue" => "CONTINUE"}))
    OnWorkflowFailure.add_member(:abort, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ABORT", traits: {"smithy.api#enumValue" => "ABORT"}))
    OrganizationArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationArn)
    OrganizationalUnitArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitArn)
    OsVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: OsVersion)
    OutputResources.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: AmiList, location_name: "amis"))
    OutputResources.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerList, location_name: "containers"))
    OutputResources.type = Types::OutputResources
    Ownership.add_member(:self, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SELF", traits: {"smithy.api#enumValue" => "Self"}))
    Ownership.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SHARED", traits: {"smithy.api#enumValue" => "Shared"}))
    Ownership.add_member(:amazon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AMAZON", traits: {"smithy.api#enumValue" => "Amazon"}))
    Ownership.add_member(:thirdparty, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "THIRDPARTY", traits: {"smithy.api#enumValue" => "ThirdParty"}))
    Ownership.add_member(:aws_marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_MARKETPLACE", traits: {"smithy.api#enumValue" => "AWSMarketplace"}))
    PackageVulnerabilityDetails.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityId, location_name: "vulnerabilityId", traits: {"smithy.api#required" => {}}))
    PackageVulnerabilityDetails.add_member(:vulnerable_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackageList, location_name: "vulnerablePackages"))
    PackageVulnerabilityDetails.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "source"))
    PackageVulnerabilityDetails.add_member(:cvss, ::Smithy::Schema::Shapes::MemberShape.new(target: CvssScoreList, location_name: "cvss"))
    PackageVulnerabilityDetails.add_member(:related_vulnerabilities, ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityIdList, location_name: "relatedVulnerabilities"))
    PackageVulnerabilityDetails.add_member(:source_url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "sourceUrl"))
    PackageVulnerabilityDetails.add_member(:vendor_severity, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "vendorSeverity"))
    PackageVulnerabilityDetails.add_member(:vendor_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "vendorCreatedAt"))
    PackageVulnerabilityDetails.add_member(:vendor_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "vendorUpdatedAt"))
    PackageVulnerabilityDetails.add_member(:reference_urls, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringList, location_name: "referenceUrls"))
    PackageVulnerabilityDetails.type = Types::PackageVulnerabilityDetails
    PipelineExecutionStartCondition.add_member(:expression_match_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPRESSION_MATCH_ONLY", traits: {"smithy.api#enumValue" => "EXPRESSION_MATCH_ONLY"}))
    PipelineExecutionStartCondition.add_member(:expression_match_and_dependency_updates_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE", traits: {"smithy.api#enumValue" => "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"}))
    PipelineLoggingConfiguration.add_member(:image_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "imageLogGroupName"))
    PipelineLoggingConfiguration.add_member(:pipeline_log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, location_name: "pipelineLogGroupName"))
    PipelineLoggingConfiguration.type = Types::PipelineLoggingConfiguration
    PipelineStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PipelineStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Placement.add_member(:availability_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "availabilityZone"))
    Placement.add_member(:tenancy, ::Smithy::Schema::Shapes::MemberShape.new(target: TenancyType, location_name: "tenancy"))
    Placement.add_member(:host_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "hostId"))
    Placement.add_member(:host_resource_group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "hostResourceGroupArn"))
    Placement.type = Types::Placement
    Platform.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "WINDOWS", traits: {"smithy.api#enumValue" => "Windows"}))
    Platform.add_member(:linux, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "LINUX", traits: {"smithy.api#enumValue" => "Linux"}))
    Platform.add_member(:macos, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MACOS", traits: {"smithy.api#enumValue" => "macOS"}))
    ProductCodeList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeListItem)
    ProductCodeListItem.add_member(:product_code_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeId, location_name: "productCodeId", traits: {"smithy.api#required" => {}}))
    ProductCodeListItem.add_member(:product_code_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProductCodeType, location_name: "productCodeType", traits: {"smithy.api#required" => {}}))
    ProductCodeListItem.type = Types::ProductCodeListItem
    ProductCodeType.add_member(:marketplace, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MARKETPLACE", traits: {"smithy.api#enumValue" => "marketplace"}))
    PutComponentPolicyRequest.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, location_name: "componentArn", traits: {"smithy.api#required" => {}}))
    PutComponentPolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, location_name: "policy", traits: {"smithy.api#required" => {}}))
    PutComponentPolicyRequest.type = Types::PutComponentPolicyRequest
    PutComponentPolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    PutComponentPolicyResponse.add_member(:component_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ComponentBuildVersionArn, location_name: "componentArn"))
    PutComponentPolicyResponse.type = Types::PutComponentPolicyResponse
    PutContainerRecipePolicyRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn", traits: {"smithy.api#required" => {}}))
    PutContainerRecipePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, location_name: "policy", traits: {"smithy.api#required" => {}}))
    PutContainerRecipePolicyRequest.type = Types::PutContainerRecipePolicyRequest
    PutContainerRecipePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    PutContainerRecipePolicyResponse.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn"))
    PutContainerRecipePolicyResponse.type = Types::PutContainerRecipePolicyResponse
    PutImagePolicyRequest.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageArn", traits: {"smithy.api#required" => {}}))
    PutImagePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, location_name: "policy", traits: {"smithy.api#required" => {}}))
    PutImagePolicyRequest.type = Types::PutImagePolicyRequest
    PutImagePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    PutImagePolicyResponse.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageArn"))
    PutImagePolicyResponse.type = Types::PutImagePolicyResponse
    PutImageRecipePolicyRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn", traits: {"smithy.api#required" => {}}))
    PutImageRecipePolicyRequest.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicyDocument, location_name: "policy", traits: {"smithy.api#required" => {}}))
    PutImageRecipePolicyRequest.type = Types::PutImageRecipePolicyRequest
    PutImageRecipePolicyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    PutImageRecipePolicyResponse.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn"))
    PutImageRecipePolicyResponse.type = Types::PutImageRecipePolicyResponse
    RegionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    Remediation.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: RemediationRecommendation, location_name: "recommendation"))
    Remediation.type = Types::Remediation
    RemediationRecommendation.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "text"))
    RemediationRecommendation.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "url"))
    RemediationRecommendation.type = Types::RemediationRecommendation
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceDependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceDependencyException.type = Types::ResourceDependencyException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "status"))
    ResourceState.type = Types::ResourceState
    ResourceStateUpdateExclusionRules.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetailExclusionRulesAmis, location_name: "amis"))
    ResourceStateUpdateExclusionRules.type = Types::ResourceStateUpdateExclusionRules
    ResourceStateUpdateIncludeResources.add_member(:amis, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "amis", traits: {"smithy.api#default" => false}))
    ResourceStateUpdateIncludeResources.add_member(:snapshots, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "snapshots", traits: {"smithy.api#default" => false}))
    ResourceStateUpdateIncludeResources.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "containers", traits: {"smithy.api#default" => false}))
    ResourceStateUpdateIncludeResources.type = Types::ResourceStateUpdateIncludeResources
    ResourceStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ResourceStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    ResourceStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    ResourceStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ResourceTagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    ResourceTagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    S3ExportConfiguration.add_member(:role_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "roleName", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:disk_image_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskImageFormat, location_name: "diskImageFormat", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "s3Bucket", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "s3Prefix"))
    S3ExportConfiguration.type = Types::S3ExportConfiguration
    S3Logs.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "s3BucketName"))
    S3Logs.add_member(:s3_key_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "s3KeyPrefix"))
    S3Logs.type = Types::S3Logs
    Schedule.add_member(:schedule_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "scheduleExpression"))
    Schedule.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: Timezone, location_name: "timezone"))
    Schedule.add_member(:pipeline_execution_start_condition, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineExecutionStartCondition, location_name: "pipelineExecutionStartCondition"))
    Schedule.add_member(:auto_disable_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoDisablePolicy, location_name: "autoDisablePolicy"))
    Schedule.type = Types::Schedule
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    SendWorkflowStepActionRequest.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, location_name: "stepExecutionId", traits: {"smithy.api#required" => {}}))
    SendWorkflowStepActionRequest.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn", traits: {"smithy.api#required" => {}}))
    SendWorkflowStepActionRequest.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepActionType, location_name: "action", traits: {"smithy.api#required" => {}}))
    SendWorkflowStepActionRequest.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    SendWorkflowStepActionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    SendWorkflowStepActionRequest.type = Types::SendWorkflowStepActionRequest
    SendWorkflowStepActionResponse.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, location_name: "stepExecutionId"))
    SendWorkflowStepActionResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    SendWorkflowStepActionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    SendWorkflowStepActionResponse.type = Types::SendWorkflowStepActionResponse
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ServiceException.type = Types::ServiceException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SeverityCounts.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCountNumber, location_name: "all"))
    SeverityCounts.add_member(:critical, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCountNumber, location_name: "critical"))
    SeverityCounts.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCountNumber, location_name: "high"))
    SeverityCounts.add_member(:medium, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCountNumber, location_name: "medium"))
    SeverityCounts.type = Types::SeverityCounts
    SsmParameterConfiguration.add_member(:ami_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, location_name: "amiAccountId"))
    SsmParameterConfiguration.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterName, location_name: "parameterName", traits: {"smithy.api#required" => {}}))
    SsmParameterConfiguration.add_member(:data_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterDataType, location_name: "dataType"))
    SsmParameterConfiguration.type = Types::SsmParameterConfiguration
    SsmParameterConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SsmParameterConfiguration)
    SsmParameterDataType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT", traits: {"smithy.api#enumValue" => "text"}))
    SsmParameterDataType.add_member(:aws_ec2_image, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "AWS_EC2_IMAGE", traits: {"smithy.api#enumValue" => "aws:ec2:image"}))
    StartImagePipelineExecutionRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn", traits: {"smithy.api#required" => {}}))
    StartImagePipelineExecutionRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartImagePipelineExecutionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    StartImagePipelineExecutionRequest.type = Types::StartImagePipelineExecutionRequest
    StartImagePipelineExecutionResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    StartImagePipelineExecutionResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    StartImagePipelineExecutionResponse.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    StartImagePipelineExecutionResponse.type = Types::StartImagePipelineExecutionResponse
    StartResourceStateUpdateRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    StartResourceStateUpdateRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceState, location_name: "state", traits: {"smithy.api#required" => {}}))
    StartResourceStateUpdateRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    StartResourceStateUpdateRequest.add_member(:include_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStateUpdateIncludeResources, location_name: "includeResources"))
    StartResourceStateUpdateRequest.add_member(:exclusion_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStateUpdateExclusionRules, location_name: "exclusionRules"))
    StartResourceStateUpdateRequest.add_member(:update_at, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTimeTimestamp, location_name: "updateAt"))
    StartResourceStateUpdateRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartResourceStateUpdateRequest.type = Types::StartResourceStateUpdateRequest
    StartResourceStateUpdateResponse.add_member(:lifecycle_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecycleExecutionId, location_name: "lifecycleExecutionId"))
    StartResourceStateUpdateResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "resourceArn"))
    StartResourceStateUpdateResponse.type = Types::StartResourceStateUpdateResponse
    StringList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString)
    SystemsManagerAgent.add_member(:uninstall_after_build, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "uninstallAfterBuild"))
    SystemsManagerAgent.type = Types::SystemsManagerAgent
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetContainerRepository.add_member(:service, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRepositoryService, location_name: "service", traits: {"smithy.api#required" => {}}))
    TargetContainerRepository.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "repositoryName", traits: {"smithy.api#required" => {}}))
    TargetContainerRepository.type = Types::TargetContainerRepository
    TenancyType.add_member(:default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEFAULT", traits: {"smithy.api#enumValue" => "default"}))
    TenancyType.add_member(:dedicated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEDICATED", traits: {"smithy.api#enumValue" => "dedicated"}))
    TenancyType.add_member(:host, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "HOST", traits: {"smithy.api#enumValue" => "host"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDistributionConfigurationRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateDistributionConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    UpdateDistributionConfigurationRequest.add_member(:distributions, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionList, location_name: "distributions", traits: {"smithy.api#required" => {}}))
    UpdateDistributionConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateDistributionConfigurationRequest.type = Types::UpdateDistributionConfigurationRequest
    UpdateDistributionConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    UpdateDistributionConfigurationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    UpdateDistributionConfigurationResponse.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    UpdateDistributionConfigurationResponse.type = Types::UpdateDistributionConfigurationResponse
    UpdateImagePipelineRequest.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn", traits: {"smithy.api#required" => {}}))
    UpdateImagePipelineRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    UpdateImagePipelineRequest.add_member(:image_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageRecipeArn, location_name: "imageRecipeArn"))
    UpdateImagePipelineRequest.add_member(:container_recipe_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerRecipeArn, location_name: "containerRecipeArn"))
    UpdateImagePipelineRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateImagePipelineRequest.add_member(:distribution_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    UpdateImagePipelineRequest.add_member(:image_tests_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    UpdateImagePipelineRequest.add_member(:enhanced_image_metadata_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    UpdateImagePipelineRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: Schedule, location_name: "schedule"))
    UpdateImagePipelineRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineStatus, location_name: "status"))
    UpdateImagePipelineRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateImagePipelineRequest.add_member(:image_scanning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageScanningConfiguration, location_name: "imageScanningConfiguration"))
    UpdateImagePipelineRequest.add_member(:workflows, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfigurationList, location_name: "workflows"))
    UpdateImagePipelineRequest.add_member(:logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineLoggingConfiguration, location_name: "loggingConfiguration"))
    UpdateImagePipelineRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole"))
    UpdateImagePipelineRequest.type = Types::UpdateImagePipelineRequest
    UpdateImagePipelineResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    UpdateImagePipelineResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    UpdateImagePipelineResponse.add_member(:image_pipeline_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePipelineArn, location_name: "imagePipelineArn"))
    UpdateImagePipelineResponse.type = Types::UpdateImagePipelineResponse
    UpdateInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn", traits: {"smithy.api#required" => {}}))
    UpdateInfrastructureConfigurationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_types, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceTypeList, location_name: "instanceTypes"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_profile_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceProfileNameType, location_name: "instanceProfileName", traits: {"smithy.api#required" => {}}))
    UpdateInfrastructureConfigurationRequest.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, location_name: "securityGroupIds"))
    UpdateInfrastructureConfigurationRequest.add_member(:subnet_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "subnetId"))
    UpdateInfrastructureConfigurationRequest.add_member(:logging, ::Smithy::Schema::Shapes::MemberShape.new(target: Logging, location_name: "logging"))
    UpdateInfrastructureConfigurationRequest.add_member(:key_pair, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "keyPair"))
    UpdateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    UpdateInfrastructureConfigurationRequest.add_member(:sns_topic_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SnsTopicArn, location_name: "snsTopicArn"))
    UpdateInfrastructureConfigurationRequest.add_member(:resource_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMap, location_name: "resourceTags"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_metadata_options, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceMetadataOptions, location_name: "instanceMetadataOptions"))
    UpdateInfrastructureConfigurationRequest.add_member(:placement, ::Smithy::Schema::Shapes::MemberShape.new(target: Placement, location_name: "placement"))
    UpdateInfrastructureConfigurationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateInfrastructureConfigurationRequest.type = Types::UpdateInfrastructureConfigurationRequest
    UpdateInfrastructureConfigurationResponse.add_member(:request_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "requestId"))
    UpdateInfrastructureConfigurationResponse.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken"))
    UpdateInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn"))
    UpdateInfrastructureConfigurationResponse.type = Types::UpdateInfrastructureConfigurationResponse
    UpdateLifecyclePolicyRequest.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "lifecyclePolicyArn", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    UpdateLifecyclePolicyRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyStatus, location_name: "status"))
    UpdateLifecyclePolicyRequest.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleNameOrArn, location_name: "executionRole", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceType, location_name: "resourceType", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:policy_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyDetails, location_name: "policyDetails", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:resource_selection, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyResourceSelection, location_name: "resourceSelection", traits: {"smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateLifecyclePolicyRequest.type = Types::UpdateLifecyclePolicyRequest
    UpdateLifecyclePolicyResponse.add_member(:lifecycle_policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicyArn, location_name: "lifecyclePolicyArn"))
    UpdateLifecyclePolicyResponse.type = Types::UpdateLifecyclePolicyResponse
    VulnerabilityIdAggregation.add_member(:vulnerability_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "vulnerabilityId"))
    VulnerabilityIdAggregation.add_member(:severity_counts, ::Smithy::Schema::Shapes::MemberShape.new(target: SeverityCounts, location_name: "severityCounts"))
    VulnerabilityIdAggregation.type = Types::VulnerabilityIdAggregation
    VulnerabilityIdList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerabilityId)
    VulnerablePackage.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "name"))
    VulnerablePackage.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "version"))
    VulnerablePackage.add_member(:source_layer_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceLayerHash, location_name: "sourceLayerHash"))
    VulnerablePackage.add_member(:epoch, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageEpoch, location_name: "epoch"))
    VulnerablePackage.add_member(:release, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "release"))
    VulnerablePackage.add_member(:arch, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageArchitecture, location_name: "arch"))
    VulnerablePackage.add_member(:package_manager, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "packageManager"))
    VulnerablePackage.add_member(:file_path, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "filePath"))
    VulnerablePackage.add_member(:fixed_in_version, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "fixedInVersion"))
    VulnerablePackage.add_member(:remediation, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "remediation"))
    VulnerablePackage.type = Types::VulnerablePackage
    VulnerablePackageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: VulnerablePackage)
    Workflow.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "arn"))
    Workflow.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    Workflow.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    Workflow.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    Workflow.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "changeDescription"))
    Workflow.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    Workflow.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowState, location_name: "state"))
    Workflow.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    Workflow.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowData, location_name: "data"))
    Workflow.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "kmsKeyId"))
    Workflow.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    Workflow.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    Workflow.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterDetailList, location_name: "parameters"))
    Workflow.type = Types::Workflow
    WorkflowConfiguration.add_member(:workflow_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionArnOrBuildVersionArn, location_name: "workflowArn", traits: {"smithy.api#required" => {}}))
    WorkflowConfiguration.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterList, location_name: "parameters"))
    WorkflowConfiguration.add_member(:parallel_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelGroup, location_name: "parallelGroup"))
    WorkflowConfiguration.add_member(:on_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: OnWorkflowFailure, location_name: "onFailure"))
    WorkflowConfiguration.type = Types::WorkflowConfiguration
    WorkflowConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowConfiguration)
    WorkflowExecutionMetadata.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    WorkflowExecutionMetadata.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, location_name: "workflowExecutionId"))
    WorkflowExecutionMetadata.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    WorkflowExecutionMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionStatus, location_name: "status"))
    WorkflowExecutionMetadata.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionMessage, location_name: "message"))
    WorkflowExecutionMetadata.add_member(:total_step_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, location_name: "totalStepCount", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionMetadata.add_member(:total_steps_succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, location_name: "totalStepsSucceeded", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionMetadata.add_member(:total_steps_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, location_name: "totalStepsFailed", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionMetadata.add_member(:total_steps_skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepCount, location_name: "totalStepsSkipped", traits: {"smithy.api#default" => 0}))
    WorkflowExecutionMetadata.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "startTime"))
    WorkflowExecutionMetadata.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "endTime"))
    WorkflowExecutionMetadata.add_member(:parallel_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ParallelGroup, location_name: "parallelGroup"))
    WorkflowExecutionMetadata.type = Types::WorkflowExecutionMetadata
    WorkflowExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkflowExecutionStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    WorkflowExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkflowExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    WorkflowExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WorkflowExecutionStatus.add_member(:rollback_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_IN_PROGRESS", traits: {"smithy.api#enumValue" => "ROLLBACK_IN_PROGRESS"}))
    WorkflowExecutionStatus.add_member(:rollback_completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROLLBACK_COMPLETED", traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETED"}))
    WorkflowExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    WorkflowExecutionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionMetadata)
    WorkflowParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    WorkflowParameter.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterValueList, location_name: "value", traits: {"smithy.api#required" => {}}))
    WorkflowParameter.type = Types::WorkflowParameter
    WorkflowParameterDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    WorkflowParameterDetail.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterType, location_name: "type", traits: {"smithy.api#required" => {}}))
    WorkflowParameterDetail.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterValueList, location_name: "defaultValue"))
    WorkflowParameterDetail.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterDescription, location_name: "description"))
    WorkflowParameterDetail.type = Types::WorkflowParameterDetail
    WorkflowParameterDetailList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterDetail)
    WorkflowParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameter)
    WorkflowParameterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowParameterValue)
    WorkflowState.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStatus, location_name: "status"))
    WorkflowState.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "reason"))
    WorkflowState.type = Types::WorkflowState
    WorkflowStatus.add_member(:deprecated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DEPRECATED", traits: {"smithy.api#enumValue" => "DEPRECATED"}))
    WorkflowStepActionType.add_member(:resume, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESUME", traits: {"smithy.api#enumValue" => "RESUME"}))
    WorkflowStepActionType.add_member(:stop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOP", traits: {"smithy.api#enumValue" => "STOP"}))
    WorkflowStepExecution.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, location_name: "stepExecutionId"))
    WorkflowStepExecution.add_member(:image_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    WorkflowStepExecution.add_member(:workflow_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowExecutionId, location_name: "workflowExecutionId"))
    WorkflowStepExecution.add_member(:workflow_build_version_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowBuildVersionArn, location_name: "workflowBuildVersionArn"))
    WorkflowStepExecution.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepName, location_name: "name"))
    WorkflowStepExecution.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAction, location_name: "action"))
    WorkflowStepExecution.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "startTime"))
    WorkflowStepExecution.type = Types::WorkflowStepExecution
    WorkflowStepExecutionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecution)
    WorkflowStepExecutionRollbackStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkflowStepExecutionRollbackStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    WorkflowStepExecutionRollbackStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    WorkflowStepExecutionRollbackStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WorkflowStepExecutionStatus.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    WorkflowStepExecutionStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    WorkflowStepExecutionStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    WorkflowStepExecutionStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    WorkflowStepExecutionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    WorkflowStepExecutionStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    WorkflowStepExecutionsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepMetadata)
    WorkflowStepMetadata.add_member(:step_execution_id, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionId, location_name: "stepExecutionId"))
    WorkflowStepMetadata.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepName, location_name: "name"))
    WorkflowStepMetadata.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepDescription, location_name: "description"))
    WorkflowStepMetadata.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepAction, location_name: "action"))
    WorkflowStepMetadata.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionStatus, location_name: "status"))
    WorkflowStepMetadata.add_member(:rollback_status, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepExecutionRollbackStatus, location_name: "rollbackStatus"))
    WorkflowStepMetadata.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepMessage, location_name: "message"))
    WorkflowStepMetadata.add_member(:inputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepInputs, location_name: "inputs"))
    WorkflowStepMetadata.add_member(:outputs, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowStepOutputs, location_name: "outputs"))
    WorkflowStepMetadata.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "startTime"))
    WorkflowStepMetadata.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "endTime"))
    WorkflowStepMetadata.type = Types::WorkflowStepMetadata
    WorkflowSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowNameArn, location_name: "arn"))
    WorkflowSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    WorkflowSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    WorkflowSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    WorkflowSummary.add_member(:change_description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "changeDescription"))
    WorkflowSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    WorkflowSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    WorkflowSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowState, location_name: "state"))
    WorkflowSummary.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    WorkflowSummary.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "tags"))
    WorkflowSummary.type = Types::WorkflowSummary
    WorkflowSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowSummary)
    WorkflowType.add_member(:build, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "BUILD", traits: {"smithy.api#enumValue" => "BUILD"}))
    WorkflowType.add_member(:test, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEST", traits: {"smithy.api#enumValue" => "TEST"}))
    WorkflowType.add_member(:distribution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISTRIBUTION", traits: {"smithy.api#enumValue" => "DISTRIBUTION"}))
    WorkflowVersion.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersionArn, location_name: "arn"))
    WorkflowVersion.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, location_name: "name"))
    WorkflowVersion.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionNumber, location_name: "version"))
    WorkflowVersion.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "description"))
    WorkflowVersion.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowType, location_name: "type"))
    WorkflowVersion.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, location_name: "owner"))
    WorkflowVersion.add_member(:date_created, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, location_name: "dateCreated"))
    WorkflowVersion.type = Types::WorkflowVersion
    WorkflowVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: WorkflowVersion)

    Imagebuilder = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.imagebuilder#imagebuilder"
      service.name = "Imagebuilder"
      service.version = "2019-12-02"
      service.traits = {"aws.api#service" => {"sdkId" => "imagebuilder", "arnNamespace" => "imagebuilder", "cloudFormationName" => "Imagebuilder", "cloudTrailEventSource" => "imagebuilder.amazonaws.com", "endpointPrefix" => "imagebuilder"}, "aws.auth#sigv4" => {"name" => "imagebuilder"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "EC2 Image Builder"}
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
        operation.errors << ClientException
        operation.errors << ServiceException
        operation.errors << ServiceUnavailableException
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
