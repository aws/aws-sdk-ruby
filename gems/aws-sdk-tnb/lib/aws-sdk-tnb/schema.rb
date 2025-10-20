# frozen_string_literal: true

# This is generated code!

module Aws::Tnb
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    CancelSolNetworkOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#CancelSolNetworkOperationInput", name: "CancelSolNetworkOperationInput")
    CreateSolFunctionPackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#CreateSolFunctionPackageInput", name: "CreateSolFunctionPackageInput")
    CreateSolFunctionPackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#CreateSolFunctionPackageOutput", name: "CreateSolFunctionPackageOutput")
    CreateSolNetworkInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#CreateSolNetworkInstanceInput", name: "CreateSolNetworkInstanceInput")
    CreateSolNetworkInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#CreateSolNetworkInstanceOutput", name: "CreateSolNetworkInstanceOutput")
    CreateSolNetworkPackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#CreateSolNetworkPackageInput", name: "CreateSolNetworkPackageInput")
    CreateSolNetworkPackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#CreateSolNetworkPackageOutput", name: "CreateSolNetworkPackageOutput")
    DeleteSolFunctionPackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#DeleteSolFunctionPackageInput", name: "DeleteSolFunctionPackageInput")
    DeleteSolNetworkInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#DeleteSolNetworkInstanceInput", name: "DeleteSolNetworkInstanceInput")
    DeleteSolNetworkPackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#DeleteSolNetworkPackageInput", name: "DeleteSolNetworkPackageInput")
    DescriptorContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#DescriptorContentType", name: "DescriptorContentType")
    ErrorCause = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#ErrorCause", name: "ErrorCause", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    ErrorDetails = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#ErrorDetails", name: "ErrorDetails", traits: {"smithy.api#length" => {"max" => 10240}})
    ErrorInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ErrorInfo", name: "ErrorInfo")
    FunctionArtifactMeta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#FunctionArtifactMeta", name: "FunctionArtifactMeta")
    GetSolFunctionInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionInstanceInput", name: "GetSolFunctionInstanceInput")
    GetSolFunctionInstanceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionInstanceMetadata", name: "GetSolFunctionInstanceMetadata")
    GetSolFunctionInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionInstanceOutput", name: "GetSolFunctionInstanceOutput")
    GetSolFunctionPackageContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionPackageContentInput", name: "GetSolFunctionPackageContentInput")
    GetSolFunctionPackageContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionPackageContentOutput", name: "GetSolFunctionPackageContentOutput")
    GetSolFunctionPackageDescriptorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionPackageDescriptorInput", name: "GetSolFunctionPackageDescriptorInput")
    GetSolFunctionPackageDescriptorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionPackageDescriptorOutput", name: "GetSolFunctionPackageDescriptorOutput")
    GetSolFunctionPackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionPackageInput", name: "GetSolFunctionPackageInput")
    GetSolFunctionPackageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionPackageMetadata", name: "GetSolFunctionPackageMetadata")
    GetSolFunctionPackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolFunctionPackageOutput", name: "GetSolFunctionPackageOutput")
    GetSolInstantiatedVnfInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolInstantiatedVnfInfo", name: "GetSolInstantiatedVnfInfo")
    GetSolNetworkInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkInstanceInput", name: "GetSolNetworkInstanceInput")
    GetSolNetworkInstanceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkInstanceMetadata", name: "GetSolNetworkInstanceMetadata")
    GetSolNetworkInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkInstanceOutput", name: "GetSolNetworkInstanceOutput")
    GetSolNetworkOperationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkOperationInput", name: "GetSolNetworkOperationInput")
    GetSolNetworkOperationMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkOperationMetadata", name: "GetSolNetworkOperationMetadata")
    GetSolNetworkOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkOperationOutput", name: "GetSolNetworkOperationOutput")
    GetSolNetworkOperationTaskDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkOperationTaskDetails", name: "GetSolNetworkOperationTaskDetails")
    GetSolNetworkOperationTasksList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#GetSolNetworkOperationTasksList", name: "GetSolNetworkOperationTasksList")
    GetSolNetworkPackageContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkPackageContentInput", name: "GetSolNetworkPackageContentInput")
    GetSolNetworkPackageContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkPackageContentOutput", name: "GetSolNetworkPackageContentOutput")
    GetSolNetworkPackageDescriptorInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkPackageDescriptorInput", name: "GetSolNetworkPackageDescriptorInput")
    GetSolNetworkPackageDescriptorOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkPackageDescriptorOutput", name: "GetSolNetworkPackageDescriptorOutput")
    GetSolNetworkPackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkPackageInput", name: "GetSolNetworkPackageInput")
    GetSolNetworkPackageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkPackageMetadata", name: "GetSolNetworkPackageMetadata")
    GetSolNetworkPackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolNetworkPackageOutput", name: "GetSolNetworkPackageOutput")
    GetSolVnfInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolVnfInfo", name: "GetSolVnfInfo")
    GetSolVnfcResourceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolVnfcResourceInfo", name: "GetSolVnfcResourceInfo")
    GetSolVnfcResourceInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#GetSolVnfcResourceInfoList", name: "GetSolVnfcResourceInfoList")
    GetSolVnfcResourceInfoMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#GetSolVnfcResourceInfoMetadata", name: "GetSolVnfcResourceInfoMetadata")
    InstantiateMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#InstantiateMetadata", name: "InstantiateMetadata")
    InstantiateSolNetworkInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#InstantiateSolNetworkInstanceInput", name: "InstantiateSolNetworkInstanceInput")
    InstantiateSolNetworkInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#InstantiateSolNetworkInstanceOutput", name: "InstantiateSolNetworkInstanceOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LcmOperationInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#LcmOperationInfo", name: "LcmOperationInfo")
    LcmOperationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#LcmOperationType", name: "LcmOperationType")
    ListSolFunctionInstanceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolFunctionInstanceInfo", name: "ListSolFunctionInstanceInfo")
    ListSolFunctionInstanceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolFunctionInstanceMetadata", name: "ListSolFunctionInstanceMetadata")
    ListSolFunctionInstanceResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#ListSolFunctionInstanceResources", name: "ListSolFunctionInstanceResources")
    ListSolFunctionInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolFunctionInstancesInput", name: "ListSolFunctionInstancesInput")
    ListSolFunctionInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolFunctionInstancesOutput", name: "ListSolFunctionInstancesOutput")
    ListSolFunctionPackageInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolFunctionPackageInfo", name: "ListSolFunctionPackageInfo")
    ListSolFunctionPackageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolFunctionPackageMetadata", name: "ListSolFunctionPackageMetadata")
    ListSolFunctionPackageResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#ListSolFunctionPackageResources", name: "ListSolFunctionPackageResources")
    ListSolFunctionPackagesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolFunctionPackagesInput", name: "ListSolFunctionPackagesInput")
    ListSolFunctionPackagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolFunctionPackagesOutput", name: "ListSolFunctionPackagesOutput")
    ListSolNetworkInstanceInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkInstanceInfo", name: "ListSolNetworkInstanceInfo")
    ListSolNetworkInstanceMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkInstanceMetadata", name: "ListSolNetworkInstanceMetadata")
    ListSolNetworkInstanceResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#ListSolNetworkInstanceResources", name: "ListSolNetworkInstanceResources")
    ListSolNetworkInstancesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkInstancesInput", name: "ListSolNetworkInstancesInput")
    ListSolNetworkInstancesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkInstancesOutput", name: "ListSolNetworkInstancesOutput")
    ListSolNetworkOperationsInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkOperationsInfo", name: "ListSolNetworkOperationsInfo")
    ListSolNetworkOperationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkOperationsInput", name: "ListSolNetworkOperationsInput")
    ListSolNetworkOperationsMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkOperationsMetadata", name: "ListSolNetworkOperationsMetadata")
    ListSolNetworkOperationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkOperationsOutput", name: "ListSolNetworkOperationsOutput")
    ListSolNetworkOperationsResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#ListSolNetworkOperationsResources", name: "ListSolNetworkOperationsResources")
    ListSolNetworkPackageInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkPackageInfo", name: "ListSolNetworkPackageInfo")
    ListSolNetworkPackageMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkPackageMetadata", name: "ListSolNetworkPackageMetadata")
    ListSolNetworkPackageResources = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#ListSolNetworkPackageResources", name: "ListSolNetworkPackageResources")
    ListSolNetworkPackagesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkPackagesInput", name: "ListSolNetworkPackagesInput")
    ListSolNetworkPackagesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListSolNetworkPackagesOutput", name: "ListSolNetworkPackagesOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    ModifyVnfInfoMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ModifyVnfInfoMetadata", name: "ModifyVnfInfoMetadata")
    NetworkArtifactMeta = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#NetworkArtifactMeta", name: "NetworkArtifactMeta")
    NsInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#NsInstanceArn", name: "NsInstanceArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-b|aws-us-gov):tnb:([a-z]{2}(-(gov|isob|iso))?-(east|west|north|south|central){1,2}-[0-9]):\\d{12}:(network-instance/ni-[a-f0-9]{17})$"})
    NsInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#NsInstanceId", name: "NsInstanceId", traits: {"smithy.api#pattern" => "^ni-[a-f0-9]{17}$"})
    NsLcmOpOccArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#NsLcmOpOccArn", name: "NsLcmOpOccArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-b|aws-us-gov):tnb:([a-z]{2}(-(gov|isob|iso))?-(east|west|north|south|central){1,2}-[0-9]):\\d{12}:(network-operation/no-[a-f0-9]{17})$"})
    NsLcmOpOccId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#NsLcmOpOccId", name: "NsLcmOpOccId", traits: {"smithy.api#pattern" => "^no-[a-f0-9]{17}$"})
    NsLcmOperationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#NsLcmOperationState", name: "NsLcmOperationState")
    NsState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#NsState", name: "NsState")
    NsdId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#NsdId", name: "NsdId", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    NsdInfoArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#NsdInfoArn", name: "NsdInfoArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-b|aws-us-gov):tnb:([a-z]{2}(-(gov|isob|iso))?-(east|west|north|south|central){1,2}-[0-9]):\\d{12}:(network-package/np-[a-f0-9]{17})$"})
    NsdInfoId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#NsdInfoId", name: "NsdInfoId", traits: {"smithy.api#pattern" => "^np-[a-f0-9]{17}$"})
    NsdOnboardingState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#NsdOnboardingState", name: "NsdOnboardingState")
    NsdOperationalState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#NsdOperationalState", name: "NsdOperationalState")
    NsdUsageState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#NsdUsageState", name: "NsdUsageState")
    OnboardingState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#OnboardingState", name: "OnboardingState")
    OperationalState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#OperationalState", name: "OperationalState")
    OverrideList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#OverrideList", name: "OverrideList")
    PackageContentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#PackageContentType", name: "PackageContentType")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#PaginationToken", name: "PaginationToken")
    ProblemDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ProblemDetails", name: "ProblemDetails")
    PutSolFunctionPackageContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#PutSolFunctionPackageContentInput", name: "PutSolFunctionPackageContentInput")
    PutSolFunctionPackageContentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#PutSolFunctionPackageContentMetadata", name: "PutSolFunctionPackageContentMetadata")
    PutSolFunctionPackageContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#PutSolFunctionPackageContentOutput", name: "PutSolFunctionPackageContentOutput")
    PutSolNetworkPackageContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#PutSolNetworkPackageContentInput", name: "PutSolNetworkPackageContentInput")
    PutSolNetworkPackageContentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#PutSolNetworkPackageContentMetadata", name: "PutSolNetworkPackageContentMetadata")
    PutSolNetworkPackageContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#PutSolNetworkPackageContentOutput", name: "PutSolNetworkPackageContentOutput")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SensitiveBlob = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.tnb#SensitiveBlob", name: "SensitiveBlob", traits: {"smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.tnb#StringMap", name: "StringMap")
    TNBResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#TNBResourceArn", name: "TNBResourceArn", traits: {"smithy.api#pattern" => "^arn:aws:tnb:[a-z0-9-]+:[^:]*:.*$"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#TagKey", name: "TagKey", traits: {"smithy.api#pattern" => "^(?!aws:).{1,128}$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#TagKeys", name: "TagKeys", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.tnb#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#sensitive" => {}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#TaskStatus", name: "TaskStatus")
    TerminateSolNetworkInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#TerminateSolNetworkInstanceInput", name: "TerminateSolNetworkInstanceInput")
    TerminateSolNetworkInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#TerminateSolNetworkInstanceOutput", name: "TerminateSolNetworkInstanceOutput")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    ToscaOverride = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ToscaOverride", name: "ToscaOverride")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateNsMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateNsMetadata", name: "UpdateNsMetadata")
    UpdateSolFunctionPackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateSolFunctionPackageInput", name: "UpdateSolFunctionPackageInput")
    UpdateSolFunctionPackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateSolFunctionPackageOutput", name: "UpdateSolFunctionPackageOutput")
    UpdateSolNetworkInstanceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateSolNetworkInstanceInput", name: "UpdateSolNetworkInstanceInput")
    UpdateSolNetworkInstanceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateSolNetworkInstanceOutput", name: "UpdateSolNetworkInstanceOutput")
    UpdateSolNetworkModify = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateSolNetworkModify", name: "UpdateSolNetworkModify")
    UpdateSolNetworkPackageInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateSolNetworkPackageInput", name: "UpdateSolNetworkPackageInput")
    UpdateSolNetworkPackageOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateSolNetworkPackageOutput", name: "UpdateSolNetworkPackageOutput")
    UpdateSolNetworkServiceData = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#UpdateSolNetworkServiceData", name: "UpdateSolNetworkServiceData")
    UpdateSolNetworkType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#UpdateSolNetworkType", name: "UpdateSolNetworkType")
    UsageState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#UsageState", name: "UsageState")
    ValidateSolFunctionPackageContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ValidateSolFunctionPackageContentInput", name: "ValidateSolFunctionPackageContentInput")
    ValidateSolFunctionPackageContentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ValidateSolFunctionPackageContentMetadata", name: "ValidateSolFunctionPackageContentMetadata")
    ValidateSolFunctionPackageContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ValidateSolFunctionPackageContentOutput", name: "ValidateSolFunctionPackageContentOutput")
    ValidateSolNetworkPackageContentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ValidateSolNetworkPackageContentInput", name: "ValidateSolNetworkPackageContentInput")
    ValidateSolNetworkPackageContentMetadata = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ValidateSolNetworkPackageContentMetadata", name: "ValidateSolNetworkPackageContentMetadata")
    ValidateSolNetworkPackageContentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ValidateSolNetworkPackageContentOutput", name: "ValidateSolNetworkPackageContentOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.tnb#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VnfInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#VnfInstanceArn", name: "VnfInstanceArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-b|aws-us-gov):tnb:([a-z]{2}(-(gov|isob|iso))?-(east|west|north|south|central){1,2}-[0-9]):\\d{12}:(function-instance/fi-[a-f0-9]{17})$"})
    VnfInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#VnfInstanceId", name: "VnfInstanceId", traits: {"smithy.api#pattern" => "^fi-[a-f0-9]{17}$"})
    VnfInstantiationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#VnfInstantiationState", name: "VnfInstantiationState")
    VnfOperationalState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.tnb#VnfOperationalState", name: "VnfOperationalState")
    VnfPkgArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#VnfPkgArn", name: "VnfPkgArn", traits: {"smithy.api#pattern" => "^arn:(aws|aws-cn|aws-iso|aws-iso-b|aws-us-gov):tnb:([a-z]{2}(-(gov|isob|iso))?-(east|west|north|south|central){1,2}-[0-9]):\\d{12}:(function-package/fp-[a-f0-9]{17})$"})
    VnfPkgId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#VnfPkgId", name: "VnfPkgId", traits: {"smithy.api#pattern" => "^fp-[a-f0-9]{17}$"})
    VnfPkgIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.tnb#VnfPkgIdList", name: "VnfPkgIdList")
    VnfdId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.tnb#VnfdId", name: "VnfdId", traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    CancelSolNetworkOperationInput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "nsLcmOpOccId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSolNetworkOperationInput.type = Types::CancelSolNetworkOperationInput
    CreateSolFunctionPackageInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolFunctionPackageInput.type = Types::CreateSolFunctionPackageInput
    CreateSolFunctionPackageOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:onboarding_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnboardingState, location_name: "onboardingState", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationalState, location_name: "operationalState", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:usage_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageState, location_name: "usageState", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolFunctionPackageOutput.type = Types::CreateSolFunctionPackageOutput
    CreateSolNetworkInstanceInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceInput.add_member(:ns_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    CreateSolNetworkInstanceInput.add_member(:ns_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}}))
    CreateSolNetworkInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolNetworkInstanceInput.type = Types::CreateSolNetworkInstanceInput
    CreateSolNetworkInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceOutput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceOutput.add_member(:ns_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsInstanceName", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolNetworkInstanceOutput.type = Types::CreateSolNetworkInstanceOutput
    CreateSolNetworkPackageInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolNetworkPackageInput.type = Types::CreateSolNetworkPackageInput
    CreateSolNetworkPackageOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "id", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:nsd_onboarding_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdOnboardingState, location_name: "nsdOnboardingState", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdOperationalState, location_name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:nsd_usage_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdUsageState, location_name: "nsdUsageState", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateSolNetworkPackageOutput.type = Types::CreateSolNetworkPackageOutput
    DeleteSolFunctionPackageInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSolFunctionPackageInput.type = Types::DeleteSolFunctionPackageInput
    DeleteSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSolNetworkInstanceInput.type = Types::DeleteSolNetworkInstanceInput
    DeleteSolNetworkPackageInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSolNetworkPackageInput.type = Types::DeleteSolNetworkPackageInput
    DescriptorContentType.add_member(:text_plain, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TEXT_PLAIN", traits: {"smithy.api#enumValue" => "text/plain"}))
    ErrorInfo.add_member(:cause, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCause, location_name: "cause"))
    ErrorInfo.add_member(:details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails, location_name: "details"))
    ErrorInfo.type = Types::ErrorInfo
    FunctionArtifactMeta.add_member(:overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideList, location_name: "overrides"))
    FunctionArtifactMeta.type = Types::FunctionArtifactMeta
    GetSolFunctionInstanceInput.add_member(:vnf_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstanceId, location_name: "vnfInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolFunctionInstanceInput.type = Types::GetSolFunctionInstanceInput
    GetSolFunctionInstanceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolFunctionInstanceMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolFunctionInstanceMetadata.type = Types::GetSolFunctionInstanceMetadata
    GetSolFunctionInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstanceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:vnfd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfdId, location_name: "vnfdId", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:vnf_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProvider"))
    GetSolFunctionInstanceOutput.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProductName"))
    GetSolFunctionInstanceOutput.add_member(:vnfd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfdVersion"))
    GetSolFunctionInstanceOutput.add_member(:instantiation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstantiationState, location_name: "instantiationState", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:instantiated_vnf_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolVnfInfo, location_name: "instantiatedVnfInfo"))
    GetSolFunctionInstanceOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionInstanceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolFunctionInstanceOutput.type = Types::GetSolFunctionInstanceOutput
    GetSolFunctionPackageContentInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolFunctionPackageContentInput.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageContentType, location_name: "accept", traits: {"smithy.api#httpHeader" => "Accept", "smithy.api#required" => {}}))
    GetSolFunctionPackageContentInput.type = Types::GetSolFunctionPackageContentInput
    GetSolFunctionPackageContentOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageContentType, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSolFunctionPackageContentOutput.add_member(:package_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: "packageContent", traits: {"smithy.api#httpPayload" => {}}))
    GetSolFunctionPackageContentOutput[:http_payload] = :package_content
    GetSolFunctionPackageContentOutput[:http_payload_member] = GetSolFunctionPackageContentOutput.member(:package_content)
    GetSolFunctionPackageContentOutput.type = Types::GetSolFunctionPackageContentOutput
    GetSolFunctionPackageDescriptorInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolFunctionPackageDescriptorInput.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptorContentType, location_name: "accept", traits: {"smithy.api#httpHeader" => "Accept", "smithy.api#required" => {}}))
    GetSolFunctionPackageDescriptorInput.type = Types::GetSolFunctionPackageDescriptorInput
    GetSolFunctionPackageDescriptorOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptorContentType, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSolFunctionPackageDescriptorOutput.add_member(:vnfd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: "vnfd", traits: {"smithy.api#httpPayload" => {}}))
    GetSolFunctionPackageDescriptorOutput[:http_payload] = :vnfd
    GetSolFunctionPackageDescriptorOutput[:http_payload_member] = GetSolFunctionPackageDescriptorOutput.member(:vnfd)
    GetSolFunctionPackageDescriptorOutput.type = Types::GetSolFunctionPackageDescriptorOutput
    GetSolFunctionPackageInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolFunctionPackageInput.type = Types::GetSolFunctionPackageInput
    GetSolFunctionPackageMetadata.add_member(:vnfd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArtifactMeta, location_name: "vnfd"))
    GetSolFunctionPackageMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolFunctionPackageMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolFunctionPackageMetadata.type = Types::GetSolFunctionPackageMetadata
    GetSolFunctionPackageOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:onboarding_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnboardingState, location_name: "onboardingState", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationalState, location_name: "operationalState", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:usage_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageState, location_name: "usageState", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:vnfd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfdId"))
    GetSolFunctionPackageOutput.add_member(:vnf_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProvider"))
    GetSolFunctionPackageOutput.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProductName"))
    GetSolFunctionPackageOutput.add_member(:vnfd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfdVersion"))
    GetSolFunctionPackageOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionPackageMetadata, location_name: "metadata"))
    GetSolFunctionPackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolFunctionPackageOutput.type = Types::GetSolFunctionPackageOutput
    GetSolInstantiatedVnfInfo.add_member(:vnf_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfOperationalState, location_name: "vnfState"))
    GetSolInstantiatedVnfInfo.type = Types::GetSolInstantiatedVnfInfo
    GetSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkInstanceInput.type = Types::GetSolNetworkInstanceInput
    GetSolNetworkInstanceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkInstanceMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkInstanceMetadata.type = Types::GetSolNetworkInstanceMetadata
    GetSolNetworkInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:ns_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsInstanceName", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:ns_instance_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsInstanceDescription", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:nsd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdId, location_name: "nsdId", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:ns_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsState, location_name: "nsState"))
    GetSolNetworkInstanceOutput.add_member(:lcm_op_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LcmOperationInfo, location_name: "lcmOpInfo"))
    GetSolNetworkInstanceOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkInstanceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolNetworkInstanceOutput.type = Types::GetSolNetworkInstanceOutput
    GetSolNetworkOperationInput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "nsLcmOpOccId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkOperationInput.type = Types::GetSolNetworkOperationInput
    GetSolNetworkOperationMetadata.add_member(:update_ns_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateNsMetadata, location_name: "updateNsMetadata"))
    GetSolNetworkOperationMetadata.add_member(:modify_vnf_info_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ModifyVnfInfoMetadata, location_name: "modifyVnfInfoMetadata"))
    GetSolNetworkOperationMetadata.add_member(:instantiate_metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstantiateMetadata, location_name: "instantiateMetadata"))
    GetSolNetworkOperationMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkOperationMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkOperationMetadata.type = Types::GetSolNetworkOperationMetadata
    GetSolNetworkOperationOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "id"))
    GetSolNetworkOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolNetworkOperationOutput.add_member(:operation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOperationState, location_name: "operationState"))
    GetSolNetworkOperationOutput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId"))
    GetSolNetworkOperationOutput.add_member(:lcm_operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LcmOperationType, location_name: "lcmOperationType"))
    GetSolNetworkOperationOutput.add_member(:update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkType, location_name: "updateType"))
    GetSolNetworkOperationOutput.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetails, location_name: "error"))
    GetSolNetworkOperationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkOperationMetadata, location_name: "metadata"))
    GetSolNetworkOperationOutput.add_member(:tasks, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkOperationTasksList, location_name: "tasks"))
    GetSolNetworkOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolNetworkOperationOutput.type = Types::GetSolNetworkOperationOutput
    GetSolNetworkOperationTaskDetails.add_member(:task_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "taskName"))
    GetSolNetworkOperationTaskDetails.add_member(:task_context, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringMap, location_name: "taskContext"))
    GetSolNetworkOperationTaskDetails.add_member(:task_error_details, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "taskErrorDetails"))
    GetSolNetworkOperationTaskDetails.add_member(:task_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TaskStatus, location_name: "taskStatus"))
    GetSolNetworkOperationTaskDetails.add_member(:task_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "taskStartTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkOperationTaskDetails.add_member(:task_end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "taskEndTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkOperationTaskDetails.type = Types::GetSolNetworkOperationTaskDetails
    GetSolNetworkOperationTasksList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkOperationTaskDetails)
    GetSolNetworkPackageContentInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkPackageContentInput.add_member(:accept, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageContentType, location_name: "accept", traits: {"smithy.api#httpHeader" => "Accept", "smithy.api#required" => {}}))
    GetSolNetworkPackageContentInput.type = Types::GetSolNetworkPackageContentInput
    GetSolNetworkPackageContentOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageContentType, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSolNetworkPackageContentOutput.add_member(:nsd_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: "nsdContent", traits: {"smithy.api#httpPayload" => {}}))
    GetSolNetworkPackageContentOutput[:http_payload] = :nsd_content
    GetSolNetworkPackageContentOutput[:http_payload_member] = GetSolNetworkPackageContentOutput.member(:nsd_content)
    GetSolNetworkPackageContentOutput.type = Types::GetSolNetworkPackageContentOutput
    GetSolNetworkPackageDescriptorInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkPackageDescriptorInput.type = Types::GetSolNetworkPackageDescriptorInput
    GetSolNetworkPackageDescriptorOutput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptorContentType, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSolNetworkPackageDescriptorOutput.add_member(:nsd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Blob, location_name: "nsd", traits: {"smithy.api#httpPayload" => {}}))
    GetSolNetworkPackageDescriptorOutput[:http_payload] = :nsd
    GetSolNetworkPackageDescriptorOutput[:http_payload_member] = GetSolNetworkPackageDescriptorOutput.member(:nsd)
    GetSolNetworkPackageDescriptorOutput.type = Types::GetSolNetworkPackageDescriptorOutput
    GetSolNetworkPackageInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkPackageInput.type = Types::GetSolNetworkPackageInput
    GetSolNetworkPackageMetadata.add_member(:nsd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkArtifactMeta, location_name: "nsd"))
    GetSolNetworkPackageMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkPackageMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkPackageMetadata.type = Types::GetSolNetworkPackageMetadata
    GetSolNetworkPackageOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "id", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_onboarding_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdOnboardingState, location_name: "nsdOnboardingState", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdOperationalState, location_name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_usage_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdUsageState, location_name: "nsdUsageState", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdId, location_name: "nsdId", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdName", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdVersion", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:vnf_pkg_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgIdList, location_name: "vnfPkgIds", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkPackageMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    GetSolNetworkPackageOutput.type = Types::GetSolNetworkPackageOutput
    GetSolVnfInfo.add_member(:vnf_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfOperationalState, location_name: "vnfState"))
    GetSolVnfInfo.add_member(:vnfc_resource_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolVnfcResourceInfoList, location_name: "vnfcResourceInfo"))
    GetSolVnfInfo.type = Types::GetSolVnfInfo
    GetSolVnfcResourceInfo.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolVnfcResourceInfoMetadata, location_name: "metadata"))
    GetSolVnfcResourceInfo.type = Types::GetSolVnfcResourceInfo
    GetSolVnfcResourceInfoList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolVnfcResourceInfo)
    GetSolVnfcResourceInfoMetadata.add_member(:node_group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nodeGroup"))
    GetSolVnfcResourceInfoMetadata.add_member(:cluster, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "cluster"))
    GetSolVnfcResourceInfoMetadata.add_member(:helm_chart, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "helmChart"))
    GetSolVnfcResourceInfoMetadata.type = Types::GetSolVnfcResourceInfoMetadata
    InstantiateMetadata.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    InstantiateMetadata.add_member(:additional_params_for_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "additionalParamsForNs"))
    InstantiateMetadata.type = Types::InstantiateMetadata
    InstantiateSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InstantiateSolNetworkInstanceInput.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Boolean, location_name: "dryRun", traits: {"smithy.api#httpQuery" => "dry_run"}))
    InstantiateSolNetworkInstanceInput.add_member(:additional_params_for_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "additionalParamsForNs"))
    InstantiateSolNetworkInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    InstantiateSolNetworkInstanceInput.type = Types::InstantiateSolNetworkInstanceInput
    InstantiateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "nsLcmOpOccId", traits: {"smithy.api#required" => {}}))
    InstantiateSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    InstantiateSolNetworkInstanceOutput.type = Types::InstantiateSolNetworkInstanceOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LcmOperationInfo.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "nsLcmOpOccId", traits: {"smithy.api#required" => {}}))
    LcmOperationInfo.type = Types::LcmOperationInfo
    LcmOperationType.add_member(:instantiate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANTIATE", traits: {"smithy.api#enumValue" => "INSTANTIATE"}))
    LcmOperationType.add_member(:update, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    LcmOperationType.add_member(:terminate, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATE", traits: {"smithy.api#enumValue" => "TERMINATE"}))
    ListSolFunctionInstanceInfo.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstanceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:vnf_pkg_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfPkgName"))
    ListSolFunctionInstanceInfo.add_member(:instantiation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstantiationState, location_name: "instantiationState", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:instantiated_vnf_info, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolInstantiatedVnfInfo, location_name: "instantiatedVnfInfo"))
    ListSolFunctionInstanceInfo.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionInstanceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.type = Types::ListSolFunctionInstanceInfo
    ListSolFunctionInstanceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolFunctionInstanceMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolFunctionInstanceMetadata.type = Types::ListSolFunctionInstanceMetadata
    ListSolFunctionInstanceResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionInstanceInfo)
    ListSolFunctionInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolFunctionInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolFunctionInstancesInput.type = Types::ListSolFunctionInstancesInput
    ListSolFunctionInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolFunctionInstancesOutput.add_member(:function_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionInstanceResources, location_name: "functionInstances"))
    ListSolFunctionInstancesOutput.type = Types::ListSolFunctionInstancesOutput
    ListSolFunctionPackageInfo.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:onboarding_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OnboardingState, location_name: "onboardingState", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationalState, location_name: "operationalState", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:usage_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UsageState, location_name: "usageState", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:vnfd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfdId"))
    ListSolFunctionPackageInfo.add_member(:vnf_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProvider"))
    ListSolFunctionPackageInfo.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProductName"))
    ListSolFunctionPackageInfo.add_member(:vnfd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfdVersion"))
    ListSolFunctionPackageInfo.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionPackageMetadata, location_name: "metadata"))
    ListSolFunctionPackageInfo.type = Types::ListSolFunctionPackageInfo
    ListSolFunctionPackageMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolFunctionPackageMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolFunctionPackageMetadata.type = Types::ListSolFunctionPackageMetadata
    ListSolFunctionPackageResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionPackageInfo)
    ListSolFunctionPackagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolFunctionPackagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolFunctionPackagesInput.type = Types::ListSolFunctionPackagesInput
    ListSolFunctionPackagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolFunctionPackagesOutput.add_member(:function_packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionPackageResources, location_name: "functionPackages", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackagesOutput.type = Types::ListSolFunctionPackagesOutput
    ListSolNetworkInstanceInfo.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:ns_instance_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsInstanceName", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:ns_instance_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsInstanceDescription", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:nsd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdId, location_name: "nsdId", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:ns_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsState, location_name: "nsState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkInstanceMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.type = Types::ListSolNetworkInstanceInfo
    ListSolNetworkInstanceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkInstanceMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkInstanceMetadata.type = Types::ListSolNetworkInstanceMetadata
    ListSolNetworkInstanceResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkInstanceInfo)
    ListSolNetworkInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolNetworkInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolNetworkInstancesInput.type = Types::ListSolNetworkInstancesInput
    ListSolNetworkInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolNetworkInstancesOutput.add_member(:network_instances, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkInstanceResources, location_name: "networkInstances"))
    ListSolNetworkInstancesOutput.type = Types::ListSolNetworkInstancesOutput
    ListSolNetworkOperationsInfo.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:operation_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOperationState, location_name: "operationState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:lcm_operation_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LcmOperationType, location_name: "lcmOperationType", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkType, location_name: "updateType"))
    ListSolNetworkOperationsInfo.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProblemDetails, location_name: "error"))
    ListSolNetworkOperationsInfo.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkOperationsMetadata, location_name: "metadata"))
    ListSolNetworkOperationsInfo.type = Types::ListSolNetworkOperationsInfo
    ListSolNetworkOperationsInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#httpQuery" => "nsInstanceId"}))
    ListSolNetworkOperationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolNetworkOperationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolNetworkOperationsInput.type = Types::ListSolNetworkOperationsInput
    ListSolNetworkOperationsMetadata.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId"))
    ListSolNetworkOperationsMetadata.add_member(:vnf_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstanceId, location_name: "vnfInstanceId"))
    ListSolNetworkOperationsMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkOperationsMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkOperationsMetadata.type = Types::ListSolNetworkOperationsMetadata
    ListSolNetworkOperationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolNetworkOperationsOutput.add_member(:network_operations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkOperationsResources, location_name: "networkOperations"))
    ListSolNetworkOperationsOutput.type = Types::ListSolNetworkOperationsOutput
    ListSolNetworkOperationsResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkOperationsInfo)
    ListSolNetworkPackageInfo.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:nsd_onboarding_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdOnboardingState, location_name: "nsdOnboardingState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdOperationalState, location_name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:nsd_usage_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdUsageState, location_name: "nsdUsageState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:nsd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdId"))
    ListSolNetworkPackageInfo.add_member(:nsd_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdName"))
    ListSolNetworkPackageInfo.add_member(:nsd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdVersion"))
    ListSolNetworkPackageInfo.add_member(:nsd_designer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdDesigner"))
    ListSolNetworkPackageInfo.add_member(:nsd_invariant_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdInvariantId"))
    ListSolNetworkPackageInfo.add_member(:vnf_pkg_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgIdList, location_name: "vnfPkgIds"))
    ListSolNetworkPackageInfo.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkPackageMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.type = Types::ListSolNetworkPackageInfo
    ListSolNetworkPackageMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkPackageMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkPackageMetadata.type = Types::ListSolNetworkPackageMetadata
    ListSolNetworkPackageResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkPackageInfo)
    ListSolNetworkPackagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolNetworkPackagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolNetworkPackagesInput.type = Types::ListSolNetworkPackagesInput
    ListSolNetworkPackagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListSolNetworkPackagesOutput.add_member(:network_packages, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkPackageResources, location_name: "networkPackages", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackagesOutput.type = Types::ListSolNetworkPackagesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TNBResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ModifyVnfInfoMetadata.add_member(:vnf_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstanceId, location_name: "vnfInstanceId", traits: {"smithy.api#required" => {}}))
    ModifyVnfInfoMetadata.add_member(:vnf_configurable_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "vnfConfigurableProperties", traits: {"smithy.api#required" => {}}))
    ModifyVnfInfoMetadata.type = Types::ModifyVnfInfoMetadata
    NetworkArtifactMeta.add_member(:overrides, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OverrideList, location_name: "overrides"))
    NetworkArtifactMeta.type = Types::NetworkArtifactMeta
    NsLcmOperationState.add_member(:processing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    NsLcmOperationState.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    NsLcmOperationState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    NsLcmOperationState.add_member(:cancelling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    NsLcmOperationState.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    NsState.add_member(:instantiated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANTIATED", traits: {"smithy.api#enumValue" => "INSTANTIATED"}))
    NsState.add_member(:not_instantiated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_INSTANTIATED", traits: {"smithy.api#enumValue" => "NOT_INSTANTIATED"}))
    NsState.add_member(:updated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    NsState.add_member(:impaired, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    NsState.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    NsState.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    NsState.add_member(:deleted, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    NsState.add_member(:instantiate_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANTIATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "INSTANTIATE_IN_PROGRESS"}))
    NsState.add_member(:intent_to_update_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTENT_TO_UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "INTENT_TO_UPDATE_IN_PROGRESS"}))
    NsState.add_member(:update_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    NsState.add_member(:terminate_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TERMINATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "TERMINATE_IN_PROGRESS"}))
    NsdOnboardingState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    NsdOnboardingState.add_member(:onboarded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONBOARDED", traits: {"smithy.api#enumValue" => "ONBOARDED"}))
    NsdOnboardingState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    NsdOperationalState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    NsdOperationalState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    NsdUsageState.add_member(:in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_USE", traits: {"smithy.api#enumValue" => "IN_USE"}))
    NsdUsageState.add_member(:not_in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_IN_USE", traits: {"smithy.api#enumValue" => "NOT_IN_USE"}))
    OnboardingState.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    OnboardingState.add_member(:onboarded, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ONBOARDED", traits: {"smithy.api#enumValue" => "ONBOARDED"}))
    OnboardingState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    OperationalState.add_member(:enabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OperationalState.add_member(:disabled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    OverrideList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ToscaOverride)
    PackageContentType.add_member(:application_zip, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "APPLICATION_ZIP", traits: {"smithy.api#enumValue" => "application/zip"}))
    ProblemDetails.add_member(:detail, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "detail", traits: {"smithy.api#required" => {}}))
    ProblemDetails.add_member(:title, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "title"))
    ProblemDetails.type = Types::ProblemDetails
    PutSolFunctionPackageContentInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSolFunctionPackageContentInput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageContentType, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PutSolFunctionPackageContentInput.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBlob, location_name: "file", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutSolFunctionPackageContentInput[:http_payload] = :file
    PutSolFunctionPackageContentInput[:http_payload_member] = PutSolFunctionPackageContentInput.member(:file)
    PutSolFunctionPackageContentInput.type = Types::PutSolFunctionPackageContentInput
    PutSolFunctionPackageContentMetadata.add_member(:vnfd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArtifactMeta, location_name: "vnfd"))
    PutSolFunctionPackageContentMetadata.type = Types::PutSolFunctionPackageContentMetadata
    PutSolFunctionPackageContentOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "id", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:vnfd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfdId, location_name: "vnfdId", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProductName", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:vnf_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProvider", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:vnfd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfdVersion", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSolFunctionPackageContentMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.type = Types::PutSolFunctionPackageContentOutput
    PutSolNetworkPackageContentInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSolNetworkPackageContentInput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageContentType, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PutSolNetworkPackageContentInput.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBlob, location_name: "file", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutSolNetworkPackageContentInput[:http_payload] = :file
    PutSolNetworkPackageContentInput[:http_payload_member] = PutSolNetworkPackageContentInput.member(:file)
    PutSolNetworkPackageContentInput.type = Types::PutSolNetworkPackageContentInput
    PutSolNetworkPackageContentMetadata.add_member(:nsd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkArtifactMeta, location_name: "nsd"))
    PutSolNetworkPackageContentMetadata.type = Types::PutSolNetworkPackageContentMetadata
    PutSolNetworkPackageContentOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "id", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:nsd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdId, location_name: "nsdId", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:nsd_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdName", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:nsd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdVersion", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:vnf_pkg_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgIdList, location_name: "vnfPkgIds", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSolNetworkPackageContentMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.type = Types::PutSolNetworkPackageContentOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    StringMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TNBResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TaskStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    TaskStatus.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    TaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TaskStatus.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TaskStatus.add_member(:skipped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    TaskStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    TerminateSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TerminateSolNetworkInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    TerminateSolNetworkInstanceInput.type = Types::TerminateSolNetworkInstanceInput
    TerminateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "nsLcmOpOccId"))
    TerminateSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    TerminateSolNetworkInstanceOutput.type = Types::TerminateSolNetworkInstanceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    ToscaOverride.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "name"))
    ToscaOverride.add_member(:default_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "defaultValue"))
    ToscaOverride.type = Types::ToscaOverride
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TNBResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateNsMetadata.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    UpdateNsMetadata.add_member(:additional_params_for_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "additionalParamsForNs"))
    UpdateNsMetadata.type = Types::UpdateNsMetadata
    UpdateSolFunctionPackageInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSolFunctionPackageInput.add_member(:operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationalState, location_name: "operationalState", traits: {"smithy.api#required" => {}}))
    UpdateSolFunctionPackageInput.type = Types::UpdateSolFunctionPackageInput
    UpdateSolFunctionPackageOutput.add_member(:operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OperationalState, location_name: "operationalState", traits: {"smithy.api#required" => {}}))
    UpdateSolFunctionPackageOutput.type = Types::UpdateSolFunctionPackageOutput
    UpdateSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsInstanceId, location_name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSolNetworkInstanceInput.add_member(:update_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkType, location_name: "updateType", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkInstanceInput.add_member(:modify_vnf_info_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkModify, location_name: "modifyVnfInfoData"))
    UpdateSolNetworkInstanceInput.add_member(:update_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkServiceData, location_name: "updateNs"))
    UpdateSolNetworkInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateSolNetworkInstanceInput.type = Types::UpdateSolNetworkInstanceInput
    UpdateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsLcmOpOccId, location_name: "nsLcmOpOccId"))
    UpdateSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    UpdateSolNetworkInstanceOutput.type = Types::UpdateSolNetworkInstanceOutput
    UpdateSolNetworkModify.add_member(:vnf_instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfInstanceId, location_name: "vnfInstanceId", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkModify.add_member(:vnf_configurable_properties, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "vnfConfigurableProperties", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkModify.type = Types::UpdateSolNetworkModify
    UpdateSolNetworkPackageInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSolNetworkPackageInput.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdOperationalState, location_name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkPackageInput.type = Types::UpdateSolNetworkPackageInput
    UpdateSolNetworkPackageOutput.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdOperationalState, location_name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkPackageOutput.type = Types::UpdateSolNetworkPackageOutput
    UpdateSolNetworkServiceData.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkServiceData.add_member(:additional_params_for_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Document, location_name: "additionalParamsForNs"))
    UpdateSolNetworkServiceData.type = Types::UpdateSolNetworkServiceData
    UpdateSolNetworkType.add_member(:modify_vnf_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "MODIFY_VNF_INFORMATION", traits: {"smithy.api#enumValue" => "MODIFY_VNF_INFORMATION"}))
    UpdateSolNetworkType.add_member(:update_ns, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_NS", traits: {"smithy.api#enumValue" => "UPDATE_NS"}))
    UsageState.add_member(:in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_USE", traits: {"smithy.api#enumValue" => "IN_USE"}))
    UsageState.add_member(:not_in_use, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_IN_USE", traits: {"smithy.api#enumValue" => "NOT_IN_USE"}))
    ValidateSolFunctionPackageContentInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentInput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageContentType, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    ValidateSolFunctionPackageContentInput.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBlob, location_name: "file", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentInput[:http_payload] = :file
    ValidateSolFunctionPackageContentInput[:http_payload_member] = ValidateSolFunctionPackageContentInput.member(:file)
    ValidateSolFunctionPackageContentInput.type = Types::ValidateSolFunctionPackageContentInput
    ValidateSolFunctionPackageContentMetadata.add_member(:vnfd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArtifactMeta, location_name: "vnfd"))
    ValidateSolFunctionPackageContentMetadata.type = Types::ValidateSolFunctionPackageContentMetadata
    ValidateSolFunctionPackageContentOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:vnfd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfdId, location_name: "vnfdId", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProductName", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:vnf_provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfProvider", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:vnfd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "vnfdVersion", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateSolFunctionPackageContentMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.type = Types::ValidateSolFunctionPackageContentOutput
    ValidateSolNetworkPackageContentInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentInput.add_member(:content_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PackageContentType, location_name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    ValidateSolNetworkPackageContentInput.add_member(:file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveBlob, location_name: "file", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentInput[:http_payload] = :file
    ValidateSolNetworkPackageContentInput[:http_payload_member] = ValidateSolNetworkPackageContentInput.member(:file)
    ValidateSolNetworkPackageContentInput.type = Types::ValidateSolNetworkPackageContentInput
    ValidateSolNetworkPackageContentMetadata.add_member(:nsd, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkArtifactMeta, location_name: "nsd"))
    ValidateSolNetworkPackageContentMetadata.type = Types::ValidateSolNetworkPackageContentMetadata
    ValidateSolNetworkPackageContentOutput.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoId, location_name: "id", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdInfoArn, location_name: "arn", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NsdId, location_name: "nsdId", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdName", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "nsdVersion", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:vnf_pkg_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgIdList, location_name: "vnfPkgIds", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:metadata, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateSolNetworkPackageContentMetadata, location_name: "metadata", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.type = Types::ValidateSolNetworkPackageContentOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VnfInstantiationState.add_member(:instantiated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INSTANTIATED", traits: {"smithy.api#enumValue" => "INSTANTIATED"}))
    VnfInstantiationState.add_member(:not_instantiated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "NOT_INSTANTIATED", traits: {"smithy.api#enumValue" => "NOT_INSTANTIATED"}))
    VnfOperationalState.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    VnfOperationalState.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    VnfPkgIdList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VnfPkgId)

    TNB = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.tnb#TNB"
      service.name = "TNB"
      service.version = "2008-10-21"
      service.traits = {"aws.api#service" => {"sdkId" => "tnb", "apiVersion" => "v1", "arnNamespace" => "tnb"}, "aws.auth#sigv4" => {"name" => "tnb"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Telco Network Builder"}
      service.add_operation(:cancel_sol_network_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#CancelSolNetworkOperation"
        operation.name = "CancelSolNetworkOperation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CancelSolNetworkOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}/cancel", "code" => 202}}
      end)
      service.add_operation(:create_sol_function_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#CreateSolFunctionPackage"
        operation.name = "CreateSolFunctionPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolFunctionPackageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolFunctionPackageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/vnfpkgm/v1/vnf_packages", "code" => 201}}
      end)
      service.add_operation(:create_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#CreateSolNetworkInstance"
        operation.name = "CreateSolNetworkInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolNetworkInstanceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolNetworkInstanceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_instances", "code" => 201}}
      end)
      service.add_operation(:create_sol_network_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#CreateSolNetworkPackage"
        operation.name = "CreateSolNetworkPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolNetworkPackageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSolNetworkPackageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nsd/v1/ns_descriptors", "code" => 201}}
      end)
      service.add_operation(:delete_sol_function_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#DeleteSolFunctionPackage"
        operation.name = "DeleteSolFunctionPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSolFunctionPackageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#DeleteSolNetworkInstance"
        operation.name = "DeleteSolNetworkInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSolNetworkInstanceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_sol_network_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#DeleteSolNetworkPackage"
        operation.name = "DeleteSolNetworkPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSolNetworkPackageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_sol_function_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolFunctionInstance"
        operation.name = "GetSolFunctionInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionInstanceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionInstanceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnflcm/v1/vnf_instances/{vnfInstanceId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_function_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolFunctionPackage"
        operation.name = "GetSolFunctionPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionPackageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionPackageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_function_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolFunctionPackageContent"
        operation.name = "GetSolFunctionPackageContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionPackageContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionPackageContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_function_package_descriptor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolFunctionPackageDescriptor"
        operation.name = "GetSolFunctionPackageDescriptor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionPackageDescriptorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolFunctionPackageDescriptorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/vnfd"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkInstance"
        operation.name = "GetSolNetworkInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkInstanceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkInstanceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkOperation"
        operation.name = "GetSolNetworkOperation"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkOperationInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkOperationOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkPackage"
        operation.name = "GetSolNetworkPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkPackageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkPackageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkPackageContent"
        operation.name = "GetSolNetworkPackageContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkPackageContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkPackageContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_package_descriptor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkPackageDescriptor"
        operation.name = "GetSolNetworkPackageDescriptor"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkPackageDescriptorInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSolNetworkPackageDescriptorOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:instantiate_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#InstantiateSolNetworkInstance"
        operation.name = "InstantiateSolNetworkInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstantiateSolNetworkInstanceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstantiateSolNetworkInstanceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}/instantiate", "code" => 201}}
      end)
      service.add_operation(:list_sol_function_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolFunctionInstances"
        operation.name = "ListSolFunctionInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionInstancesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionInstancesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnflcm/v1/vnf_instances"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolFunctionInstances.new
      end)
      service.add_operation(:list_sol_function_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolFunctionPackages"
        operation.name = "ListSolFunctionPackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionPackagesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolFunctionPackagesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnfpkgm/v1/vnf_packages"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolFunctionPackages.new
      end)
      service.add_operation(:list_sol_network_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolNetworkInstances"
        operation.name = "ListSolNetworkInstances"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkInstancesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkInstancesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nslcm/v1/ns_instances"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolNetworkInstances.new
      end)
      service.add_operation(:list_sol_network_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolNetworkOperations"
        operation.name = "ListSolNetworkOperations"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkOperationsInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkOperationsOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nslcm/v1/ns_lcm_op_occs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolNetworkOperations.new
      end)
      service.add_operation(:list_sol_network_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolNetworkPackages"
        operation.name = "ListSolNetworkPackages"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkPackagesInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSolNetworkPackagesOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nsd/v1/ns_descriptors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolNetworkPackages.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_sol_function_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#PutSolFunctionPackageContent"
        operation.name = "PutSolFunctionPackageContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSolFunctionPackageContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSolFunctionPackageContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_sol_network_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#PutSolNetworkPackageContent"
        operation.name = "PutSolNetworkPackageContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSolNetworkPackageContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutSolNetworkPackageContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:terminate_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#TerminateSolNetworkInstance"
        operation.name = "TerminateSolNetworkInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateSolNetworkInstanceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TerminateSolNetworkInstanceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}/terminate", "code" => 201}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_sol_function_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#UpdateSolFunctionPackage"
        operation.name = "UpdateSolFunctionPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolFunctionPackageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolFunctionPackageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}"}}
      end)
      service.add_operation(:update_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#UpdateSolNetworkInstance"
        operation.name = "UpdateSolNetworkInstance"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkInstanceInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkInstanceOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}/update", "code" => 201}}
      end)
      service.add_operation(:update_sol_network_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#UpdateSolNetworkPackage"
        operation.name = "UpdateSolNetworkPackage"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkPackageInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSolNetworkPackageOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}"}}
      end)
      service.add_operation(:validate_sol_function_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ValidateSolFunctionPackageContent"
        operation.name = "ValidateSolFunctionPackageContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateSolFunctionPackageContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateSolFunctionPackageContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content/validate", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:validate_sol_network_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ValidateSolNetworkPackageContent"
        operation.name = "ValidateSolNetworkPackageContent"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateSolNetworkPackageContentInput)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidateSolNetworkPackageContentOutput)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content/validate", "code" => 200}, "smithy.api#idempotent" => {}}
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
