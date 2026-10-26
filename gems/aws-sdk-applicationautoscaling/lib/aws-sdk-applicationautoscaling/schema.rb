# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationAutoScaling
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AdjustmentType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#AdjustmentType", name: "AdjustmentType")
    Alarm = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#Alarm", name: "Alarm")
    Alarms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#Alarms", name: "Alarms")
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#AmazonResourceName", name: "AmazonResourceName", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:.+:application-autoscaling:.+:[0-9]+:scalable-target\\/[a-zA-Z0-9-]+$"})
    CapacityForecast = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#CapacityForecast", name: "CapacityForecast")
    ConcurrentUpdateException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ConcurrentUpdateException", name: "ConcurrentUpdateException", traits: {"aws.protocols#awsQueryError" => {"code" => "ConcurrentUpdateException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    Cooldown = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationautoscaling#Cooldown", name: "Cooldown")
    CustomizedMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#CustomizedMetricSpecification", name: "CustomizedMetricSpecification")
    DeleteScalingPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DeleteScalingPolicyRequest", name: "DeleteScalingPolicyRequest")
    DeleteScalingPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DeleteScalingPolicyResponse", name: "DeleteScalingPolicyResponse")
    DeleteScheduledActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DeleteScheduledActionRequest", name: "DeleteScheduledActionRequest")
    DeleteScheduledActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DeleteScheduledActionResponse", name: "DeleteScheduledActionResponse")
    DeregisterScalableTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DeregisterScalableTargetRequest", name: "DeregisterScalableTargetRequest")
    DeregisterScalableTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DeregisterScalableTargetResponse", name: "DeregisterScalableTargetResponse")
    DescribeScalableTargetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DescribeScalableTargetsRequest", name: "DescribeScalableTargetsRequest")
    DescribeScalableTargetsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DescribeScalableTargetsResponse", name: "DescribeScalableTargetsResponse")
    DescribeScalingActivitiesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DescribeScalingActivitiesRequest", name: "DescribeScalingActivitiesRequest")
    DescribeScalingActivitiesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DescribeScalingActivitiesResponse", name: "DescribeScalingActivitiesResponse")
    DescribeScalingPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DescribeScalingPoliciesRequest", name: "DescribeScalingPoliciesRequest")
    DescribeScalingPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DescribeScalingPoliciesResponse", name: "DescribeScalingPoliciesResponse")
    DescribeScheduledActionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DescribeScheduledActionsRequest", name: "DescribeScheduledActionsRequest")
    DescribeScheduledActionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#DescribeScheduledActionsResponse", name: "DescribeScheduledActionsResponse")
    DisableScaleIn = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.applicationautoscaling#DisableScaleIn", name: "DisableScaleIn")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#ErrorMessage", name: "ErrorMessage")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#ExceptionMessage", name: "ExceptionMessage")
    Expression = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#Expression", name: "Expression", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    FailedResourceAccessException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#FailedResourceAccessException", name: "FailedResourceAccessException", traits: {"aws.protocols#awsQueryError" => {"code" => "FailedResourceAccessException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    GetPredictiveScalingForecastRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#GetPredictiveScalingForecastRequest", name: "GetPredictiveScalingForecastRequest")
    GetPredictiveScalingForecastResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#GetPredictiveScalingForecastResponse", name: "GetPredictiveScalingForecastResponse")
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    IncludeNotScaledActivities = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.applicationautoscaling#IncludeNotScaledActivities", name: "IncludeNotScaledActivities")
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#InternalServiceException", name: "InternalServiceException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServiceException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidNextTokenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#InvalidNextTokenException", name: "InvalidNextTokenException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidNextTokenException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#LimitExceededException", name: "LimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    LoadForecast = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#LoadForecast", name: "LoadForecast")
    LoadForecasts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#LoadForecasts", name: "LoadForecasts")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationautoscaling#MaxResults", name: "MaxResults")
    MetricAggregationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#MetricAggregationType", name: "MetricAggregationType")
    MetricDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#MetricDimension", name: "MetricDimension")
    MetricDimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#MetricDimensionName", name: "MetricDimensionName")
    MetricDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#MetricDimensionValue", name: "MetricDimensionValue")
    MetricDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#MetricDimensions", name: "MetricDimensions")
    MetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#MetricName", name: "MetricName")
    MetricNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#MetricNamespace", name: "MetricNamespace")
    MetricScale = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.applicationautoscaling#MetricScale", name: "MetricScale")
    MetricStatistic = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#MetricStatistic", name: "MetricStatistic")
    MetricType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#MetricType", name: "MetricType")
    MetricUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#MetricUnit", name: "MetricUnit")
    MinAdjustmentMagnitude = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationautoscaling#MinAdjustmentMagnitude", name: "MinAdjustmentMagnitude")
    NotScaledReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#NotScaledReason", name: "NotScaledReason")
    NotScaledReasons = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#NotScaledReasons", name: "NotScaledReasons")
    ObjectNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ObjectNotFoundException", name: "ObjectNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ObjectNotFoundException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    PolicyName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#PolicyName", name: "PolicyName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^\\p{Print}+$"})
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#PolicyType", name: "PolicyType")
    PredefinedMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredefinedMetricSpecification", name: "PredefinedMetricSpecification")
    PredictiveScalingCustomizedMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingCustomizedMetricSpecification", name: "PredictiveScalingCustomizedMetricSpecification")
    PredictiveScalingForecastTimestamps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingForecastTimestamps", name: "PredictiveScalingForecastTimestamps")
    PredictiveScalingForecastValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingForecastValues", name: "PredictiveScalingForecastValues")
    PredictiveScalingMaxCapacityBreachBehavior = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMaxCapacityBreachBehavior", name: "PredictiveScalingMaxCapacityBreachBehavior")
    PredictiveScalingMaxCapacityBuffer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMaxCapacityBuffer", name: "PredictiveScalingMaxCapacityBuffer", traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    PredictiveScalingMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetric", name: "PredictiveScalingMetric")
    PredictiveScalingMetricDataQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricDataQueries", name: "PredictiveScalingMetricDataQueries")
    PredictiveScalingMetricDataQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricDataQuery", name: "PredictiveScalingMetricDataQuery")
    PredictiveScalingMetricDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricDimension", name: "PredictiveScalingMetricDimension")
    PredictiveScalingMetricDimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricDimensionName", name: "PredictiveScalingMetricDimensionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PredictiveScalingMetricDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricDimensionValue", name: "PredictiveScalingMetricDimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PredictiveScalingMetricDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricDimensions", name: "PredictiveScalingMetricDimensions")
    PredictiveScalingMetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricName", name: "PredictiveScalingMetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PredictiveScalingMetricNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricNamespace", name: "PredictiveScalingMetricNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PredictiveScalingMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricSpecification", name: "PredictiveScalingMetricSpecification")
    PredictiveScalingMetricSpecifications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricSpecifications", name: "PredictiveScalingMetricSpecifications")
    PredictiveScalingMetricStat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricStat", name: "PredictiveScalingMetricStat")
    PredictiveScalingMetricType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricType", name: "PredictiveScalingMetricType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    PredictiveScalingMetricUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMetricUnit", name: "PredictiveScalingMetricUnit", traits: {"smithy.api#length" => {"min" => 1, "max" => 1023}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    PredictiveScalingMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingMode", name: "PredictiveScalingMode")
    PredictiveScalingPolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingPolicyConfiguration", name: "PredictiveScalingPolicyConfiguration")
    PredictiveScalingPredefinedLoadMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingPredefinedLoadMetricSpecification", name: "PredictiveScalingPredefinedLoadMetricSpecification")
    PredictiveScalingPredefinedMetricPairSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingPredefinedMetricPairSpecification", name: "PredictiveScalingPredefinedMetricPairSpecification")
    PredictiveScalingPredefinedScalingMetricSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingPredefinedScalingMetricSpecification", name: "PredictiveScalingPredefinedScalingMetricSpecification")
    PredictiveScalingSchedulingBufferTime = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationautoscaling#PredictiveScalingSchedulingBufferTime", name: "PredictiveScalingSchedulingBufferTime", traits: {"smithy.api#range" => {"min" => 0, "max" => 3600}})
    PutScalingPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PutScalingPolicyRequest", name: "PutScalingPolicyRequest")
    PutScalingPolicyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PutScalingPolicyResponse", name: "PutScalingPolicyResponse")
    PutScheduledActionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PutScheduledActionRequest", name: "PutScheduledActionRequest")
    PutScheduledActionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#PutScheduledActionResponse", name: "PutScheduledActionResponse")
    RegisterScalableTargetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#RegisterScalableTargetRequest", name: "RegisterScalableTargetRequest")
    RegisterScalableTargetResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#RegisterScalableTargetResponse", name: "RegisterScalableTargetResponse")
    ResourceCapacity = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationautoscaling#ResourceCapacity", name: "ResourceCapacity")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#ResourceId", name: "ResourceId", traits: {"smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    ResourceIdMaxLen1600 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#ResourceIdMaxLen1600", name: "ResourceIdMaxLen1600", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    ResourceIdsMaxLen1600 = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#ResourceIdsMaxLen1600", name: "ResourceIdsMaxLen1600", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    ResourceLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#ResourceLabel", name: "ResourceLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 1023}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ReturnData = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.applicationautoscaling#ReturnData", name: "ReturnData")
    ScalableDimension = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#ScalableDimension", name: "ScalableDimension")
    ScalableTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ScalableTarget", name: "ScalableTarget")
    ScalableTargetAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ScalableTargetAction", name: "ScalableTargetAction")
    ScalableTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#ScalableTargets", name: "ScalableTargets")
    ScalingActivities = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#ScalingActivities", name: "ScalingActivities")
    ScalingActivity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ScalingActivity", name: "ScalingActivity")
    ScalingActivityStatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#ScalingActivityStatusCode", name: "ScalingActivityStatusCode")
    ScalingAdjustment = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.applicationautoscaling#ScalingAdjustment", name: "ScalingAdjustment")
    ScalingPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#ScalingPolicies", name: "ScalingPolicies")
    ScalingPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ScalingPolicy", name: "ScalingPolicy")
    ScalingSuspended = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.applicationautoscaling#ScalingSuspended", name: "ScalingSuspended")
    ScheduledAction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ScheduledAction", name: "ScheduledAction")
    ScheduledActionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#ScheduledActionName", name: "ScheduledActionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(?!((^[ ]+.*)|(.*([\\u0000-\\u001f]|[\\u007f-\\u009f]|[:/|])+.*)|(.*[ ]+$))).+$"})
    ScheduledActions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#ScheduledActions", name: "ScheduledActions")
    ServiceNamespace = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.applicationautoscaling#ServiceNamespace", name: "ServiceNamespace")
    StepAdjustment = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#StepAdjustment", name: "StepAdjustment")
    StepAdjustments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#StepAdjustments", name: "StepAdjustments")
    StepScalingPolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#StepScalingPolicyConfiguration", name: "StepScalingPolicyConfiguration")
    SuspendedState = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#SuspendedState", name: "SuspendedState")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.applicationautoscaling#TagMap", name: "TagMap")
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    TargetTrackingMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetric", name: "TargetTrackingMetric")
    TargetTrackingMetricDataQueries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricDataQueries", name: "TargetTrackingMetricDataQueries")
    TargetTrackingMetricDataQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricDataQuery", name: "TargetTrackingMetricDataQuery")
    TargetTrackingMetricDimension = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricDimension", name: "TargetTrackingMetricDimension")
    TargetTrackingMetricDimensionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricDimensionName", name: "TargetTrackingMetricDimensionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    TargetTrackingMetricDimensionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricDimensionValue", name: "TargetTrackingMetricDimensionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    TargetTrackingMetricDimensions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricDimensions", name: "TargetTrackingMetricDimensions")
    TargetTrackingMetricName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricName", name: "TargetTrackingMetricName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    TargetTrackingMetricNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricNamespace", name: "TargetTrackingMetricNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    TargetTrackingMetricStat = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricStat", name: "TargetTrackingMetricStat")
    TargetTrackingMetricUnit = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingMetricUnit", name: "TargetTrackingMetricUnit", traits: {"smithy.api#length" => {"min" => 1, "max" => 1023}, "smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})
    TargetTrackingScalingPolicyConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#TargetTrackingScalingPolicyConfiguration", name: "TargetTrackingScalingPolicyConfiguration")
    TimestampType = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.applicationautoscaling#TimestampType", name: "TimestampType")
    TooManyTagsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#TooManyTagsException", name: "TooManyTagsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.applicationautoscaling#ValidationException", name: "ValidationException", traits: {"aws.protocols#awsQueryError" => {"code" => "ValidationException", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    XmlString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.applicationautoscaling#XmlString", name: "XmlString", traits: {"smithy.api#pattern" => "^[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDC00-\\uDBFF\\uDFFF\\r\\n\\t]*$"})

    AdjustmentType.add_member(:change_in_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ChangeInCapacity", traits: {"smithy.api#enumValue" => "ChangeInCapacity"}))
    AdjustmentType.add_member(:percent_change_in_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PercentChangeInCapacity", traits: {"smithy.api#enumValue" => "PercentChangeInCapacity"}))
    AdjustmentType.add_member(:exact_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ExactCapacity", traits: {"smithy.api#enumValue" => "ExactCapacity"}))
    Alarm.add_member(:alarm_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "AlarmName", traits: {"smithy.api#required" => {}}))
    Alarm.add_member(:alarm_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "AlarmARN", traits: {"smithy.api#required" => {}}))
    Alarm.type = Types::Alarm
    Alarms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarm, name: "member"))
    CapacityForecast.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingForecastTimestamps, name: "Timestamps", traits: {"smithy.api#required" => {}}))
    CapacityForecast.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingForecastValues, name: "Values", traits: {"smithy.api#required" => {}}))
    CapacityForecast.type = Types::CapacityForecast
    ConcurrentUpdateException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConcurrentUpdateException.type = Types::ConcurrentUpdateException
    CustomizedMetricSpecification.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricName, name: "MetricName"))
    CustomizedMetricSpecification.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricNamespace, name: "Namespace"))
    CustomizedMetricSpecification.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensions, name: "Dimensions"))
    CustomizedMetricSpecification.add_member(:statistic, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricStatistic, name: "Statistic"))
    CustomizedMetricSpecification.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricUnit, name: "Unit"))
    CustomizedMetricSpecification.add_member(:metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricDataQueries, name: "Metrics"))
    CustomizedMetricSpecification.type = Types::CustomizedMetricSpecification
    DeleteScalingPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    DeleteScalingPolicyRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    DeleteScalingPolicyRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeleteScalingPolicyRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    DeleteScalingPolicyRequest.type = Types::DeleteScalingPolicyRequest
    DeleteScalingPolicyResponse.type = Types::DeleteScalingPolicyResponse
    DeleteScheduledActionRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    DeleteScheduledActionRequest.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ScheduledActionName", traits: {"smithy.api#required" => {}}))
    DeleteScheduledActionRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeleteScheduledActionRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    DeleteScheduledActionRequest.type = Types::DeleteScheduledActionRequest
    DeleteScheduledActionResponse.type = Types::DeleteScheduledActionResponse
    DeregisterScalableTargetRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    DeregisterScalableTargetRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    DeregisterScalableTargetRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    DeregisterScalableTargetRequest.type = Types::DeregisterScalableTargetRequest
    DeregisterScalableTargetResponse.type = Types::DeregisterScalableTargetResponse
    DescribeScalableTargetsRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    DescribeScalableTargetsRequest.add_member(:resource_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdsMaxLen1600, name: "ResourceIds"))
    DescribeScalableTargetsRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension"))
    DescribeScalableTargetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeScalableTargetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScalableTargetsRequest.type = Types::DescribeScalableTargetsRequest
    DescribeScalableTargetsResponse.add_member(:scalable_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableTargets, name: "ScalableTargets"))
    DescribeScalableTargetsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScalableTargetsResponse.type = Types::DescribeScalableTargetsResponse
    DescribeScalingActivitiesRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    DescribeScalingActivitiesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId"))
    DescribeScalingActivitiesRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension"))
    DescribeScalingActivitiesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeScalingActivitiesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScalingActivitiesRequest.add_member(:include_not_scaled_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeNotScaledActivities, name: "IncludeNotScaledActivities"))
    DescribeScalingActivitiesRequest.type = Types::DescribeScalingActivitiesRequest
    DescribeScalingActivitiesResponse.add_member(:scaling_activities, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingActivities, name: "ScalingActivities"))
    DescribeScalingActivitiesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScalingActivitiesResponse.type = Types::DescribeScalingActivitiesResponse
    DescribeScalingPoliciesRequest.add_member(:policy_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdsMaxLen1600, name: "PolicyNames"))
    DescribeScalingPoliciesRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    DescribeScalingPoliciesRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId"))
    DescribeScalingPoliciesRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension"))
    DescribeScalingPoliciesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeScalingPoliciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScalingPoliciesRequest.type = Types::DescribeScalingPoliciesRequest
    DescribeScalingPoliciesResponse.add_member(:scaling_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingPolicies, name: "ScalingPolicies"))
    DescribeScalingPoliciesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScalingPoliciesResponse.type = Types::DescribeScalingPoliciesResponse
    DescribeScheduledActionsRequest.add_member(:scheduled_action_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdsMaxLen1600, name: "ScheduledActionNames"))
    DescribeScheduledActionsRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    DescribeScheduledActionsRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId"))
    DescribeScheduledActionsRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension"))
    DescribeScheduledActionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeScheduledActionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScheduledActionsRequest.type = Types::DescribeScheduledActionsRequest
    DescribeScheduledActionsResponse.add_member(:scheduled_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActions, name: "ScheduledActions"))
    DescribeScheduledActionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "NextToken"))
    DescribeScheduledActionsResponse.type = Types::DescribeScheduledActionsResponse
    FailedResourceAccessException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    FailedResourceAccessException.type = Types::FailedResourceAccessException
    GetPredictiveScalingForecastRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    GetPredictiveScalingForecastRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    GetPredictiveScalingForecastRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    GetPredictiveScalingForecastRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    GetPredictiveScalingForecastRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime", traits: {"smithy.api#required" => {}}))
    GetPredictiveScalingForecastRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime", traits: {"smithy.api#required" => {}}))
    GetPredictiveScalingForecastRequest.type = Types::GetPredictiveScalingForecastRequest
    GetPredictiveScalingForecastResponse.add_member(:load_forecast, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadForecasts, name: "LoadForecast"))
    GetPredictiveScalingForecastResponse.add_member(:capacity_forecast, ::Smithy::Schema::Shapes::MemberShape.new(target: CapacityForecast, name: "CapacityForecast"))
    GetPredictiveScalingForecastResponse.add_member(:update_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "UpdateTime"))
    GetPredictiveScalingForecastResponse.type = Types::GetPredictiveScalingForecastResponse
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidNextTokenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidNextTokenException.type = Types::InvalidNextTokenException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LoadForecast.add_member(:timestamps, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingForecastTimestamps, name: "Timestamps", traits: {"smithy.api#required" => {}}))
    LoadForecast.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingForecastValues, name: "Values", traits: {"smithy.api#required" => {}}))
    LoadForecast.add_member(:metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricSpecification, name: "MetricSpecification", traits: {"smithy.api#required" => {}}))
    LoadForecast.type = Types::LoadForecast
    LoadForecasts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LoadForecast, name: "member"))
    MetricAggregationType.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Average", traits: {"smithy.api#enumValue" => "Average"}))
    MetricAggregationType.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Minimum", traits: {"smithy.api#enumValue" => "Minimum"}))
    MetricAggregationType.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Maximum", traits: {"smithy.api#enumValue" => "Maximum"}))
    MetricDimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionName, name: "Name", traits: {"smithy.api#required" => {}}))
    MetricDimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimensionValue, name: "Value", traits: {"smithy.api#required" => {}}))
    MetricDimension.type = Types::MetricDimension
    MetricDimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricDimension, name: "member"))
    MetricStatistic.add_member(:average, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Average", traits: {"smithy.api#enumValue" => "Average"}))
    MetricStatistic.add_member(:minimum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Minimum", traits: {"smithy.api#enumValue" => "Minimum"}))
    MetricStatistic.add_member(:maximum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Maximum", traits: {"smithy.api#enumValue" => "Maximum"}))
    MetricStatistic.add_member(:sample_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SampleCount", traits: {"smithy.api#enumValue" => "SampleCount"}))
    MetricStatistic.add_member(:sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Sum", traits: {"smithy.api#enumValue" => "Sum"}))
    MetricType.add_member(:dynamo_db_read_capacity_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DynamoDBReadCapacityUtilization", traits: {"smithy.api#enumValue" => "DynamoDBReadCapacityUtilization"}))
    MetricType.add_member(:dynamo_db_write_capacity_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DynamoDBWriteCapacityUtilization", traits: {"smithy.api#enumValue" => "DynamoDBWriteCapacityUtilization"}))
    MetricType.add_member(:alb_request_count_per_target, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALBRequestCountPerTarget", traits: {"smithy.api#enumValue" => "ALBRequestCountPerTarget"}))
    MetricType.add_member(:rds_reader_average_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDSReaderAverageCPUUtilization", traits: {"smithy.api#enumValue" => "RDSReaderAverageCPUUtilization"}))
    MetricType.add_member(:rds_reader_average_database_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDSReaderAverageDatabaseConnections", traits: {"smithy.api#enumValue" => "RDSReaderAverageDatabaseConnections"}))
    MetricType.add_member(:ec2_spot_fleet_request_average_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2SpotFleetRequestAverageCPUUtilization", traits: {"smithy.api#enumValue" => "EC2SpotFleetRequestAverageCPUUtilization"}))
    MetricType.add_member(:ec2_spot_fleet_request_average_network_in, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2SpotFleetRequestAverageNetworkIn", traits: {"smithy.api#enumValue" => "EC2SpotFleetRequestAverageNetworkIn"}))
    MetricType.add_member(:ec2_spot_fleet_request_average_network_out, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2SpotFleetRequestAverageNetworkOut", traits: {"smithy.api#enumValue" => "EC2SpotFleetRequestAverageNetworkOut"}))
    MetricType.add_member(:sage_maker_variant_invocations_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerVariantInvocationsPerInstance", traits: {"smithy.api#enumValue" => "SageMakerVariantInvocationsPerInstance"}))
    MetricType.add_member(:ecs_service_average_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSServiceAverageCPUUtilization", traits: {"smithy.api#enumValue" => "ECSServiceAverageCPUUtilization"}))
    MetricType.add_member(:ecs_service_average_memory_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSServiceAverageMemoryUtilization", traits: {"smithy.api#enumValue" => "ECSServiceAverageMemoryUtilization"}))
    MetricType.add_member(:app_stream_average_capacity_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppStreamAverageCapacityUtilization", traits: {"smithy.api#enumValue" => "AppStreamAverageCapacityUtilization"}))
    MetricType.add_member(:comprehend_inference_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ComprehendInferenceUtilization", traits: {"smithy.api#enumValue" => "ComprehendInferenceUtilization"}))
    MetricType.add_member(:lambda_provisioned_concurrency_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaProvisionedConcurrencyUtilization", traits: {"smithy.api#enumValue" => "LambdaProvisionedConcurrencyUtilization"}))
    MetricType.add_member(:cassandra_read_capacity_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CassandraReadCapacityUtilization", traits: {"smithy.api#enumValue" => "CassandraReadCapacityUtilization"}))
    MetricType.add_member(:cassandra_write_capacity_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CassandraWriteCapacityUtilization", traits: {"smithy.api#enumValue" => "CassandraWriteCapacityUtilization"}))
    MetricType.add_member(:kafka_broker_storage_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KafkaBrokerStorageUtilization", traits: {"smithy.api#enumValue" => "KafkaBrokerStorageUtilization"}))
    MetricType.add_member(:elasti_cache_engine_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCacheEngineCPUUtilization", traits: {"smithy.api#enumValue" => "ElastiCacheEngineCPUUtilization"}))
    MetricType.add_member(:elasti_cache_database_memory_usage_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCacheDatabaseMemoryUsagePercentage", traits: {"smithy.api#enumValue" => "ElastiCacheDatabaseMemoryUsagePercentage"}))
    MetricType.add_member(:elasti_cache_primary_engine_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCachePrimaryEngineCPUUtilization", traits: {"smithy.api#enumValue" => "ElastiCachePrimaryEngineCPUUtilization"}))
    MetricType.add_member(:elasti_cache_replica_engine_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCacheReplicaEngineCPUUtilization", traits: {"smithy.api#enumValue" => "ElastiCacheReplicaEngineCPUUtilization"}))
    MetricType.add_member(:elasti_cache_database_memory_usage_counted_for_evict_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage", traits: {"smithy.api#enumValue" => "ElastiCacheDatabaseMemoryUsageCountedForEvictPercentage"}))
    MetricType.add_member(:neptune_reader_average_cpu_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NeptuneReaderAverageCPUUtilization", traits: {"smithy.api#enumValue" => "NeptuneReaderAverageCPUUtilization"}))
    MetricType.add_member(:sage_maker_variant_provisioned_concurrency_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerVariantProvisionedConcurrencyUtilization", traits: {"smithy.api#enumValue" => "SageMakerVariantProvisionedConcurrencyUtilization"}))
    MetricType.add_member(:elasti_cache_database_capacity_usage_counted_for_evict_percentage, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCacheDatabaseCapacityUsageCountedForEvictPercentage", traits: {"smithy.api#enumValue" => "ElastiCacheDatabaseCapacityUsageCountedForEvictPercentage"}))
    MetricType.add_member(:sage_maker_inference_component_invocations_per_copy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerInferenceComponentInvocationsPerCopy", traits: {"smithy.api#enumValue" => "SageMakerInferenceComponentInvocationsPerCopy"}))
    MetricType.add_member(:work_spaces_average_user_sessions_capacity_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkSpacesAverageUserSessionsCapacityUtilization", traits: {"smithy.api#enumValue" => "WorkSpacesAverageUserSessionsCapacityUtilization"}))
    MetricType.add_member(:sage_maker_inference_component_concurrent_requests_per_copy_high_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerInferenceComponentConcurrentRequestsPerCopyHighResolution", traits: {"smithy.api#enumValue" => "SageMakerInferenceComponentConcurrentRequestsPerCopyHighResolution"}))
    MetricType.add_member(:sage_maker_variant_concurrent_requests_per_model_high_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerVariantConcurrentRequestsPerModelHighResolution", traits: {"smithy.api#enumValue" => "SageMakerVariantConcurrentRequestsPerModelHighResolution"}))
    MetricType.add_member(:ecs_service_average_cpu_utilization_high_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSServiceAverageCPUUtilizationHighResolution", traits: {"smithy.api#enumValue" => "ECSServiceAverageCPUUtilizationHighResolution"}))
    MetricType.add_member(:ecs_service_average_memory_utilization_high_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSServiceAverageMemoryUtilizationHighResolution", traits: {"smithy.api#enumValue" => "ECSServiceAverageMemoryUtilizationHighResolution"}))
    NotScaledReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Code", traits: {"smithy.api#required" => {}}))
    NotScaledReason.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "MaxCapacity"))
    NotScaledReason.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "MinCapacity"))
    NotScaledReason.add_member(:current_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "CurrentCapacity"))
    NotScaledReason.type = Types::NotScaledReason
    NotScaledReasons.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NotScaledReason, name: "member"))
    ObjectNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ObjectNotFoundException.type = Types::ObjectNotFoundException
    PolicyType.add_member(:step_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StepScaling", traits: {"smithy.api#enumValue" => "StepScaling"}))
    PolicyType.add_member(:target_tracking_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TargetTrackingScaling", traits: {"smithy.api#enumValue" => "TargetTrackingScaling"}))
    PolicyType.add_member(:predictive_scaling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PredictiveScaling", traits: {"smithy.api#enumValue" => "PredictiveScaling"}))
    PredefinedMetricSpecification.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricType, name: "PredefinedMetricType", traits: {"smithy.api#required" => {}}))
    PredefinedMetricSpecification.add_member(:resource_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLabel, name: "ResourceLabel"))
    PredefinedMetricSpecification.type = Types::PredefinedMetricSpecification
    PredictiveScalingCustomizedMetricSpecification.add_member(:metric_data_queries, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricDataQueries, name: "MetricDataQueries", traits: {"smithy.api#required" => {}}))
    PredictiveScalingCustomizedMetricSpecification.type = Types::PredictiveScalingCustomizedMetricSpecification
    PredictiveScalingForecastTimestamps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "member"))
    PredictiveScalingForecastValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "member"))
    PredictiveScalingMaxCapacityBreachBehavior.add_member(:honor_max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HonorMaxCapacity", traits: {"smithy.api#enumValue" => "HonorMaxCapacity"}))
    PredictiveScalingMaxCapacityBreachBehavior.add_member(:increase_max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IncreaseMaxCapacity", traits: {"smithy.api#enumValue" => "IncreaseMaxCapacity"}))
    PredictiveScalingMetric.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricDimensions, name: "Dimensions"))
    PredictiveScalingMetric.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricName, name: "MetricName"))
    PredictiveScalingMetric.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricNamespace, name: "Namespace"))
    PredictiveScalingMetric.type = Types::PredictiveScalingMetric
    PredictiveScalingMetricDataQueries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricDataQuery, name: "member"))
    PredictiveScalingMetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    PredictiveScalingMetricDataQuery.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression"))
    PredictiveScalingMetricDataQuery.add_member(:metric_stat, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricStat, name: "MetricStat"))
    PredictiveScalingMetricDataQuery.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Label"))
    PredictiveScalingMetricDataQuery.add_member(:return_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnData, name: "ReturnData"))
    PredictiveScalingMetricDataQuery.type = Types::PredictiveScalingMetricDataQuery
    PredictiveScalingMetricDimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricDimensionName, name: "Name", traits: {"smithy.api#required" => {}}))
    PredictiveScalingMetricDimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricDimensionValue, name: "Value", traits: {"smithy.api#required" => {}}))
    PredictiveScalingMetricDimension.type = Types::PredictiveScalingMetricDimension
    PredictiveScalingMetricDimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricDimension, name: "member"))
    PredictiveScalingMetricSpecification.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "TargetValue", traits: {"smithy.api#required" => {}}))
    PredictiveScalingMetricSpecification.add_member(:predefined_metric_pair_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingPredefinedMetricPairSpecification, name: "PredefinedMetricPairSpecification"))
    PredictiveScalingMetricSpecification.add_member(:predefined_scaling_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingPredefinedScalingMetricSpecification, name: "PredefinedScalingMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:predefined_load_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingPredefinedLoadMetricSpecification, name: "PredefinedLoadMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_scaling_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingCustomizedMetricSpecification, name: "CustomizedScalingMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_load_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingCustomizedMetricSpecification, name: "CustomizedLoadMetricSpecification"))
    PredictiveScalingMetricSpecification.add_member(:customized_capacity_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingCustomizedMetricSpecification, name: "CustomizedCapacityMetricSpecification"))
    PredictiveScalingMetricSpecification.type = Types::PredictiveScalingMetricSpecification
    PredictiveScalingMetricSpecifications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricSpecification, name: "member"))
    PredictiveScalingMetricStat.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetric, name: "Metric", traits: {"smithy.api#required" => {}}))
    PredictiveScalingMetricStat.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Stat", traits: {"smithy.api#required" => {}}))
    PredictiveScalingMetricStat.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricUnit, name: "Unit"))
    PredictiveScalingMetricStat.type = Types::PredictiveScalingMetricStat
    PredictiveScalingMode.add_member(:forecast_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ForecastOnly", traits: {"smithy.api#enumValue" => "ForecastOnly"}))
    PredictiveScalingMode.add_member(:forecast_and_scale, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ForecastAndScale", traits: {"smithy.api#enumValue" => "ForecastAndScale"}))
    PredictiveScalingPolicyConfiguration.add_member(:metric_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricSpecifications, name: "MetricSpecifications", traits: {"smithy.api#required" => {}}))
    PredictiveScalingPolicyConfiguration.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMode, name: "Mode"))
    PredictiveScalingPolicyConfiguration.add_member(:scheduling_buffer_time, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingSchedulingBufferTime, name: "SchedulingBufferTime"))
    PredictiveScalingPolicyConfiguration.add_member(:max_capacity_breach_behavior, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMaxCapacityBreachBehavior, name: "MaxCapacityBreachBehavior"))
    PredictiveScalingPolicyConfiguration.add_member(:max_capacity_buffer, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMaxCapacityBuffer, name: "MaxCapacityBuffer"))
    PredictiveScalingPolicyConfiguration.type = Types::PredictiveScalingPolicyConfiguration
    PredictiveScalingPredefinedLoadMetricSpecification.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricType, name: "PredefinedMetricType", traits: {"smithy.api#required" => {}}))
    PredictiveScalingPredefinedLoadMetricSpecification.add_member(:resource_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLabel, name: "ResourceLabel"))
    PredictiveScalingPredefinedLoadMetricSpecification.type = Types::PredictiveScalingPredefinedLoadMetricSpecification
    PredictiveScalingPredefinedMetricPairSpecification.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricType, name: "PredefinedMetricType", traits: {"smithy.api#required" => {}}))
    PredictiveScalingPredefinedMetricPairSpecification.add_member(:resource_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLabel, name: "ResourceLabel"))
    PredictiveScalingPredefinedMetricPairSpecification.type = Types::PredictiveScalingPredefinedMetricPairSpecification
    PredictiveScalingPredefinedScalingMetricSpecification.add_member(:predefined_metric_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingMetricType, name: "PredefinedMetricType", traits: {"smithy.api#required" => {}}))
    PredictiveScalingPredefinedScalingMetricSpecification.add_member(:resource_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceLabel, name: "ResourceLabel"))
    PredictiveScalingPredefinedScalingMetricSpecification.type = Types::PredictiveScalingPredefinedScalingMetricSpecification
    PutScalingPolicyRequest.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    PutScalingPolicyRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    PutScalingPolicyRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    PutScalingPolicyRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    PutScalingPolicyRequest.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "PolicyType"))
    PutScalingPolicyRequest.add_member(:step_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StepScalingPolicyConfiguration, name: "StepScalingPolicyConfiguration"))
    PutScalingPolicyRequest.add_member(:target_tracking_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingScalingPolicyConfiguration, name: "TargetTrackingScalingPolicyConfiguration"))
    PutScalingPolicyRequest.add_member(:predictive_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingPolicyConfiguration, name: "PredictiveScalingPolicyConfiguration"))
    PutScalingPolicyRequest.type = Types::PutScalingPolicyRequest
    PutScalingPolicyResponse.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "PolicyARN", traits: {"smithy.api#required" => {}}))
    PutScalingPolicyResponse.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarms, name: "Alarms"))
    PutScalingPolicyResponse.type = Types::PutScalingPolicyResponse
    PutScheduledActionRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    PutScheduledActionRequest.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "Schedule"))
    PutScheduledActionRequest.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "Timezone"))
    PutScheduledActionRequest.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionName, name: "ScheduledActionName", traits: {"smithy.api#required" => {}}))
    PutScheduledActionRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    PutScheduledActionRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    PutScheduledActionRequest.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime"))
    PutScheduledActionRequest.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    PutScheduledActionRequest.add_member(:scalable_target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableTargetAction, name: "ScalableTargetAction"))
    PutScheduledActionRequest.type = Types::PutScheduledActionRequest
    PutScheduledActionResponse.type = Types::PutScheduledActionResponse
    RegisterScalableTargetRequest.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    RegisterScalableTargetRequest.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    RegisterScalableTargetRequest.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    RegisterScalableTargetRequest.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "MinCapacity"))
    RegisterScalableTargetRequest.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "MaxCapacity"))
    RegisterScalableTargetRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "RoleARN"))
    RegisterScalableTargetRequest.add_member(:suspended_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SuspendedState, name: "SuspendedState"))
    RegisterScalableTargetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    RegisterScalableTargetRequest.type = Types::RegisterScalableTargetRequest
    RegisterScalableTargetResponse.add_member(:scalable_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ScalableTargetARN"))
    RegisterScalableTargetResponse.type = Types::RegisterScalableTargetResponse
    ResourceIdsMaxLen1600.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "member"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScalableDimension.add_member(:ecs_service_desired_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECSServiceDesiredCount", traits: {"smithy.api#enumValue" => "ecs:service:DesiredCount"}))
    ScalableDimension.add_member(:ec2_spot_fleet_request_target_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2SpotFleetRequestTargetCapacity", traits: {"smithy.api#enumValue" => "ec2:spot-fleet-request:TargetCapacity"}))
    ScalableDimension.add_member(:emr_instance_group_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMRInstanceGroupInstanceCount", traits: {"smithy.api#enumValue" => "elasticmapreduce:instancegroup:InstanceCount"}))
    ScalableDimension.add_member(:appstream_fleet_desired_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppstreamFleetDesiredCapacity", traits: {"smithy.api#enumValue" => "appstream:fleet:DesiredCapacity"}))
    ScalableDimension.add_member(:dynamo_db_table_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DynamoDBTableReadCapacityUnits", traits: {"smithy.api#enumValue" => "dynamodb:table:ReadCapacityUnits"}))
    ScalableDimension.add_member(:dynamo_db_table_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DynamoDBTableWriteCapacityUnits", traits: {"smithy.api#enumValue" => "dynamodb:table:WriteCapacityUnits"}))
    ScalableDimension.add_member(:dynamo_db_index_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DynamoDBIndexReadCapacityUnits", traits: {"smithy.api#enumValue" => "dynamodb:index:ReadCapacityUnits"}))
    ScalableDimension.add_member(:dynamo_db_index_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DynamoDBIndexWriteCapacityUnits", traits: {"smithy.api#enumValue" => "dynamodb:index:WriteCapacityUnits"}))
    ScalableDimension.add_member(:rds_cluster_read_replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDSClusterReadReplicaCount", traits: {"smithy.api#enumValue" => "rds:cluster:ReadReplicaCount"}))
    ScalableDimension.add_member(:sage_maker_variant_desired_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerVariantDesiredInstanceCount", traits: {"smithy.api#enumValue" => "sagemaker:variant:DesiredInstanceCount"}))
    ScalableDimension.add_member(:custom_resource_scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CustomResourceScalableDimension", traits: {"smithy.api#enumValue" => "custom-resource:ResourceType:Property"}))
    ScalableDimension.add_member(:comprehend_doc_classifier_endpoint_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ComprehendDocClassifierEndpointInferenceUnits", traits: {"smithy.api#enumValue" => "comprehend:document-classifier-endpoint:DesiredInferenceUnits"}))
    ScalableDimension.add_member(:comprehend_entity_recognizer_endpoint_inference_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ComprehendEntityRecognizerEndpointInferenceUnits", traits: {"smithy.api#enumValue" => "comprehend:entity-recognizer-endpoint:DesiredInferenceUnits"}))
    ScalableDimension.add_member(:lambda_function_provisioned_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LambdaFunctionProvisionedConcurrency", traits: {"smithy.api#enumValue" => "lambda:function:ProvisionedConcurrency"}))
    ScalableDimension.add_member(:cassandra_table_read_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CassandraTableReadCapacityUnits", traits: {"smithy.api#enumValue" => "cassandra:table:ReadCapacityUnits"}))
    ScalableDimension.add_member(:cassandra_table_write_capacity_units, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CassandraTableWriteCapacityUnits", traits: {"smithy.api#enumValue" => "cassandra:table:WriteCapacityUnits"}))
    ScalableDimension.add_member(:kafka_broker_storage_volume_size, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KafkaBrokerStorageVolumeSize", traits: {"smithy.api#enumValue" => "kafka:broker-storage:VolumeSize"}))
    ScalableDimension.add_member(:elasti_cache_cache_cluster_nodes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCacheCacheClusterNodes", traits: {"smithy.api#enumValue" => "elasticache:cache-cluster:Nodes"}))
    ScalableDimension.add_member(:elasti_cache_replication_group_node_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCacheReplicationGroupNodeGroups", traits: {"smithy.api#enumValue" => "elasticache:replication-group:NodeGroups"}))
    ScalableDimension.add_member(:elasti_cache_replication_group_replicas, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ElastiCacheReplicationGroupReplicas", traits: {"smithy.api#enumValue" => "elasticache:replication-group:Replicas"}))
    ScalableDimension.add_member(:neptune_cluster_read_replica_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NeptuneClusterReadReplicaCount", traits: {"smithy.api#enumValue" => "neptune:cluster:ReadReplicaCount"}))
    ScalableDimension.add_member(:sage_maker_variant_desired_provisioned_concurrency, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerVariantDesiredProvisionedConcurrency", traits: {"smithy.api#enumValue" => "sagemaker:variant:DesiredProvisionedConcurrency"}))
    ScalableDimension.add_member(:sage_maker_inference_component_desired_copy_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SageMakerInferenceComponentDesiredCopyCount", traits: {"smithy.api#enumValue" => "sagemaker:inference-component:DesiredCopyCount"}))
    ScalableDimension.add_member(:work_spaces_work_spaces_pool_desired_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WorkSpacesWorkSpacesPoolDesiredUserSessions", traits: {"smithy.api#enumValue" => "workspaces:workspacespool:DesiredUserSessions"}))
    ScalableTarget.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    ScalableTarget.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ScalableTarget.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    ScalableTarget.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "MinCapacity", traits: {"smithy.api#required" => {}}))
    ScalableTarget.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "MaxCapacity", traits: {"smithy.api#required" => {}}))
    ScalableTarget.add_member(:predicted_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "PredictedCapacity"))
    ScalableTarget.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    ScalableTarget.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    ScalableTarget.add_member(:suspended_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SuspendedState, name: "SuspendedState"))
    ScalableTarget.add_member(:scalable_target_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "ScalableTargetARN"))
    ScalableTarget.type = Types::ScalableTarget
    ScalableTargetAction.add_member(:min_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "MinCapacity"))
    ScalableTargetAction.add_member(:max_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceCapacity, name: "MaxCapacity"))
    ScalableTargetAction.type = Types::ScalableTargetAction
    ScalableTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableTarget, name: "member"))
    ScalingActivities.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingActivity, name: "member"))
    ScalingActivity.add_member(:activity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "ActivityId", traits: {"smithy.api#required" => {}}))
    ScalingActivity.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    ScalingActivity.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ScalingActivity.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    ScalingActivity.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Description", traits: {"smithy.api#required" => {}}))
    ScalingActivity.add_member(:cause, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Cause", traits: {"smithy.api#required" => {}}))
    ScalingActivity.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime", traits: {"smithy.api#required" => {}}))
    ScalingActivity.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    ScalingActivity.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingActivityStatusCode, name: "StatusCode", traits: {"smithy.api#required" => {}}))
    ScalingActivity.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "StatusMessage"))
    ScalingActivity.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Details"))
    ScalingActivity.add_member(:not_scaled_reasons, ::Smithy::Schema::Shapes::MemberShape.new(target: NotScaledReasons, name: "NotScaledReasons"))
    ScalingActivity.type = Types::ScalingActivity
    ScalingActivityStatusCode.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Pending", traits: {"smithy.api#enumValue" => "Pending"}))
    ScalingActivityStatusCode.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    ScalingActivityStatusCode.add_member(:successful, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Successful", traits: {"smithy.api#enumValue" => "Successful"}))
    ScalingActivityStatusCode.add_member(:overridden, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Overridden", traits: {"smithy.api#enumValue" => "Overridden"}))
    ScalingActivityStatusCode.add_member(:unfulfilled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Unfulfilled", traits: {"smithy.api#enumValue" => "Unfulfilled"}))
    ScalingActivityStatusCode.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    ScalingPolicies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingPolicy, name: "member"))
    ScalingPolicy.add_member(:policy_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "PolicyARN", traits: {"smithy.api#required" => {}}))
    ScalingPolicy.add_member(:policy_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyName, name: "PolicyName", traits: {"smithy.api#required" => {}}))
    ScalingPolicy.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    ScalingPolicy.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ScalingPolicy.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension", traits: {"smithy.api#required" => {}}))
    ScalingPolicy.add_member(:policy_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "PolicyType", traits: {"smithy.api#required" => {}}))
    ScalingPolicy.add_member(:step_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: StepScalingPolicyConfiguration, name: "StepScalingPolicyConfiguration"))
    ScalingPolicy.add_member(:target_tracking_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingScalingPolicyConfiguration, name: "TargetTrackingScalingPolicyConfiguration"))
    ScalingPolicy.add_member(:predictive_scaling_policy_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PredictiveScalingPolicyConfiguration, name: "PredictiveScalingPolicyConfiguration"))
    ScalingPolicy.add_member(:alarms, ::Smithy::Schema::Shapes::MemberShape.new(target: Alarms, name: "Alarms"))
    ScalingPolicy.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    ScalingPolicy.type = Types::ScalingPolicy
    ScheduledAction.add_member(:scheduled_action_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledActionName, name: "ScheduledActionName", traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:scheduled_action_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ScheduledActionARN", traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:service_namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceNamespace, name: "ServiceNamespace", traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "Schedule", traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:timezone, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "Timezone"))
    ScheduledAction.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdMaxLen1600, name: "ResourceId", traits: {"smithy.api#required" => {}}))
    ScheduledAction.add_member(:scalable_dimension, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableDimension, name: "ScalableDimension"))
    ScheduledAction.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "StartTime"))
    ScheduledAction.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "EndTime"))
    ScheduledAction.add_member(:scalable_target_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalableTargetAction, name: "ScalableTargetAction"))
    ScheduledAction.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampType, name: "CreationTime", traits: {"smithy.api#required" => {}}))
    ScheduledAction.type = Types::ScheduledAction
    ScheduledActions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ScheduledAction, name: "member"))
    ServiceNamespace.add_member(:ecs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ECS", traits: {"smithy.api#enumValue" => "ecs"}))
    ServiceNamespace.add_member(:emr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMR", traits: {"smithy.api#enumValue" => "elasticmapreduce"}))
    ServiceNamespace.add_member(:ec2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EC2", traits: {"smithy.api#enumValue" => "ec2"}))
    ServiceNamespace.add_member(:appstream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPSTREAM", traits: {"smithy.api#enumValue" => "appstream"}))
    ServiceNamespace.add_member(:dynamodb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DYNAMODB", traits: {"smithy.api#enumValue" => "dynamodb"}))
    ServiceNamespace.add_member(:rds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RDS", traits: {"smithy.api#enumValue" => "rds"}))
    ServiceNamespace.add_member(:sagemaker, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAGEMAKER", traits: {"smithy.api#enumValue" => "sagemaker"}))
    ServiceNamespace.add_member(:custom_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM_RESOURCE", traits: {"smithy.api#enumValue" => "custom-resource"}))
    ServiceNamespace.add_member(:comprehend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPREHEND", traits: {"smithy.api#enumValue" => "comprehend"}))
    ServiceNamespace.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA", traits: {"smithy.api#enumValue" => "lambda"}))
    ServiceNamespace.add_member(:cassandra, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CASSANDRA", traits: {"smithy.api#enumValue" => "cassandra"}))
    ServiceNamespace.add_member(:kafka, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KAFKA", traits: {"smithy.api#enumValue" => "kafka"}))
    ServiceNamespace.add_member(:elasticache, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTICACHE", traits: {"smithy.api#enumValue" => "elasticache"}))
    ServiceNamespace.add_member(:neptune, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NEPTUNE", traits: {"smithy.api#enumValue" => "neptune"}))
    ServiceNamespace.add_member(:workspaces, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKSPACES", traits: {"smithy.api#enumValue" => "workspaces"}))
    StepAdjustment.add_member(:metric_interval_lower_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "MetricIntervalLowerBound"))
    StepAdjustment.add_member(:metric_interval_upper_bound, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "MetricIntervalUpperBound"))
    StepAdjustment.add_member(:scaling_adjustment, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingAdjustment, name: "ScalingAdjustment", traits: {"smithy.api#required" => {}}))
    StepAdjustment.type = Types::StepAdjustment
    StepAdjustments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StepAdjustment, name: "member"))
    StepScalingPolicyConfiguration.add_member(:adjustment_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AdjustmentType, name: "AdjustmentType"))
    StepScalingPolicyConfiguration.add_member(:step_adjustments, ::Smithy::Schema::Shapes::MemberShape.new(target: StepAdjustments, name: "StepAdjustments"))
    StepScalingPolicyConfiguration.add_member(:min_adjustment_magnitude, ::Smithy::Schema::Shapes::MemberShape.new(target: MinAdjustmentMagnitude, name: "MinAdjustmentMagnitude"))
    StepScalingPolicyConfiguration.add_member(:cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: Cooldown, name: "Cooldown"))
    StepScalingPolicyConfiguration.add_member(:metric_aggregation_type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricAggregationType, name: "MetricAggregationType"))
    StepScalingPolicyConfiguration.type = Types::StepScalingPolicyConfiguration
    SuspendedState.add_member(:dynamic_scaling_in_suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingSuspended, name: "DynamicScalingInSuspended"))
    SuspendedState.add_member(:dynamic_scaling_out_suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingSuspended, name: "DynamicScalingOutSuspended"))
    SuspendedState.add_member(:scheduled_scaling_suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingSuspended, name: "ScheduledScalingSuspended"))
    SuspendedState.type = Types::SuspendedState
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TargetTrackingMetric.add_member(:dimensions, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricDimensions, name: "Dimensions"))
    TargetTrackingMetric.add_member(:metric_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricName, name: "MetricName"))
    TargetTrackingMetric.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricNamespace, name: "Namespace"))
    TargetTrackingMetric.type = Types::TargetTrackingMetric
    TargetTrackingMetricDataQueries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricDataQuery, name: "member"))
    TargetTrackingMetricDataQuery.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, name: "Expression"))
    TargetTrackingMetricDataQuery.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    TargetTrackingMetricDataQuery.add_member(:label, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Label"))
    TargetTrackingMetricDataQuery.add_member(:metric_stat, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricStat, name: "MetricStat"))
    TargetTrackingMetricDataQuery.add_member(:return_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ReturnData, name: "ReturnData"))
    TargetTrackingMetricDataQuery.type = Types::TargetTrackingMetricDataQuery
    TargetTrackingMetricDimension.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricDimensionName, name: "Name", traits: {"smithy.api#required" => {}}))
    TargetTrackingMetricDimension.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricDimensionValue, name: "Value", traits: {"smithy.api#required" => {}}))
    TargetTrackingMetricDimension.type = Types::TargetTrackingMetricDimension
    TargetTrackingMetricDimensions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricDimension, name: "member"))
    TargetTrackingMetricStat.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetric, name: "Metric", traits: {"smithy.api#required" => {}}))
    TargetTrackingMetricStat.add_member(:stat, ::Smithy::Schema::Shapes::MemberShape.new(target: XmlString, name: "Stat", traits: {"smithy.api#required" => {}}))
    TargetTrackingMetricStat.add_member(:unit, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetTrackingMetricUnit, name: "Unit"))
    TargetTrackingMetricStat.type = Types::TargetTrackingMetricStat
    TargetTrackingScalingPolicyConfiguration.add_member(:target_value, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricScale, name: "TargetValue", traits: {"smithy.api#required" => {}}))
    TargetTrackingScalingPolicyConfiguration.add_member(:predefined_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: PredefinedMetricSpecification, name: "PredefinedMetricSpecification"))
    TargetTrackingScalingPolicyConfiguration.add_member(:customized_metric_specification, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomizedMetricSpecification, name: "CustomizedMetricSpecification"))
    TargetTrackingScalingPolicyConfiguration.add_member(:scale_out_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: Cooldown, name: "ScaleOutCooldown"))
    TargetTrackingScalingPolicyConfiguration.add_member(:scale_in_cooldown, ::Smithy::Schema::Shapes::MemberShape.new(target: Cooldown, name: "ScaleInCooldown"))
    TargetTrackingScalingPolicyConfiguration.add_member(:disable_scale_in, ::Smithy::Schema::Shapes::MemberShape.new(target: DisableScaleIn, name: "DisableScaleIn"))
    TargetTrackingScalingPolicyConfiguration.type = Types::TargetTrackingScalingPolicyConfiguration
    TooManyTagsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, name: "Message"))
    TooManyTagsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceName"))
    TooManyTagsException.type = Types::TooManyTagsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceName, name: "ResourceARN", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.type = Types::ValidationException

    AnyScaleFrontendService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.applicationautoscaling#AnyScaleFrontendService"
      service.name = "AnyScaleFrontendService"
      service.version = "2016-02-06"
      service.traits = {"aws.api#service" => {"sdkId" => "Application Auto Scaling", "arnNamespace" => "application-autoscaling", "cloudFormationName" => "ApplicationAutoScaling", "cloudTrailEventSource" => "applicationautoscaling.amazonaws.com", "docId" => "application-autoscaling-2016-02-06", "endpointPrefix" => "application-autoscaling"}, "aws.auth#sigv4" => {"name" => "application-autoscaling"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Application Auto Scaling", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}, {"fn" => "stringEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "name"]}, "aws-us-gov"]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://application-autoscaling-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://application-autoscaling.{Region}.amazonaws.com", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://application-autoscaling-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://application-autoscaling.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://application-autoscaling.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 14, "nodes" => "/////wAAAAH/////AAAAAAAAAA0AAAADAAAAAQAAAAQF9eEMAAAAAgAAAAUF9eEMAAAAAwAAAAgAAAAGAAAABAAAAAcF9eELAAAABQX14QkF9eEKAAAABAAAAAsAAAAJAAAABgAAAAoF9eEIAAAABwX14QYF9eEHAAAABQAAAAwF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAAOAAAABAX14QIF9eED"}}
      service.add_operation(:delete_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#DeleteScalingPolicy"
        operation.name = "DeleteScalingPolicy"
        operation.input = DeleteScalingPolicyRequest
        operation.output = DeleteScalingPolicyResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << InternalServiceException
        operation.errors << ObjectNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#DeleteScheduledAction"
        operation.name = "DeleteScheduledAction"
        operation.input = DeleteScheduledActionRequest
        operation.output = DeleteScheduledActionResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << InternalServiceException
        operation.errors << ObjectNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:deregister_scalable_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#DeregisterScalableTarget"
        operation.name = "DeregisterScalableTarget"
        operation.input = DeregisterScalableTargetRequest
        operation.output = DeregisterScalableTargetResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << InternalServiceException
        operation.errors << ObjectNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_scalable_targets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#DescribeScalableTargets"
        operation.name = "DescribeScalableTargets"
        operation.input = DescribeScalableTargetsRequest
        operation.output = DescribeScalableTargetsResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << InternalServiceException
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeScalableTargetsSuccess", "params" => {"ServiceNamespace" => "ec2"}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeScalableTargets.new
      end)
      service.add_operation(:describe_scaling_activities, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#DescribeScalingActivities"
        operation.name = "DescribeScalingActivities"
        operation.input = DescribeScalingActivitiesRequest
        operation.output = DescribeScalingActivitiesResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << InternalServiceException
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScalingActivities.new
      end)
      service.add_operation(:describe_scaling_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#DescribeScalingPolicies"
        operation.name = "DescribeScalingPolicies"
        operation.input = DescribeScalingPoliciesRequest
        operation.output = DescribeScalingPoliciesResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << FailedResourceAccessException
        operation.errors << InternalServiceException
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScalingPolicies.new
      end)
      service.add_operation(:describe_scheduled_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#DescribeScheduledActions"
        operation.name = "DescribeScheduledActions"
        operation.input = DescribeScheduledActionsRequest
        operation.output = DescribeScheduledActionsResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << InternalServiceException
        operation.errors << InvalidNextTokenException
        operation.errors << ValidationException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeScheduledActions.new
      end)
      service.add_operation(:get_predictive_scaling_forecast, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#GetPredictiveScalingForecast"
        operation.name = "GetPredictiveScalingForecast"
        operation.input = GetPredictiveScalingForecastRequest
        operation.output = GetPredictiveScalingForecastResponse
        operation.errors << InternalServiceException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_scaling_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#PutScalingPolicy"
        operation.name = "PutScalingPolicy"
        operation.input = PutScalingPolicyRequest
        operation.output = PutScalingPolicyResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << FailedResourceAccessException
        operation.errors << InternalServiceException
        operation.errors << LimitExceededException
        operation.errors << ObjectNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_scheduled_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#PutScheduledAction"
        operation.name = "PutScheduledAction"
        operation.input = PutScheduledActionRequest
        operation.output = PutScheduledActionResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << InternalServiceException
        operation.errors << LimitExceededException
        operation.errors << ObjectNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:register_scalable_target, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#RegisterScalableTarget"
        operation.name = "RegisterScalableTarget"
        operation.input = RegisterScalableTargetRequest
        operation.output = RegisterScalableTargetResponse
        operation.errors << ConcurrentUpdateException
        operation.errors << InternalServiceException
        operation.errors << LimitExceededException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << TooManyTagsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.applicationautoscaling#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
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
