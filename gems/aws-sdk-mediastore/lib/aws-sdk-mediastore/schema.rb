# frozen_string_literal: true

# This is generated code!

module Aws::MediaStore
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AllowedHeaders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#AllowedHeaders', name: 'AllowedHeaders', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    AllowedMethods = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#AllowedMethods', name: 'AllowedMethods', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AllowedOrigins = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#AllowedOrigins', name: 'AllowedOrigins', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Container = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#Container', name: 'Container')
    ContainerARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#ContainerARN', name: 'ContainerARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^arn:aws:mediastore:[a-z]+-[a-z]+-\\d:\\d{12}:container/[\\w-]{1,255}$"})
    ContainerAccessLoggingEnabled = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.mediastore#ContainerAccessLoggingEnabled', name: 'ContainerAccessLoggingEnabled')
    ContainerInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#ContainerInUseException', name: 'ContainerInUseException', traits: {"smithy.api#error" => "client"})
    ContainerLevelMetrics = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediastore#ContainerLevelMetrics', name: 'ContainerLevelMetrics')
    ContainerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#ContainerList', name: 'ContainerList')
    ContainerListLimit = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediastore#ContainerListLimit', name: 'ContainerListLimit', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ContainerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#ContainerName', name: 'ContainerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w-]+$"})
    ContainerNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#ContainerNotFoundException', name: 'ContainerNotFoundException', traits: {"smithy.api#error" => "client"})
    ContainerPolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#ContainerPolicy', name: 'ContainerPolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[\\x00-\\x7F]+$"})
    ContainerStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediastore#ContainerStatus', name: 'ContainerStatus', traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    CorsPolicy = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#CorsPolicy', name: 'CorsPolicy', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    CorsPolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#CorsPolicyNotFoundException', name: 'CorsPolicyNotFoundException', traits: {"smithy.api#error" => "client"})
    CorsRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#CorsRule', name: 'CorsRule')
    CreateContainerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#CreateContainerInput', name: 'CreateContainerInput')
    CreateContainerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#CreateContainerOutput', name: 'CreateContainerOutput')
    DeleteContainerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteContainerInput', name: 'DeleteContainerInput')
    DeleteContainerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteContainerOutput', name: 'DeleteContainerOutput')
    DeleteContainerPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteContainerPolicyInput', name: 'DeleteContainerPolicyInput')
    DeleteContainerPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteContainerPolicyOutput', name: 'DeleteContainerPolicyOutput')
    DeleteCorsPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteCorsPolicyInput', name: 'DeleteCorsPolicyInput')
    DeleteCorsPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteCorsPolicyOutput', name: 'DeleteCorsPolicyOutput')
    DeleteLifecyclePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteLifecyclePolicyInput', name: 'DeleteLifecyclePolicyInput')
    DeleteLifecyclePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteLifecyclePolicyOutput', name: 'DeleteLifecyclePolicyOutput')
    DeleteMetricPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteMetricPolicyInput', name: 'DeleteMetricPolicyInput')
    DeleteMetricPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DeleteMetricPolicyOutput', name: 'DeleteMetricPolicyOutput')
    DescribeContainerInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DescribeContainerInput', name: 'DescribeContainerInput')
    DescribeContainerOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#DescribeContainerOutput', name: 'DescribeContainerOutput')
    Endpoint = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#Endpoint', name: 'Endpoint', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[ \\w:\\.\\?-]+$"})
    ExposeHeaders = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#ExposeHeaders', name: 'ExposeHeaders', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    GetContainerPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#GetContainerPolicyInput', name: 'GetContainerPolicyInput')
    GetContainerPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#GetContainerPolicyOutput', name: 'GetContainerPolicyOutput')
    GetCorsPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#GetCorsPolicyInput', name: 'GetCorsPolicyInput')
    GetCorsPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#GetCorsPolicyOutput', name: 'GetCorsPolicyOutput')
    GetLifecyclePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#GetLifecyclePolicyInput', name: 'GetLifecyclePolicyInput')
    GetLifecyclePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#GetLifecyclePolicyOutput', name: 'GetLifecyclePolicyOutput')
    GetMetricPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#GetMetricPolicyInput', name: 'GetMetricPolicyInput')
    GetMetricPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#GetMetricPolicyOutput', name: 'GetMetricPolicyOutput')
    Header = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#Header', name: 'Header', traits: {"smithy.api#length" => {"min" => 1, "max" => 8192}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    InternalServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server"})
    LifecyclePolicy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#LifecyclePolicy', name: 'LifecyclePolicy', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client"})
    ListContainersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#ListContainersInput', name: 'ListContainersInput')
    ListContainersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#ListContainersOutput', name: 'ListContainersOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MaxAgeSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.mediastore#MaxAgeSeconds', name: 'MaxAgeSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 2147483647}})
    MethodName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.mediastore#MethodName', name: 'MethodName')
    MetricPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#MetricPolicy', name: 'MetricPolicy')
    MetricPolicyRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#MetricPolicyRule', name: 'MetricPolicyRule')
    MetricPolicyRules = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#MetricPolicyRules', name: 'MetricPolicyRules', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}})
    ObjectGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#ObjectGroup', name: 'ObjectGroup', traits: {"smithy.api#length" => {"min" => 1, "max" => 900}, "smithy.api#pattern" => "^/?(?:[A-Za-z0-9_=:\\.\\-\\~\\*]+/){0,10}(?:[A-Za-z0-9_=:\\.\\-\\~\\*]+)?/?$"})
    ObjectGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#ObjectGroupName', name: 'ObjectGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 30}, "smithy.api#pattern" => "^[a-zA-Z0-9_]+$"})
    Origin = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#Origin', name: 'Origin', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0009\\u000A\\u000D\\u0020-\\u00FF]+$"})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[0-9A-Za-z=/+]+$"})
    PolicyNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PolicyNotFoundException', name: 'PolicyNotFoundException', traits: {"smithy.api#error" => "client"})
    PutContainerPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PutContainerPolicyInput', name: 'PutContainerPolicyInput')
    PutContainerPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PutContainerPolicyOutput', name: 'PutContainerPolicyOutput')
    PutCorsPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PutCorsPolicyInput', name: 'PutCorsPolicyInput')
    PutCorsPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PutCorsPolicyOutput', name: 'PutCorsPolicyOutput')
    PutLifecyclePolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PutLifecyclePolicyInput', name: 'PutLifecyclePolicyInput')
    PutLifecyclePolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PutLifecyclePolicyOutput', name: 'PutLifecyclePolicyOutput')
    PutMetricPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PutMetricPolicyInput', name: 'PutMetricPolicyInput')
    PutMetricPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#PutMetricPolicyOutput', name: 'PutMetricPolicyOutput')
    StartAccessLoggingInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#StartAccessLoggingInput', name: 'StartAccessLoggingInput')
    StartAccessLoggingOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#StartAccessLoggingOutput', name: 'StartAccessLoggingOutput')
    StopAccessLoggingInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#StopAccessLoggingInput', name: 'StopAccessLoggingInput')
    StopAccessLoggingOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#StopAccessLoggingOutput', name: 'StopAccessLoggingOutput')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#TagKeyList', name: 'TagKeyList')
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.mediastore#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#TagResourceInput', name: 'TagResourceInput')
    TagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#TagResourceOutput', name: 'TagResourceOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.mediastore#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*$"})
    TimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.mediastore#TimeStamp', name: 'TimeStamp')
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#UntagResourceInput', name: 'UntagResourceInput')
    UntagResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.mediastore#UntagResourceOutput', name: 'UntagResourceOutput')

    AllowedHeaders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Header)
    AllowedMethods.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MethodName)
    AllowedOrigins.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Origin)
    Container.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: Endpoint, location_name: 'Endpoint', traits: {"smithy.api#documentation" => "<p>The DNS endpoint of the container. Use the endpoint to identify the specific\n         container when sending requests to the data plane. The service assigns this value when the\n         container is created. Once the value has been assigned, it does not change.</p>"}))
    Container.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>Unix timestamp.</p>"}))
    Container.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerARN, location_name: 'ARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the container. The ARN has the following\n         format:</p>\n         <p>arn:aws:<region>:<account that owns this container>:container/<name of\n         container> </p>\n         <p>For example: arn:aws:mediastore:us-west-2:111122223333:container/movies </p>"}))
    Container.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the container.</p>"}))
    Container.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of container creation or deletion. The status is one of the following:\n            <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the service\n         is creating the container, the status is <code>CREATING</code>. When the endpoint is\n         available, the status changes to <code>ACTIVE</code>.</p>"}))
    Container.add_member(:access_logging_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerAccessLoggingEnabled, location_name: 'AccessLoggingEnabled', traits: {"smithy.api#documentation" => "<p>The state of access logging on the container. This value is <code>false</code> by default, indicating that AWS Elemental MediaStore does not send access logs to Amazon CloudWatch Logs. When you enable access logging on the container, MediaStore changes this value to <code>true</code>, indicating that the service delivers access logs for objects stored in that container to CloudWatch Logs.</p>"}))
    Container.type = Types::Container
    ContainerInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ContainerInUseException.type = Types::ContainerInUseException
    ContainerLevelMetrics.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ContainerLevelMetrics.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ContainerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Container)
    ContainerNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ContainerNotFoundException.type = Types::ContainerNotFoundException
    ContainerStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ContainerStatus.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ContainerStatus.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    CorsPolicy.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CorsRule)
    CorsPolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    CorsPolicyNotFoundException.type = Types::CorsPolicyNotFoundException
    CorsRule.add_member(:allowed_origins, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedOrigins, location_name: 'AllowedOrigins', traits: {"smithy.api#documentation" => "<p>One or more response headers that you want users to be able to access from their\n         applications (for example, from a JavaScript <code>XMLHttpRequest</code> object).</p>\n         <p>Each CORS rule must have at least one <code>AllowedOrigins</code> element. The string\n         value can include only one wildcard character (*), for example, http://*.example.com.\n         Additionally, you can specify only one wildcard character to allow cross-origin access for\n         all origins.</p>", "smithy.api#required" => {}}))
    CorsRule.add_member(:allowed_methods, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedMethods, location_name: 'AllowedMethods', traits: {"smithy.api#documentation" => "<p>Identifies an HTTP method that the origin that is specified in the rule is allowed to\n         execute.</p>\n         <p>Each CORS rule must contain at least one <code>AllowedMethods</code> and one\n            <code>AllowedOrigins</code> element.</p>"}))
    CorsRule.add_member(:allowed_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowedHeaders, location_name: 'AllowedHeaders', traits: {"smithy.api#documentation" => "<p>Specifies which headers are allowed in a preflight <code>OPTIONS</code> request\n         through the <code>Access-Control-Request-Headers</code> header. Each header name that is\n         specified in <code>Access-Control-Request-Headers</code> must have a corresponding entry in\n         the rule. Only the headers that were requested are sent back. </p>\n         <p>This element can contain only one wildcard character (*).</p>", "smithy.api#required" => {}}))
    CorsRule.add_member(:max_age_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxAgeSeconds, location_name: 'MaxAgeSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The time in seconds that your browser caches the preflight response for the specified\n         resource.</p>\n         <p>A CORS rule can have only one <code>MaxAgeSeconds</code> element.</p>"}))
    CorsRule.add_member(:expose_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: ExposeHeaders, location_name: 'ExposeHeaders', traits: {"smithy.api#documentation" => "<p>One or more headers in the response that you want users to be able to access from\n         their applications (for example, from a JavaScript <code>XMLHttpRequest</code>\n         object).</p>\n         <p>This element is optional for each rule.</p>"}))
    CorsRule.type = Types::CorsRule
    CreateContainerInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name for the container. The name must be from 1 to 255 characters. Container\n         names must be unique to your AWS account within a specific region. As an example, you could\n         create a container named <code>movies</code> in every region, as long as you don’t have an\n         existing container with that name.</p>", "smithy.api#required" => {}}))
    CreateContainerInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key:value pairs that you define. These values can be anything that you want. Typically, the tag key represents a category (such as\n           \"environment\") and the tag value represents a specific value within that category (such as \"test,\" \"development,\" or \"production\"). You can add up to 50 \n           tags to each container. For more information about tagging, including naming and usage conventions, see <a href=\"https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html\">Tagging Resources in MediaStore</a>.</p>"}))
    CreateContainerInput.type = Types::CreateContainerInput
    CreateContainerOutput.add_member(:container, Smithy::Schema::Shapes::ShapeRef.new(shape: Container, location_name: 'Container', traits: {"smithy.api#documentation" => "<p>ContainerARN: The Amazon Resource Name (ARN) of the newly created container. The ARN\n         has the following format: arn:aws:<region>:<account that owns this\n         container>:container/<name of container>. For example:\n         arn:aws:mediastore:us-west-2:111122223333:container/movies </p>\n         <p>ContainerName: The container name as specified in the request.</p>\n         <p>CreationTime: Unix time stamp.</p>\n         <p>Status: The status of container creation or deletion. The status is one of the\n         following: <code>CREATING</code>, <code>ACTIVE</code>, or <code>DELETING</code>. While the\n         service is creating the container, the status is <code>CREATING</code>. When an endpoint is\n         available, the status changes to <code>ACTIVE</code>.</p>\n         <p>The return value does not include the container's endpoint. To make downstream\n         requests, you must obtain this value by using <a>DescribeContainer</a> or <a>ListContainers</a>.</p>", "smithy.api#required" => {}}))
    CreateContainerOutput.type = Types::CreateContainerOutput
    DeleteContainerInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container to delete. </p>", "smithy.api#required" => {}}))
    DeleteContainerInput.type = Types::DeleteContainerInput
    DeleteContainerOutput.type = Types::DeleteContainerOutput
    DeleteContainerPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that holds the policy.</p>", "smithy.api#required" => {}}))
    DeleteContainerPolicyInput.type = Types::DeleteContainerPolicyInput
    DeleteContainerPolicyOutput.type = Types::DeleteContainerPolicyOutput
    DeleteCorsPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container to remove the policy from.</p>", "smithy.api#required" => {}}))
    DeleteCorsPolicyInput.type = Types::DeleteCorsPolicyInput
    DeleteCorsPolicyOutput.type = Types::DeleteCorsPolicyOutput
    DeleteLifecyclePolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that holds the object lifecycle policy.</p>", "smithy.api#required" => {}}))
    DeleteLifecyclePolicyInput.type = Types::DeleteLifecyclePolicyInput
    DeleteLifecyclePolicyOutput.type = Types::DeleteLifecyclePolicyOutput
    DeleteMetricPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that is associated with the metric policy that you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteMetricPolicyInput.type = Types::DeleteMetricPolicyInput
    DeleteMetricPolicyOutput.type = Types::DeleteMetricPolicyOutput
    DescribeContainerInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container to query.</p>"}))
    DescribeContainerInput.type = Types::DescribeContainerInput
    DescribeContainerOutput.add_member(:container, Smithy::Schema::Shapes::ShapeRef.new(shape: Container, location_name: 'Container', traits: {"smithy.api#documentation" => "<p>The name of the queried container.</p>"}))
    DescribeContainerOutput.type = Types::DescribeContainerOutput
    ExposeHeaders.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Header)
    GetContainerPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container. </p>", "smithy.api#required" => {}}))
    GetContainerPolicyInput.type = Types::GetContainerPolicyInput
    GetContainerPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The contents of the access policy.</p>", "smithy.api#required" => {}}))
    GetContainerPolicyOutput.type = Types::GetContainerPolicyOutput
    GetCorsPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that the policy is assigned to.</p>", "smithy.api#required" => {}}))
    GetCorsPolicyInput.type = Types::GetCorsPolicyInput
    GetCorsPolicyOutput.add_member(:cors_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CorsPolicy, location_name: 'CorsPolicy', traits: {"smithy.api#documentation" => "<p>The CORS policy assigned to the container.</p>", "smithy.api#required" => {}}))
    GetCorsPolicyOutput.type = Types::GetCorsPolicyOutput
    GetLifecyclePolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that the object lifecycle policy is assigned to.</p>", "smithy.api#required" => {}}))
    GetLifecyclePolicyInput.type = Types::GetLifecyclePolicyInput
    GetLifecyclePolicyOutput.add_member(:lifecycle_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicy, location_name: 'LifecyclePolicy', traits: {"smithy.api#documentation" => "<p>The object lifecycle policy that is assigned to the container.</p>", "smithy.api#required" => {}}))
    GetLifecyclePolicyOutput.type = Types::GetLifecyclePolicyOutput
    GetMetricPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that is associated with the metric policy.</p>", "smithy.api#required" => {}}))
    GetMetricPolicyInput.type = Types::GetMetricPolicyInput
    GetMetricPolicyOutput.add_member(:metric_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPolicy, location_name: 'MetricPolicy', traits: {"smithy.api#documentation" => "<p>The metric policy that is associated with the specific container.</p>", "smithy.api#required" => {}}))
    GetMetricPolicyOutput.type = Types::GetMetricPolicyOutput
    InternalServerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerError.type = Types::InternalServerError
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListContainersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>Only if you used <code>MaxResults</code> in the first command, enter the token (which\n         was included in the previous response) to obtain the next set of containers. This token is\n         included in a response only if there actually are more containers to list.</p>"}))
    ListContainersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerListLimit, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Enter the maximum number of containers in the response. Use from 1 to 255 characters.\n      </p>"}))
    ListContainersInput.type = Types::ListContainersInput
    ListContainersOutput.add_member(:containers, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerList, location_name: 'Containers', traits: {"smithy.api#documentation" => "<p>The names of the containers.</p>", "smithy.api#required" => {}}))
    ListContainersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>\n            <code>NextToken</code> is the token to use in the next call to <code>ListContainers</code>.\n         This token is returned only if you included the <code>MaxResults</code> tag in the original\n         command, and only if there are still containers to return. </p>"}))
    ListContainersOutput.type = Types::ListContainersOutput
    ListTagsForResourceInput.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerARN, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the container.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key:value pairs that are assigned to the container.</p>"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MethodName.add_member(:put, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    MethodName.add_member(:get, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GET', traits: {"smithy.api#enumValue" => "GET"}))
    MethodName.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE', traits: {"smithy.api#enumValue" => "DELETE"}))
    MethodName.add_member(:head, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HEAD', traits: {"smithy.api#enumValue" => "HEAD"}))
    MetricPolicy.add_member(:container_level_metrics, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerLevelMetrics, location_name: 'ContainerLevelMetrics', traits: {"smithy.api#documentation" => "<p>A setting to enable or disable metrics at the container level.</p>", "smithy.api#required" => {}}))
    MetricPolicy.add_member(:metric_policy_rules, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPolicyRules, location_name: 'MetricPolicyRules', traits: {"smithy.api#documentation" => "<p>A parameter that holds an array of rules that enable metrics at the object level. This parameter is optional, but if you choose to include it, you must also include at least one rule. By default, you can include up to five rules. You can also <a href=\"https://console.aws.amazon.com/servicequotas/home?region=us-east-1#!/services/mediastore/quotas\">request a quota increase</a> to allow up to 300 rules per policy.</p>"}))
    MetricPolicy.type = Types::MetricPolicy
    MetricPolicyRule.add_member(:object_group, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectGroup, location_name: 'ObjectGroup', traits: {"smithy.api#documentation" => "<p>A path or file name that defines which objects to include in the group. Wildcards (*) are acceptable.</p>", "smithy.api#required" => {}}))
    MetricPolicyRule.add_member(:object_group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectGroupName, location_name: 'ObjectGroupName', traits: {"smithy.api#documentation" => "<p>A name that allows you to refer to the object group.</p>", "smithy.api#required" => {}}))
    MetricPolicyRule.type = Types::MetricPolicyRule
    MetricPolicyRules.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPolicyRule)
    PolicyNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    PolicyNotFoundException.type = Types::PolicyNotFoundException
    PutContainerPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container.</p>", "smithy.api#required" => {}}))
    PutContainerPolicyInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The contents of the policy, which includes the following: </p>\n         <ul>\n            <li>\n               <p>One <code>Version</code> tag</p>\n            </li>\n            <li>\n               <p>One <code>Statement</code> tag that contains the standard tags for the\n               policy.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    PutContainerPolicyInput.type = Types::PutContainerPolicyInput
    PutContainerPolicyOutput.type = Types::PutContainerPolicyOutput
    PutCorsPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that you want to assign the CORS policy to.</p>", "smithy.api#required" => {}}))
    PutCorsPolicyInput.add_member(:cors_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: CorsPolicy, location_name: 'CorsPolicy', traits: {"smithy.api#documentation" => "<p>The CORS policy to apply to the container.  </p>", "smithy.api#required" => {}}))
    PutCorsPolicyInput.type = Types::PutCorsPolicyInput
    PutCorsPolicyOutput.type = Types::PutCorsPolicyOutput
    PutLifecyclePolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that you want to assign the object lifecycle policy to.</p>", "smithy.api#required" => {}}))
    PutLifecyclePolicyInput.add_member(:lifecycle_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: LifecyclePolicy, location_name: 'LifecyclePolicy', traits: {"smithy.api#documentation" => "<p>The object lifecycle policy to apply to the container.</p>", "smithy.api#required" => {}}))
    PutLifecyclePolicyInput.type = Types::PutLifecyclePolicyInput
    PutLifecyclePolicyOutput.type = Types::PutLifecyclePolicyOutput
    PutMetricPolicyInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that you want to add the metric policy to.</p>", "smithy.api#required" => {}}))
    PutMetricPolicyInput.add_member(:metric_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: MetricPolicy, location_name: 'MetricPolicy', traits: {"smithy.api#documentation" => "<p>The metric policy that you want to associate with the container. In the policy, you must indicate whether you want MediaStore to send container-level metrics. You can also include up to five rules to define groups of objects that you want MediaStore to send object-level metrics for.  If you include rules in the policy, construct each rule with both of the following:</p>\n         <ul>\n            <li>\n               <p>An object group that defines which objects to include in the group. The definition can be a path or a file name, but it can't have more than 900 characters. Valid characters are: a-z, A-Z, 0-9, _ (underscore), = (equal), : (colon), . (period), - (hyphen), ~ (tilde), / (forward slash), and * (asterisk). Wildcards (*) are acceptable.</p>\n            </li>\n            <li>\n               <p>An object group name that allows you to refer to the object group. The name can't have more than 30 characters. Valid characters are: a-z, A-Z, 0-9, and _ (underscore).</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    PutMetricPolicyInput.type = Types::PutMetricPolicyInput
    PutMetricPolicyOutput.type = Types::PutMetricPolicyOutput
    StartAccessLoggingInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that you want to start access logging on.</p>", "smithy.api#required" => {}}))
    StartAccessLoggingInput.type = Types::StartAccessLoggingInput
    StartAccessLoggingOutput.type = Types::StartAccessLoggingOutput
    StopAccessLoggingInput.add_member(:container_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerName, location_name: 'ContainerName', traits: {"smithy.api#documentation" => "<p>The name of the container that you want to stop access logging on.</p>", "smithy.api#required" => {}}))
    StopAccessLoggingInput.type = Types::StopAccessLoggingInput
    StopAccessLoggingOutput.type = Types::StopAccessLoggingOutput
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Part of the key:value pair that defines a tag. You can use a tag key to describe a category of information, such as \"customer.\" Tag keys are\n            case-sensitive.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Part of the key:value pair that defines a tag. You can use a tag value to describe a specific value within a category, such as \"companyA\" or\n            \"companyB.\" Tag values are case-sensitive.</p>"}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceInput.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerARN, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the container. </p>", "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>An array of key:value pairs that you want to add to the container. You need to specify only the tags that you want to add or update. For example,\n            suppose a container already has two tags (customer:CompanyA and priority:High). You want to change the priority tag and also add a third tag\n            (type:Contract). For TagResource, you specify the following tags: priority:Medium, type:Contract. The result is that your container has three tags:\n            customer:CompanyA, priority:Medium, and type:Contract.</p>", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    UntagResourceInput.add_member(:resource, Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerARN, location_name: 'Resource', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the container.</p>", "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A comma-separated list of keys for tags that you want to remove from the container. For example, if your container has two tags (customer:CompanyA\n            and priority:High) and you want to remove one of the tags (priority:High), you specify the key for the tag that you want to remove\n            (priority).</p>", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput

    MediaStore20170901 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.mediastore#MediaStore_20170901"
      service.name = "MediaStore20170901"
      service.version = "2017-09-01"
      service.traits = {"aws.api#service" => {"sdkId" => "MediaStore", "arnNamespace" => "mediastore", "cloudFormationName" => "MediaStore", "cloudTrailEventSource" => "mediastore.amazonaws.com", "endpointPrefix" => "mediastore"}, "aws.auth#sigv4" => {"name" => "mediastore"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Elemental MediaStore", "smithy.api#xmlNamespace" => {"uri" => "https://mediastore.amazonaws.com/doc/2017-09-01"}}
      service.add_operation(:create_container, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#CreateContainer"
        operation.name = "CreateContainer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContainerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateContainerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:delete_container, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteContainer"
        operation.name = "DeleteContainer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContainerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContainerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:delete_container_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteContainerPolicy"
        operation.name = "DeleteContainerPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContainerPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteContainerPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_cors_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteCorsPolicy"
        operation.name = "DeleteCorsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCorsPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCorsPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CorsPolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:delete_lifecycle_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteLifecyclePolicy"
        operation.name = "DeleteLifecyclePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_metric_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DeleteMetricPolicy"
        operation.name = "DeleteMetricPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMetricPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteMetricPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_container, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#DescribeContainer"
        operation.name = "DescribeContainer"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContainerInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeContainerOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:get_container_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#GetContainerPolicy"
        operation.name = "GetContainerPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetContainerPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_cors_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#GetCorsPolicy"
        operation.name = "GetCorsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCorsPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCorsPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: CorsPolicyNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:get_lifecycle_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#GetLifecyclePolicy"
        operation.name = "GetLifecyclePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLifecyclePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:get_metric_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#GetMetricPolicy"
        operation.name = "GetMetricPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetMetricPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_containers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#ListContainers"
        operation.name = "ListContainers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContainersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListContainersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
        operation[:paginator] = Paginators::ListContainers.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:put_container_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#PutContainerPolicy"
        operation.name = "PutContainerPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutContainerPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutContainerPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:put_cors_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#PutCorsPolicy"
        operation.name = "PutCorsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutCorsPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutCorsPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:put_lifecycle_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#PutLifecyclePolicy"
        operation.name = "PutLifecyclePolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecyclePolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutLifecyclePolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:put_metric_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#PutMetricPolicy"
        operation.name = "PutMetricPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetricPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutMetricPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:start_access_logging, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#StartAccessLogging"
        operation.name = "StartAccessLogging"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAccessLoggingInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAccessLoggingOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:stop_access_logging, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#StopAccessLogging"
        operation.name = "StopAccessLogging"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAccessLoggingInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAccessLoggingOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.mediastore#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ContainerNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.traits = {}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
