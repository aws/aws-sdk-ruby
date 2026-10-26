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

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    CancelSolNetworkOperationInput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccId, name: "nsLcmOpOccId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelSolNetworkOperationInput.type = Types::CancelSolNetworkOperationInput
    CreateSolFunctionPackageInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSolFunctionPackageInput.type = Types::CreateSolFunctionPackageInput
    CreateSolFunctionPackageOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:onboarding_state, ::Smithy::Schema::Shapes::MemberShape.new(target: OnboardingState, name: "onboardingState", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationalState, name: "operationalState", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:usage_state, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageState, name: "usageState", traits: {"smithy.api#required" => {}}))
    CreateSolFunctionPackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSolFunctionPackageOutput.type = Types::CreateSolFunctionPackageOutput
    CreateSolNetworkInstanceInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceInput.add_member(:ns_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsName", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#required" => {}}))
    CreateSolNetworkInstanceInput.add_member(:ns_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsDescription", traits: {"smithy.api#length" => {"min" => 0, "max" => 255}}))
    CreateSolNetworkInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSolNetworkInstanceInput.type = Types::CreateSolNetworkInstanceInput
    CreateSolNetworkInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceOutput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceOutput.add_member(:ns_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsInstanceName", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSolNetworkInstanceOutput.type = Types::CreateSolNetworkInstanceOutput
    CreateSolNetworkPackageInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSolNetworkPackageInput.type = Types::CreateSolNetworkPackageInput
    CreateSolNetworkPackageOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "id", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:nsd_onboarding_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdOnboardingState, name: "nsdOnboardingState", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdOperationalState, name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:nsd_usage_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdUsageState, name: "nsdUsageState", traits: {"smithy.api#required" => {}}))
    CreateSolNetworkPackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateSolNetworkPackageOutput.type = Types::CreateSolNetworkPackageOutput
    DeleteSolFunctionPackageInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSolFunctionPackageInput.type = Types::DeleteSolFunctionPackageInput
    DeleteSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSolNetworkInstanceInput.type = Types::DeleteSolNetworkInstanceInput
    DeleteSolNetworkPackageInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSolNetworkPackageInput.type = Types::DeleteSolNetworkPackageInput
    DescriptorContentType.add_member(:text_plain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TEXT_PLAIN", traits: {"smithy.api#enumValue" => "text/plain"}))
    ErrorInfo.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCause, name: "cause"))
    ErrorInfo.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "details"))
    ErrorInfo.type = Types::ErrorInfo
    FunctionArtifactMeta.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideList, name: "overrides"))
    FunctionArtifactMeta.type = Types::FunctionArtifactMeta
    GetSolFunctionInstanceInput.add_member(:vnf_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstanceId, name: "vnfInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolFunctionInstanceInput.type = Types::GetSolFunctionInstanceInput
    GetSolFunctionInstanceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolFunctionInstanceMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolFunctionInstanceMetadata.type = Types::GetSolFunctionInstanceMetadata
    GetSolFunctionInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstanceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:vnfd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfdId, name: "vnfdId", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:vnf_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProvider"))
    GetSolFunctionInstanceOutput.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProductName"))
    GetSolFunctionInstanceOutput.add_member(:vnfd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfdVersion"))
    GetSolFunctionInstanceOutput.add_member(:instantiation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstantiationState, name: "instantiationState", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:instantiated_vnf_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolVnfInfo, name: "instantiatedVnfInfo"))
    GetSolFunctionInstanceOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolFunctionInstanceMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    GetSolFunctionInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetSolFunctionInstanceOutput.type = Types::GetSolFunctionInstanceOutput
    GetSolFunctionPackageContentInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolFunctionPackageContentInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageContentType, name: "accept", traits: {"smithy.api#httpHeader" => "Accept", "smithy.api#required" => {}}))
    GetSolFunctionPackageContentInput.type = Types::GetSolFunctionPackageContentInput
    GetSolFunctionPackageContentOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSolFunctionPackageContentOutput.add_member(:package_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "packageContent", traits: {"smithy.api#httpPayload" => {}}))
    GetSolFunctionPackageContentOutput[:http_payload] = :package_content
    GetSolFunctionPackageContentOutput[:http_payload_member] = GetSolFunctionPackageContentOutput.member(:package_content)
    GetSolFunctionPackageContentOutput.type = Types::GetSolFunctionPackageContentOutput
    GetSolFunctionPackageDescriptorInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolFunctionPackageDescriptorInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorContentType, name: "accept", traits: {"smithy.api#httpHeader" => "Accept", "smithy.api#required" => {}}))
    GetSolFunctionPackageDescriptorInput.type = Types::GetSolFunctionPackageDescriptorInput
    GetSolFunctionPackageDescriptorOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSolFunctionPackageDescriptorOutput.add_member(:vnfd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "vnfd", traits: {"smithy.api#httpPayload" => {}}))
    GetSolFunctionPackageDescriptorOutput[:http_payload] = :vnfd
    GetSolFunctionPackageDescriptorOutput[:http_payload_member] = GetSolFunctionPackageDescriptorOutput.member(:vnfd)
    GetSolFunctionPackageDescriptorOutput.type = Types::GetSolFunctionPackageDescriptorOutput
    GetSolFunctionPackageInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolFunctionPackageInput.type = Types::GetSolFunctionPackageInput
    GetSolFunctionPackageMetadata.add_member(:vnfd, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArtifactMeta, name: "vnfd"))
    GetSolFunctionPackageMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolFunctionPackageMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolFunctionPackageMetadata.type = Types::GetSolFunctionPackageMetadata
    GetSolFunctionPackageOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "id", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:onboarding_state, ::Smithy::Schema::Shapes::MemberShape.new(target: OnboardingState, name: "onboardingState", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationalState, name: "operationalState", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:usage_state, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageState, name: "usageState", traits: {"smithy.api#required" => {}}))
    GetSolFunctionPackageOutput.add_member(:vnfd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfdId"))
    GetSolFunctionPackageOutput.add_member(:vnf_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProvider"))
    GetSolFunctionPackageOutput.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProductName"))
    GetSolFunctionPackageOutput.add_member(:vnfd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfdVersion"))
    GetSolFunctionPackageOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolFunctionPackageMetadata, name: "metadata"))
    GetSolFunctionPackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetSolFunctionPackageOutput.type = Types::GetSolFunctionPackageOutput
    GetSolInstantiatedVnfInfo.add_member(:vnf_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfOperationalState, name: "vnfState"))
    GetSolInstantiatedVnfInfo.type = Types::GetSolInstantiatedVnfInfo
    GetSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkInstanceInput.type = Types::GetSolNetworkInstanceInput
    GetSolNetworkInstanceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkInstanceMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkInstanceMetadata.type = Types::GetSolNetworkInstanceMetadata
    GetSolNetworkInstanceOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:ns_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsInstanceName", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:ns_instance_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsInstanceDescription", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:nsd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdId, name: "nsdId", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:ns_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsState, name: "nsState"))
    GetSolNetworkInstanceOutput.add_member(:lcm_op_info, ::Smithy::Schema::Shapes::MemberShape.new(target: LcmOperationInfo, name: "lcmOpInfo"))
    GetSolNetworkInstanceOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolNetworkInstanceMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    GetSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetSolNetworkInstanceOutput.type = Types::GetSolNetworkInstanceOutput
    GetSolNetworkOperationInput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccId, name: "nsLcmOpOccId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkOperationInput.type = Types::GetSolNetworkOperationInput
    GetSolNetworkOperationMetadata.add_member(:update_ns_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateNsMetadata, name: "updateNsMetadata"))
    GetSolNetworkOperationMetadata.add_member(:modify_vnf_info_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ModifyVnfInfoMetadata, name: "modifyVnfInfoMetadata"))
    GetSolNetworkOperationMetadata.add_member(:instantiate_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: InstantiateMetadata, name: "instantiateMetadata"))
    GetSolNetworkOperationMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkOperationMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkOperationMetadata.type = Types::GetSolNetworkOperationMetadata
    GetSolNetworkOperationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccId, name: "id"))
    GetSolNetworkOperationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolNetworkOperationOutput.add_member(:operation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOperationState, name: "operationState"))
    GetSolNetworkOperationOutput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId"))
    GetSolNetworkOperationOutput.add_member(:lcm_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LcmOperationType, name: "lcmOperationType"))
    GetSolNetworkOperationOutput.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSolNetworkType, name: "updateType"))
    GetSolNetworkOperationOutput.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ProblemDetails, name: "error"))
    GetSolNetworkOperationOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolNetworkOperationMetadata, name: "metadata"))
    GetSolNetworkOperationOutput.add_member(:tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolNetworkOperationTasksList, name: "tasks"))
    GetSolNetworkOperationOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetSolNetworkOperationOutput.type = Types::GetSolNetworkOperationOutput
    GetSolNetworkOperationTaskDetails.add_member(:task_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "taskName"))
    GetSolNetworkOperationTaskDetails.add_member(:task_context, ::Smithy::Schema::Shapes::MemberShape.new(target: StringMap, name: "taskContext"))
    GetSolNetworkOperationTaskDetails.add_member(:task_error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorInfo, name: "taskErrorDetails"))
    GetSolNetworkOperationTaskDetails.add_member(:task_status, ::Smithy::Schema::Shapes::MemberShape.new(target: TaskStatus, name: "taskStatus"))
    GetSolNetworkOperationTaskDetails.add_member(:task_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "taskStartTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkOperationTaskDetails.add_member(:task_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "taskEndTime", traits: {"smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkOperationTaskDetails.type = Types::GetSolNetworkOperationTaskDetails
    GetSolNetworkOperationTasksList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolNetworkOperationTaskDetails, name: "member"))
    GetSolNetworkPackageContentInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkPackageContentInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageContentType, name: "accept", traits: {"smithy.api#httpHeader" => "Accept", "smithy.api#required" => {}}))
    GetSolNetworkPackageContentInput.type = Types::GetSolNetworkPackageContentInput
    GetSolNetworkPackageContentOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSolNetworkPackageContentOutput.add_member(:nsd_content, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "nsdContent", traits: {"smithy.api#httpPayload" => {}}))
    GetSolNetworkPackageContentOutput[:http_payload] = :nsd_content
    GetSolNetworkPackageContentOutput[:http_payload_member] = GetSolNetworkPackageContentOutput.member(:nsd_content)
    GetSolNetworkPackageContentOutput.type = Types::GetSolNetworkPackageContentOutput
    GetSolNetworkPackageDescriptorInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkPackageDescriptorInput.type = Types::GetSolNetworkPackageDescriptorInput
    GetSolNetworkPackageDescriptorOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DescriptorContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetSolNetworkPackageDescriptorOutput.add_member(:nsd, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Blob, name: "nsd", traits: {"smithy.api#httpPayload" => {}}))
    GetSolNetworkPackageDescriptorOutput[:http_payload] = :nsd
    GetSolNetworkPackageDescriptorOutput[:http_payload_member] = GetSolNetworkPackageDescriptorOutput.member(:nsd)
    GetSolNetworkPackageDescriptorOutput.type = Types::GetSolNetworkPackageDescriptorOutput
    GetSolNetworkPackageInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSolNetworkPackageInput.type = Types::GetSolNetworkPackageInput
    GetSolNetworkPackageMetadata.add_member(:nsd, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkArtifactMeta, name: "nsd"))
    GetSolNetworkPackageMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkPackageMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    GetSolNetworkPackageMetadata.type = Types::GetSolNetworkPackageMetadata
    GetSolNetworkPackageOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "id", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoArn, name: "arn", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_onboarding_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdOnboardingState, name: "nsdOnboardingState", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdOperationalState, name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_usage_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdUsageState, name: "nsdUsageState", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdId, name: "nsdId", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdName", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:nsd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdVersion", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:vnf_pkg_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgIdList, name: "vnfPkgIds", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolNetworkPackageMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    GetSolNetworkPackageOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    GetSolNetworkPackageOutput.type = Types::GetSolNetworkPackageOutput
    GetSolVnfInfo.add_member(:vnf_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfOperationalState, name: "vnfState"))
    GetSolVnfInfo.add_member(:vnfc_resource_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolVnfcResourceInfoList, name: "vnfcResourceInfo"))
    GetSolVnfInfo.type = Types::GetSolVnfInfo
    GetSolVnfcResourceInfo.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolVnfcResourceInfoMetadata, name: "metadata"))
    GetSolVnfcResourceInfo.type = Types::GetSolVnfcResourceInfo
    GetSolVnfcResourceInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolVnfcResourceInfo, name: "member"))
    GetSolVnfcResourceInfoMetadata.add_member(:node_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nodeGroup"))
    GetSolVnfcResourceInfoMetadata.add_member(:cluster, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "cluster"))
    GetSolVnfcResourceInfoMetadata.add_member(:helm_chart, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "helmChart"))
    GetSolVnfcResourceInfoMetadata.type = Types::GetSolVnfcResourceInfoMetadata
    InstantiateMetadata.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    InstantiateMetadata.add_member(:additional_params_for_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalParamsForNs"))
    InstantiateMetadata.type = Types::InstantiateMetadata
    InstantiateSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InstantiateSolNetworkInstanceInput.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dryRun", traits: {"smithy.api#httpQuery" => "dry_run"}))
    InstantiateSolNetworkInstanceInput.add_member(:additional_params_for_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalParamsForNs"))
    InstantiateSolNetworkInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    InstantiateSolNetworkInstanceInput.type = Types::InstantiateSolNetworkInstanceInput
    InstantiateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccId, name: "nsLcmOpOccId", traits: {"smithy.api#required" => {}}))
    InstantiateSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    InstantiateSolNetworkInstanceOutput.type = Types::InstantiateSolNetworkInstanceOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LcmOperationInfo.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccId, name: "nsLcmOpOccId", traits: {"smithy.api#required" => {}}))
    LcmOperationInfo.type = Types::LcmOperationInfo
    LcmOperationType.add_member(:instantiate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANTIATE", traits: {"smithy.api#enumValue" => "INSTANTIATE"}))
    LcmOperationType.add_member(:update, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE", traits: {"smithy.api#enumValue" => "UPDATE"}))
    LcmOperationType.add_member(:terminate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE", traits: {"smithy.api#enumValue" => "TERMINATE"}))
    ListSolFunctionInstanceInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstanceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:vnf_pkg_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfPkgName"))
    ListSolFunctionInstanceInfo.add_member(:instantiation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstantiationState, name: "instantiationState", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.add_member(:instantiated_vnf_info, ::Smithy::Schema::Shapes::MemberShape.new(target: GetSolInstantiatedVnfInfo, name: "instantiatedVnfInfo"))
    ListSolFunctionInstanceInfo.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolFunctionInstanceMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ListSolFunctionInstanceInfo.type = Types::ListSolFunctionInstanceInfo
    ListSolFunctionInstanceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolFunctionInstanceMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolFunctionInstanceMetadata.type = Types::ListSolFunctionInstanceMetadata
    ListSolFunctionInstanceResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolFunctionInstanceInfo, name: "member"))
    ListSolFunctionInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolFunctionInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolFunctionInstancesInput.type = Types::ListSolFunctionInstancesInput
    ListSolFunctionInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSolFunctionInstancesOutput.add_member(:function_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolFunctionInstanceResources, name: "functionInstances"))
    ListSolFunctionInstancesOutput.type = Types::ListSolFunctionInstancesOutput
    ListSolFunctionPackageInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "id", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:onboarding_state, ::Smithy::Schema::Shapes::MemberShape.new(target: OnboardingState, name: "onboardingState", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationalState, name: "operationalState", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:usage_state, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageState, name: "usageState", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackageInfo.add_member(:vnfd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfdId"))
    ListSolFunctionPackageInfo.add_member(:vnf_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProvider"))
    ListSolFunctionPackageInfo.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProductName"))
    ListSolFunctionPackageInfo.add_member(:vnfd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfdVersion"))
    ListSolFunctionPackageInfo.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolFunctionPackageMetadata, name: "metadata"))
    ListSolFunctionPackageInfo.type = Types::ListSolFunctionPackageInfo
    ListSolFunctionPackageMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolFunctionPackageMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolFunctionPackageMetadata.type = Types::ListSolFunctionPackageMetadata
    ListSolFunctionPackageResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolFunctionPackageInfo, name: "member"))
    ListSolFunctionPackagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolFunctionPackagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolFunctionPackagesInput.type = Types::ListSolFunctionPackagesInput
    ListSolFunctionPackagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSolFunctionPackagesOutput.add_member(:function_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolFunctionPackageResources, name: "functionPackages", traits: {"smithy.api#required" => {}}))
    ListSolFunctionPackagesOutput.type = Types::ListSolFunctionPackagesOutput
    ListSolNetworkInstanceInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "id", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:ns_instance_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsInstanceName", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:ns_instance_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsInstanceDescription", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:nsd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdId, name: "nsdId", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:ns_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsState, name: "nsState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkInstanceMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ListSolNetworkInstanceInfo.type = Types::ListSolNetworkInstanceInfo
    ListSolNetworkInstanceMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkInstanceMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkInstanceMetadata.type = Types::ListSolNetworkInstanceMetadata
    ListSolNetworkInstanceResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkInstanceInfo, name: "member"))
    ListSolNetworkInstancesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolNetworkInstancesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolNetworkInstancesInput.type = Types::ListSolNetworkInstancesInput
    ListSolNetworkInstancesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSolNetworkInstancesOutput.add_member(:network_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkInstanceResources, name: "networkInstances"))
    ListSolNetworkInstancesOutput.type = Types::ListSolNetworkInstancesOutput
    ListSolNetworkOperationsInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccId, name: "id", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:operation_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOperationState, name: "operationState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:lcm_operation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LcmOperationType, name: "lcmOperationType", traits: {"smithy.api#required" => {}}))
    ListSolNetworkOperationsInfo.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSolNetworkType, name: "updateType"))
    ListSolNetworkOperationsInfo.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ProblemDetails, name: "error"))
    ListSolNetworkOperationsInfo.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkOperationsMetadata, name: "metadata"))
    ListSolNetworkOperationsInfo.type = Types::ListSolNetworkOperationsInfo
    ListSolNetworkOperationsInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#httpQuery" => "nsInstanceId"}))
    ListSolNetworkOperationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolNetworkOperationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolNetworkOperationsInput.type = Types::ListSolNetworkOperationsInput
    ListSolNetworkOperationsMetadata.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId"))
    ListSolNetworkOperationsMetadata.add_member(:vnf_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstanceId, name: "vnfInstanceId"))
    ListSolNetworkOperationsMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkOperationsMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkOperationsMetadata.type = Types::ListSolNetworkOperationsMetadata
    ListSolNetworkOperationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSolNetworkOperationsOutput.add_member(:network_operations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkOperationsResources, name: "networkOperations"))
    ListSolNetworkOperationsOutput.type = Types::ListSolNetworkOperationsOutput
    ListSolNetworkOperationsResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkOperationsInfo, name: "member"))
    ListSolNetworkPackageInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "id", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:nsd_onboarding_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdOnboardingState, name: "nsdOnboardingState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdOperationalState, name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:nsd_usage_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdUsageState, name: "nsdUsageState", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.add_member(:nsd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdId"))
    ListSolNetworkPackageInfo.add_member(:nsd_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdName"))
    ListSolNetworkPackageInfo.add_member(:nsd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdVersion"))
    ListSolNetworkPackageInfo.add_member(:nsd_designer, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdDesigner"))
    ListSolNetworkPackageInfo.add_member(:nsd_invariant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdInvariantId"))
    ListSolNetworkPackageInfo.add_member(:vnf_pkg_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgIdList, name: "vnfPkgIds"))
    ListSolNetworkPackageInfo.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkPackageMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackageInfo.type = Types::ListSolNetworkPackageInfo
    ListSolNetworkPackageMetadata.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "createdAt", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkPackageMetadata.add_member(:last_modified, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Timestamp, name: "lastModified", traits: {"smithy.api#required" => {}, "smithy.api#timestampFormat" => "date-time"}))
    ListSolNetworkPackageMetadata.type = Types::ListSolNetworkPackageMetadata
    ListSolNetworkPackageResources.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkPackageInfo, name: "member"))
    ListSolNetworkPackagesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "max_results", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListSolNetworkPackagesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextpage_opaque_marker"}))
    ListSolNetworkPackagesInput.type = Types::ListSolNetworkPackagesInput
    ListSolNetworkPackagesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSolNetworkPackagesOutput.add_member(:network_packages, ::Smithy::Schema::Shapes::MemberShape.new(target: ListSolNetworkPackageResources, name: "networkPackages", traits: {"smithy.api#required" => {}}))
    ListSolNetworkPackagesOutput.type = Types::ListSolNetworkPackagesOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TNBResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    ModifyVnfInfoMetadata.add_member(:vnf_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstanceId, name: "vnfInstanceId", traits: {"smithy.api#required" => {}}))
    ModifyVnfInfoMetadata.add_member(:vnf_configurable_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "vnfConfigurableProperties", traits: {"smithy.api#required" => {}}))
    ModifyVnfInfoMetadata.type = Types::ModifyVnfInfoMetadata
    NetworkArtifactMeta.add_member(:overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: OverrideList, name: "overrides"))
    NetworkArtifactMeta.type = Types::NetworkArtifactMeta
    NsLcmOperationState.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PROCESSING", traits: {"smithy.api#enumValue" => "PROCESSING"}))
    NsLcmOperationState.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    NsLcmOperationState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    NsLcmOperationState.add_member(:cancelling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLING", traits: {"smithy.api#enumValue" => "CANCELLING"}))
    NsLcmOperationState.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    NsState.add_member(:instantiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANTIATED", traits: {"smithy.api#enumValue" => "INSTANTIATED"}))
    NsState.add_member(:not_instantiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_INSTANTIATED", traits: {"smithy.api#enumValue" => "NOT_INSTANTIATED"}))
    NsState.add_member(:updated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATED", traits: {"smithy.api#enumValue" => "UPDATED"}))
    NsState.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    NsState.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    NsState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    NsState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    NsState.add_member(:instantiate_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANTIATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "INSTANTIATE_IN_PROGRESS"}))
    NsState.add_member(:intent_to_update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTENT_TO_UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "INTENT_TO_UPDATE_IN_PROGRESS"}))
    NsState.add_member(:update_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    NsState.add_member(:terminate_in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TERMINATE_IN_PROGRESS", traits: {"smithy.api#enumValue" => "TERMINATE_IN_PROGRESS"}))
    NsdOnboardingState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    NsdOnboardingState.add_member(:onboarded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONBOARDED", traits: {"smithy.api#enumValue" => "ONBOARDED"}))
    NsdOnboardingState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    NsdOperationalState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    NsdOperationalState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    NsdUsageState.add_member(:in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_USE", traits: {"smithy.api#enumValue" => "IN_USE"}))
    NsdUsageState.add_member(:not_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_IN_USE", traits: {"smithy.api#enumValue" => "NOT_IN_USE"}))
    OnboardingState.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATED", traits: {"smithy.api#enumValue" => "CREATED"}))
    OnboardingState.add_member(:onboarded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONBOARDED", traits: {"smithy.api#enumValue" => "ONBOARDED"}))
    OnboardingState.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    OperationalState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    OperationalState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    OverrideList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ToscaOverride, name: "member"))
    PackageContentType.add_member(:application_zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPLICATION_ZIP", traits: {"smithy.api#enumValue" => "application/zip"}))
    ProblemDetails.add_member(:detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "detail", traits: {"smithy.api#required" => {}}))
    ProblemDetails.add_member(:title, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "title"))
    ProblemDetails.type = Types::ProblemDetails
    PutSolFunctionPackageContentInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSolFunctionPackageContentInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PutSolFunctionPackageContentInput.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBlob, name: "file", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutSolFunctionPackageContentInput[:http_payload] = :file
    PutSolFunctionPackageContentInput[:http_payload_member] = PutSolFunctionPackageContentInput.member(:file)
    PutSolFunctionPackageContentInput.type = Types::PutSolFunctionPackageContentInput
    PutSolFunctionPackageContentMetadata.add_member(:vnfd, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArtifactMeta, name: "vnfd"))
    PutSolFunctionPackageContentMetadata.type = Types::PutSolFunctionPackageContentMetadata
    PutSolFunctionPackageContentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "id", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:vnfd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfdId, name: "vnfdId", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProductName", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:vnf_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProvider", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:vnfd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfdVersion", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PutSolFunctionPackageContentMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    PutSolFunctionPackageContentOutput.type = Types::PutSolFunctionPackageContentOutput
    PutSolNetworkPackageContentInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutSolNetworkPackageContentInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    PutSolNetworkPackageContentInput.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBlob, name: "file", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PutSolNetworkPackageContentInput[:http_payload] = :file
    PutSolNetworkPackageContentInput[:http_payload_member] = PutSolNetworkPackageContentInput.member(:file)
    PutSolNetworkPackageContentInput.type = Types::PutSolNetworkPackageContentInput
    PutSolNetworkPackageContentMetadata.add_member(:nsd, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkArtifactMeta, name: "nsd"))
    PutSolNetworkPackageContentMetadata.type = Types::PutSolNetworkPackageContentMetadata
    PutSolNetworkPackageContentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "id", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoArn, name: "arn", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:nsd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdId, name: "nsdId", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:nsd_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdName", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:nsd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdVersion", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:vnf_pkg_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgIdList, name: "vnfPkgIds", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: PutSolNetworkPackageContentMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    PutSolNetworkPackageContentOutput.type = Types::PutSolNetworkPackageContentOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    StringMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TNBResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TaskStatus.add_member(:scheduled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SCHEDULED", traits: {"smithy.api#enumValue" => "SCHEDULED"}))
    TaskStatus.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    TaskStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    TaskStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    TaskStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    TaskStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    TaskStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    TerminateSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TerminateSolNetworkInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    TerminateSolNetworkInstanceInput.type = Types::TerminateSolNetworkInstanceInput
    TerminateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccId, name: "nsLcmOpOccId"))
    TerminateSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    TerminateSolNetworkInstanceOutput.type = Types::TerminateSolNetworkInstanceOutput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    ToscaOverride.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    ToscaOverride.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "defaultValue"))
    ToscaOverride.type = Types::ToscaOverride
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TNBResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateNsMetadata.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    UpdateNsMetadata.add_member(:additional_params_for_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalParamsForNs"))
    UpdateNsMetadata.type = Types::UpdateNsMetadata
    UpdateSolFunctionPackageInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSolFunctionPackageInput.add_member(:operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationalState, name: "operationalState", traits: {"smithy.api#required" => {}}))
    UpdateSolFunctionPackageInput.type = Types::UpdateSolFunctionPackageInput
    UpdateSolFunctionPackageOutput.add_member(:operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: OperationalState, name: "operationalState", traits: {"smithy.api#required" => {}}))
    UpdateSolFunctionPackageOutput.type = Types::UpdateSolFunctionPackageOutput
    UpdateSolNetworkInstanceInput.add_member(:ns_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsInstanceId, name: "nsInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSolNetworkInstanceInput.add_member(:update_type, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSolNetworkType, name: "updateType", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkInstanceInput.add_member(:modify_vnf_info_data, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSolNetworkModify, name: "modifyVnfInfoData"))
    UpdateSolNetworkInstanceInput.add_member(:update_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateSolNetworkServiceData, name: "updateNs"))
    UpdateSolNetworkInstanceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    UpdateSolNetworkInstanceInput.type = Types::UpdateSolNetworkInstanceInput
    UpdateSolNetworkInstanceOutput.add_member(:ns_lcm_op_occ_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsLcmOpOccId, name: "nsLcmOpOccId"))
    UpdateSolNetworkInstanceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    UpdateSolNetworkInstanceOutput.type = Types::UpdateSolNetworkInstanceOutput
    UpdateSolNetworkModify.add_member(:vnf_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfInstanceId, name: "vnfInstanceId", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkModify.add_member(:vnf_configurable_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "vnfConfigurableProperties", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkModify.type = Types::UpdateSolNetworkModify
    UpdateSolNetworkPackageInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSolNetworkPackageInput.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdOperationalState, name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkPackageInput.type = Types::UpdateSolNetworkPackageInput
    UpdateSolNetworkPackageOutput.add_member(:nsd_operational_state, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdOperationalState, name: "nsdOperationalState", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkPackageOutput.type = Types::UpdateSolNetworkPackageOutput
    UpdateSolNetworkServiceData.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#required" => {}}))
    UpdateSolNetworkServiceData.add_member(:additional_params_for_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "additionalParamsForNs"))
    UpdateSolNetworkServiceData.type = Types::UpdateSolNetworkServiceData
    UpdateSolNetworkType.add_member(:modify_vnf_information, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MODIFY_VNF_INFORMATION", traits: {"smithy.api#enumValue" => "MODIFY_VNF_INFORMATION"}))
    UpdateSolNetworkType.add_member(:update_ns, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATE_NS", traits: {"smithy.api#enumValue" => "UPDATE_NS"}))
    UsageState.add_member(:in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_USE", traits: {"smithy.api#enumValue" => "IN_USE"}))
    UsageState.add_member(:not_in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_IN_USE", traits: {"smithy.api#enumValue" => "NOT_IN_USE"}))
    ValidateSolFunctionPackageContentInput.add_member(:vnf_pkg_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "vnfPkgId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    ValidateSolFunctionPackageContentInput.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBlob, name: "file", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentInput[:http_payload] = :file
    ValidateSolFunctionPackageContentInput[:http_payload_member] = ValidateSolFunctionPackageContentInput.member(:file)
    ValidateSolFunctionPackageContentInput.type = Types::ValidateSolFunctionPackageContentInput
    ValidateSolFunctionPackageContentMetadata.add_member(:vnfd, ::Smithy::Schema::Shapes::MemberShape.new(target: FunctionArtifactMeta, name: "vnfd"))
    ValidateSolFunctionPackageContentMetadata.type = Types::ValidateSolFunctionPackageContentMetadata
    ValidateSolFunctionPackageContentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "id", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:vnfd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfdId, name: "vnfdId", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:vnf_product_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProductName", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:vnf_provider, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfProvider", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:vnfd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "vnfdVersion", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateSolFunctionPackageContentMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ValidateSolFunctionPackageContentOutput.type = Types::ValidateSolFunctionPackageContentOutput
    ValidateSolNetworkPackageContentInput.add_member(:nsd_info_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "nsdInfoId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageContentType, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    ValidateSolNetworkPackageContentInput.add_member(:file, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitiveBlob, name: "file", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentInput[:http_payload] = :file
    ValidateSolNetworkPackageContentInput[:http_payload_member] = ValidateSolNetworkPackageContentInput.member(:file)
    ValidateSolNetworkPackageContentInput.type = Types::ValidateSolNetworkPackageContentInput
    ValidateSolNetworkPackageContentMetadata.add_member(:nsd, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkArtifactMeta, name: "nsd"))
    ValidateSolNetworkPackageContentMetadata.type = Types::ValidateSolNetworkPackageContentMetadata
    ValidateSolNetworkPackageContentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoId, name: "id", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdInfoArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NsdId, name: "nsdId", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdName", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:nsd_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nsdVersion", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:vnf_pkg_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgIdList, name: "vnfPkgIds", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidateSolNetworkPackageContentMetadata, name: "metadata", traits: {"smithy.api#required" => {}}))
    ValidateSolNetworkPackageContentOutput.type = Types::ValidateSolNetworkPackageContentOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    VnfInstantiationState.add_member(:instantiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INSTANTIATED", traits: {"smithy.api#enumValue" => "INSTANTIATED"}))
    VnfInstantiationState.add_member(:not_instantiated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_INSTANTIATED", traits: {"smithy.api#enumValue" => "NOT_INSTANTIATED"}))
    VnfOperationalState.add_member(:started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTED", traits: {"smithy.api#enumValue" => "STARTED"}))
    VnfOperationalState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    VnfPkgIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VnfPkgId, name: "member"))

    TNB = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.tnb#TNB"
      service.name = "TNB"
      service.version = "2008-10-21"
      service.traits = {"aws.api#service" => {"sdkId" => "tnb", "apiVersion" => "v1", "arnNamespace" => "tnb"}, "aws.auth#sigv4" => {"name" => "tnb"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS Telco Network Builder", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://tnb-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://tnb-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://tnb.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://tnb.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:cancel_sol_network_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#CancelSolNetworkOperation"
        operation.name = "CancelSolNetworkOperation"
        operation.input = CancelSolNetworkOperationInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}/cancel", "code" => 202}}
      end)
      service.add_operation(:create_sol_function_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#CreateSolFunctionPackage"
        operation.name = "CreateSolFunctionPackage"
        operation.input = CreateSolFunctionPackageInput
        operation.output = CreateSolFunctionPackageOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/vnfpkgm/v1/vnf_packages", "code" => 201}}
      end)
      service.add_operation(:create_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#CreateSolNetworkInstance"
        operation.name = "CreateSolNetworkInstance"
        operation.input = CreateSolNetworkInstanceInput
        operation.output = CreateSolNetworkInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_instances", "code" => 201}}
      end)
      service.add_operation(:create_sol_network_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#CreateSolNetworkPackage"
        operation.name = "CreateSolNetworkPackage"
        operation.input = CreateSolNetworkPackageInput
        operation.output = CreateSolNetworkPackageOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nsd/v1/ns_descriptors", "code" => 201}}
      end)
      service.add_operation(:delete_sol_function_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#DeleteSolFunctionPackage"
        operation.name = "DeleteSolFunctionPackage"
        operation.input = DeleteSolFunctionPackageInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#DeleteSolNetworkInstance"
        operation.name = "DeleteSolNetworkInstance"
        operation.input = DeleteSolNetworkInstanceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_sol_network_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#DeleteSolNetworkPackage"
        operation.name = "DeleteSolNetworkPackage"
        operation.input = DeleteSolNetworkPackageInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_sol_function_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolFunctionInstance"
        operation.name = "GetSolFunctionInstance"
        operation.input = GetSolFunctionInstanceInput
        operation.output = GetSolFunctionInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnflcm/v1/vnf_instances/{vnfInstanceId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_function_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolFunctionPackage"
        operation.name = "GetSolFunctionPackage"
        operation.input = GetSolFunctionPackageInput
        operation.output = GetSolFunctionPackageOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_function_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolFunctionPackageContent"
        operation.name = "GetSolFunctionPackageContent"
        operation.input = GetSolFunctionPackageContentInput
        operation.output = GetSolFunctionPackageContentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_function_package_descriptor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolFunctionPackageDescriptor"
        operation.name = "GetSolFunctionPackageDescriptor"
        operation.input = GetSolFunctionPackageDescriptorInput
        operation.output = GetSolFunctionPackageDescriptorOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/vnfd"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkInstance"
        operation.name = "GetSolNetworkInstance"
        operation.input = GetSolNetworkInstanceInput
        operation.output = GetSolNetworkInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_operation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkOperation"
        operation.name = "GetSolNetworkOperation"
        operation.input = GetSolNetworkOperationInput
        operation.output = GetSolNetworkOperationOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkPackage"
        operation.name = "GetSolNetworkPackage"
        operation.input = GetSolNetworkPackageInput
        operation.output = GetSolNetworkPackageOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkPackageContent"
        operation.name = "GetSolNetworkPackageContent"
        operation.input = GetSolNetworkPackageContentInput
        operation.output = GetSolNetworkPackageContentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_sol_network_package_descriptor, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#GetSolNetworkPackageDescriptor"
        operation.name = "GetSolNetworkPackageDescriptor"
        operation.input = GetSolNetworkPackageDescriptorInput
        operation.output = GetSolNetworkPackageDescriptorOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:instantiate_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#InstantiateSolNetworkInstance"
        operation.name = "InstantiateSolNetworkInstance"
        operation.input = InstantiateSolNetworkInstanceInput
        operation.output = InstantiateSolNetworkInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}/instantiate", "code" => 201}}
      end)
      service.add_operation(:list_sol_function_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolFunctionInstances"
        operation.name = "ListSolFunctionInstances"
        operation.input = ListSolFunctionInstancesInput
        operation.output = ListSolFunctionInstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnflcm/v1/vnf_instances"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolFunctionInstances.new
      end)
      service.add_operation(:list_sol_function_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolFunctionPackages"
        operation.name = "ListSolFunctionPackages"
        operation.input = ListSolFunctionPackagesInput
        operation.output = ListSolFunctionPackagesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/vnfpkgm/v1/vnf_packages"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolFunctionPackages.new
      end)
      service.add_operation(:list_sol_network_instances, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolNetworkInstances"
        operation.name = "ListSolNetworkInstances"
        operation.input = ListSolNetworkInstancesInput
        operation.output = ListSolNetworkInstancesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nslcm/v1/ns_instances"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolNetworkInstances.new
      end)
      service.add_operation(:list_sol_network_operations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolNetworkOperations"
        operation.name = "ListSolNetworkOperations"
        operation.input = ListSolNetworkOperationsInput
        operation.output = ListSolNetworkOperationsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nslcm/v1/ns_lcm_op_occs"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolNetworkOperations.new
      end)
      service.add_operation(:list_sol_network_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListSolNetworkPackages"
        operation.name = "ListSolNetworkPackages"
        operation.input = ListSolNetworkPackagesInput
        operation.output = ListSolNetworkPackagesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/sol/nsd/v1/ns_descriptors"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSolNetworkPackages.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "GET"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_sol_function_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#PutSolFunctionPackageContent"
        operation.name = "PutSolFunctionPackageContent"
        operation.input = PutSolFunctionPackageContentInput
        operation.output = PutSolFunctionPackageContentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:put_sol_network_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#PutSolNetworkPackageContent"
        operation.name = "PutSolNetworkPackageContent"
        operation.input = PutSolNetworkPackageContentInput
        operation.output = PutSolNetworkPackageContentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "POST"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:terminate_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#TerminateSolNetworkInstance"
        operation.name = "TerminateSolNetworkInstance"
        operation.input = TerminateSolNetworkInstanceInput
        operation.output = TerminateSolNetworkInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}/terminate", "code" => 201}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"uri" => "/tags/{resourceArn}", "method" => "DELETE"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_sol_function_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#UpdateSolFunctionPackage"
        operation.name = "UpdateSolFunctionPackage"
        operation.input = UpdateSolFunctionPackageInput
        operation.output = UpdateSolFunctionPackageOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}"}}
      end)
      service.add_operation(:update_sol_network_instance, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#UpdateSolNetworkInstance"
        operation.name = "UpdateSolNetworkInstance"
        operation.input = UpdateSolNetworkInstanceInput
        operation.output = UpdateSolNetworkInstanceOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sol/nslcm/v1/ns_instances/{nsInstanceId}/update", "code" => 201}}
      end)
      service.add_operation(:update_sol_network_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#UpdateSolNetworkPackage"
        operation.name = "UpdateSolNetworkPackage"
        operation.input = UpdateSolNetworkPackageInput
        operation.output = UpdateSolNetworkPackageOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/sol/nsd/v1/ns_descriptors/{nsdInfoId}"}}
      end)
      service.add_operation(:validate_sol_function_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ValidateSolFunctionPackageContent"
        operation.name = "ValidateSolFunctionPackageContent"
        operation.input = ValidateSolFunctionPackageContentInput
        operation.output = ValidateSolFunctionPackageContentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content/validate", "code" => 202}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:validate_sol_network_package_content, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.tnb#ValidateSolNetworkPackageContent"
        operation.name = "ValidateSolNetworkPackageContent"
        operation.input = ValidateSolNetworkPackageContentInput
        operation.output = ValidateSolNetworkPackageContentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
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
