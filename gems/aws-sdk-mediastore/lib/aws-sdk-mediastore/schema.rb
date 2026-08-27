# frozen_string_literal: true

# This is generated code!

module Aws::MediaStore
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllowedHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#AllowedHeaders", name: "AllowedHeaders", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AllowedMethods = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#AllowedMethods", name: "AllowedMethods", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AllowedOrigins = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#AllowedOrigins", name: "AllowedOrigins", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Container = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#Container", name: "Container")
    ContainerARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#ContainerARN", name: "ContainerARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/[\\w-]{1,255}$"})
    ContainerAccessLoggingEnabled = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.mediastore#ContainerAccessLoggingEnabled", name: "ContainerAccessLoggingEnabled")
    ContainerInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#ContainerInUseException", name: "ContainerInUseException", traits: {"smithy.api#error" => "client"})
    ContainerLevelMetrics = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediastore#ContainerLevelMetrics", name: "ContainerLevelMetrics")
    ContainerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#ContainerList", name: "ContainerList")
    ContainerListLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediastore#ContainerListLimit", name: "ContainerListLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ContainerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#ContainerName", name: "ContainerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w-]+$"})
    ContainerNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#ContainerNotFoundException", name: "ContainerNotFoundException", traits: {"smithy.api#error" => "client"})
    ContainerPolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#ContainerPolicy", name: "ContainerPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[\\x00-\\x7F]+$"})
    ContainerStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediastore#ContainerStatus", name: "ContainerStatus", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    CorsPolicy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#CorsPolicy", name: "CorsPolicy", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CorsPolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#CorsPolicyNotFoundException", name: "CorsPolicyNotFoundException", traits: {"smithy.api#error" => "client"})
    CorsRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#CorsRule", name: "CorsRule")
    CreateContainerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#CreateContainerInput", name: "CreateContainerInput")
    CreateContainerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#CreateContainerOutput", name: "CreateContainerOutput")
    DeleteContainerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteContainerInput", name: "DeleteContainerInput")
    DeleteContainerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteContainerOutput", name: "DeleteContainerOutput")
    DeleteContainerPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteContainerPolicyInput", name: "DeleteContainerPolicyInput")
    DeleteContainerPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteContainerPolicyOutput", name: "DeleteContainerPolicyOutput")
    DeleteCorsPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteCorsPolicyInput", name: "DeleteCorsPolicyInput")
    DeleteCorsPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteCorsPolicyOutput", name: "DeleteCorsPolicyOutput")
    DeleteLifecyclePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteLifecyclePolicyInput", name: "DeleteLifecyclePolicyInput")
    DeleteLifecyclePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteLifecyclePolicyOutput", name: "DeleteLifecyclePolicyOutput")
    DeleteMetricPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteMetricPolicyInput", name: "DeleteMetricPolicyInput")
    DeleteMetricPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DeleteMetricPolicyOutput", name: "DeleteMetricPolicyOutput")
    DescribeContainerInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DescribeContainerInput", name: "DescribeContainerInput")
    DescribeContainerOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#DescribeContainerOutput", name: "DescribeContainerOutput")
    Endpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#Endpoint", name: "Endpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[ \\w:\\.\\?-]+$"})
    ExposeHeaders = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#ExposeHeaders", name: "ExposeHeaders", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetContainerPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#GetContainerPolicyInput", name: "GetContainerPolicyInput")
    GetContainerPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#GetContainerPolicyOutput", name: "GetContainerPolicyOutput")
    GetCorsPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#GetCorsPolicyInput", name: "GetCorsPolicyInput")
    GetCorsPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#GetCorsPolicyOutput", name: "GetCorsPolicyOutput")
    GetLifecyclePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#GetLifecyclePolicyInput", name: "GetLifecyclePolicyInput")
    GetLifecyclePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#GetLifecyclePolicyOutput", name: "GetLifecyclePolicyOutput")
    GetMetricPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#GetMetricPolicyInput", name: "GetMetricPolicyInput")
    GetMetricPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#GetMetricPolicyOutput", name: "GetMetricPolicyOutput")
    Header = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#Header", name: "Header", traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    InternalServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#InternalServerError", name: "InternalServerError", traits: {"smithy.api#error" => "server"})
    LifecyclePolicy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#LifecyclePolicy", name: "LifecyclePolicy", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListContainersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#ListContainersInput", name: "ListContainersInput")
    ListContainersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#ListContainersOutput", name: "ListContainersOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MaxAgeSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.mediastore#MaxAgeSeconds", name: "MaxAgeSeconds", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MethodName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.mediastore#MethodName", name: "MethodName")
    MetricPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#MetricPolicy", name: "MetricPolicy")
    MetricPolicyRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#MetricPolicyRule", name: "MetricPolicyRule")
    MetricPolicyRules = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#MetricPolicyRules", name: "MetricPolicyRules", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ObjectGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#ObjectGroup", name: "ObjectGroup", traits: {"smithy.api#length" => {"min" => 1, "max" => 900}, "smithy.api#pattern" => "^/?(?:[A-Za-z0-9_=:\\.\\-\\~\\*]+/){0,10}(?:[A-Za-z0-9_=:\\.\\-\\~\\*]+)?/?$"})
    ObjectGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#ObjectGroupName", name: "ObjectGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    Origin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#Origin", name: "Origin", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z=/+]+$"})
    PolicyNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PolicyNotFoundException", name: "PolicyNotFoundException", traits: {"smithy.api#error" => "client"})
    PutContainerPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PutContainerPolicyInput", name: "PutContainerPolicyInput")
    PutContainerPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PutContainerPolicyOutput", name: "PutContainerPolicyOutput")
    PutCorsPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PutCorsPolicyInput", name: "PutCorsPolicyInput")
    PutCorsPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PutCorsPolicyOutput", name: "PutCorsPolicyOutput")
    PutLifecyclePolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PutLifecyclePolicyInput", name: "PutLifecyclePolicyInput")
    PutLifecyclePolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PutLifecyclePolicyOutput", name: "PutLifecyclePolicyOutput")
    PutMetricPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PutMetricPolicyInput", name: "PutMetricPolicyInput")
    PutMetricPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#PutMetricPolicyOutput", name: "PutMetricPolicyOutput")
    StartAccessLoggingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#StartAccessLoggingInput", name: "StartAccessLoggingInput")
    StartAccessLoggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#StartAccessLoggingOutput", name: "StartAccessLoggingOutput")
    StopAccessLoggingInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#StopAccessLoggingInput", name: "StopAccessLoggingInput")
    StopAccessLoggingOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#StopAccessLoggingOutput", name: "StopAccessLoggingOutput")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#TagKeyList", name: "TagKeyList")
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.mediastore#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.mediastore#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.mediastore#TimeStamp", name: "TimeStamp")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.mediastore#UntagResourceOutput", name: "UntagResourceOutput")

    AllowedHeaders.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "member")
    AllowedMethods.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MethodName, name: "member")
    AllowedOrigins.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "member")
    Container.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: Endpoint, name: "Endpoint"))
    Container.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "CreationTime"))
    Container.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerARN, name: "ARN"))
    Container.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "Name"))
    Container.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerStatus, name: "Status"))
    Container.add_member(:access_logging_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerAccessLoggingEnabled, name: "AccessLoggingEnabled"))
    Container.type = Types::Container
    ContainerInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ContainerInUseException.type = Types::ContainerInUseException
    ContainerLevelMetrics.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContainerLevelMetrics.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContainerList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Container, name: "member")
    ContainerNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ContainerNotFoundException.type = Types::ContainerNotFoundException
    ContainerStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ContainerStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    CorsPolicy.member = ::Smithy::Schema::Shapes::MemberShape.new(target: CorsRule, name: "member")
    CorsPolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    CorsPolicyNotFoundException.type = Types::CorsPolicyNotFoundException
    CorsRule.add_member(:allowed_origins, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedOrigins, name: "AllowedOrigins", traits: {"smithy.api#required" => {}}))
    CorsRule.add_member(:allowed_methods, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedMethods, name: "AllowedMethods"))
    CorsRule.add_member(:allowed_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowedHeaders, name: "AllowedHeaders", traits: {"smithy.api#required" => {}}))
    CorsRule.add_member(:max_age_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxAgeSeconds, name: "MaxAgeSeconds", traits: {"smithy.api#default" => 0}))
    CorsRule.add_member(:expose_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: ExposeHeaders, name: "ExposeHeaders"))
    CorsRule.type = Types::CorsRule
    CreateContainerInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    CreateContainerInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    CreateContainerInput.type = Types::CreateContainerInput
    CreateContainerOutput.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: Container, name: "Container", traits: {"smithy.api#required" => {}}))
    CreateContainerOutput.type = Types::CreateContainerOutput
    DeleteContainerInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    DeleteContainerInput.type = Types::DeleteContainerInput
    DeleteContainerOutput.type = Types::DeleteContainerOutput
    DeleteContainerPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    DeleteContainerPolicyInput.type = Types::DeleteContainerPolicyInput
    DeleteContainerPolicyOutput.type = Types::DeleteContainerPolicyOutput
    DeleteCorsPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    DeleteCorsPolicyInput.type = Types::DeleteCorsPolicyInput
    DeleteCorsPolicyOutput.type = Types::DeleteCorsPolicyOutput
    DeleteLifecyclePolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    DeleteLifecyclePolicyInput.type = Types::DeleteLifecyclePolicyInput
    DeleteLifecyclePolicyOutput.type = Types::DeleteLifecyclePolicyOutput
    DeleteMetricPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    DeleteMetricPolicyInput.type = Types::DeleteMetricPolicyInput
    DeleteMetricPolicyOutput.type = Types::DeleteMetricPolicyOutput
    DescribeContainerInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName"))
    DescribeContainerInput.type = Types::DescribeContainerInput
    DescribeContainerOutput.add_member(:container, ::Smithy::Schema::Shapes::MemberShape.new(target: Container, name: "Container"))
    DescribeContainerOutput.type = Types::DescribeContainerOutput
    ExposeHeaders.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Header, name: "member")
    GetContainerPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    GetContainerPolicyInput.type = Types::GetContainerPolicyInput
    GetContainerPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    GetContainerPolicyOutput.type = Types::GetContainerPolicyOutput
    GetCorsPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    GetCorsPolicyInput.type = Types::GetCorsPolicyInput
    GetCorsPolicyOutput.add_member(:cors_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CorsPolicy, name: "CorsPolicy", traits: {"smithy.api#required" => {}}))
    GetCorsPolicyOutput.type = Types::GetCorsPolicyOutput
    GetLifecyclePolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    GetLifecyclePolicyInput.type = Types::GetLifecyclePolicyInput
    GetLifecyclePolicyOutput.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicy, name: "LifecyclePolicy", traits: {"smithy.api#required" => {}}))
    GetLifecyclePolicyOutput.type = Types::GetLifecyclePolicyOutput
    GetMetricPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    GetMetricPolicyInput.type = Types::GetMetricPolicyInput
    GetMetricPolicyOutput.add_member(:metric_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPolicy, name: "MetricPolicy", traits: {"smithy.api#required" => {}}))
    GetMetricPolicyOutput.type = Types::GetMetricPolicyOutput
    InternalServerError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServerError.type = Types::InternalServerError
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListContainersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListContainersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerListLimit, name: "MaxResults"))
    ListContainersInput.type = Types::ListContainersInput
    ListContainersOutput.add_member(:containers, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerList, name: "Containers", traits: {"smithy.api#required" => {}}))
    ListContainersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "NextToken"))
    ListContainersOutput.type = Types::ListContainersOutput
    ListTagsForResourceInput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerARN, name: "Resource", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MethodName.add_member(:put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUT", traits: {"smithy.api#enumValue" => "PUT"}))
    MethodName.add_member(:get, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GET", traits: {"smithy.api#enumValue" => "GET"}))
    MethodName.add_member(:delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE", traits: {"smithy.api#enumValue" => "DELETE"}))
    MethodName.add_member(:head, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HEAD", traits: {"smithy.api#enumValue" => "HEAD"}))
    MetricPolicy.add_member(:container_level_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerLevelMetrics, name: "ContainerLevelMetrics", traits: {"smithy.api#required" => {}}))
    MetricPolicy.add_member(:metric_policy_rules, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPolicyRules, name: "MetricPolicyRules"))
    MetricPolicy.type = Types::MetricPolicy
    MetricPolicyRule.add_member(:object_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectGroup, name: "ObjectGroup", traits: {"smithy.api#required" => {}}))
    MetricPolicyRule.add_member(:object_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ObjectGroupName, name: "ObjectGroupName", traits: {"smithy.api#required" => {}}))
    MetricPolicyRule.type = Types::MetricPolicyRule
    MetricPolicyRules.member = ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPolicyRule, name: "member")
    PolicyNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PutContainerPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    PutContainerPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerPolicy, name: "Policy", traits: {"smithy.api#required" => {}}))
    PutContainerPolicyInput.type = Types::PutContainerPolicyInput
    PutContainerPolicyOutput.type = Types::PutContainerPolicyOutput
    PutCorsPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    PutCorsPolicyInput.add_member(:cors_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: CorsPolicy, name: "CorsPolicy", traits: {"smithy.api#required" => {}}))
    PutCorsPolicyInput.type = Types::PutCorsPolicyInput
    PutCorsPolicyOutput.type = Types::PutCorsPolicyOutput
    PutLifecyclePolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    PutLifecyclePolicyInput.add_member(:lifecycle_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LifecyclePolicy, name: "LifecyclePolicy", traits: {"smithy.api#required" => {}}))
    PutLifecyclePolicyInput.type = Types::PutLifecyclePolicyInput
    PutLifecyclePolicyOutput.type = Types::PutLifecyclePolicyOutput
    PutMetricPolicyInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    PutMetricPolicyInput.add_member(:metric_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricPolicy, name: "MetricPolicy", traits: {"smithy.api#required" => {}}))
    PutMetricPolicyInput.type = Types::PutMetricPolicyInput
    PutMetricPolicyOutput.type = Types::PutMetricPolicyOutput
    StartAccessLoggingInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    StartAccessLoggingInput.type = Types::StartAccessLoggingInput
    StartAccessLoggingOutput.type = Types::StartAccessLoggingOutput
    StopAccessLoggingInput.add_member(:container_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerName, name: "ContainerName", traits: {"smithy.api#required" => {}}))
    StopAccessLoggingInput.type = Types::StopAccessLoggingInput
    StopAccessLoggingOutput.type = Types::StopAccessLoggingOutput
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceInput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerARN, name: "Resource", traits: {"smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    UntagResourceInput.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ContainerARN, name: "Resource", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput

    MediaStore20170901 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediastore#MediaStore_20170901"
      service.name = "MediaStore20170901"
      service.version = "2017-09-01"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaStore", "arnNamespace" => "mediastore", "cloudFormationName" => "MediaStore", "cloudTrailEventSource" => "mediastore.amazonaws.com", "endpointPrefix" => "mediastore"}, "aws.auth#sigv4" => {"name" => "mediastore"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Elemental MediaStore", "smithy.api#xmlNamespace" => {"uri" => "https://mediastore.amazonaws.com/doc/2017-09-01"}}
      service.add_operation(:create_container, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#CreateContainer"
        operation.name = "CreateContainer"
        operation.input = CreateContainerInput
        operation.output = CreateContainerOutput
        operation.errors << ContainerInUseException
        operation.errors << InternalServerError
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:delete_container, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteContainer"
        operation.name = "DeleteContainer"
        operation.input = DeleteContainerInput
        operation.output = DeleteContainerOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:delete_container_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteContainerPolicy"
        operation.name = "DeleteContainerPolicy"
        operation.input = DeleteContainerPolicyInput
        operation.output = DeleteContainerPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.errors << PolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_cors_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteCorsPolicy"
        operation.name = "DeleteCorsPolicy"
        operation.input = DeleteCorsPolicyInput
        operation.output = DeleteCorsPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << CorsPolicyNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:delete_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = DeleteLifecyclePolicyInput
        operation.output = DeleteLifecyclePolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.errors << PolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_metric_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteMetricPolicy"
        operation.name = "DeleteMetricPolicy"
        operation.input = DeleteMetricPolicyInput
        operation.output = DeleteMetricPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.errors << PolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_container, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DescribeContainer"
        operation.name = "DescribeContainer"
        operation.input = DescribeContainerInput
        operation.output = DescribeContainerOutput
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_container_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#GetContainerPolicy"
        operation.name = "GetContainerPolicy"
        operation.input = GetContainerPolicyInput
        operation.output = GetContainerPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.errors << PolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_cors_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#GetCorsPolicy"
        operation.name = "GetCorsPolicy"
        operation.input = GetCorsPolicyInput
        operation.output = GetCorsPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << CorsPolicyNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:get_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#GetLifecyclePolicy"
        operation.name = "GetLifecyclePolicy"
        operation.input = GetLifecyclePolicyInput
        operation.output = GetLifecyclePolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.errors << PolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:get_metric_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#GetMetricPolicy"
        operation.name = "GetMetricPolicy"
        operation.input = GetMetricPolicyInput
        operation.output = GetMetricPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.errors << PolicyNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_containers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#ListContainers"
        operation.name = "ListContainers"
        operation.input = ListContainersInput
        operation.output = ListContainersOutput
        operation.errors << InternalServerError
        operation.traits = {}
        operation[:paginator] = Paginators::ListContainers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:put_container_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#PutContainerPolicy"
        operation.name = "PutContainerPolicy"
        operation.input = PutContainerPolicyInput
        operation.output = PutContainerPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:put_cors_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#PutCorsPolicy"
        operation.name = "PutCorsPolicy"
        operation.input = PutCorsPolicyInput
        operation.output = PutCorsPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:put_lifecycle_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#PutLifecyclePolicy"
        operation.name = "PutLifecyclePolicy"
        operation.input = PutLifecyclePolicyInput
        operation.output = PutLifecyclePolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:put_metric_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#PutMetricPolicy"
        operation.name = "PutMetricPolicy"
        operation.input = PutMetricPolicyInput
        operation.output = PutMetricPolicyOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:start_access_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#StartAccessLogging"
        operation.name = "StartAccessLogging"
        operation.input = StartAccessLoggingInput
        operation.output = StartAccessLoggingOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:stop_access_logging, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#StopAccessLogging"
        operation.name = "StopAccessLogging"
        operation.input = StopAccessLoggingInput
        operation.output = StopAccessLoggingOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << ContainerInUseException
        operation.errors << ContainerNotFoundException
        operation.errors << InternalServerError
        operation.traits = {}
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
