# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Tnb
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Blob = Shapes::BlobShape.new(name: 'Blob')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CancelSolNetworkOperationInput = Shapes::StructureShape.new(name: 'CancelSolNetworkOperationInput')
    CreateSolFunctionPackageInput = Shapes::StructureShape.new(name: 'CreateSolFunctionPackageInput')
    CreateSolFunctionPackageOutput = Shapes::StructureShape.new(name: 'CreateSolFunctionPackageOutput')
    CreateSolNetworkInstanceInput = Shapes::StructureShape.new(name: 'CreateSolNetworkInstanceInput')
    CreateSolNetworkInstanceInputNsDescriptionString = Shapes::StringShape.new(name: 'CreateSolNetworkInstanceInputNsDescriptionString')
    CreateSolNetworkInstanceInputNsNameString = Shapes::StringShape.new(name: 'CreateSolNetworkInstanceInputNsNameString')
    CreateSolNetworkInstanceOutput = Shapes::StructureShape.new(name: 'CreateSolNetworkInstanceOutput')
    CreateSolNetworkPackageInput = Shapes::StructureShape.new(name: 'CreateSolNetworkPackageInput')
    CreateSolNetworkPackageOutput = Shapes::StructureShape.new(name: 'CreateSolNetworkPackageOutput')
    DeleteSolFunctionPackageInput = Shapes::StructureShape.new(name: 'DeleteSolFunctionPackageInput')
    DeleteSolNetworkInstanceInput = Shapes::StructureShape.new(name: 'DeleteSolNetworkInstanceInput')
    DeleteSolNetworkPackageInput = Shapes::StructureShape.new(name: 'DeleteSolNetworkPackageInput')
    DescriptorContentType = Shapes::StringShape.new(name: 'DescriptorContentType')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    ErrorCause = Shapes::StringShape.new(name: 'ErrorCause')
    ErrorDetails = Shapes::StringShape.new(name: 'ErrorDetails')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    FunctionArtifactMeta = Shapes::StructureShape.new(name: 'FunctionArtifactMeta')
    GetSolFunctionInstanceInput = Shapes::StructureShape.new(name: 'GetSolFunctionInstanceInput')
    GetSolFunctionInstanceMetadata = Shapes::StructureShape.new(name: 'GetSolFunctionInstanceMetadata')
    GetSolFunctionInstanceOutput = Shapes::StructureShape.new(name: 'GetSolFunctionInstanceOutput')
    GetSolFunctionPackageContentInput = Shapes::StructureShape.new(name: 'GetSolFunctionPackageContentInput')
    GetSolFunctionPackageContentOutput = Shapes::StructureShape.new(name: 'GetSolFunctionPackageContentOutput')
    GetSolFunctionPackageDescriptorInput = Shapes::StructureShape.new(name: 'GetSolFunctionPackageDescriptorInput')
    GetSolFunctionPackageDescriptorOutput = Shapes::StructureShape.new(name: 'GetSolFunctionPackageDescriptorOutput')
    GetSolFunctionPackageInput = Shapes::StructureShape.new(name: 'GetSolFunctionPackageInput')
    GetSolFunctionPackageMetadata = Shapes::StructureShape.new(name: 'GetSolFunctionPackageMetadata')
    GetSolFunctionPackageOutput = Shapes::StructureShape.new(name: 'GetSolFunctionPackageOutput')
    GetSolInstantiatedVnfInfo = Shapes::StructureShape.new(name: 'GetSolInstantiatedVnfInfo')
    GetSolNetworkInstanceInput = Shapes::StructureShape.new(name: 'GetSolNetworkInstanceInput')
    GetSolNetworkInstanceMetadata = Shapes::StructureShape.new(name: 'GetSolNetworkInstanceMetadata')
    GetSolNetworkInstanceOutput = Shapes::StructureShape.new(name: 'GetSolNetworkInstanceOutput')
    GetSolNetworkOperationInput = Shapes::StructureShape.new(name: 'GetSolNetworkOperationInput')
    GetSolNetworkOperationMetadata = Shapes::StructureShape.new(name: 'GetSolNetworkOperationMetadata')
    GetSolNetworkOperationOutput = Shapes::StructureShape.new(name: 'GetSolNetworkOperationOutput')
    GetSolNetworkOperationTaskDetails = Shapes::StructureShape.new(name: 'GetSolNetworkOperationTaskDetails')
    GetSolNetworkOperationTasksList = Shapes::ListShape.new(name: 'GetSolNetworkOperationTasksList')
    GetSolNetworkPackageContentInput = Shapes::StructureShape.new(name: 'GetSolNetworkPackageContentInput')
    GetSolNetworkPackageContentOutput = Shapes::StructureShape.new(name: 'GetSolNetworkPackageContentOutput')
    GetSolNetworkPackageDescriptorInput = Shapes::StructureShape.new(name: 'GetSolNetworkPackageDescriptorInput')
    GetSolNetworkPackageDescriptorOutput = Shapes::StructureShape.new(name: 'GetSolNetworkPackageDescriptorOutput')
    GetSolNetworkPackageInput = Shapes::StructureShape.new(name: 'GetSolNetworkPackageInput')
    GetSolNetworkPackageMetadata = Shapes::StructureShape.new(name: 'GetSolNetworkPackageMetadata')
    GetSolNetworkPackageOutput = Shapes::StructureShape.new(name: 'GetSolNetworkPackageOutput')
    GetSolVnfInfo = Shapes::StructureShape.new(name: 'GetSolVnfInfo')
    GetSolVnfcResourceInfo = Shapes::StructureShape.new(name: 'GetSolVnfcResourceInfo')
    GetSolVnfcResourceInfoList = Shapes::ListShape.new(name: 'GetSolVnfcResourceInfoList')
    GetSolVnfcResourceInfoMetadata = Shapes::StructureShape.new(name: 'GetSolVnfcResourceInfoMetadata')
    InstantiateSolNetworkInstanceInput = Shapes::StructureShape.new(name: 'InstantiateSolNetworkInstanceInput')
    InstantiateSolNetworkInstanceOutput = Shapes::StructureShape.new(name: 'InstantiateSolNetworkInstanceOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LcmOperationInfo = Shapes::StructureShape.new(name: 'LcmOperationInfo')
    LcmOperationType = Shapes::StringShape.new(name: 'LcmOperationType')
    ListSolFunctionInstanceInfo = Shapes::StructureShape.new(name: 'ListSolFunctionInstanceInfo')
    ListSolFunctionInstanceMetadata = Shapes::StructureShape.new(name: 'ListSolFunctionInstanceMetadata')
    ListSolFunctionInstanceResources = Shapes::ListShape.new(name: 'ListSolFunctionInstanceResources')
    ListSolFunctionInstancesInput = Shapes::StructureShape.new(name: 'ListSolFunctionInstancesInput')
    ListSolFunctionInstancesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSolFunctionInstancesInputMaxResultsInteger')
    ListSolFunctionInstancesOutput = Shapes::StructureShape.new(name: 'ListSolFunctionInstancesOutput')
    ListSolFunctionPackageInfo = Shapes::StructureShape.new(name: 'ListSolFunctionPackageInfo')
    ListSolFunctionPackageMetadata = Shapes::StructureShape.new(name: 'ListSolFunctionPackageMetadata')
    ListSolFunctionPackageResources = Shapes::ListShape.new(name: 'ListSolFunctionPackageResources')
    ListSolFunctionPackagesInput = Shapes::StructureShape.new(name: 'ListSolFunctionPackagesInput')
    ListSolFunctionPackagesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSolFunctionPackagesInputMaxResultsInteger')
    ListSolFunctionPackagesOutput = Shapes::StructureShape.new(name: 'ListSolFunctionPackagesOutput')
    ListSolNetworkInstanceInfo = Shapes::StructureShape.new(name: 'ListSolNetworkInstanceInfo')
    ListSolNetworkInstanceMetadata = Shapes::StructureShape.new(name: 'ListSolNetworkInstanceMetadata')
    ListSolNetworkInstanceResources = Shapes::ListShape.new(name: 'ListSolNetworkInstanceResources')
    ListSolNetworkInstancesInput = Shapes::StructureShape.new(name: 'ListSolNetworkInstancesInput')
    ListSolNetworkInstancesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSolNetworkInstancesInputMaxResultsInteger')
    ListSolNetworkInstancesOutput = Shapes::StructureShape.new(name: 'ListSolNetworkInstancesOutput')
    ListSolNetworkOperationsInfo = Shapes::StructureShape.new(name: 'ListSolNetworkOperationsInfo')
    ListSolNetworkOperationsInput = Shapes::StructureShape.new(name: 'ListSolNetworkOperationsInput')
    ListSolNetworkOperationsInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSolNetworkOperationsInputMaxResultsInteger')
    ListSolNetworkOperationsMetadata = Shapes::StructureShape.new(name: 'ListSolNetworkOperationsMetadata')
    ListSolNetworkOperationsOutput = Shapes::StructureShape.new(name: 'ListSolNetworkOperationsOutput')
    ListSolNetworkOperationsResources = Shapes::ListShape.new(name: 'ListSolNetworkOperationsResources')
    ListSolNetworkPackageInfo = Shapes::StructureShape.new(name: 'ListSolNetworkPackageInfo')
    ListSolNetworkPackageMetadata = Shapes::StructureShape.new(name: 'ListSolNetworkPackageMetadata')
    ListSolNetworkPackageResources = Shapes::ListShape.new(name: 'ListSolNetworkPackageResources')
    ListSolNetworkPackagesInput = Shapes::StructureShape.new(name: 'ListSolNetworkPackagesInput')
    ListSolNetworkPackagesInputMaxResultsInteger = Shapes::IntegerShape.new(name: 'ListSolNetworkPackagesInputMaxResultsInteger')
    ListSolNetworkPackagesOutput = Shapes::StructureShape.new(name: 'ListSolNetworkPackagesOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    NetworkArtifactMeta = Shapes::StructureShape.new(name: 'NetworkArtifactMeta')
    NsInstanceArn = Shapes::StringShape.new(name: 'NsInstanceArn')
    NsInstanceId = Shapes::StringShape.new(name: 'NsInstanceId')
    NsLcmOpOccArn = Shapes::StringShape.new(name: 'NsLcmOpOccArn')
    NsLcmOpOccId = Shapes::StringShape.new(name: 'NsLcmOpOccId')
    NsLcmOperationState = Shapes::StringShape.new(name: 'NsLcmOperationState')
    NsState = Shapes::StringShape.new(name: 'NsState')
    NsdId = Shapes::StringShape.new(name: 'NsdId')
    NsdInfoArn = Shapes::StringShape.new(name: 'NsdInfoArn')
    NsdInfoId = Shapes::StringShape.new(name: 'NsdInfoId')
    NsdOnboardingState = Shapes::StringShape.new(name: 'NsdOnboardingState')
    NsdOperationalState = Shapes::StringShape.new(name: 'NsdOperationalState')
    NsdUsageState = Shapes::StringShape.new(name: 'NsdUsageState')
    OnboardingState = Shapes::StringShape.new(name: 'OnboardingState')
    OperationalState = Shapes::StringShape.new(name: 'OperationalState')
    OverrideList = Shapes::ListShape.new(name: 'OverrideList')
    PackageContentType = Shapes::StringShape.new(name: 'PackageContentType')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ProblemDetails = Shapes::StructureShape.new(name: 'ProblemDetails')
    PutSolFunctionPackageContentInput = Shapes::StructureShape.new(name: 'PutSolFunctionPackageContentInput')
    PutSolFunctionPackageContentMetadata = Shapes::StructureShape.new(name: 'PutSolFunctionPackageContentMetadata')
    PutSolFunctionPackageContentOutput = Shapes::StructureShape.new(name: 'PutSolFunctionPackageContentOutput')
    PutSolNetworkPackageContentInput = Shapes::StructureShape.new(name: 'PutSolNetworkPackageContentInput')
    PutSolNetworkPackageContentMetadata = Shapes::StructureShape.new(name: 'PutSolNetworkPackageContentMetadata')
    PutSolNetworkPackageContentOutput = Shapes::StructureShape.new(name: 'PutSolNetworkPackageContentOutput')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    StringMap = Shapes::MapShape.new(name: 'StringMap')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TNBResourceArn = Shapes::StringShape.new(name: 'TNBResourceArn')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeys = Shapes::ListShape.new(name: 'TagKeys')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TaskStatus = Shapes::StringShape.new(name: 'TaskStatus')
    TerminateSolNetworkInstanceInput = Shapes::StructureShape.new(name: 'TerminateSolNetworkInstanceInput')
    TerminateSolNetworkInstanceOutput = Shapes::StructureShape.new(name: 'TerminateSolNetworkInstanceOutput')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    ToscaOverride = Shapes::StructureShape.new(name: 'ToscaOverride')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')
    UpdateSolFunctionPackageInput = Shapes::StructureShape.new(name: 'UpdateSolFunctionPackageInput')
    UpdateSolFunctionPackageOutput = Shapes::StructureShape.new(name: 'UpdateSolFunctionPackageOutput')
    UpdateSolNetworkInstanceInput = Shapes::StructureShape.new(name: 'UpdateSolNetworkInstanceInput')
    UpdateSolNetworkInstanceOutput = Shapes::StructureShape.new(name: 'UpdateSolNetworkInstanceOutput')
    UpdateSolNetworkModify = Shapes::StructureShape.new(name: 'UpdateSolNetworkModify')
    UpdateSolNetworkPackageInput = Shapes::StructureShape.new(name: 'UpdateSolNetworkPackageInput')
    UpdateSolNetworkPackageOutput = Shapes::StructureShape.new(name: 'UpdateSolNetworkPackageOutput')
    UpdateSolNetworkType = Shapes::StringShape.new(name: 'UpdateSolNetworkType')
    UsageState = Shapes::StringShape.new(name: 'UsageState')
    ValidateSolFunctionPackageContentInput = Shapes::StructureShape.new(name: 'ValidateSolFunctionPackageContentInput')
    ValidateSolFunctionPackageContentMetadata = Shapes::StructureShape.new(name: 'ValidateSolFunctionPackageContentMetadata')
    ValidateSolFunctionPackageContentOutput = Shapes::StructureShape.new(name: 'ValidateSolFunctionPackageContentOutput')
    ValidateSolNetworkPackageContentInput = Shapes::StructureShape.new(name: 'ValidateSolNetworkPackageContentInput')
    ValidateSolNetworkPackageContentMetadata = Shapes::StructureShape.new(name: 'ValidateSolNetworkPackageContentMetadata')
    ValidateSolNetworkPackageContentOutput = Shapes::StructureShape.new(name: 'ValidateSolNetworkPackageContentOutput')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VnfInstanceArn = Shapes::StringShape.new(name: 'VnfInstanceArn')
    VnfInstanceId = Shapes::StringShape.new(name: 'VnfInstanceId')
    VnfInstantiationState = Shapes::StringShape.new(name: 'VnfInstantiationState')
    VnfOperationalState = Shapes::StringShape.new(name: 'VnfOperationalState')
    VnfPkgArn = Shapes::StringShape.new(name: 'VnfPkgArn')
    VnfPkgId = Shapes::StringShape.new(name: 'VnfPkgId')
    VnfPkgIdList = Shapes::ListShape.new(name: 'VnfPkgIdList')
    VnfdId = Shapes::StringShape.new(name: 'VnfdId')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    CancelSolNetworkOperationInput.add_member(:ns_lcm_op_occ_id, Shapes::ShapeRef.new(shape: NsLcmOpOccId, required: true, location: "uri", location_name: "nsLcmOpOccId"))
    CancelSolNetworkOperationInput.struct_class = Types::CancelSolNetworkOperationInput

    CreateSolFunctionPackageInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolFunctionPackageInput.struct_class = Types::CreateSolFunctionPackageInput

    CreateSolFunctionPackageOutput.add_member(:arn, Shapes::ShapeRef.new(shape: VnfPkgArn, required: true, location_name: "arn"))
    CreateSolFunctionPackageOutput.add_member(:id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location_name: "id"))
    CreateSolFunctionPackageOutput.add_member(:onboarding_state, Shapes::ShapeRef.new(shape: OnboardingState, required: true, location_name: "onboardingState"))
    CreateSolFunctionPackageOutput.add_member(:operational_state, Shapes::ShapeRef.new(shape: OperationalState, required: true, location_name: "operationalState"))
    CreateSolFunctionPackageOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolFunctionPackageOutput.add_member(:usage_state, Shapes::ShapeRef.new(shape: UsageState, required: true, location_name: "usageState"))
    CreateSolFunctionPackageOutput.struct_class = Types::CreateSolFunctionPackageOutput

    CreateSolNetworkInstanceInput.add_member(:ns_description, Shapes::ShapeRef.new(shape: CreateSolNetworkInstanceInputNsDescriptionString, location_name: "nsDescription"))
    CreateSolNetworkInstanceInput.add_member(:ns_name, Shapes::ShapeRef.new(shape: CreateSolNetworkInstanceInputNsNameString, required: true, location_name: "nsName"))
    CreateSolNetworkInstanceInput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "nsdInfoId"))
    CreateSolNetworkInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolNetworkInstanceInput.struct_class = Types::CreateSolNetworkInstanceInput

    CreateSolNetworkInstanceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: NsInstanceArn, required: true, location_name: "arn"))
    CreateSolNetworkInstanceOutput.add_member(:id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location_name: "id"))
    CreateSolNetworkInstanceOutput.add_member(:ns_instance_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsInstanceName"))
    CreateSolNetworkInstanceOutput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "nsdInfoId"))
    CreateSolNetworkInstanceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolNetworkInstanceOutput.struct_class = Types::CreateSolNetworkInstanceOutput

    CreateSolNetworkPackageInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolNetworkPackageInput.struct_class = Types::CreateSolNetworkPackageInput

    CreateSolNetworkPackageOutput.add_member(:arn, Shapes::ShapeRef.new(shape: NsdInfoArn, required: true, location_name: "arn"))
    CreateSolNetworkPackageOutput.add_member(:id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "id"))
    CreateSolNetworkPackageOutput.add_member(:nsd_onboarding_state, Shapes::ShapeRef.new(shape: NsdOnboardingState, required: true, location_name: "nsdOnboardingState"))
    CreateSolNetworkPackageOutput.add_member(:nsd_operational_state, Shapes::ShapeRef.new(shape: NsdOperationalState, required: true, location_name: "nsdOperationalState"))
    CreateSolNetworkPackageOutput.add_member(:nsd_usage_state, Shapes::ShapeRef.new(shape: NsdUsageState, required: true, location_name: "nsdUsageState"))
    CreateSolNetworkPackageOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolNetworkPackageOutput.struct_class = Types::CreateSolNetworkPackageOutput

    DeleteSolFunctionPackageInput.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location: "uri", location_name: "vnfPkgId"))
    DeleteSolFunctionPackageInput.struct_class = Types::DeleteSolFunctionPackageInput

    DeleteSolNetworkInstanceInput.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location: "uri", location_name: "nsInstanceId"))
    DeleteSolNetworkInstanceInput.struct_class = Types::DeleteSolNetworkInstanceInput

    DeleteSolNetworkPackageInput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location: "uri", location_name: "nsdInfoId"))
    DeleteSolNetworkPackageInput.struct_class = Types::DeleteSolNetworkPackageInput

    ErrorInfo.add_member(:cause, Shapes::ShapeRef.new(shape: ErrorCause, location_name: "cause"))
    ErrorInfo.add_member(:details, Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "details"))
    ErrorInfo.struct_class = Types::ErrorInfo

    FunctionArtifactMeta.add_member(:overrides, Shapes::ShapeRef.new(shape: OverrideList, location_name: "overrides"))
    FunctionArtifactMeta.struct_class = Types::FunctionArtifactMeta

    GetSolFunctionInstanceInput.add_member(:vnf_instance_id, Shapes::ShapeRef.new(shape: VnfInstanceId, required: true, location: "uri", location_name: "vnfInstanceId"))
    GetSolFunctionInstanceInput.struct_class = Types::GetSolFunctionInstanceInput

    GetSolFunctionInstanceMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetSolFunctionInstanceMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    GetSolFunctionInstanceMetadata.struct_class = Types::GetSolFunctionInstanceMetadata

    GetSolFunctionInstanceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: VnfInstanceArn, required: true, location_name: "arn"))
    GetSolFunctionInstanceOutput.add_member(:id, Shapes::ShapeRef.new(shape: VnfInstanceId, required: true, location_name: "id"))
    GetSolFunctionInstanceOutput.add_member(:instantiated_vnf_info, Shapes::ShapeRef.new(shape: GetSolVnfInfo, location_name: "instantiatedVnfInfo"))
    GetSolFunctionInstanceOutput.add_member(:instantiation_state, Shapes::ShapeRef.new(shape: VnfInstantiationState, required: true, location_name: "instantiationState"))
    GetSolFunctionInstanceOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: GetSolFunctionInstanceMetadata, required: true, location_name: "metadata"))
    GetSolFunctionInstanceOutput.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location_name: "nsInstanceId"))
    GetSolFunctionInstanceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolFunctionInstanceOutput.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location_name: "vnfPkgId"))
    GetSolFunctionInstanceOutput.add_member(:vnf_product_name, Shapes::ShapeRef.new(shape: String, location_name: "vnfProductName"))
    GetSolFunctionInstanceOutput.add_member(:vnf_provider, Shapes::ShapeRef.new(shape: String, location_name: "vnfProvider"))
    GetSolFunctionInstanceOutput.add_member(:vnfd_id, Shapes::ShapeRef.new(shape: VnfdId, required: true, location_name: "vnfdId"))
    GetSolFunctionInstanceOutput.add_member(:vnfd_version, Shapes::ShapeRef.new(shape: String, location_name: "vnfdVersion"))
    GetSolFunctionInstanceOutput.struct_class = Types::GetSolFunctionInstanceOutput

    GetSolFunctionPackageContentInput.add_member(:accept, Shapes::ShapeRef.new(shape: PackageContentType, required: true, location: "header", location_name: "Accept"))
    GetSolFunctionPackageContentInput.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location: "uri", location_name: "vnfPkgId"))
    GetSolFunctionPackageContentInput.struct_class = Types::GetSolFunctionPackageContentInput

    GetSolFunctionPackageContentOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: PackageContentType, location: "header", location_name: "Content-Type"))
    GetSolFunctionPackageContentOutput.add_member(:package_content, Shapes::ShapeRef.new(shape: Blob, location_name: "packageContent"))
    GetSolFunctionPackageContentOutput.struct_class = Types::GetSolFunctionPackageContentOutput
    GetSolFunctionPackageContentOutput[:payload] = :package_content
    GetSolFunctionPackageContentOutput[:payload_member] = GetSolFunctionPackageContentOutput.member(:package_content)

    GetSolFunctionPackageDescriptorInput.add_member(:accept, Shapes::ShapeRef.new(shape: DescriptorContentType, required: true, location: "header", location_name: "Accept"))
    GetSolFunctionPackageDescriptorInput.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location: "uri", location_name: "vnfPkgId"))
    GetSolFunctionPackageDescriptorInput.struct_class = Types::GetSolFunctionPackageDescriptorInput

    GetSolFunctionPackageDescriptorOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: DescriptorContentType, location: "header", location_name: "Content-Type"))
    GetSolFunctionPackageDescriptorOutput.add_member(:vnfd, Shapes::ShapeRef.new(shape: Blob, location_name: "vnfd"))
    GetSolFunctionPackageDescriptorOutput.struct_class = Types::GetSolFunctionPackageDescriptorOutput
    GetSolFunctionPackageDescriptorOutput[:payload] = :vnfd
    GetSolFunctionPackageDescriptorOutput[:payload_member] = GetSolFunctionPackageDescriptorOutput.member(:vnfd)

    GetSolFunctionPackageInput.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location: "uri", location_name: "vnfPkgId"))
    GetSolFunctionPackageInput.struct_class = Types::GetSolFunctionPackageInput

    GetSolFunctionPackageMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetSolFunctionPackageMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    GetSolFunctionPackageMetadata.add_member(:vnfd, Shapes::ShapeRef.new(shape: FunctionArtifactMeta, location_name: "vnfd"))
    GetSolFunctionPackageMetadata.struct_class = Types::GetSolFunctionPackageMetadata

    GetSolFunctionPackageOutput.add_member(:arn, Shapes::ShapeRef.new(shape: VnfPkgArn, required: true, location_name: "arn"))
    GetSolFunctionPackageOutput.add_member(:id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location_name: "id"))
    GetSolFunctionPackageOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: GetSolFunctionPackageMetadata, location_name: "metadata"))
    GetSolFunctionPackageOutput.add_member(:onboarding_state, Shapes::ShapeRef.new(shape: OnboardingState, required: true, location_name: "onboardingState"))
    GetSolFunctionPackageOutput.add_member(:operational_state, Shapes::ShapeRef.new(shape: OperationalState, required: true, location_name: "operationalState"))
    GetSolFunctionPackageOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolFunctionPackageOutput.add_member(:usage_state, Shapes::ShapeRef.new(shape: UsageState, required: true, location_name: "usageState"))
    GetSolFunctionPackageOutput.add_member(:vnf_product_name, Shapes::ShapeRef.new(shape: String, location_name: "vnfProductName"))
    GetSolFunctionPackageOutput.add_member(:vnf_provider, Shapes::ShapeRef.new(shape: String, location_name: "vnfProvider"))
    GetSolFunctionPackageOutput.add_member(:vnfd_id, Shapes::ShapeRef.new(shape: String, location_name: "vnfdId"))
    GetSolFunctionPackageOutput.add_member(:vnfd_version, Shapes::ShapeRef.new(shape: String, location_name: "vnfdVersion"))
    GetSolFunctionPackageOutput.struct_class = Types::GetSolFunctionPackageOutput

    GetSolInstantiatedVnfInfo.add_member(:vnf_state, Shapes::ShapeRef.new(shape: VnfOperationalState, location_name: "vnfState"))
    GetSolInstantiatedVnfInfo.struct_class = Types::GetSolInstantiatedVnfInfo

    GetSolNetworkInstanceInput.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location: "uri", location_name: "nsInstanceId"))
    GetSolNetworkInstanceInput.struct_class = Types::GetSolNetworkInstanceInput

    GetSolNetworkInstanceMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetSolNetworkInstanceMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    GetSolNetworkInstanceMetadata.struct_class = Types::GetSolNetworkInstanceMetadata

    GetSolNetworkInstanceOutput.add_member(:arn, Shapes::ShapeRef.new(shape: NsInstanceArn, required: true, location_name: "arn"))
    GetSolNetworkInstanceOutput.add_member(:id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location_name: "id"))
    GetSolNetworkInstanceOutput.add_member(:lcm_op_info, Shapes::ShapeRef.new(shape: LcmOperationInfo, location_name: "lcmOpInfo"))
    GetSolNetworkInstanceOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: GetSolNetworkInstanceMetadata, required: true, location_name: "metadata"))
    GetSolNetworkInstanceOutput.add_member(:ns_instance_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsInstanceDescription"))
    GetSolNetworkInstanceOutput.add_member(:ns_instance_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsInstanceName"))
    GetSolNetworkInstanceOutput.add_member(:ns_state, Shapes::ShapeRef.new(shape: NsState, location_name: "nsState"))
    GetSolNetworkInstanceOutput.add_member(:nsd_id, Shapes::ShapeRef.new(shape: NsdId, required: true, location_name: "nsdId"))
    GetSolNetworkInstanceOutput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "nsdInfoId"))
    GetSolNetworkInstanceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolNetworkInstanceOutput.struct_class = Types::GetSolNetworkInstanceOutput

    GetSolNetworkOperationInput.add_member(:ns_lcm_op_occ_id, Shapes::ShapeRef.new(shape: NsLcmOpOccId, required: true, location: "uri", location_name: "nsLcmOpOccId"))
    GetSolNetworkOperationInput.struct_class = Types::GetSolNetworkOperationInput

    GetSolNetworkOperationMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetSolNetworkOperationMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    GetSolNetworkOperationMetadata.struct_class = Types::GetSolNetworkOperationMetadata

    GetSolNetworkOperationOutput.add_member(:arn, Shapes::ShapeRef.new(shape: NsLcmOpOccArn, required: true, location_name: "arn"))
    GetSolNetworkOperationOutput.add_member(:error, Shapes::ShapeRef.new(shape: ProblemDetails, location_name: "error"))
    GetSolNetworkOperationOutput.add_member(:id, Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "id"))
    GetSolNetworkOperationOutput.add_member(:lcm_operation_type, Shapes::ShapeRef.new(shape: LcmOperationType, location_name: "lcmOperationType"))
    GetSolNetworkOperationOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: GetSolNetworkOperationMetadata, location_name: "metadata"))
    GetSolNetworkOperationOutput.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId"))
    GetSolNetworkOperationOutput.add_member(:operation_state, Shapes::ShapeRef.new(shape: NsLcmOperationState, location_name: "operationState"))
    GetSolNetworkOperationOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolNetworkOperationOutput.add_member(:tasks, Shapes::ShapeRef.new(shape: GetSolNetworkOperationTasksList, location_name: "tasks"))
    GetSolNetworkOperationOutput.struct_class = Types::GetSolNetworkOperationOutput

    GetSolNetworkOperationTaskDetails.add_member(:task_context, Shapes::ShapeRef.new(shape: StringMap, location_name: "taskContext"))
    GetSolNetworkOperationTaskDetails.add_member(:task_end_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "taskEndTime"))
    GetSolNetworkOperationTaskDetails.add_member(:task_error_details, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "taskErrorDetails"))
    GetSolNetworkOperationTaskDetails.add_member(:task_name, Shapes::ShapeRef.new(shape: String, location_name: "taskName"))
    GetSolNetworkOperationTaskDetails.add_member(:task_start_time, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "taskStartTime"))
    GetSolNetworkOperationTaskDetails.add_member(:task_status, Shapes::ShapeRef.new(shape: TaskStatus, location_name: "taskStatus"))
    GetSolNetworkOperationTaskDetails.struct_class = Types::GetSolNetworkOperationTaskDetails

    GetSolNetworkOperationTasksList.member = Shapes::ShapeRef.new(shape: GetSolNetworkOperationTaskDetails)

    GetSolNetworkPackageContentInput.add_member(:accept, Shapes::ShapeRef.new(shape: PackageContentType, required: true, location: "header", location_name: "Accept"))
    GetSolNetworkPackageContentInput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location: "uri", location_name: "nsdInfoId"))
    GetSolNetworkPackageContentInput.struct_class = Types::GetSolNetworkPackageContentInput

    GetSolNetworkPackageContentOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: PackageContentType, location: "header", location_name: "Content-Type"))
    GetSolNetworkPackageContentOutput.add_member(:nsd_content, Shapes::ShapeRef.new(shape: Blob, location_name: "nsdContent"))
    GetSolNetworkPackageContentOutput.struct_class = Types::GetSolNetworkPackageContentOutput
    GetSolNetworkPackageContentOutput[:payload] = :nsd_content
    GetSolNetworkPackageContentOutput[:payload_member] = GetSolNetworkPackageContentOutput.member(:nsd_content)

    GetSolNetworkPackageDescriptorInput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location: "uri", location_name: "nsdInfoId"))
    GetSolNetworkPackageDescriptorInput.struct_class = Types::GetSolNetworkPackageDescriptorInput

    GetSolNetworkPackageDescriptorOutput.add_member(:content_type, Shapes::ShapeRef.new(shape: DescriptorContentType, location: "header", location_name: "Content-Type"))
    GetSolNetworkPackageDescriptorOutput.add_member(:nsd, Shapes::ShapeRef.new(shape: Blob, location_name: "nsd"))
    GetSolNetworkPackageDescriptorOutput.struct_class = Types::GetSolNetworkPackageDescriptorOutput
    GetSolNetworkPackageDescriptorOutput[:payload] = :nsd
    GetSolNetworkPackageDescriptorOutput[:payload_member] = GetSolNetworkPackageDescriptorOutput.member(:nsd)

    GetSolNetworkPackageInput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location: "uri", location_name: "nsdInfoId"))
    GetSolNetworkPackageInput.struct_class = Types::GetSolNetworkPackageInput

    GetSolNetworkPackageMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetSolNetworkPackageMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    GetSolNetworkPackageMetadata.add_member(:nsd, Shapes::ShapeRef.new(shape: NetworkArtifactMeta, location_name: "nsd"))
    GetSolNetworkPackageMetadata.struct_class = Types::GetSolNetworkPackageMetadata

    GetSolNetworkPackageOutput.add_member(:arn, Shapes::ShapeRef.new(shape: NsdInfoArn, required: true, location_name: "arn"))
    GetSolNetworkPackageOutput.add_member(:id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "id"))
    GetSolNetworkPackageOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: GetSolNetworkPackageMetadata, required: true, location_name: "metadata"))
    GetSolNetworkPackageOutput.add_member(:nsd_id, Shapes::ShapeRef.new(shape: NsdId, required: true, location_name: "nsdId"))
    GetSolNetworkPackageOutput.add_member(:nsd_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsdName"))
    GetSolNetworkPackageOutput.add_member(:nsd_onboarding_state, Shapes::ShapeRef.new(shape: NsdOnboardingState, required: true, location_name: "nsdOnboardingState"))
    GetSolNetworkPackageOutput.add_member(:nsd_operational_state, Shapes::ShapeRef.new(shape: NsdOperationalState, required: true, location_name: "nsdOperationalState"))
    GetSolNetworkPackageOutput.add_member(:nsd_usage_state, Shapes::ShapeRef.new(shape: NsdUsageState, required: true, location_name: "nsdUsageState"))
    GetSolNetworkPackageOutput.add_member(:nsd_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsdVersion"))
    GetSolNetworkPackageOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolNetworkPackageOutput.add_member(:vnf_pkg_ids, Shapes::ShapeRef.new(shape: VnfPkgIdList, required: true, location_name: "vnfPkgIds"))
    GetSolNetworkPackageOutput.struct_class = Types::GetSolNetworkPackageOutput

    GetSolVnfInfo.add_member(:vnf_state, Shapes::ShapeRef.new(shape: VnfOperationalState, location_name: "vnfState"))
    GetSolVnfInfo.add_member(:vnfc_resource_info, Shapes::ShapeRef.new(shape: GetSolVnfcResourceInfoList, location_name: "vnfcResourceInfo"))
    GetSolVnfInfo.struct_class = Types::GetSolVnfInfo

    GetSolVnfcResourceInfo.add_member(:metadata, Shapes::ShapeRef.new(shape: GetSolVnfcResourceInfoMetadata, location_name: "metadata"))
    GetSolVnfcResourceInfo.struct_class = Types::GetSolVnfcResourceInfo

    GetSolVnfcResourceInfoList.member = Shapes::ShapeRef.new(shape: GetSolVnfcResourceInfo)

    GetSolVnfcResourceInfoMetadata.add_member(:cluster, Shapes::ShapeRef.new(shape: String, location_name: "cluster"))
    GetSolVnfcResourceInfoMetadata.add_member(:helm_chart, Shapes::ShapeRef.new(shape: String, location_name: "helmChart"))
    GetSolVnfcResourceInfoMetadata.add_member(:node_group, Shapes::ShapeRef.new(shape: String, location_name: "nodeGroup"))
    GetSolVnfcResourceInfoMetadata.struct_class = Types::GetSolVnfcResourceInfoMetadata

    InstantiateSolNetworkInstanceInput.add_member(:additional_params_for_ns, Shapes::ShapeRef.new(shape: Document, location_name: "additionalParamsForNs"))
    InstantiateSolNetworkInstanceInput.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "dry_run"))
    InstantiateSolNetworkInstanceInput.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location: "uri", location_name: "nsInstanceId"))
    InstantiateSolNetworkInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    InstantiateSolNetworkInstanceInput.struct_class = Types::InstantiateSolNetworkInstanceInput

    InstantiateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, Shapes::ShapeRef.new(shape: NsLcmOpOccId, required: true, location_name: "nsLcmOpOccId"))
    InstantiateSolNetworkInstanceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    InstantiateSolNetworkInstanceOutput.struct_class = Types::InstantiateSolNetworkInstanceOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LcmOperationInfo.add_member(:ns_lcm_op_occ_id, Shapes::ShapeRef.new(shape: NsLcmOpOccId, required: true, location_name: "nsLcmOpOccId"))
    LcmOperationInfo.struct_class = Types::LcmOperationInfo

    ListSolFunctionInstanceInfo.add_member(:arn, Shapes::ShapeRef.new(shape: VnfInstanceArn, required: true, location_name: "arn"))
    ListSolFunctionInstanceInfo.add_member(:id, Shapes::ShapeRef.new(shape: VnfInstanceId, required: true, location_name: "id"))
    ListSolFunctionInstanceInfo.add_member(:instantiated_vnf_info, Shapes::ShapeRef.new(shape: GetSolInstantiatedVnfInfo, location_name: "instantiatedVnfInfo"))
    ListSolFunctionInstanceInfo.add_member(:instantiation_state, Shapes::ShapeRef.new(shape: VnfInstantiationState, required: true, location_name: "instantiationState"))
    ListSolFunctionInstanceInfo.add_member(:metadata, Shapes::ShapeRef.new(shape: ListSolFunctionInstanceMetadata, required: true, location_name: "metadata"))
    ListSolFunctionInstanceInfo.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location_name: "nsInstanceId"))
    ListSolFunctionInstanceInfo.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location_name: "vnfPkgId"))
    ListSolFunctionInstanceInfo.add_member(:vnf_pkg_name, Shapes::ShapeRef.new(shape: String, location_name: "vnfPkgName"))
    ListSolFunctionInstanceInfo.struct_class = Types::ListSolFunctionInstanceInfo

    ListSolFunctionInstanceMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListSolFunctionInstanceMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    ListSolFunctionInstanceMetadata.struct_class = Types::ListSolFunctionInstanceMetadata

    ListSolFunctionInstanceResources.member = Shapes::ShapeRef.new(shape: ListSolFunctionInstanceInfo)

    ListSolFunctionInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSolFunctionInstancesInputMaxResultsInteger, location: "querystring", location_name: "max_results"))
    ListSolFunctionInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextpage_opaque_marker"))
    ListSolFunctionInstancesInput.struct_class = Types::ListSolFunctionInstancesInput

    ListSolFunctionInstancesOutput.add_member(:function_instances, Shapes::ShapeRef.new(shape: ListSolFunctionInstanceResources, location_name: "functionInstances"))
    ListSolFunctionInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolFunctionInstancesOutput.struct_class = Types::ListSolFunctionInstancesOutput

    ListSolFunctionPackageInfo.add_member(:arn, Shapes::ShapeRef.new(shape: VnfPkgArn, required: true, location_name: "arn"))
    ListSolFunctionPackageInfo.add_member(:id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location_name: "id"))
    ListSolFunctionPackageInfo.add_member(:metadata, Shapes::ShapeRef.new(shape: ListSolFunctionPackageMetadata, location_name: "metadata"))
    ListSolFunctionPackageInfo.add_member(:onboarding_state, Shapes::ShapeRef.new(shape: OnboardingState, required: true, location_name: "onboardingState"))
    ListSolFunctionPackageInfo.add_member(:operational_state, Shapes::ShapeRef.new(shape: OperationalState, required: true, location_name: "operationalState"))
    ListSolFunctionPackageInfo.add_member(:usage_state, Shapes::ShapeRef.new(shape: UsageState, required: true, location_name: "usageState"))
    ListSolFunctionPackageInfo.add_member(:vnf_product_name, Shapes::ShapeRef.new(shape: String, location_name: "vnfProductName"))
    ListSolFunctionPackageInfo.add_member(:vnf_provider, Shapes::ShapeRef.new(shape: String, location_name: "vnfProvider"))
    ListSolFunctionPackageInfo.add_member(:vnfd_id, Shapes::ShapeRef.new(shape: String, location_name: "vnfdId"))
    ListSolFunctionPackageInfo.add_member(:vnfd_version, Shapes::ShapeRef.new(shape: String, location_name: "vnfdVersion"))
    ListSolFunctionPackageInfo.struct_class = Types::ListSolFunctionPackageInfo

    ListSolFunctionPackageMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListSolFunctionPackageMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    ListSolFunctionPackageMetadata.struct_class = Types::ListSolFunctionPackageMetadata

    ListSolFunctionPackageResources.member = Shapes::ShapeRef.new(shape: ListSolFunctionPackageInfo)

    ListSolFunctionPackagesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSolFunctionPackagesInputMaxResultsInteger, location: "querystring", location_name: "max_results"))
    ListSolFunctionPackagesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextpage_opaque_marker"))
    ListSolFunctionPackagesInput.struct_class = Types::ListSolFunctionPackagesInput

    ListSolFunctionPackagesOutput.add_member(:function_packages, Shapes::ShapeRef.new(shape: ListSolFunctionPackageResources, required: true, location_name: "functionPackages"))
    ListSolFunctionPackagesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolFunctionPackagesOutput.struct_class = Types::ListSolFunctionPackagesOutput

    ListSolNetworkInstanceInfo.add_member(:arn, Shapes::ShapeRef.new(shape: NsInstanceArn, required: true, location_name: "arn"))
    ListSolNetworkInstanceInfo.add_member(:id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location_name: "id"))
    ListSolNetworkInstanceInfo.add_member(:metadata, Shapes::ShapeRef.new(shape: ListSolNetworkInstanceMetadata, required: true, location_name: "metadata"))
    ListSolNetworkInstanceInfo.add_member(:ns_instance_description, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsInstanceDescription"))
    ListSolNetworkInstanceInfo.add_member(:ns_instance_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsInstanceName"))
    ListSolNetworkInstanceInfo.add_member(:ns_state, Shapes::ShapeRef.new(shape: NsState, required: true, location_name: "nsState"))
    ListSolNetworkInstanceInfo.add_member(:nsd_id, Shapes::ShapeRef.new(shape: NsdId, required: true, location_name: "nsdId"))
    ListSolNetworkInstanceInfo.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "nsdInfoId"))
    ListSolNetworkInstanceInfo.struct_class = Types::ListSolNetworkInstanceInfo

    ListSolNetworkInstanceMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListSolNetworkInstanceMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    ListSolNetworkInstanceMetadata.struct_class = Types::ListSolNetworkInstanceMetadata

    ListSolNetworkInstanceResources.member = Shapes::ShapeRef.new(shape: ListSolNetworkInstanceInfo)

    ListSolNetworkInstancesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSolNetworkInstancesInputMaxResultsInteger, location: "querystring", location_name: "max_results"))
    ListSolNetworkInstancesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextpage_opaque_marker"))
    ListSolNetworkInstancesInput.struct_class = Types::ListSolNetworkInstancesInput

    ListSolNetworkInstancesOutput.add_member(:network_instances, Shapes::ShapeRef.new(shape: ListSolNetworkInstanceResources, location_name: "networkInstances"))
    ListSolNetworkInstancesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolNetworkInstancesOutput.struct_class = Types::ListSolNetworkInstancesOutput

    ListSolNetworkOperationsInfo.add_member(:arn, Shapes::ShapeRef.new(shape: NsLcmOpOccArn, required: true, location_name: "arn"))
    ListSolNetworkOperationsInfo.add_member(:error, Shapes::ShapeRef.new(shape: ProblemDetails, location_name: "error"))
    ListSolNetworkOperationsInfo.add_member(:id, Shapes::ShapeRef.new(shape: NsLcmOpOccId, required: true, location_name: "id"))
    ListSolNetworkOperationsInfo.add_member(:lcm_operation_type, Shapes::ShapeRef.new(shape: LcmOperationType, required: true, location_name: "lcmOperationType"))
    ListSolNetworkOperationsInfo.add_member(:metadata, Shapes::ShapeRef.new(shape: ListSolNetworkOperationsMetadata, location_name: "metadata"))
    ListSolNetworkOperationsInfo.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location_name: "nsInstanceId"))
    ListSolNetworkOperationsInfo.add_member(:operation_state, Shapes::ShapeRef.new(shape: NsLcmOperationState, required: true, location_name: "operationState"))
    ListSolNetworkOperationsInfo.struct_class = Types::ListSolNetworkOperationsInfo

    ListSolNetworkOperationsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSolNetworkOperationsInputMaxResultsInteger, location: "querystring", location_name: "max_results"))
    ListSolNetworkOperationsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextpage_opaque_marker"))
    ListSolNetworkOperationsInput.struct_class = Types::ListSolNetworkOperationsInput

    ListSolNetworkOperationsMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListSolNetworkOperationsMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    ListSolNetworkOperationsMetadata.struct_class = Types::ListSolNetworkOperationsMetadata

    ListSolNetworkOperationsOutput.add_member(:network_operations, Shapes::ShapeRef.new(shape: ListSolNetworkOperationsResources, location_name: "networkOperations"))
    ListSolNetworkOperationsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolNetworkOperationsOutput.struct_class = Types::ListSolNetworkOperationsOutput

    ListSolNetworkOperationsResources.member = Shapes::ShapeRef.new(shape: ListSolNetworkOperationsInfo)

    ListSolNetworkPackageInfo.add_member(:arn, Shapes::ShapeRef.new(shape: NsdInfoArn, required: true, location_name: "arn"))
    ListSolNetworkPackageInfo.add_member(:id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "id"))
    ListSolNetworkPackageInfo.add_member(:metadata, Shapes::ShapeRef.new(shape: ListSolNetworkPackageMetadata, required: true, location_name: "metadata"))
    ListSolNetworkPackageInfo.add_member(:nsd_designer, Shapes::ShapeRef.new(shape: String, location_name: "nsdDesigner"))
    ListSolNetworkPackageInfo.add_member(:nsd_id, Shapes::ShapeRef.new(shape: String, location_name: "nsdId"))
    ListSolNetworkPackageInfo.add_member(:nsd_invariant_id, Shapes::ShapeRef.new(shape: String, location_name: "nsdInvariantId"))
    ListSolNetworkPackageInfo.add_member(:nsd_name, Shapes::ShapeRef.new(shape: String, location_name: "nsdName"))
    ListSolNetworkPackageInfo.add_member(:nsd_onboarding_state, Shapes::ShapeRef.new(shape: NsdOnboardingState, required: true, location_name: "nsdOnboardingState"))
    ListSolNetworkPackageInfo.add_member(:nsd_operational_state, Shapes::ShapeRef.new(shape: NsdOperationalState, required: true, location_name: "nsdOperationalState"))
    ListSolNetworkPackageInfo.add_member(:nsd_usage_state, Shapes::ShapeRef.new(shape: NsdUsageState, required: true, location_name: "nsdUsageState"))
    ListSolNetworkPackageInfo.add_member(:nsd_version, Shapes::ShapeRef.new(shape: String, location_name: "nsdVersion"))
    ListSolNetworkPackageInfo.add_member(:vnf_pkg_ids, Shapes::ShapeRef.new(shape: VnfPkgIdList, location_name: "vnfPkgIds"))
    ListSolNetworkPackageInfo.struct_class = Types::ListSolNetworkPackageInfo

    ListSolNetworkPackageMetadata.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    ListSolNetworkPackageMetadata.add_member(:last_modified, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "lastModified"))
    ListSolNetworkPackageMetadata.struct_class = Types::ListSolNetworkPackageMetadata

    ListSolNetworkPackageResources.member = Shapes::ShapeRef.new(shape: ListSolNetworkPackageInfo)

    ListSolNetworkPackagesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ListSolNetworkPackagesInputMaxResultsInteger, location: "querystring", location_name: "max_results"))
    ListSolNetworkPackagesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextpage_opaque_marker"))
    ListSolNetworkPackagesInput.struct_class = Types::ListSolNetworkPackagesInput

    ListSolNetworkPackagesOutput.add_member(:network_packages, Shapes::ShapeRef.new(shape: ListSolNetworkPackageResources, required: true, location_name: "networkPackages"))
    ListSolNetworkPackagesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolNetworkPackagesOutput.struct_class = Types::ListSolNetworkPackagesOutput

    ListTagsForResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TNBResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    NetworkArtifactMeta.add_member(:overrides, Shapes::ShapeRef.new(shape: OverrideList, location_name: "overrides"))
    NetworkArtifactMeta.struct_class = Types::NetworkArtifactMeta

    OverrideList.member = Shapes::ShapeRef.new(shape: ToscaOverride)

    ProblemDetails.add_member(:detail, Shapes::ShapeRef.new(shape: String, required: true, location_name: "detail"))
    ProblemDetails.add_member(:title, Shapes::ShapeRef.new(shape: String, location_name: "title"))
    ProblemDetails.struct_class = Types::ProblemDetails

    PutSolFunctionPackageContentInput.add_member(:content_type, Shapes::ShapeRef.new(shape: PackageContentType, location: "header", location_name: "Content-Type"))
    PutSolFunctionPackageContentInput.add_member(:file, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "file"))
    PutSolFunctionPackageContentInput.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location: "uri", location_name: "vnfPkgId"))
    PutSolFunctionPackageContentInput.struct_class = Types::PutSolFunctionPackageContentInput
    PutSolFunctionPackageContentInput[:payload] = :file
    PutSolFunctionPackageContentInput[:payload_member] = PutSolFunctionPackageContentInput.member(:file)

    PutSolFunctionPackageContentMetadata.add_member(:vnfd, Shapes::ShapeRef.new(shape: FunctionArtifactMeta, location_name: "vnfd"))
    PutSolFunctionPackageContentMetadata.struct_class = Types::PutSolFunctionPackageContentMetadata

    PutSolFunctionPackageContentOutput.add_member(:id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location_name: "id"))
    PutSolFunctionPackageContentOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: PutSolFunctionPackageContentMetadata, required: true, location_name: "metadata"))
    PutSolFunctionPackageContentOutput.add_member(:vnf_product_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vnfProductName"))
    PutSolFunctionPackageContentOutput.add_member(:vnf_provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vnfProvider"))
    PutSolFunctionPackageContentOutput.add_member(:vnfd_id, Shapes::ShapeRef.new(shape: VnfdId, required: true, location_name: "vnfdId"))
    PutSolFunctionPackageContentOutput.add_member(:vnfd_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vnfdVersion"))
    PutSolFunctionPackageContentOutput.struct_class = Types::PutSolFunctionPackageContentOutput

    PutSolNetworkPackageContentInput.add_member(:content_type, Shapes::ShapeRef.new(shape: PackageContentType, location: "header", location_name: "Content-Type"))
    PutSolNetworkPackageContentInput.add_member(:file, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "file"))
    PutSolNetworkPackageContentInput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location: "uri", location_name: "nsdInfoId"))
    PutSolNetworkPackageContentInput.struct_class = Types::PutSolNetworkPackageContentInput
    PutSolNetworkPackageContentInput[:payload] = :file
    PutSolNetworkPackageContentInput[:payload_member] = PutSolNetworkPackageContentInput.member(:file)

    PutSolNetworkPackageContentMetadata.add_member(:nsd, Shapes::ShapeRef.new(shape: NetworkArtifactMeta, location_name: "nsd"))
    PutSolNetworkPackageContentMetadata.struct_class = Types::PutSolNetworkPackageContentMetadata

    PutSolNetworkPackageContentOutput.add_member(:arn, Shapes::ShapeRef.new(shape: NsdInfoArn, required: true, location_name: "arn"))
    PutSolNetworkPackageContentOutput.add_member(:id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "id"))
    PutSolNetworkPackageContentOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: PutSolNetworkPackageContentMetadata, required: true, location_name: "metadata"))
    PutSolNetworkPackageContentOutput.add_member(:nsd_id, Shapes::ShapeRef.new(shape: NsdId, required: true, location_name: "nsdId"))
    PutSolNetworkPackageContentOutput.add_member(:nsd_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsdName"))
    PutSolNetworkPackageContentOutput.add_member(:nsd_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsdVersion"))
    PutSolNetworkPackageContentOutput.add_member(:vnf_pkg_ids, Shapes::ShapeRef.new(shape: VnfPkgIdList, required: true, location_name: "vnfPkgIds"))
    PutSolNetworkPackageContentOutput.struct_class = Types::PutSolNetworkPackageContentOutput

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StringMap.key = Shapes::ShapeRef.new(shape: String)
    StringMap.value = Shapes::ShapeRef.new(shape: String)

    TagKeys.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TNBResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    TerminateSolNetworkInstanceInput.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location: "uri", location_name: "nsInstanceId"))
    TerminateSolNetworkInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    TerminateSolNetworkInstanceInput.struct_class = Types::TerminateSolNetworkInstanceInput

    TerminateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "nsLcmOpOccId"))
    TerminateSolNetworkInstanceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    TerminateSolNetworkInstanceOutput.struct_class = Types::TerminateSolNetworkInstanceOutput

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ToscaOverride.add_member(:default_value, Shapes::ShapeRef.new(shape: String, location_name: "defaultValue"))
    ToscaOverride.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    ToscaOverride.struct_class = Types::ToscaOverride

    UntagResourceInput.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TNBResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeys, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput

    UpdateSolFunctionPackageInput.add_member(:operational_state, Shapes::ShapeRef.new(shape: OperationalState, required: true, location_name: "operationalState"))
    UpdateSolFunctionPackageInput.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location: "uri", location_name: "vnfPkgId"))
    UpdateSolFunctionPackageInput.struct_class = Types::UpdateSolFunctionPackageInput

    UpdateSolFunctionPackageOutput.add_member(:operational_state, Shapes::ShapeRef.new(shape: OperationalState, required: true, location_name: "operationalState"))
    UpdateSolFunctionPackageOutput.struct_class = Types::UpdateSolFunctionPackageOutput

    UpdateSolNetworkInstanceInput.add_member(:modify_vnf_info_data, Shapes::ShapeRef.new(shape: UpdateSolNetworkModify, location_name: "modifyVnfInfoData"))
    UpdateSolNetworkInstanceInput.add_member(:ns_instance_id, Shapes::ShapeRef.new(shape: NsInstanceId, required: true, location: "uri", location_name: "nsInstanceId"))
    UpdateSolNetworkInstanceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateSolNetworkInstanceInput.add_member(:update_type, Shapes::ShapeRef.new(shape: UpdateSolNetworkType, required: true, location_name: "updateType"))
    UpdateSolNetworkInstanceInput.struct_class = Types::UpdateSolNetworkInstanceInput

    UpdateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "nsLcmOpOccId"))
    UpdateSolNetworkInstanceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateSolNetworkInstanceOutput.struct_class = Types::UpdateSolNetworkInstanceOutput

    UpdateSolNetworkModify.add_member(:vnf_configurable_properties, Shapes::ShapeRef.new(shape: Document, required: true, location_name: "vnfConfigurableProperties"))
    UpdateSolNetworkModify.add_member(:vnf_instance_id, Shapes::ShapeRef.new(shape: VnfInstanceId, required: true, location_name: "vnfInstanceId"))
    UpdateSolNetworkModify.struct_class = Types::UpdateSolNetworkModify

    UpdateSolNetworkPackageInput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location: "uri", location_name: "nsdInfoId"))
    UpdateSolNetworkPackageInput.add_member(:nsd_operational_state, Shapes::ShapeRef.new(shape: NsdOperationalState, required: true, location_name: "nsdOperationalState"))
    UpdateSolNetworkPackageInput.struct_class = Types::UpdateSolNetworkPackageInput

    UpdateSolNetworkPackageOutput.add_member(:nsd_operational_state, Shapes::ShapeRef.new(shape: NsdOperationalState, required: true, location_name: "nsdOperationalState"))
    UpdateSolNetworkPackageOutput.struct_class = Types::UpdateSolNetworkPackageOutput

    ValidateSolFunctionPackageContentInput.add_member(:content_type, Shapes::ShapeRef.new(shape: PackageContentType, location: "header", location_name: "Content-Type"))
    ValidateSolFunctionPackageContentInput.add_member(:file, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "file"))
    ValidateSolFunctionPackageContentInput.add_member(:vnf_pkg_id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location: "uri", location_name: "vnfPkgId"))
    ValidateSolFunctionPackageContentInput.struct_class = Types::ValidateSolFunctionPackageContentInput
    ValidateSolFunctionPackageContentInput[:payload] = :file
    ValidateSolFunctionPackageContentInput[:payload_member] = ValidateSolFunctionPackageContentInput.member(:file)

    ValidateSolFunctionPackageContentMetadata.add_member(:vnfd, Shapes::ShapeRef.new(shape: FunctionArtifactMeta, location_name: "vnfd"))
    ValidateSolFunctionPackageContentMetadata.struct_class = Types::ValidateSolFunctionPackageContentMetadata

    ValidateSolFunctionPackageContentOutput.add_member(:id, Shapes::ShapeRef.new(shape: VnfPkgId, required: true, location_name: "id"))
    ValidateSolFunctionPackageContentOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: ValidateSolFunctionPackageContentMetadata, required: true, location_name: "metadata"))
    ValidateSolFunctionPackageContentOutput.add_member(:vnf_product_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vnfProductName"))
    ValidateSolFunctionPackageContentOutput.add_member(:vnf_provider, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vnfProvider"))
    ValidateSolFunctionPackageContentOutput.add_member(:vnfd_id, Shapes::ShapeRef.new(shape: VnfdId, required: true, location_name: "vnfdId"))
    ValidateSolFunctionPackageContentOutput.add_member(:vnfd_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "vnfdVersion"))
    ValidateSolFunctionPackageContentOutput.struct_class = Types::ValidateSolFunctionPackageContentOutput

    ValidateSolNetworkPackageContentInput.add_member(:content_type, Shapes::ShapeRef.new(shape: PackageContentType, location: "header", location_name: "Content-Type"))
    ValidateSolNetworkPackageContentInput.add_member(:file, Shapes::ShapeRef.new(shape: Blob, required: true, location_name: "file"))
    ValidateSolNetworkPackageContentInput.add_member(:nsd_info_id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location: "uri", location_name: "nsdInfoId"))
    ValidateSolNetworkPackageContentInput.struct_class = Types::ValidateSolNetworkPackageContentInput
    ValidateSolNetworkPackageContentInput[:payload] = :file
    ValidateSolNetworkPackageContentInput[:payload_member] = ValidateSolNetworkPackageContentInput.member(:file)

    ValidateSolNetworkPackageContentMetadata.add_member(:nsd, Shapes::ShapeRef.new(shape: NetworkArtifactMeta, location_name: "nsd"))
    ValidateSolNetworkPackageContentMetadata.struct_class = Types::ValidateSolNetworkPackageContentMetadata

    ValidateSolNetworkPackageContentOutput.add_member(:arn, Shapes::ShapeRef.new(shape: NsdInfoArn, required: true, location_name: "arn"))
    ValidateSolNetworkPackageContentOutput.add_member(:id, Shapes::ShapeRef.new(shape: NsdInfoId, required: true, location_name: "id"))
    ValidateSolNetworkPackageContentOutput.add_member(:metadata, Shapes::ShapeRef.new(shape: ValidateSolNetworkPackageContentMetadata, required: true, location_name: "metadata"))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_id, Shapes::ShapeRef.new(shape: NsdId, required: true, location_name: "nsdId"))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsdName"))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "nsdVersion"))
    ValidateSolNetworkPackageContentOutput.add_member(:vnf_pkg_ids, Shapes::ShapeRef.new(shape: VnfPkgIdList, required: true, location_name: "vnfPkgIds"))
    ValidateSolNetworkPackageContentOutput.struct_class = Types::ValidateSolNetworkPackageContentOutput

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VnfPkgIdList.member = Shapes::ShapeRef.new(shape: VnfPkgId)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2008-10-21"

      api.metadata = {
        "apiVersion" => "2008-10-21",
        "endpointPrefix" => "tnb",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Telco Network Builder",
        "serviceId" => "tnb",
        "signatureVersion" => "v4",
        "signingName" => "tnb",
        "uid" => "tnb-2008-10-21",
      }

      api.add_operation(:cancel_sol_network_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelSolNetworkOperation"
        o.http_method = "POST"
        o.http_request_uri = "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}/cancel"
        o.input = Shapes::ShapeRef.new(shape: CancelSolNetworkOperationInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_sol_function_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSolFunctionPackage"
        o.http_method = "POST"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages"
        o.input = Shapes::ShapeRef.new(shape: CreateSolFunctionPackageInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSolFunctionPackageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_sol_network_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSolNetworkInstance"
        o.http_method = "POST"
        o.http_request_uri = "/sol/nslcm/v1/ns_instances"
        o.input = Shapes::ShapeRef.new(shape: CreateSolNetworkInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSolNetworkInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_sol_network_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSolNetworkPackage"
        o.http_method = "POST"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors"
        o.input = Shapes::ShapeRef.new(shape: CreateSolNetworkPackageInput)
        o.output = Shapes::ShapeRef.new(shape: CreateSolNetworkPackageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_sol_function_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSolFunctionPackage"
        o.http_method = "DELETE"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSolFunctionPackageInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_sol_network_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSolNetworkInstance"
        o.http_method = "DELETE"
        o.http_request_uri = "/sol/nslcm/v1/ns_instances/{nsInstanceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSolNetworkInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_sol_network_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSolNetworkPackage"
        o.http_method = "DELETE"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSolNetworkPackageInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_function_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolFunctionInstance"
        o.http_method = "GET"
        o.http_request_uri = "/sol/vnflcm/v1/vnf_instances/{vnfInstanceId}"
        o.input = Shapes::ShapeRef.new(shape: GetSolFunctionInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolFunctionInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_function_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolFunctionPackage"
        o.http_method = "GET"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}"
        o.input = Shapes::ShapeRef.new(shape: GetSolFunctionPackageInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolFunctionPackageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_function_package_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolFunctionPackageContent"
        o.http_method = "GET"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content"
        o.input = Shapes::ShapeRef.new(shape: GetSolFunctionPackageContentInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolFunctionPackageContentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_function_package_descriptor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolFunctionPackageDescriptor"
        o.http_method = "GET"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/vnfd"
        o.input = Shapes::ShapeRef.new(shape: GetSolFunctionPackageDescriptorInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolFunctionPackageDescriptorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_network_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolNetworkInstance"
        o.http_method = "GET"
        o.http_request_uri = "/sol/nslcm/v1/ns_instances/{nsInstanceId}"
        o.input = Shapes::ShapeRef.new(shape: GetSolNetworkInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolNetworkInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_network_operation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolNetworkOperation"
        o.http_method = "GET"
        o.http_request_uri = "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}"
        o.input = Shapes::ShapeRef.new(shape: GetSolNetworkOperationInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolNetworkOperationOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_network_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolNetworkPackage"
        o.http_method = "GET"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}"
        o.input = Shapes::ShapeRef.new(shape: GetSolNetworkPackageInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolNetworkPackageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_network_package_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolNetworkPackageContent"
        o.http_method = "GET"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content"
        o.input = Shapes::ShapeRef.new(shape: GetSolNetworkPackageContentInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolNetworkPackageContentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_sol_network_package_descriptor, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSolNetworkPackageDescriptor"
        o.http_method = "GET"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd"
        o.input = Shapes::ShapeRef.new(shape: GetSolNetworkPackageDescriptorInput)
        o.output = Shapes::ShapeRef.new(shape: GetSolNetworkPackageDescriptorOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:instantiate_sol_network_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "InstantiateSolNetworkInstance"
        o.http_method = "POST"
        o.http_request_uri = "/sol/nslcm/v1/ns_instances/{nsInstanceId}/instantiate"
        o.input = Shapes::ShapeRef.new(shape: InstantiateSolNetworkInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: InstantiateSolNetworkInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_sol_function_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolFunctionInstances"
        o.http_method = "GET"
        o.http_request_uri = "/sol/vnflcm/v1/vnf_instances"
        o.input = Shapes::ShapeRef.new(shape: ListSolFunctionInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSolFunctionInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sol_function_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolFunctionPackages"
        o.http_method = "GET"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages"
        o.input = Shapes::ShapeRef.new(shape: ListSolFunctionPackagesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSolFunctionPackagesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sol_network_instances, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolNetworkInstances"
        o.http_method = "GET"
        o.http_request_uri = "/sol/nslcm/v1/ns_instances"
        o.input = Shapes::ShapeRef.new(shape: ListSolNetworkInstancesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSolNetworkInstancesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sol_network_operations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolNetworkOperations"
        o.http_method = "GET"
        o.http_request_uri = "/sol/nslcm/v1/ns_lcm_op_occs"
        o.input = Shapes::ShapeRef.new(shape: ListSolNetworkOperationsInput)
        o.output = Shapes::ShapeRef.new(shape: ListSolNetworkOperationsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_sol_network_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSolNetworkPackages"
        o.http_method = "GET"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors"
        o.input = Shapes::ShapeRef.new(shape: ListSolNetworkPackagesInput)
        o.output = Shapes::ShapeRef.new(shape: ListSolNetworkPackagesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
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
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_sol_function_package_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSolFunctionPackageContent"
        o.http_method = "PUT"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content"
        o.input = Shapes::ShapeRef.new(shape: PutSolFunctionPackageContentInput)
        o.output = Shapes::ShapeRef.new(shape: PutSolFunctionPackageContentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:put_sol_network_package_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutSolNetworkPackageContent"
        o.http_method = "PUT"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content"
        o.input = Shapes::ShapeRef.new(shape: PutSolNetworkPackageContentInput)
        o.output = Shapes::ShapeRef.new(shape: PutSolNetworkPackageContentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:terminate_sol_network_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TerminateSolNetworkInstance"
        o.http_method = "POST"
        o.http_request_uri = "/sol/nslcm/v1/ns_instances/{nsInstanceId}/terminate"
        o.input = Shapes::ShapeRef.new(shape: TerminateSolNetworkInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: TerminateSolNetworkInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_sol_function_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSolFunctionPackage"
        o.http_method = "PATCH"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSolFunctionPackageInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSolFunctionPackageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_sol_network_instance, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSolNetworkInstance"
        o.http_method = "POST"
        o.http_request_uri = "/sol/nslcm/v1/ns_instances/{nsInstanceId}/update"
        o.input = Shapes::ShapeRef.new(shape: UpdateSolNetworkInstanceInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSolNetworkInstanceOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:update_sol_network_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSolNetworkPackage"
        o.http_method = "PATCH"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSolNetworkPackageInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateSolNetworkPackageOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:validate_sol_function_package_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateSolFunctionPackageContent"
        o.http_method = "PUT"
        o.http_request_uri = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content/validate"
        o.input = Shapes::ShapeRef.new(shape: ValidateSolFunctionPackageContentInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateSolFunctionPackageContentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:validate_sol_network_package_content, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ValidateSolNetworkPackageContent"
        o.http_method = "PUT"
        o.http_request_uri = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content/validate"
        o.input = Shapes::ShapeRef.new(shape: ValidateSolNetworkPackageContentInput)
        o.output = Shapes::ShapeRef.new(shape: ValidateSolNetworkPackageContentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
