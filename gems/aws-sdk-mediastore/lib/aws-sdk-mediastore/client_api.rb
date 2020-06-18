# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaStore
  # @api private
  module ClientApi

    include Seahorse::Model

    AllowedHeaders = Shapes::ListShape.new(name: 'AllowedHeaders')
    AllowedMethods = Shapes::ListShape.new(name: 'AllowedMethods')
    AllowedOrigins = Shapes::ListShape.new(name: 'AllowedOrigins')
    Container = Shapes::StructureShape.new(name: 'Container')
    ContainerARN = Shapes::StringShape.new(name: 'ContainerARN')
    ContainerAccessLoggingEnabled = Shapes::BooleanShape.new(name: 'ContainerAccessLoggingEnabled')
    ContainerInUseException = Shapes::StructureShape.new(name: 'ContainerInUseException')
    ContainerLevelMetrics = Shapes::StringShape.new(name: 'ContainerLevelMetrics')
    ContainerList = Shapes::ListShape.new(name: 'ContainerList')
    ContainerListLimit = Shapes::IntegerShape.new(name: 'ContainerListLimit')
    ContainerName = Shapes::StringShape.new(name: 'ContainerName')
    ContainerNotFoundException = Shapes::StructureShape.new(name: 'ContainerNotFoundException')
    ContainerPolicy = Shapes::StringShape.new(name: 'ContainerPolicy')
    ContainerStatus = Shapes::StringShape.new(name: 'ContainerStatus')
    CorsPolicy = Shapes::ListShape.new(name: 'CorsPolicy')
    CorsPolicyNotFoundException = Shapes::StructureShape.new(name: 'CorsPolicyNotFoundException')
    CorsRule = Shapes::StructureShape.new(name: 'CorsRule')
    CreateContainerInput = Shapes::StructureShape.new(name: 'CreateContainerInput')
    CreateContainerOutput = Shapes::StructureShape.new(name: 'CreateContainerOutput')
    DeleteContainerInput = Shapes::StructureShape.new(name: 'DeleteContainerInput')
    DeleteContainerOutput = Shapes::StructureShape.new(name: 'DeleteContainerOutput')
    DeleteContainerPolicyInput = Shapes::StructureShape.new(name: 'DeleteContainerPolicyInput')
    DeleteContainerPolicyOutput = Shapes::StructureShape.new(name: 'DeleteContainerPolicyOutput')
    DeleteCorsPolicyInput = Shapes::StructureShape.new(name: 'DeleteCorsPolicyInput')
    DeleteCorsPolicyOutput = Shapes::StructureShape.new(name: 'DeleteCorsPolicyOutput')
    DeleteLifecyclePolicyInput = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyInput')
    DeleteLifecyclePolicyOutput = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyOutput')
    DeleteMetricPolicyInput = Shapes::StructureShape.new(name: 'DeleteMetricPolicyInput')
    DeleteMetricPolicyOutput = Shapes::StructureShape.new(name: 'DeleteMetricPolicyOutput')
    DescribeContainerInput = Shapes::StructureShape.new(name: 'DescribeContainerInput')
    DescribeContainerOutput = Shapes::StructureShape.new(name: 'DescribeContainerOutput')
    Endpoint = Shapes::StringShape.new(name: 'Endpoint')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExposeHeaders = Shapes::ListShape.new(name: 'ExposeHeaders')
    GetContainerPolicyInput = Shapes::StructureShape.new(name: 'GetContainerPolicyInput')
    GetContainerPolicyOutput = Shapes::StructureShape.new(name: 'GetContainerPolicyOutput')
    GetCorsPolicyInput = Shapes::StructureShape.new(name: 'GetCorsPolicyInput')
    GetCorsPolicyOutput = Shapes::StructureShape.new(name: 'GetCorsPolicyOutput')
    GetLifecyclePolicyInput = Shapes::StructureShape.new(name: 'GetLifecyclePolicyInput')
    GetLifecyclePolicyOutput = Shapes::StructureShape.new(name: 'GetLifecyclePolicyOutput')
    GetMetricPolicyInput = Shapes::StructureShape.new(name: 'GetMetricPolicyInput')
    GetMetricPolicyOutput = Shapes::StructureShape.new(name: 'GetMetricPolicyOutput')
    Header = Shapes::StringShape.new(name: 'Header')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    LifecyclePolicy = Shapes::StringShape.new(name: 'LifecyclePolicy')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListContainersInput = Shapes::StructureShape.new(name: 'ListContainersInput')
    ListContainersOutput = Shapes::StructureShape.new(name: 'ListContainersOutput')
    ListTagsForResourceInput = Shapes::StructureShape.new(name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Shapes::StructureShape.new(name: 'ListTagsForResourceOutput')
    MaxAgeSeconds = Shapes::IntegerShape.new(name: 'MaxAgeSeconds')
    MethodName = Shapes::StringShape.new(name: 'MethodName')
    MetricPolicy = Shapes::StructureShape.new(name: 'MetricPolicy')
    MetricPolicyRule = Shapes::StructureShape.new(name: 'MetricPolicyRule')
    MetricPolicyRules = Shapes::ListShape.new(name: 'MetricPolicyRules')
    ObjectGroup = Shapes::StringShape.new(name: 'ObjectGroup')
    ObjectGroupName = Shapes::StringShape.new(name: 'ObjectGroupName')
    Origin = Shapes::StringShape.new(name: 'Origin')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PolicyNotFoundException = Shapes::StructureShape.new(name: 'PolicyNotFoundException')
    PutContainerPolicyInput = Shapes::StructureShape.new(name: 'PutContainerPolicyInput')
    PutContainerPolicyOutput = Shapes::StructureShape.new(name: 'PutContainerPolicyOutput')
    PutCorsPolicyInput = Shapes::StructureShape.new(name: 'PutCorsPolicyInput')
    PutCorsPolicyOutput = Shapes::StructureShape.new(name: 'PutCorsPolicyOutput')
    PutLifecyclePolicyInput = Shapes::StructureShape.new(name: 'PutLifecyclePolicyInput')
    PutLifecyclePolicyOutput = Shapes::StructureShape.new(name: 'PutLifecyclePolicyOutput')
    PutMetricPolicyInput = Shapes::StructureShape.new(name: 'PutMetricPolicyInput')
    PutMetricPolicyOutput = Shapes::StructureShape.new(name: 'PutMetricPolicyOutput')
    StartAccessLoggingInput = Shapes::StructureShape.new(name: 'StartAccessLoggingInput')
    StartAccessLoggingOutput = Shapes::StructureShape.new(name: 'StartAccessLoggingOutput')
    StopAccessLoggingInput = Shapes::StructureShape.new(name: 'StopAccessLoggingInput')
    StopAccessLoggingOutput = Shapes::StructureShape.new(name: 'StopAccessLoggingOutput')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceInput = Shapes::StructureShape.new(name: 'TagResourceInput')
    TagResourceOutput = Shapes::StructureShape.new(name: 'TagResourceOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    UntagResourceInput = Shapes::StructureShape.new(name: 'UntagResourceInput')
    UntagResourceOutput = Shapes::StructureShape.new(name: 'UntagResourceOutput')

    AllowedHeaders.member = Shapes::ShapeRef.new(shape: Header)

    AllowedMethods.member = Shapes::ShapeRef.new(shape: MethodName)

    AllowedOrigins.member = Shapes::ShapeRef.new(shape: Origin)

    Container.add_member(:endpoint, Shapes::ShapeRef.new(shape: Endpoint, location_name: "Endpoint"))
    Container.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "CreationTime"))
    Container.add_member(:arn, Shapes::ShapeRef.new(shape: ContainerARN, location_name: "ARN"))
    Container.add_member(:name, Shapes::ShapeRef.new(shape: ContainerName, location_name: "Name"))
    Container.add_member(:status, Shapes::ShapeRef.new(shape: ContainerStatus, location_name: "Status"))
    Container.add_member(:access_logging_enabled, Shapes::ShapeRef.new(shape: ContainerAccessLoggingEnabled, location_name: "AccessLoggingEnabled"))
    Container.struct_class = Types::Container

    ContainerInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ContainerInUseException.struct_class = Types::ContainerInUseException

    ContainerList.member = Shapes::ShapeRef.new(shape: Container)

    ContainerNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ContainerNotFoundException.struct_class = Types::ContainerNotFoundException

    CorsPolicy.member = Shapes::ShapeRef.new(shape: CorsRule)

    CorsPolicyNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    CorsPolicyNotFoundException.struct_class = Types::CorsPolicyNotFoundException

    CorsRule.add_member(:allowed_origins, Shapes::ShapeRef.new(shape: AllowedOrigins, required: true, location_name: "AllowedOrigins"))
    CorsRule.add_member(:allowed_methods, Shapes::ShapeRef.new(shape: AllowedMethods, location_name: "AllowedMethods"))
    CorsRule.add_member(:allowed_headers, Shapes::ShapeRef.new(shape: AllowedHeaders, required: true, location_name: "AllowedHeaders"))
    CorsRule.add_member(:max_age_seconds, Shapes::ShapeRef.new(shape: MaxAgeSeconds, location_name: "MaxAgeSeconds"))
    CorsRule.add_member(:expose_headers, Shapes::ShapeRef.new(shape: ExposeHeaders, location_name: "ExposeHeaders"))
    CorsRule.struct_class = Types::CorsRule

    CreateContainerInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    CreateContainerInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateContainerInput.struct_class = Types::CreateContainerInput

    CreateContainerOutput.add_member(:container, Shapes::ShapeRef.new(shape: Container, required: true, location_name: "Container"))
    CreateContainerOutput.struct_class = Types::CreateContainerOutput

    DeleteContainerInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    DeleteContainerInput.struct_class = Types::DeleteContainerInput

    DeleteContainerOutput.struct_class = Types::DeleteContainerOutput

    DeleteContainerPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    DeleteContainerPolicyInput.struct_class = Types::DeleteContainerPolicyInput

    DeleteContainerPolicyOutput.struct_class = Types::DeleteContainerPolicyOutput

    DeleteCorsPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    DeleteCorsPolicyInput.struct_class = Types::DeleteCorsPolicyInput

    DeleteCorsPolicyOutput.struct_class = Types::DeleteCorsPolicyOutput

    DeleteLifecyclePolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    DeleteLifecyclePolicyInput.struct_class = Types::DeleteLifecyclePolicyInput

    DeleteLifecyclePolicyOutput.struct_class = Types::DeleteLifecyclePolicyOutput

    DeleteMetricPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    DeleteMetricPolicyInput.struct_class = Types::DeleteMetricPolicyInput

    DeleteMetricPolicyOutput.struct_class = Types::DeleteMetricPolicyOutput

    DescribeContainerInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, location_name: "ContainerName"))
    DescribeContainerInput.struct_class = Types::DescribeContainerInput

    DescribeContainerOutput.add_member(:container, Shapes::ShapeRef.new(shape: Container, location_name: "Container"))
    DescribeContainerOutput.struct_class = Types::DescribeContainerOutput

    ExposeHeaders.member = Shapes::ShapeRef.new(shape: Header)

    GetContainerPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    GetContainerPolicyInput.struct_class = Types::GetContainerPolicyInput

    GetContainerPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: ContainerPolicy, required: true, location_name: "Policy"))
    GetContainerPolicyOutput.struct_class = Types::GetContainerPolicyOutput

    GetCorsPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    GetCorsPolicyInput.struct_class = Types::GetCorsPolicyInput

    GetCorsPolicyOutput.add_member(:cors_policy, Shapes::ShapeRef.new(shape: CorsPolicy, required: true, location_name: "CorsPolicy"))
    GetCorsPolicyOutput.struct_class = Types::GetCorsPolicyOutput

    GetLifecyclePolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    GetLifecyclePolicyInput.struct_class = Types::GetLifecyclePolicyInput

    GetLifecyclePolicyOutput.add_member(:lifecycle_policy, Shapes::ShapeRef.new(shape: LifecyclePolicy, required: true, location_name: "LifecyclePolicy"))
    GetLifecyclePolicyOutput.struct_class = Types::GetLifecyclePolicyOutput

    GetMetricPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    GetMetricPolicyInput.struct_class = Types::GetMetricPolicyInput

    GetMetricPolicyOutput.add_member(:metric_policy, Shapes::ShapeRef.new(shape: MetricPolicy, required: true, location_name: "MetricPolicy"))
    GetMetricPolicyOutput.struct_class = Types::GetMetricPolicyOutput

    InternalServerError.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerError.struct_class = Types::InternalServerError

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListContainersInput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContainersInput.add_member(:max_results, Shapes::ShapeRef.new(shape: ContainerListLimit, location_name: "MaxResults"))
    ListContainersInput.struct_class = Types::ListContainersInput

    ListContainersOutput.add_member(:containers, Shapes::ShapeRef.new(shape: ContainerList, required: true, location_name: "Containers"))
    ListContainersOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListContainersOutput.struct_class = Types::ListContainersOutput

    ListTagsForResourceInput.add_member(:resource, Shapes::ShapeRef.new(shape: ContainerARN, required: true, location_name: "Resource"))
    ListTagsForResourceInput.struct_class = Types::ListTagsForResourceInput

    ListTagsForResourceOutput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceOutput.struct_class = Types::ListTagsForResourceOutput

    MetricPolicy.add_member(:container_level_metrics, Shapes::ShapeRef.new(shape: ContainerLevelMetrics, required: true, location_name: "ContainerLevelMetrics"))
    MetricPolicy.add_member(:metric_policy_rules, Shapes::ShapeRef.new(shape: MetricPolicyRules, location_name: "MetricPolicyRules"))
    MetricPolicy.struct_class = Types::MetricPolicy

    MetricPolicyRule.add_member(:object_group, Shapes::ShapeRef.new(shape: ObjectGroup, required: true, location_name: "ObjectGroup"))
    MetricPolicyRule.add_member(:object_group_name, Shapes::ShapeRef.new(shape: ObjectGroupName, required: true, location_name: "ObjectGroupName"))
    MetricPolicyRule.struct_class = Types::MetricPolicyRule

    MetricPolicyRules.member = Shapes::ShapeRef.new(shape: MetricPolicyRule)

    PolicyNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    PolicyNotFoundException.struct_class = Types::PolicyNotFoundException

    PutContainerPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    PutContainerPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: ContainerPolicy, required: true, location_name: "Policy"))
    PutContainerPolicyInput.struct_class = Types::PutContainerPolicyInput

    PutContainerPolicyOutput.struct_class = Types::PutContainerPolicyOutput

    PutCorsPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    PutCorsPolicyInput.add_member(:cors_policy, Shapes::ShapeRef.new(shape: CorsPolicy, required: true, location_name: "CorsPolicy"))
    PutCorsPolicyInput.struct_class = Types::PutCorsPolicyInput

    PutCorsPolicyOutput.struct_class = Types::PutCorsPolicyOutput

    PutLifecyclePolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    PutLifecyclePolicyInput.add_member(:lifecycle_policy, Shapes::ShapeRef.new(shape: LifecyclePolicy, required: true, location_name: "LifecyclePolicy"))
    PutLifecyclePolicyInput.struct_class = Types::PutLifecyclePolicyInput

    PutLifecyclePolicyOutput.struct_class = Types::PutLifecyclePolicyOutput

    PutMetricPolicyInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    PutMetricPolicyInput.add_member(:metric_policy, Shapes::ShapeRef.new(shape: MetricPolicy, required: true, location_name: "MetricPolicy"))
    PutMetricPolicyInput.struct_class = Types::PutMetricPolicyInput

    PutMetricPolicyOutput.struct_class = Types::PutMetricPolicyOutput

    StartAccessLoggingInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    StartAccessLoggingInput.struct_class = Types::StartAccessLoggingInput

    StartAccessLoggingOutput.struct_class = Types::StartAccessLoggingOutput

    StopAccessLoggingInput.add_member(:container_name, Shapes::ShapeRef.new(shape: ContainerName, required: true, location_name: "ContainerName"))
    StopAccessLoggingInput.struct_class = Types::StopAccessLoggingInput

    StopAccessLoggingOutput.struct_class = Types::StopAccessLoggingOutput

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceInput.add_member(:resource, Shapes::ShapeRef.new(shape: ContainerARN, required: true, location_name: "Resource"))
    TagResourceInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceInput.struct_class = Types::TagResourceInput

    TagResourceOutput.struct_class = Types::TagResourceOutput

    UntagResourceInput.add_member(:resource, Shapes::ShapeRef.new(shape: ContainerARN, required: true, location_name: "Resource"))
    UntagResourceInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "TagKeys"))
    UntagResourceInput.struct_class = Types::UntagResourceInput

    UntagResourceOutput.struct_class = Types::UntagResourceOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-09-01"

      api.metadata = {
        "apiVersion" => "2017-09-01",
        "endpointPrefix" => "mediastore",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "MediaStore",
        "serviceFullName" => "AWS Elemental MediaStore",
        "serviceId" => "MediaStore",
        "signatureVersion" => "v4",
        "signingName" => "mediastore",
        "targetPrefix" => "MediaStore_20170901",
        "uid" => "mediastore-2017-09-01",
      }

      api.add_operation(:create_container, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateContainer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateContainerInput)
        o.output = Shapes::ShapeRef.new(shape: CreateContainerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_container, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContainer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContainerInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteContainerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_container_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteContainerPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteContainerPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteContainerPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_cors_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCorsPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteCorsPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteCorsPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CorsPolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLifecyclePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:delete_metric_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteMetricPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteMetricPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteMetricPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:describe_container, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeContainer"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeContainerInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeContainerOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_container_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetContainerPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetContainerPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetContainerPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_cors_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCorsPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetCorsPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetCorsPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: CorsPolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLifecyclePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetLifecyclePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetLifecyclePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:get_metric_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMetricPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetMetricPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetMetricPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:list_containers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListContainers"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListContainersInput)
        o.output = Shapes::ShapeRef.new(shape: ListContainersOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_container_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutContainerPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutContainerPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutContainerPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_cors_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutCorsPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutCorsPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutCorsPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutLifecyclePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutLifecyclePolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutLifecyclePolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:put_metric_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutMetricPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutMetricPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutMetricPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:start_access_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAccessLogging"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartAccessLoggingInput)
        o.output = Shapes::ShapeRef.new(shape: StartAccessLoggingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:stop_access_logging, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAccessLogging"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StopAccessLoggingInput)
        o.output = Shapes::ShapeRef.new(shape: StopAccessLoggingOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceOutput)
        o.errors << Shapes::ShapeRef.new(shape: ContainerInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
      end)
    end

  end
end
