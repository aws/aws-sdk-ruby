# frozen_string_literal: true

# This is generated code!

module Aws::AutoScalingPlans
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ApplicationSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#ApplicationSource', name: 'ApplicationSource')
    ApplicationSources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#ApplicationSources', name: 'ApplicationSources')
    ConcurrentUpdateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#ConcurrentUpdateException', name: 'ConcurrentUpdateException', traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentUpdateException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Cooldown = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.autoscalingplans#Cooldown', name: 'Cooldown')
    CreateScalingPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#CreateScalingPlanRequest', name: 'CreateScalingPlanRequest')
    CreateScalingPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#CreateScalingPlanResponse', name: 'CreateScalingPlanResponse')
    CustomizedLoadMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#CustomizedLoadMetricSpecification', name: 'CustomizedLoadMetricSpecification')
    CustomizedScalingMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#CustomizedScalingMetricSpecification', name: 'CustomizedScalingMetricSpecification')
    Datapoint = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#Datapoint', name: 'Datapoint')
    Datapoints = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#Datapoints', name: 'Datapoints')
    DeleteScalingPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#DeleteScalingPlanRequest', name: 'DeleteScalingPlanRequest')
    DeleteScalingPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#DeleteScalingPlanResponse', name: 'DeleteScalingPlanResponse')
    DescribeScalingPlanResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#DescribeScalingPlanResourcesRequest', name: 'DescribeScalingPlanResourcesRequest')
    DescribeScalingPlanResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#DescribeScalingPlanResourcesResponse', name: 'DescribeScalingPlanResourcesResponse')
    DescribeScalingPlansRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#DescribeScalingPlansRequest', name: 'DescribeScalingPlansRequest')
    DescribeScalingPlansResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#DescribeScalingPlansResponse', name: 'DescribeScalingPlansResponse')
    DisableDynamicScaling = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.autoscalingplans#DisableDynamicScaling', name: 'DisableDynamicScaling')
    DisableScaleIn = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.autoscalingplans#DisableScaleIn', name: 'DisableScaleIn')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#ErrorMessage', name: 'ErrorMessage')
    ForecastDataType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#ForecastDataType', name: 'ForecastDataType')
    GetScalingPlanResourceForecastDataRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#GetScalingPlanResourceForecastDataRequest', name: 'GetScalingPlanResourceForecastDataRequest')
    GetScalingPlanResourceForecastDataResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#GetScalingPlanResourceForecastDataResponse', name: 'GetScalingPlanResourceForecastDataResponse')
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#InternalServiceException', name: 'InternalServiceException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServiceException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#InvalidNextTokenException', name: 'InvalidNextTokenException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNextTokenException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#LimitExceededException', name: 'LimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LoadMetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#LoadMetricType', name: 'LoadMetricType')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.autoscalingplans#MaxResults', name: 'MaxResults')
    MetricDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#MetricDimension', name: 'MetricDimension')
    MetricDimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#MetricDimensionName', name: 'MetricDimensionName')
    MetricDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#MetricDimensionValue', name: 'MetricDimensionValue')
    MetricDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#MetricDimensions', name: 'MetricDimensions')
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#MetricName', name: 'MetricName')
    MetricNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#MetricNamespace', name: 'MetricNamespace')
    MetricScale = ::Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.autoscalingplans#MetricScale', name: 'MetricScale')
    MetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#MetricStatistic', name: 'MetricStatistic')
    MetricUnit = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#MetricUnit', name: 'MetricUnit')
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#NextToken', name: 'NextToken')
    ObjectNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#ObjectNotFoundException', name: 'ObjectNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ObjectNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#PolicyName', name: 'PolicyName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\p{Print}+$"})
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#PolicyType', name: 'PolicyType')
    PredefinedLoadMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#PredefinedLoadMetricSpecification', name: 'PredefinedLoadMetricSpecification')
    PredefinedScalingMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#PredefinedScalingMetricSpecification', name: 'PredefinedScalingMetricSpecification')
    PredictiveScalingMaxCapacityBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#PredictiveScalingMaxCapacityBehavior', name: 'PredictiveScalingMaxCapacityBehavior')
    PredictiveScalingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#PredictiveScalingMode', name: 'PredictiveScalingMode')
    ResourceCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.autoscalingplans#ResourceCapacity', name: 'ResourceCapacity')
    ResourceIdMaxLen1600 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#ResourceIdMaxLen1600', name: 'ResourceIdMaxLen1600', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    ResourceLabel = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#ResourceLabel', name: 'ResourceLabel', traits: {"smithy.api#length" => {"min" => 1, "max" => 1023}})
    ScalableDimension = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#ScalableDimension', name: 'ScalableDimension')
    ScalingInstruction = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#ScalingInstruction', name: 'ScalingInstruction')
    ScalingInstructions = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#ScalingInstructions', name: 'ScalingInstructions')
    ScalingMetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#ScalingMetricType', name: 'ScalingMetricType')
    ScalingPlan = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPlan', name: 'ScalingPlan')
    ScalingPlanName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPlanName', name: 'ScalingPlanName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{Print}&&[^|:/]]+$"})
    ScalingPlanNames = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPlanNames', name: 'ScalingPlanNames')
    ScalingPlanResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPlanResource', name: 'ScalingPlanResource')
    ScalingPlanResources = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPlanResources', name: 'ScalingPlanResources')
    ScalingPlanStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPlanStatusCode', name: 'ScalingPlanStatusCode')
    ScalingPlanVersion = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPlanVersion', name: 'ScalingPlanVersion')
    ScalingPlans = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPlans', name: 'ScalingPlans')
    ScalingPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPolicies', name: 'ScalingPolicies')
    ScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPolicy', name: 'ScalingPolicy')
    ScalingPolicyUpdateBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#ScalingPolicyUpdateBehavior', name: 'ScalingPolicyUpdateBehavior')
    ScalingStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#ScalingStatusCode', name: 'ScalingStatusCode')
    ScheduledActionBufferTime = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.autoscalingplans#ScheduledActionBufferTime', name: 'ScheduledActionBufferTime', traits: {"smithy.api#range" => {"min" => 0}})
    ServiceNamespace = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.autoscalingplans#ServiceNamespace', name: 'ServiceNamespace')
    TagFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#TagFilter', name: 'TagFilter')
    TagFilters = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#TagFilters', name: 'TagFilters')
    TagValues = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#TagValues', name: 'TagValues')
    TargetTrackingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#TargetTrackingConfiguration', name: 'TargetTrackingConfiguration')
    TargetTrackingConfigurations = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.autoscalingplans#TargetTrackingConfigurations', name: 'TargetTrackingConfigurations')
    TimestampType = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.autoscalingplans#TimestampType', name: 'TimestampType')
    UpdateScalingPlanRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#UpdateScalingPlanRequest', name: 'UpdateScalingPlanRequest')
    UpdateScalingPlanResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#UpdateScalingPlanResponse', name: 'UpdateScalingPlanResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.autoscalingplans#ValidationException', name: 'ValidationException', traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XmlString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#XmlString', name: 'XmlString', traits: {"smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen128 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#XmlStringMaxLen128', name: 'XmlStringMaxLen128', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    XmlStringMaxLen256 = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.autoscalingplans#XmlStringMaxLen256', name: 'XmlStringMaxLen256', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})

    ApplicationSource.add_member(:cloud_formation_stack_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'CloudFormationStackARN'))
    ApplicationSource.add_member(:tag_filters, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilters, location_name: 'TagFilters'))
    ApplicationSource.type = Types::ApplicationSource
    ApplicationSources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSource)
    ConcurrentUpdateException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConcurrentUpdateException.type = Types::ConcurrentUpdateException
    CreateScalingPlanRequest.add_member(:scaling_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanName, location_name: 'ScalingPlanName', traits: {"smithy.api#required" => {}}))
    CreateScalingPlanRequest.add_member(:application_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSource, location_name: 'ApplicationSource', traits: {"smithy.api#required" => {}}))
    CreateScalingPlanRequest.add_member(:scaling_instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingInstructions, location_name: 'ScalingInstructions', traits: {"smithy.api#required" => {}}))
    CreateScalingPlanRequest.type = Types::CreateScalingPlanRequest
    CreateScalingPlanResponse.add_member(:scaling_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: 'ScalingPlanVersion', traits: {"smithy.api#required" => {}}))
    CreateScalingPlanResponse.type = Types::CreateScalingPlanResponse
    CustomizedLoadMetricSpecification.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#required" => {}}))
    CustomizedLoadMetricSpecification.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNamespace, location_name: 'Namespace', traits: {"smithy.api#required" => {}}))
    CustomizedLoadMetricSpecification.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensions, location_name: 'Dimensions'))
    CustomizedLoadMetricSpecification.add_member(:statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatistic, location_name: 'Statistic', traits: {"smithy.api#required" => {}}))
    CustomizedLoadMetricSpecification.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: 'Unit'))
    CustomizedLoadMetricSpecification.type = Types::CustomizedLoadMetricSpecification
    CustomizedScalingMetricSpecification.add_member(:metric_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricName, location_name: 'MetricName', traits: {"smithy.api#required" => {}}))
    CustomizedScalingMetricSpecification.add_member(:namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricNamespace, location_name: 'Namespace', traits: {"smithy.api#required" => {}}))
    CustomizedScalingMetricSpecification.add_member(:dimensions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensions, location_name: 'Dimensions'))
    CustomizedScalingMetricSpecification.add_member(:statistic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricStatistic, location_name: 'Statistic', traits: {"smithy.api#required" => {}}))
    CustomizedScalingMetricSpecification.add_member(:unit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricUnit, location_name: 'Unit'))
    CustomizedScalingMetricSpecification.type = Types::CustomizedScalingMetricSpecification
    Datapoint.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'Timestamp'))
    Datapoint.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricScale, location_name: 'Value'))
    Datapoint.type = Types::Datapoint
    Datapoints.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Datapoint)
    DeleteScalingPlanRequest.add_member(:scaling_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanName, location_name: 'ScalingPlanName', traits: {"smithy.api#required" => {}}))
    DeleteScalingPlanRequest.add_member(:scaling_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: 'ScalingPlanVersion', traits: {"smithy.api#required" => {}}))
    DeleteScalingPlanRequest.type = Types::DeleteScalingPlanRequest
    DeleteScalingPlanResponse.type = Types::DeleteScalingPlanResponse
    DescribeScalingPlanResourcesRequest.add_member(:scaling_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanName, location_name: 'ScalingPlanName', traits: {"smithy.api#required" => {}}))
    DescribeScalingPlanResourcesRequest.add_member(:scaling_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: 'ScalingPlanVersion', traits: {"smithy.api#required" => {}}))
    DescribeScalingPlanResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeScalingPlanResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeScalingPlanResourcesRequest.type = Types::DescribeScalingPlanResourcesRequest
    DescribeScalingPlanResourcesResponse.add_member(:scaling_plan_resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanResources, location_name: 'ScalingPlanResources'))
    DescribeScalingPlanResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeScalingPlanResourcesResponse.type = Types::DescribeScalingPlanResourcesResponse
    DescribeScalingPlansRequest.add_member(:scaling_plan_names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanNames, location_name: 'ScalingPlanNames'))
    DescribeScalingPlansRequest.add_member(:scaling_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: 'ScalingPlanVersion'))
    DescribeScalingPlansRequest.add_member(:application_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSources, location_name: 'ApplicationSources'))
    DescribeScalingPlansRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults'))
    DescribeScalingPlansRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeScalingPlansRequest.type = Types::DescribeScalingPlansRequest
    DescribeScalingPlansResponse.add_member(:scaling_plans, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlans, location_name: 'ScalingPlans'))
    DescribeScalingPlansResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken'))
    DescribeScalingPlansResponse.type = Types::DescribeScalingPlansResponse
    ForecastDataType.add_member(:capacity_forecast, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CapacityForecast', traits: {"smithy.api#enumValue" => "CapacityForecast"}))
    ForecastDataType.add_member(:load_forecast, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LoadForecast', traits: {"smithy.api#enumValue" => "LoadForecast"}))
    ForecastDataType.add_member(:scheduled_action_min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ScheduledActionMinCapacity', traits: {"smithy.api#enumValue" => "ScheduledActionMinCapacity"}))
    ForecastDataType.add_member(:scheduled_action_max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ScheduledActionMaxCapacity', traits: {"smithy.api#enumValue" => "ScheduledActionMaxCapacity"}))
    GetScalingPlanResourceForecastDataRequest.add_member(:scaling_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanName, location_name: 'ScalingPlanName', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataRequest.add_member(:scaling_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: 'ScalingPlanVersion', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNamespace, location_name: 'ServiceNamespace', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalableDimension, location_name: 'ScalableDimension', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataRequest.add_member(:forecast_data_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ForecastDataType, location_name: 'ForecastDataType', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataRequest.add_member(:start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'StartTime', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataRequest.add_member(:end_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'EndTime', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataRequest.type = Types::GetScalingPlanResourceForecastDataRequest
    GetScalingPlanResourceForecastDataResponse.add_member(:datapoints, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Datapoints, location_name: 'Datapoints', traits: {"smithy.api#required" => {}}))
    GetScalingPlanResourceForecastDataResponse.type = Types::GetScalingPlanResourceForecastDataResponse
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServiceException.type = Types::InternalServiceException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    LoadMetricType.add_member(:asg_total_cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASGTotalCPUUtilization', traits: {"smithy.api#enumValue" => "ASGTotalCPUUtilization"}))
    LoadMetricType.add_member(:asg_total_network_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASGTotalNetworkIn', traits: {"smithy.api#enumValue" => "ASGTotalNetworkIn"}))
    LoadMetricType.add_member(:asg_total_network_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASGTotalNetworkOut', traits: {"smithy.api#enumValue" => "ASGTotalNetworkOut"}))
    LoadMetricType.add_member(:alb_target_group_request_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALBTargetGroupRequestCount', traits: {"smithy.api#enumValue" => "ALBTargetGroupRequestCount"}))
    MetricDimension.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    MetricDimension.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimensionValue, location_name: 'Value', traits: {"smithy.api#required" => {}}))
    MetricDimension.type = Types::MetricDimension
    MetricDimensions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricDimension)
    MetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Average', traits: {"smithy.api#enumValue" => "Average"}))
    MetricStatistic.add_member(:minimum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Minimum', traits: {"smithy.api#enumValue" => "Minimum"}))
    MetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Maximum', traits: {"smithy.api#enumValue" => "Maximum"}))
    MetricStatistic.add_member(:sample_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SampleCount', traits: {"smithy.api#enumValue" => "SampleCount"}))
    MetricStatistic.add_member(:sum, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Sum', traits: {"smithy.api#enumValue" => "Sum"}))
    ObjectNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ObjectNotFoundException.type = Types::ObjectNotFoundException
    PolicyType.add_member(:target_tracking_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TargetTrackingScaling', traits: {"smithy.api#enumValue" => "TargetTrackingScaling"}))
    PredefinedLoadMetricSpecification.add_member(:predefined_load_metric_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LoadMetricType, location_name: 'PredefinedLoadMetricType', traits: {"smithy.api#required" => {}}))
    PredefinedLoadMetricSpecification.add_member(:resource_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLabel, location_name: 'ResourceLabel'))
    PredefinedLoadMetricSpecification.type = Types::PredefinedLoadMetricSpecification
    PredefinedScalingMetricSpecification.add_member(:predefined_scaling_metric_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingMetricType, location_name: 'PredefinedScalingMetricType', traits: {"smithy.api#required" => {}}))
    PredefinedScalingMetricSpecification.add_member(:resource_label, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceLabel, location_name: 'ResourceLabel'))
    PredefinedScalingMetricSpecification.type = Types::PredefinedScalingMetricSpecification
    PredictiveScalingMaxCapacityBehavior.add_member(:set_forecast_capacity_to_max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SetForecastCapacityToMaxCapacity', traits: {"smithy.api#enumValue" => "SetForecastCapacityToMaxCapacity"}))
    PredictiveScalingMaxCapacityBehavior.add_member(:set_max_capacity_to_forecast_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SetMaxCapacityToForecastCapacity', traits: {"smithy.api#enumValue" => "SetMaxCapacityToForecastCapacity"}))
    PredictiveScalingMaxCapacityBehavior.add_member(:set_max_capacity_above_forecast_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SetMaxCapacityAboveForecastCapacity', traits: {"smithy.api#enumValue" => "SetMaxCapacityAboveForecastCapacity"}))
    PredictiveScalingMode.add_member(:forecast_and_scale, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ForecastAndScale', traits: {"smithy.api#enumValue" => "ForecastAndScale"}))
    PredictiveScalingMode.add_member(:forecast_only, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ForecastOnly', traits: {"smithy.api#enumValue" => "ForecastOnly"}))
    ScalableDimension.add_member(:auto_scaling_group_desired_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AutoScalingGroupDesiredCapacity', traits: {"smithy.api#enumValue" => "autoscaling:autoScalingGroup:DesiredCapacity"}))
    ScalableDimension.add_member(:ecs_service_desired_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECSServiceDesiredCount', traits: {"smithy.api#enumValue" => "ecs:service:DesiredCount"}))
    ScalableDimension.add_member(:ec2_spot_fleet_request_target_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2SpotFleetRequestTargetCapacity', traits: {"smithy.api#enumValue" => "ec2:spot-fleet-request:TargetCapacity"}))
    ScalableDimension.add_member(:rds_cluster_read_replica_count, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDSClusterReadReplicaCount', traits: {"smithy.api#enumValue" => "rds:cluster:ReadReplicaCount"}))
    ScalableDimension.add_member(:dynamo_db_table_read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DynamoDBTableReadCapacityUnits', traits: {"smithy.api#enumValue" => "dynamodb:table:ReadCapacityUnits"}))
    ScalableDimension.add_member(:dynamo_db_table_write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DynamoDBTableWriteCapacityUnits', traits: {"smithy.api#enumValue" => "dynamodb:table:WriteCapacityUnits"}))
    ScalableDimension.add_member(:dynamo_db_index_read_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DynamoDBIndexReadCapacityUnits', traits: {"smithy.api#enumValue" => "dynamodb:index:ReadCapacityUnits"}))
    ScalableDimension.add_member(:dynamo_db_index_write_capacity_units, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DynamoDBIndexWriteCapacityUnits', traits: {"smithy.api#enumValue" => "dynamodb:index:WriteCapacityUnits"}))
    ScalingInstruction.add_member(:service_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNamespace, location_name: 'ServiceNamespace', traits: {"smithy.api#required" => {}}))
    ScalingInstruction.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    ScalingInstruction.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalableDimension, location_name: 'ScalableDimension', traits: {"smithy.api#required" => {}}))
    ScalingInstruction.add_member(:min_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCapacity, location_name: 'MinCapacity', traits: {"smithy.api#required" => {}}))
    ScalingInstruction.add_member(:max_capacity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCapacity, location_name: 'MaxCapacity', traits: {"smithy.api#required" => {}}))
    ScalingInstruction.add_member(:target_tracking_configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTrackingConfigurations, location_name: 'TargetTrackingConfigurations', traits: {"smithy.api#required" => {}}))
    ScalingInstruction.add_member(:predefined_load_metric_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredefinedLoadMetricSpecification, location_name: 'PredefinedLoadMetricSpecification'))
    ScalingInstruction.add_member(:customized_load_metric_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizedLoadMetricSpecification, location_name: 'CustomizedLoadMetricSpecification'))
    ScalingInstruction.add_member(:scheduled_action_buffer_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScheduledActionBufferTime, location_name: 'ScheduledActionBufferTime'))
    ScalingInstruction.add_member(:predictive_scaling_max_capacity_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictiveScalingMaxCapacityBehavior, location_name: 'PredictiveScalingMaxCapacityBehavior'))
    ScalingInstruction.add_member(:predictive_scaling_max_capacity_buffer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceCapacity, location_name: 'PredictiveScalingMaxCapacityBuffer'))
    ScalingInstruction.add_member(:predictive_scaling_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredictiveScalingMode, location_name: 'PredictiveScalingMode'))
    ScalingInstruction.add_member(:scaling_policy_update_behavior, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPolicyUpdateBehavior, location_name: 'ScalingPolicyUpdateBehavior'))
    ScalingInstruction.add_member(:disable_dynamic_scaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableDynamicScaling, location_name: 'DisableDynamicScaling'))
    ScalingInstruction.type = Types::ScalingInstruction
    ScalingInstructions.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingInstruction)
    ScalingMetricType.add_member(:asg_average_cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASGAverageCPUUtilization', traits: {"smithy.api#enumValue" => "ASGAverageCPUUtilization"}))
    ScalingMetricType.add_member(:asg_average_network_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASGAverageNetworkIn', traits: {"smithy.api#enumValue" => "ASGAverageNetworkIn"}))
    ScalingMetricType.add_member(:asg_average_network_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASGAverageNetworkOut', traits: {"smithy.api#enumValue" => "ASGAverageNetworkOut"}))
    ScalingMetricType.add_member(:dynamo_db_read_capacity_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DynamoDBReadCapacityUtilization', traits: {"smithy.api#enumValue" => "DynamoDBReadCapacityUtilization"}))
    ScalingMetricType.add_member(:dynamo_db_write_capacity_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DynamoDBWriteCapacityUtilization', traits: {"smithy.api#enumValue" => "DynamoDBWriteCapacityUtilization"}))
    ScalingMetricType.add_member(:ecs_service_average_cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECSServiceAverageCPUUtilization', traits: {"smithy.api#enumValue" => "ECSServiceAverageCPUUtilization"}))
    ScalingMetricType.add_member(:ecs_service_average_memory_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECSServiceAverageMemoryUtilization', traits: {"smithy.api#enumValue" => "ECSServiceAverageMemoryUtilization"}))
    ScalingMetricType.add_member(:alb_request_count_per_target, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALBRequestCountPerTarget', traits: {"smithy.api#enumValue" => "ALBRequestCountPerTarget"}))
    ScalingMetricType.add_member(:rds_reader_average_cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDSReaderAverageCPUUtilization', traits: {"smithy.api#enumValue" => "RDSReaderAverageCPUUtilization"}))
    ScalingMetricType.add_member(:rds_reader_average_database_connections, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDSReaderAverageDatabaseConnections', traits: {"smithy.api#enumValue" => "RDSReaderAverageDatabaseConnections"}))
    ScalingMetricType.add_member(:ec2_spot_fleet_request_average_cpu_utilization, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2SpotFleetRequestAverageCPUUtilization', traits: {"smithy.api#enumValue" => "EC2SpotFleetRequestAverageCPUUtilization"}))
    ScalingMetricType.add_member(:ec2_spot_fleet_request_average_network_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2SpotFleetRequestAverageNetworkIn', traits: {"smithy.api#enumValue" => "EC2SpotFleetRequestAverageNetworkIn"}))
    ScalingMetricType.add_member(:ec2_spot_fleet_request_average_network_out, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2SpotFleetRequestAverageNetworkOut', traits: {"smithy.api#enumValue" => "EC2SpotFleetRequestAverageNetworkOut"}))
    ScalingPlan.add_member(:scaling_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanName, location_name: 'ScalingPlanName', traits: {"smithy.api#required" => {}}))
    ScalingPlan.add_member(:scaling_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: 'ScalingPlanVersion', traits: {"smithy.api#required" => {}}))
    ScalingPlan.add_member(:application_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSource, location_name: 'ApplicationSource', traits: {"smithy.api#required" => {}}))
    ScalingPlan.add_member(:scaling_instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingInstructions, location_name: 'ScalingInstructions', traits: {"smithy.api#required" => {}}))
    ScalingPlan.add_member(:status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanStatusCode, location_name: 'StatusCode', traits: {"smithy.api#required" => {}}))
    ScalingPlan.add_member(:status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'StatusMessage'))
    ScalingPlan.add_member(:status_start_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'StatusStartTime'))
    ScalingPlan.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimestampType, location_name: 'CreationTime'))
    ScalingPlan.type = Types::ScalingPlan
    ScalingPlanNames.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanName)
    ScalingPlanResource.add_member(:scaling_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanName, location_name: 'ScalingPlanName', traits: {"smithy.api#required" => {}}))
    ScalingPlanResource.add_member(:scaling_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: 'ScalingPlanVersion', traits: {"smithy.api#required" => {}}))
    ScalingPlanResource.add_member(:service_namespace, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceNamespace, location_name: 'ServiceNamespace', traits: {"smithy.api#required" => {}}))
    ScalingPlanResource.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, location_name: 'ResourceId', traits: {"smithy.api#required" => {}}))
    ScalingPlanResource.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalableDimension, location_name: 'ScalableDimension', traits: {"smithy.api#required" => {}}))
    ScalingPlanResource.add_member(:scaling_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPolicies, location_name: 'ScalingPolicies'))
    ScalingPlanResource.add_member(:scaling_status_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingStatusCode, location_name: 'ScalingStatusCode', traits: {"smithy.api#required" => {}}))
    ScalingPlanResource.add_member(:scaling_status_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlString, location_name: 'ScalingStatusMessage'))
    ScalingPlanResource.type = Types::ScalingPlanResource
    ScalingPlanResources.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanResource)
    ScalingPlanStatusCode.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    ScalingPlanStatusCode.add_member(:active_with_problems, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ActiveWithProblems', traits: {"smithy.api#enumValue" => "ActiveWithProblems"}))
    ScalingPlanStatusCode.add_member(:creation_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreationInProgress', traits: {"smithy.api#enumValue" => "CreationInProgress"}))
    ScalingPlanStatusCode.add_member(:creation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CreationFailed', traits: {"smithy.api#enumValue" => "CreationFailed"}))
    ScalingPlanStatusCode.add_member(:deletion_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeletionInProgress', traits: {"smithy.api#enumValue" => "DeletionInProgress"}))
    ScalingPlanStatusCode.add_member(:deletion_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DeletionFailed', traits: {"smithy.api#enumValue" => "DeletionFailed"}))
    ScalingPlanStatusCode.add_member(:update_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateInProgress', traits: {"smithy.api#enumValue" => "UpdateInProgress"}))
    ScalingPlanStatusCode.add_member(:update_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UpdateFailed', traits: {"smithy.api#enumValue" => "UpdateFailed"}))
    ScalingPlans.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlan)
    ScalingPolicies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPolicy)
    ScalingPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyName, location_name: 'PolicyName', traits: {"smithy.api#required" => {}}))
    ScalingPolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyType, location_name: 'PolicyType', traits: {"smithy.api#required" => {}}))
    ScalingPolicy.add_member(:target_tracking_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTrackingConfiguration, location_name: 'TargetTrackingConfiguration'))
    ScalingPolicy.type = Types::ScalingPolicy
    ScalingPolicyUpdateBehavior.add_member(:keep_external_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KeepExternalPolicies', traits: {"smithy.api#enumValue" => "KeepExternalPolicies"}))
    ScalingPolicyUpdateBehavior.add_member(:replace_external_policies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReplaceExternalPolicies', traits: {"smithy.api#enumValue" => "ReplaceExternalPolicies"}))
    ScalingStatusCode.add_member(:inactive, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Inactive', traits: {"smithy.api#enumValue" => "Inactive"}))
    ScalingStatusCode.add_member(:partially_active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PartiallyActive', traits: {"smithy.api#enumValue" => "PartiallyActive"}))
    ScalingStatusCode.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    ServiceNamespace.add_member(:autoscaling, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOSCALING', traits: {"smithy.api#enumValue" => "autoscaling"}))
    ServiceNamespace.add_member(:ecs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ECS', traits: {"smithy.api#enumValue" => "ecs"}))
    ServiceNamespace.add_member(:ec2, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EC2', traits: {"smithy.api#enumValue" => "ec2"}))
    ServiceNamespace.add_member(:rds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RDS', traits: {"smithy.api#enumValue" => "rds"}))
    ServiceNamespace.add_member(:dynamodb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DYNAMODB', traits: {"smithy.api#enumValue" => "dynamodb"}))
    TagFilter.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen128, location_name: 'Key'))
    TagFilter.add_member(:values, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValues, location_name: 'Values'))
    TagFilter.type = Types::TagFilter
    TagFilters.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter)
    TagValues.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: XmlStringMaxLen256)
    TargetTrackingConfiguration.add_member(:predefined_scaling_metric_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PredefinedScalingMetricSpecification, location_name: 'PredefinedScalingMetricSpecification'))
    TargetTrackingConfiguration.add_member(:customized_scaling_metric_specification, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomizedScalingMetricSpecification, location_name: 'CustomizedScalingMetricSpecification'))
    TargetTrackingConfiguration.add_member(:target_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MetricScale, location_name: 'TargetValue', traits: {"smithy.api#required" => {}}))
    TargetTrackingConfiguration.add_member(:disable_scale_in, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisableScaleIn, location_name: 'DisableScaleIn'))
    TargetTrackingConfiguration.add_member(:scale_out_cooldown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cooldown, location_name: 'ScaleOutCooldown'))
    TargetTrackingConfiguration.add_member(:scale_in_cooldown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cooldown, location_name: 'ScaleInCooldown'))
    TargetTrackingConfiguration.add_member(:estimated_instance_warmup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Cooldown, location_name: 'EstimatedInstanceWarmup'))
    TargetTrackingConfiguration.type = Types::TargetTrackingConfiguration
    TargetTrackingConfigurations.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TargetTrackingConfiguration)
    UpdateScalingPlanRequest.add_member(:scaling_plan_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanName, location_name: 'ScalingPlanName', traits: {"smithy.api#required" => {}}))
    UpdateScalingPlanRequest.add_member(:scaling_plan_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: 'ScalingPlanVersion', traits: {"smithy.api#required" => {}}))
    UpdateScalingPlanRequest.add_member(:application_source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSource, location_name: 'ApplicationSource'))
    UpdateScalingPlanRequest.add_member(:scaling_instructions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingInstructions, location_name: 'ScalingInstructions'))
    UpdateScalingPlanRequest.type = Types::UpdateScalingPlanRequest
    UpdateScalingPlanResponse.type = Types::UpdateScalingPlanResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    AnyScaleScalingPlannerFrontendService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.autoscalingplans#AnyScaleScalingPlannerFrontendService"
      service.name = "AnyScaleScalingPlannerFrontendService"
      service.version = "2018-01-06"
      service.traits = {"aws.api#service" => {"sdkId" => "Auto Scaling Plans", "arnNamespace" => "autoscaling-plans", "cloudFormationName" => "AutoScalingPlans", "cloudTrailEventSource" => "autoscalingplans.amazonaws.com", "docId" => "autoscaling-plans-2018-01-06", "endpointPrefix" => "autoscaling-plans"}, "aws.auth#sigv4" => {"name" => "autoscaling-plans"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Auto Scaling Plans"}
      service.add_operation(:create_scaling_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscalingplans#CreateScalingPlan"
        operation.name = "CreateScalingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScalingPlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateScalingPlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_scaling_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscalingplans#DeleteScalingPlan"
        operation.name = "DeleteScalingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScalingPlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteScalingPlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_scaling_plan_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscalingplans#DescribeScalingPlanResources"
        operation.name = "DescribeScalingPlanResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScalingPlanResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScalingPlanResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_scaling_plans, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscalingplans#DescribeScalingPlans"
        operation.name = "DescribeScalingPlans"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScalingPlansRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScalingPlansResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:get_scaling_plan_resource_forecast_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscalingplans#GetScalingPlanResourceForecastData"
        operation.name = "GetScalingPlanResourceForecastData"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetScalingPlanResourceForecastDataRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetScalingPlanResourceForecastDataResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_scaling_plan, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.autoscalingplans#UpdateScalingPlan"
        operation.name = "UpdateScalingPlan"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScalingPlanRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScalingPlanResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
