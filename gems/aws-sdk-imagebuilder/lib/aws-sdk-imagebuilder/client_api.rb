# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Imagebuilder
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    Ami = Shapes::StructureShape.new(name: 'Ami')
    AmiDistributionConfiguration = Shapes::StructureShape.new(name: 'AmiDistributionConfiguration')
    AmiList = Shapes::ListShape.new(name: 'AmiList')
    AmiNameString = Shapes::StringShape.new(name: 'AmiNameString')
    Arn = Shapes::StringShape.new(name: 'Arn')
    CallRateLimitExceededException = Shapes::StructureShape.new(name: 'CallRateLimitExceededException')
    CancelImageCreationRequest = Shapes::StructureShape.new(name: 'CancelImageCreationRequest')
    CancelImageCreationResponse = Shapes::StructureShape.new(name: 'CancelImageCreationResponse')
    ClientException = Shapes::StructureShape.new(name: 'ClientException')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    Component = Shapes::StructureShape.new(name: 'Component')
    ComponentBuildVersionArn = Shapes::StringShape.new(name: 'ComponentBuildVersionArn')
    ComponentConfiguration = Shapes::StructureShape.new(name: 'ComponentConfiguration')
    ComponentConfigurationList = Shapes::ListShape.new(name: 'ComponentConfigurationList')
    ComponentData = Shapes::StringShape.new(name: 'ComponentData')
    ComponentFormat = Shapes::StringShape.new(name: 'ComponentFormat')
    ComponentSummary = Shapes::StructureShape.new(name: 'ComponentSummary')
    ComponentSummaryList = Shapes::ListShape.new(name: 'ComponentSummaryList')
    ComponentType = Shapes::StringShape.new(name: 'ComponentType')
    ComponentVersion = Shapes::StructureShape.new(name: 'ComponentVersion')
    ComponentVersionArn = Shapes::StringShape.new(name: 'ComponentVersionArn')
    ComponentVersionArnOrBuildVersionArn = Shapes::StringShape.new(name: 'ComponentVersionArnOrBuildVersionArn')
    ComponentVersionList = Shapes::ListShape.new(name: 'ComponentVersionList')
    CreateComponentRequest = Shapes::StructureShape.new(name: 'CreateComponentRequest')
    CreateComponentResponse = Shapes::StructureShape.new(name: 'CreateComponentResponse')
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
    DateTime = Shapes::StringShape.new(name: 'DateTime')
    DeleteComponentRequest = Shapes::StructureShape.new(name: 'DeleteComponentRequest')
    DeleteComponentResponse = Shapes::StructureShape.new(name: 'DeleteComponentResponse')
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
    Distribution = Shapes::StructureShape.new(name: 'Distribution')
    DistributionConfiguration = Shapes::StructureShape.new(name: 'DistributionConfiguration')
    DistributionConfigurationArn = Shapes::StringShape.new(name: 'DistributionConfigurationArn')
    DistributionConfigurationSummary = Shapes::StructureShape.new(name: 'DistributionConfigurationSummary')
    DistributionConfigurationSummaryList = Shapes::ListShape.new(name: 'DistributionConfigurationSummaryList')
    DistributionList = Shapes::ListShape.new(name: 'DistributionList')
    DistributionTimeoutMinutes = Shapes::IntegerShape.new(name: 'DistributionTimeoutMinutes')
    EbsInstanceBlockDeviceSpecification = Shapes::StructureShape.new(name: 'EbsInstanceBlockDeviceSpecification')
    EbsIopsInteger = Shapes::IntegerShape.new(name: 'EbsIopsInteger')
    EbsVolumeSizeInteger = Shapes::IntegerShape.new(name: 'EbsVolumeSizeInteger')
    EbsVolumeType = Shapes::StringShape.new(name: 'EbsVolumeType')
    EmptyString = Shapes::StringShape.new(name: 'EmptyString')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
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
    IdempotentParameterMismatchException = Shapes::StructureShape.new(name: 'IdempotentParameterMismatchException')
    Image = Shapes::StructureShape.new(name: 'Image')
    ImageBuildVersionArn = Shapes::StringShape.new(name: 'ImageBuildVersionArn')
    ImageBuilderArn = Shapes::StringShape.new(name: 'ImageBuilderArn')
    ImagePipeline = Shapes::StructureShape.new(name: 'ImagePipeline')
    ImagePipelineArn = Shapes::StringShape.new(name: 'ImagePipelineArn')
    ImagePipelineList = Shapes::ListShape.new(name: 'ImagePipelineList')
    ImageRecipe = Shapes::StructureShape.new(name: 'ImageRecipe')
    ImageRecipeArn = Shapes::StringShape.new(name: 'ImageRecipeArn')
    ImageRecipeSummary = Shapes::StructureShape.new(name: 'ImageRecipeSummary')
    ImageRecipeSummaryList = Shapes::ListShape.new(name: 'ImageRecipeSummaryList')
    ImageState = Shapes::StructureShape.new(name: 'ImageState')
    ImageStatus = Shapes::StringShape.new(name: 'ImageStatus')
    ImageSummary = Shapes::StructureShape.new(name: 'ImageSummary')
    ImageSummaryList = Shapes::ListShape.new(name: 'ImageSummaryList')
    ImageTestsConfiguration = Shapes::StructureShape.new(name: 'ImageTestsConfiguration')
    ImageTestsTimeoutMinutes = Shapes::IntegerShape.new(name: 'ImageTestsTimeoutMinutes')
    ImageVersion = Shapes::StructureShape.new(name: 'ImageVersion')
    ImageVersionArn = Shapes::StringShape.new(name: 'ImageVersionArn')
    ImageVersionArnOrBuildVersionArn = Shapes::StringShape.new(name: 'ImageVersionArnOrBuildVersionArn')
    ImageVersionList = Shapes::ListShape.new(name: 'ImageVersionList')
    ImportComponentRequest = Shapes::StructureShape.new(name: 'ImportComponentRequest')
    ImportComponentResponse = Shapes::StructureShape.new(name: 'ImportComponentResponse')
    InfrastructureConfiguration = Shapes::StructureShape.new(name: 'InfrastructureConfiguration')
    InfrastructureConfigurationArn = Shapes::StringShape.new(name: 'InfrastructureConfigurationArn')
    InfrastructureConfigurationSummary = Shapes::StructureShape.new(name: 'InfrastructureConfigurationSummary')
    InfrastructureConfigurationSummaryList = Shapes::ListShape.new(name: 'InfrastructureConfigurationSummaryList')
    InlineComponentData = Shapes::StringShape.new(name: 'InlineComponentData')
    InstanceBlockDeviceMapping = Shapes::StructureShape.new(name: 'InstanceBlockDeviceMapping')
    InstanceBlockDeviceMappings = Shapes::ListShape.new(name: 'InstanceBlockDeviceMappings')
    InstanceType = Shapes::StringShape.new(name: 'InstanceType')
    InstanceTypeList = Shapes::ListShape.new(name: 'InstanceTypeList')
    InvalidPaginationTokenException = Shapes::StructureShape.new(name: 'InvalidPaginationTokenException')
    InvalidParameterCombinationException = Shapes::StructureShape.new(name: 'InvalidParameterCombinationException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidVersionNumberException = Shapes::StructureShape.new(name: 'InvalidVersionNumberException')
    LaunchPermissionConfiguration = Shapes::StructureShape.new(name: 'LaunchPermissionConfiguration')
    LicenseConfigurationArn = Shapes::StringShape.new(name: 'LicenseConfigurationArn')
    LicenseConfigurationArnList = Shapes::ListShape.new(name: 'LicenseConfigurationArnList')
    ListComponentBuildVersionsRequest = Shapes::StructureShape.new(name: 'ListComponentBuildVersionsRequest')
    ListComponentBuildVersionsResponse = Shapes::StructureShape.new(name: 'ListComponentBuildVersionsResponse')
    ListComponentsRequest = Shapes::StructureShape.new(name: 'ListComponentsRequest')
    ListComponentsResponse = Shapes::StructureShape.new(name: 'ListComponentsResponse')
    ListDistributionConfigurationsRequest = Shapes::StructureShape.new(name: 'ListDistributionConfigurationsRequest')
    ListDistributionConfigurationsResponse = Shapes::StructureShape.new(name: 'ListDistributionConfigurationsResponse')
    ListImageBuildVersionsRequest = Shapes::StructureShape.new(name: 'ListImageBuildVersionsRequest')
    ListImageBuildVersionsResponse = Shapes::StructureShape.new(name: 'ListImageBuildVersionsResponse')
    ListImagePipelineImagesRequest = Shapes::StructureShape.new(name: 'ListImagePipelineImagesRequest')
    ListImagePipelineImagesResponse = Shapes::StructureShape.new(name: 'ListImagePipelineImagesResponse')
    ListImagePipelinesRequest = Shapes::StructureShape.new(name: 'ListImagePipelinesRequest')
    ListImagePipelinesResponse = Shapes::StructureShape.new(name: 'ListImagePipelinesResponse')
    ListImageRecipesRequest = Shapes::StructureShape.new(name: 'ListImageRecipesRequest')
    ListImageRecipesResponse = Shapes::StructureShape.new(name: 'ListImageRecipesResponse')
    ListImagesRequest = Shapes::StructureShape.new(name: 'ListImagesRequest')
    ListImagesResponse = Shapes::StructureShape.new(name: 'ListImagesResponse')
    ListInfrastructureConfigurationsRequest = Shapes::StructureShape.new(name: 'ListInfrastructureConfigurationsRequest')
    ListInfrastructureConfigurationsResponse = Shapes::StructureShape.new(name: 'ListInfrastructureConfigurationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Logging = Shapes::StructureShape.new(name: 'Logging')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    OsVersion = Shapes::StringShape.new(name: 'OsVersion')
    OsVersionList = Shapes::ListShape.new(name: 'OsVersionList')
    OutputResources = Shapes::StructureShape.new(name: 'OutputResources')
    Ownership = Shapes::StringShape.new(name: 'Ownership')
    PipelineExecutionStartCondition = Shapes::StringShape.new(name: 'PipelineExecutionStartCondition')
    PipelineStatus = Shapes::StringShape.new(name: 'PipelineStatus')
    Platform = Shapes::StringShape.new(name: 'Platform')
    PutComponentPolicyRequest = Shapes::StructureShape.new(name: 'PutComponentPolicyRequest')
    PutComponentPolicyResponse = Shapes::StructureShape.new(name: 'PutComponentPolicyResponse')
    PutImagePolicyRequest = Shapes::StructureShape.new(name: 'PutImagePolicyRequest')
    PutImagePolicyResponse = Shapes::StructureShape.new(name: 'PutImagePolicyResponse')
    PutImageRecipePolicyRequest = Shapes::StructureShape.new(name: 'PutImageRecipePolicyRequest')
    PutImageRecipePolicyResponse = Shapes::StructureShape.new(name: 'PutImageRecipePolicyResponse')
    ResourceAlreadyExistsException = Shapes::StructureShape.new(name: 'ResourceAlreadyExistsException')
    ResourceDependencyException = Shapes::StructureShape.new(name: 'ResourceDependencyException')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicyDocument = Shapes::StringShape.new(name: 'ResourcePolicyDocument')
    ResourceTagMap = Shapes::MapShape.new(name: 'ResourceTagMap')
    RestrictedInteger = Shapes::IntegerShape.new(name: 'RestrictedInteger')
    S3Logs = Shapes::StructureShape.new(name: 'S3Logs')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SnsTopicArn = Shapes::StringShape.new(name: 'SnsTopicArn')
    StartImagePipelineExecutionRequest = Shapes::StructureShape.new(name: 'StartImagePipelineExecutionRequest')
    StartImagePipelineExecutionResponse = Shapes::StructureShape.new(name: 'StartImagePipelineExecutionResponse')
    StringList = Shapes::ListShape.new(name: 'StringList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateDistributionConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateDistributionConfigurationRequest')
    UpdateDistributionConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateDistributionConfigurationResponse')
    UpdateImagePipelineRequest = Shapes::StructureShape.new(name: 'UpdateImagePipelineRequest')
    UpdateImagePipelineResponse = Shapes::StructureShape.new(name: 'UpdateImagePipelineResponse')
    UpdateInfrastructureConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateInfrastructureConfigurationRequest')
    UpdateInfrastructureConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateInfrastructureConfigurationResponse')
    Uri = Shapes::StringShape.new(name: 'Uri')
    VersionNumber = Shapes::StringShape.new(name: 'VersionNumber')

    AccountList.member = Shapes::ShapeRef.new(shape: AccountId)

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

    CallRateLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    CallRateLimitExceededException.struct_class = Types::CallRateLimitExceededException

    CancelImageCreationRequest.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, required: true, location_name: "imageBuildVersionArn"))
    CancelImageCreationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CancelImageCreationRequest.struct_class = Types::CancelImageCreationRequest

    CancelImageCreationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CancelImageCreationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CancelImageCreationResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    CancelImageCreationResponse.struct_class = Types::CancelImageCreationResponse

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
    Component.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    Component.add_member(:data, Shapes::ShapeRef.new(shape: ComponentData, location_name: "data"))
    Component.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "kmsKeyId"))
    Component.add_member(:encrypted, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "encrypted"))
    Component.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    Component.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Component.struct_class = Types::Component

    ComponentConfiguration.add_member(:component_arn, Shapes::ShapeRef.new(shape: ComponentVersionArnOrBuildVersionArn, required: true, location_name: "componentArn"))
    ComponentConfiguration.struct_class = Types::ComponentConfiguration

    ComponentConfigurationList.member = Shapes::ShapeRef.new(shape: ComponentConfiguration)

    ComponentSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ComponentSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ComponentSummary.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ComponentSummary.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ComponentSummary.add_member(:supported_os_versions, Shapes::ShapeRef.new(shape: OsVersionList, location_name: "supportedOsVersions"))
    ComponentSummary.add_member(:type, Shapes::ShapeRef.new(shape: ComponentType, location_name: "type"))
    ComponentSummary.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ComponentSummary.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ComponentSummary.add_member(:change_description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "changeDescription"))
    ComponentSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ComponentSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
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
    ComponentVersion.struct_class = Types::ComponentVersion

    ComponentVersionList.member = Shapes::ShapeRef.new(shape: ComponentVersion)

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
    CreateComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateComponentRequest.struct_class = Types::CreateComponentRequest

    CreateComponentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateComponentResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateComponentResponse.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    CreateComponentResponse.struct_class = Types::CreateComponentResponse

    CreateDistributionConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateDistributionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateDistributionConfigurationRequest.add_member(:distributions, Shapes::ShapeRef.new(shape: DistributionList, required: true, location_name: "distributions"))
    CreateDistributionConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateDistributionConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateDistributionConfigurationRequest.struct_class = Types::CreateDistributionConfigurationRequest

    CreateDistributionConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateDistributionConfigurationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateDistributionConfigurationResponse.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateDistributionConfigurationResponse.struct_class = Types::CreateDistributionConfigurationResponse

    CreateImagePipelineRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateImagePipelineRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateImagePipelineRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, required: true, location_name: "imageRecipeArn"))
    CreateImagePipelineRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    CreateImagePipelineRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateImagePipelineRequest.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    CreateImagePipelineRequest.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    CreateImagePipelineRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    CreateImagePipelineRequest.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "status"))
    CreateImagePipelineRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateImagePipelineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
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
    CreateImageRecipeRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateImageRecipeRequest.struct_class = Types::CreateImageRecipeRequest

    CreateImageRecipeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateImageRecipeResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateImageRecipeResponse.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, location_name: "imageRecipeArn"))
    CreateImageRecipeResponse.struct_class = Types::CreateImageRecipeResponse

    CreateImageRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, required: true, location_name: "imageRecipeArn"))
    CreateImageRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    CreateImageRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    CreateImageRequest.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    CreateImageRequest.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    CreateImageRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateImageRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateImageRequest.struct_class = Types::CreateImageRequest

    CreateImageResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateImageResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateImageResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    CreateImageResponse.struct_class = Types::CreateImageResponse

    CreateInfrastructureConfigurationRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "name"))
    CreateInfrastructureConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: "instanceTypes"))
    CreateInfrastructureConfigurationRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "instanceProfileName"))
    CreateInfrastructureConfigurationRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    CreateInfrastructureConfigurationRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subnetId"))
    CreateInfrastructureConfigurationRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    CreateInfrastructureConfigurationRequest.add_member(:key_pair, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyPair"))
    CreateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_failure, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    CreateInfrastructureConfigurationRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "snsTopicArn"))
    CreateInfrastructureConfigurationRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagMap, location_name: "resourceTags"))
    CreateInfrastructureConfigurationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateInfrastructureConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateInfrastructureConfigurationRequest.struct_class = Types::CreateInfrastructureConfigurationRequest

    CreateInfrastructureConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    CreateInfrastructureConfigurationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    CreateInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn"))
    CreateInfrastructureConfigurationResponse.struct_class = Types::CreateInfrastructureConfigurationResponse

    DeleteComponentRequest.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, required: true, location: "querystring", location_name: "componentBuildVersionArn"))
    DeleteComponentRequest.struct_class = Types::DeleteComponentRequest

    DeleteComponentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    DeleteComponentResponse.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    DeleteComponentResponse.struct_class = Types::DeleteComponentResponse

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

    Distribution.add_member(:region, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "region"))
    Distribution.add_member(:ami_distribution_configuration, Shapes::ShapeRef.new(shape: AmiDistributionConfiguration, location_name: "amiDistributionConfiguration"))
    Distribution.add_member(:license_configuration_arns, Shapes::ShapeRef.new(shape: LicenseConfigurationArnList, location_name: "licenseConfigurationArns"))
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
    EbsInstanceBlockDeviceSpecification.struct_class = Types::EbsInstanceBlockDeviceSpecification

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

    IdempotentParameterMismatchException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    IdempotentParameterMismatchException.struct_class = Types::IdempotentParameterMismatchException

    Image.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    Image.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    Image.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    Image.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    Image.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    Image.add_member(:os_version, Shapes::ShapeRef.new(shape: OsVersion, location_name: "osVersion"))
    Image.add_member(:state, Shapes::ShapeRef.new(shape: ImageState, location_name: "state"))
    Image.add_member(:image_recipe, Shapes::ShapeRef.new(shape: ImageRecipe, location_name: "imageRecipe"))
    Image.add_member(:source_pipeline_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "sourcePipelineName"))
    Image.add_member(:source_pipeline_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "sourcePipelineArn"))
    Image.add_member(:infrastructure_configuration, Shapes::ShapeRef.new(shape: InfrastructureConfiguration, location_name: "infrastructureConfiguration"))
    Image.add_member(:distribution_configuration, Shapes::ShapeRef.new(shape: DistributionConfiguration, location_name: "distributionConfiguration"))
    Image.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    Image.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    Image.add_member(:output_resources, Shapes::ShapeRef.new(shape: OutputResources, location_name: "outputResources"))
    Image.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    Image.struct_class = Types::Image

    ImagePipeline.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ImagePipeline.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ImagePipeline.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    ImagePipeline.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ImagePipeline.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    ImagePipeline.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "imageRecipeArn"))
    ImagePipeline.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "infrastructureConfigurationArn"))
    ImagePipeline.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "distributionConfigurationArn"))
    ImagePipeline.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    ImagePipeline.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    ImagePipeline.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "status"))
    ImagePipeline.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ImagePipeline.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateUpdated"))
    ImagePipeline.add_member(:date_last_run, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateLastRun"))
    ImagePipeline.add_member(:date_next_run, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateNextRun"))
    ImagePipeline.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImagePipeline.struct_class = Types::ImagePipeline

    ImagePipelineList.member = Shapes::ShapeRef.new(shape: ImagePipeline)

    ImageRecipe.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
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

    ImageState.add_member(:status, Shapes::ShapeRef.new(shape: ImageStatus, location_name: "status"))
    ImageState.add_member(:reason, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "reason"))
    ImageState.struct_class = Types::ImageState

    ImageSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ImageSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ImageSummary.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ImageSummary.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ImageSummary.add_member(:os_version, Shapes::ShapeRef.new(shape: OsVersion, location_name: "osVersion"))
    ImageSummary.add_member(:state, Shapes::ShapeRef.new(shape: ImageState, location_name: "state"))
    ImageSummary.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ImageSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    ImageSummary.add_member(:output_resources, Shapes::ShapeRef.new(shape: OutputResources, location_name: "outputResources"))
    ImageSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ImageSummary.struct_class = Types::ImageSummary

    ImageSummaryList.member = Shapes::ShapeRef.new(shape: ImageSummary)

    ImageTestsConfiguration.add_member(:image_tests_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "imageTestsEnabled"))
    ImageTestsConfiguration.add_member(:timeout_minutes, Shapes::ShapeRef.new(shape: ImageTestsTimeoutMinutes, location_name: "timeoutMinutes"))
    ImageTestsConfiguration.struct_class = Types::ImageTestsConfiguration

    ImageVersion.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    ImageVersion.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ImageVersion.add_member(:version, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "version"))
    ImageVersion.add_member(:platform, Shapes::ShapeRef.new(shape: Platform, location_name: "platform"))
    ImageVersion.add_member(:os_version, Shapes::ShapeRef.new(shape: OsVersion, location_name: "osVersion"))
    ImageVersion.add_member(:owner, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "owner"))
    ImageVersion.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
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
    ImportComponentRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    ImportComponentRequest.struct_class = Types::ImportComponentRequest

    ImportComponentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ImportComponentResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    ImportComponentResponse.add_member(:component_build_version_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, location_name: "componentBuildVersionArn"))
    ImportComponentResponse.struct_class = Types::ImportComponentResponse

    InfrastructureConfiguration.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    InfrastructureConfiguration.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InfrastructureConfiguration.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    InfrastructureConfiguration.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: "instanceTypes"))
    InfrastructureConfiguration.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "instanceProfileName"))
    InfrastructureConfiguration.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    InfrastructureConfiguration.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subnetId"))
    InfrastructureConfiguration.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    InfrastructureConfiguration.add_member(:key_pair, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyPair"))
    InfrastructureConfiguration.add_member(:terminate_instance_on_failure, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    InfrastructureConfiguration.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "snsTopicArn"))
    InfrastructureConfiguration.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    InfrastructureConfiguration.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateUpdated"))
    InfrastructureConfiguration.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagMap, location_name: "resourceTags"))
    InfrastructureConfiguration.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    InfrastructureConfiguration.struct_class = Types::InfrastructureConfiguration

    InfrastructureConfigurationSummary.add_member(:arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, location_name: "arn"))
    InfrastructureConfigurationSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    InfrastructureConfigurationSummary.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    InfrastructureConfigurationSummary.add_member(:date_created, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateCreated"))
    InfrastructureConfigurationSummary.add_member(:date_updated, Shapes::ShapeRef.new(shape: DateTime, location_name: "dateUpdated"))
    InfrastructureConfigurationSummary.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagMap, location_name: "resourceTags"))
    InfrastructureConfigurationSummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    InfrastructureConfigurationSummary.struct_class = Types::InfrastructureConfigurationSummary

    InfrastructureConfigurationSummaryList.member = Shapes::ShapeRef.new(shape: InfrastructureConfigurationSummary)

    InstanceBlockDeviceMapping.add_member(:device_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "deviceName"))
    InstanceBlockDeviceMapping.add_member(:ebs, Shapes::ShapeRef.new(shape: EbsInstanceBlockDeviceSpecification, location_name: "ebs"))
    InstanceBlockDeviceMapping.add_member(:virtual_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "virtualName"))
    InstanceBlockDeviceMapping.add_member(:no_device, Shapes::ShapeRef.new(shape: EmptyString, location_name: "noDevice"))
    InstanceBlockDeviceMapping.struct_class = Types::InstanceBlockDeviceMapping

    InstanceBlockDeviceMappings.member = Shapes::ShapeRef.new(shape: InstanceBlockDeviceMapping)

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
    LaunchPermissionConfiguration.struct_class = Types::LaunchPermissionConfiguration

    LicenseConfigurationArnList.member = Shapes::ShapeRef.new(shape: LicenseConfigurationArn)

    ListComponentBuildVersionsRequest.add_member(:component_version_arn, Shapes::ShapeRef.new(shape: ComponentVersionArn, required: true, location_name: "componentVersionArn"))
    ListComponentBuildVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListComponentBuildVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListComponentBuildVersionsRequest.struct_class = Types::ListComponentBuildVersionsRequest

    ListComponentBuildVersionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListComponentBuildVersionsResponse.add_member(:component_summary_list, Shapes::ShapeRef.new(shape: ComponentSummaryList, location_name: "componentSummaryList"))
    ListComponentBuildVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListComponentBuildVersionsResponse.struct_class = Types::ListComponentBuildVersionsResponse

    ListComponentsRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location_name: "owner"))
    ListComponentsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListComponentsRequest.struct_class = Types::ListComponentsRequest

    ListComponentsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListComponentsResponse.add_member(:component_version_list, Shapes::ShapeRef.new(shape: ComponentVersionList, location_name: "componentVersionList"))
    ListComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListComponentsResponse.struct_class = Types::ListComponentsResponse

    ListDistributionConfigurationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListDistributionConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListDistributionConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListDistributionConfigurationsRequest.struct_class = Types::ListDistributionConfigurationsRequest

    ListDistributionConfigurationsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListDistributionConfigurationsResponse.add_member(:distribution_configuration_summary_list, Shapes::ShapeRef.new(shape: DistributionConfigurationSummaryList, location_name: "distributionConfigurationSummaryList"))
    ListDistributionConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListDistributionConfigurationsResponse.struct_class = Types::ListDistributionConfigurationsResponse

    ListImageBuildVersionsRequest.add_member(:image_version_arn, Shapes::ShapeRef.new(shape: ImageVersionArn, required: true, location_name: "imageVersionArn"))
    ListImageBuildVersionsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImageBuildVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListImageBuildVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImageBuildVersionsRequest.struct_class = Types::ListImageBuildVersionsRequest

    ListImageBuildVersionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImageBuildVersionsResponse.add_member(:image_summary_list, Shapes::ShapeRef.new(shape: ImageSummaryList, location_name: "imageSummaryList"))
    ListImageBuildVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImageBuildVersionsResponse.struct_class = Types::ListImageBuildVersionsResponse

    ListImagePipelineImagesRequest.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, required: true, location_name: "imagePipelineArn"))
    ListImagePipelineImagesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImagePipelineImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListImagePipelineImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImagePipelineImagesRequest.struct_class = Types::ListImagePipelineImagesRequest

    ListImagePipelineImagesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImagePipelineImagesResponse.add_member(:image_summary_list, Shapes::ShapeRef.new(shape: ImageSummaryList, location_name: "imageSummaryList"))
    ListImagePipelineImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImagePipelineImagesResponse.struct_class = Types::ListImagePipelineImagesResponse

    ListImagePipelinesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImagePipelinesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListImagePipelinesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImagePipelinesRequest.struct_class = Types::ListImagePipelinesRequest

    ListImagePipelinesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImagePipelinesResponse.add_member(:image_pipeline_list, Shapes::ShapeRef.new(shape: ImagePipelineList, location_name: "imagePipelineList"))
    ListImagePipelinesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImagePipelinesResponse.struct_class = Types::ListImagePipelinesResponse

    ListImageRecipesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location_name: "owner"))
    ListImageRecipesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImageRecipesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListImageRecipesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImageRecipesRequest.struct_class = Types::ListImageRecipesRequest

    ListImageRecipesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImageRecipesResponse.add_member(:image_recipe_summary_list, Shapes::ShapeRef.new(shape: ImageRecipeSummaryList, location_name: "imageRecipeSummaryList"))
    ListImageRecipesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImageRecipesResponse.struct_class = Types::ListImageRecipesResponse

    ListImagesRequest.add_member(:owner, Shapes::ShapeRef.new(shape: Ownership, location_name: "owner"))
    ListImagesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListImagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListImagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImagesRequest.struct_class = Types::ListImagesRequest

    ListImagesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListImagesResponse.add_member(:image_version_list, Shapes::ShapeRef.new(shape: ImageVersionList, location_name: "imageVersionList"))
    ListImagesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListImagesResponse.struct_class = Types::ListImagesResponse

    ListInfrastructureConfigurationsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, location_name: "filters"))
    ListInfrastructureConfigurationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: RestrictedInteger, location_name: "maxResults", metadata: {"box"=>true}))
    ListInfrastructureConfigurationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListInfrastructureConfigurationsRequest.struct_class = Types::ListInfrastructureConfigurationsRequest

    ListInfrastructureConfigurationsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    ListInfrastructureConfigurationsResponse.add_member(:infrastructure_configuration_summary_list, Shapes::ShapeRef.new(shape: InfrastructureConfigurationSummaryList, location_name: "infrastructureConfigurationSummaryList"))
    ListInfrastructureConfigurationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "nextToken"))
    ListInfrastructureConfigurationsResponse.struct_class = Types::ListInfrastructureConfigurationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    Logging.add_member(:s3_logs, Shapes::ShapeRef.new(shape: S3Logs, location_name: "s3Logs"))
    Logging.struct_class = Types::Logging

    OsVersionList.member = Shapes::ShapeRef.new(shape: OsVersion)

    OutputResources.add_member(:amis, Shapes::ShapeRef.new(shape: AmiList, location_name: "amis"))
    OutputResources.struct_class = Types::OutputResources

    PutComponentPolicyRequest.add_member(:component_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, required: true, location_name: "componentArn"))
    PutComponentPolicyRequest.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicyDocument, required: true, location_name: "policy"))
    PutComponentPolicyRequest.struct_class = Types::PutComponentPolicyRequest

    PutComponentPolicyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    PutComponentPolicyResponse.add_member(:component_arn, Shapes::ShapeRef.new(shape: ComponentBuildVersionArn, location_name: "componentArn"))
    PutComponentPolicyResponse.struct_class = Types::PutComponentPolicyResponse

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

    ResourceAlreadyExistsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceAlreadyExistsException.struct_class = Types::ResourceAlreadyExistsException

    ResourceDependencyException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceDependencyException.struct_class = Types::ResourceDependencyException

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    ResourceTagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    S3Logs.add_member(:s3_bucket_name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "s3BucketName"))
    S3Logs.add_member(:s3_key_prefix, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "s3KeyPrefix"))
    S3Logs.struct_class = Types::S3Logs

    Schedule.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "scheduleExpression"))
    Schedule.add_member(:pipeline_execution_start_condition, Shapes::ShapeRef.new(shape: PipelineExecutionStartCondition, location_name: "pipelineExecutionStartCondition"))
    Schedule.struct_class = Types::Schedule

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceException.struct_class = Types::ServiceException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    StartImagePipelineExecutionRequest.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, required: true, location_name: "imagePipelineArn"))
    StartImagePipelineExecutionRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    StartImagePipelineExecutionRequest.struct_class = Types::StartImagePipelineExecutionRequest

    StartImagePipelineExecutionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    StartImagePipelineExecutionResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    StartImagePipelineExecutionResponse.add_member(:image_build_version_arn, Shapes::ShapeRef.new(shape: ImageBuildVersionArn, location_name: "imageBuildVersionArn"))
    StartImagePipelineExecutionResponse.struct_class = Types::StartImagePipelineExecutionResponse

    StringList.member = Shapes::ShapeRef.new(shape: NonEmptyString)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ImageBuilderArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateDistributionConfigurationRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, required: true, location_name: "distributionConfigurationArn"))
    UpdateDistributionConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    UpdateDistributionConfigurationRequest.add_member(:distributions, Shapes::ShapeRef.new(shape: DistributionList, required: true, location_name: "distributions"))
    UpdateDistributionConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateDistributionConfigurationRequest.struct_class = Types::UpdateDistributionConfigurationRequest

    UpdateDistributionConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    UpdateDistributionConfigurationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateDistributionConfigurationResponse.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    UpdateDistributionConfigurationResponse.struct_class = Types::UpdateDistributionConfigurationResponse

    UpdateImagePipelineRequest.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, required: true, location_name: "imagePipelineArn"))
    UpdateImagePipelineRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    UpdateImagePipelineRequest.add_member(:image_recipe_arn, Shapes::ShapeRef.new(shape: ImageRecipeArn, required: true, location_name: "imageRecipeArn"))
    UpdateImagePipelineRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    UpdateImagePipelineRequest.add_member(:distribution_configuration_arn, Shapes::ShapeRef.new(shape: DistributionConfigurationArn, location_name: "distributionConfigurationArn"))
    UpdateImagePipelineRequest.add_member(:image_tests_configuration, Shapes::ShapeRef.new(shape: ImageTestsConfiguration, location_name: "imageTestsConfiguration"))
    UpdateImagePipelineRequest.add_member(:enhanced_image_metadata_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "enhancedImageMetadataEnabled"))
    UpdateImagePipelineRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: Schedule, location_name: "schedule"))
    UpdateImagePipelineRequest.add_member(:status, Shapes::ShapeRef.new(shape: PipelineStatus, location_name: "status"))
    UpdateImagePipelineRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateImagePipelineRequest.struct_class = Types::UpdateImagePipelineRequest

    UpdateImagePipelineResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    UpdateImagePipelineResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateImagePipelineResponse.add_member(:image_pipeline_arn, Shapes::ShapeRef.new(shape: ImagePipelineArn, location_name: "imagePipelineArn"))
    UpdateImagePipelineResponse.struct_class = Types::UpdateImagePipelineResponse

    UpdateInfrastructureConfigurationRequest.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, required: true, location_name: "infrastructureConfigurationArn"))
    UpdateInfrastructureConfigurationRequest.add_member(:description, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "description"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_types, Shapes::ShapeRef.new(shape: InstanceTypeList, location_name: "instanceTypes"))
    UpdateInfrastructureConfigurationRequest.add_member(:instance_profile_name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "instanceProfileName"))
    UpdateInfrastructureConfigurationRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "securityGroupIds"))
    UpdateInfrastructureConfigurationRequest.add_member(:subnet_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "subnetId"))
    UpdateInfrastructureConfigurationRequest.add_member(:logging, Shapes::ShapeRef.new(shape: Logging, location_name: "logging"))
    UpdateInfrastructureConfigurationRequest.add_member(:key_pair, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "keyPair"))
    UpdateInfrastructureConfigurationRequest.add_member(:terminate_instance_on_failure, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "terminateInstanceOnFailure"))
    UpdateInfrastructureConfigurationRequest.add_member(:sns_topic_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "snsTopicArn"))
    UpdateInfrastructureConfigurationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, required: true, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateInfrastructureConfigurationRequest.add_member(:resource_tags, Shapes::ShapeRef.new(shape: ResourceTagMap, location_name: "resourceTags"))
    UpdateInfrastructureConfigurationRequest.struct_class = Types::UpdateInfrastructureConfigurationRequest

    UpdateInfrastructureConfigurationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "requestId"))
    UpdateInfrastructureConfigurationResponse.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken"))
    UpdateInfrastructureConfigurationResponse.add_member(:infrastructure_configuration_arn, Shapes::ShapeRef.new(shape: InfrastructureConfigurationArn, location_name: "infrastructureConfigurationArn"))
    UpdateInfrastructureConfigurationResponse.struct_class = Types::UpdateInfrastructureConfigurationResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-12-02"

      api.metadata = {
        "apiVersion" => "2019-12-02",
        "endpointPrefix" => "imagebuilder",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
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
    end

  end
end
