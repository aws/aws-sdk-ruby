# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AutoScalingPlans
  # @api private
  module ClientApi

    include Seahorse::Model

    ApplicationSource = Shapes::StructureShape.new(name: 'ApplicationSource')
    ApplicationSources = Shapes::ListShape.new(name: 'ApplicationSources')
    ConcurrentUpdateException = Shapes::StructureShape.new(name: 'ConcurrentUpdateException')
    Cooldown = Shapes::IntegerShape.new(name: 'Cooldown')
    CreateScalingPlanRequest = Shapes::StructureShape.new(name: 'CreateScalingPlanRequest')
    CreateScalingPlanResponse = Shapes::StructureShape.new(name: 'CreateScalingPlanResponse')
    CustomizedScalingMetricSpecification = Shapes::StructureShape.new(name: 'CustomizedScalingMetricSpecification')
    DeleteScalingPlanRequest = Shapes::StructureShape.new(name: 'DeleteScalingPlanRequest')
    DeleteScalingPlanResponse = Shapes::StructureShape.new(name: 'DeleteScalingPlanResponse')
    DescribeScalingPlanResourcesRequest = Shapes::StructureShape.new(name: 'DescribeScalingPlanResourcesRequest')
    DescribeScalingPlanResourcesResponse = Shapes::StructureShape.new(name: 'DescribeScalingPlanResourcesResponse')
    DescribeScalingPlansRequest = Shapes::StructureShape.new(name: 'DescribeScalingPlansRequest')
    DescribeScalingPlansResponse = Shapes::StructureShape.new(name: 'DescribeScalingPlansResponse')
    DisableScaleIn = Shapes::BooleanShape.new(name: 'DisableScaleIn')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MetricDimension = Shapes::StructureShape.new(name: 'MetricDimension')
    MetricDimensionName = Shapes::StringShape.new(name: 'MetricDimensionName')
    MetricDimensionValue = Shapes::StringShape.new(name: 'MetricDimensionValue')
    MetricDimensions = Shapes::ListShape.new(name: 'MetricDimensions')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    MetricScale = Shapes::FloatShape.new(name: 'MetricScale')
    MetricStatistic = Shapes::StringShape.new(name: 'MetricStatistic')
    MetricUnit = Shapes::StringShape.new(name: 'MetricUnit')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ObjectNotFoundException = Shapes::StructureShape.new(name: 'ObjectNotFoundException')
    PolicyName = Shapes::StringShape.new(name: 'PolicyName')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    PredefinedScalingMetricSpecification = Shapes::StructureShape.new(name: 'PredefinedScalingMetricSpecification')
    ResourceCapacity = Shapes::IntegerShape.new(name: 'ResourceCapacity')
    ResourceIdMaxLen1600 = Shapes::StringShape.new(name: 'ResourceIdMaxLen1600')
    ResourceLabel = Shapes::StringShape.new(name: 'ResourceLabel')
    ScalableDimension = Shapes::StringShape.new(name: 'ScalableDimension')
    ScalingInstruction = Shapes::StructureShape.new(name: 'ScalingInstruction')
    ScalingInstructions = Shapes::ListShape.new(name: 'ScalingInstructions')
    ScalingMetricType = Shapes::StringShape.new(name: 'ScalingMetricType')
    ScalingPlan = Shapes::StructureShape.new(name: 'ScalingPlan')
    ScalingPlanName = Shapes::StringShape.new(name: 'ScalingPlanName')
    ScalingPlanNames = Shapes::ListShape.new(name: 'ScalingPlanNames')
    ScalingPlanResource = Shapes::StructureShape.new(name: 'ScalingPlanResource')
    ScalingPlanResources = Shapes::ListShape.new(name: 'ScalingPlanResources')
    ScalingPlanStatusCode = Shapes::StringShape.new(name: 'ScalingPlanStatusCode')
    ScalingPlanVersion = Shapes::IntegerShape.new(name: 'ScalingPlanVersion')
    ScalingPlans = Shapes::ListShape.new(name: 'ScalingPlans')
    ScalingPolicies = Shapes::ListShape.new(name: 'ScalingPolicies')
    ScalingPolicy = Shapes::StructureShape.new(name: 'ScalingPolicy')
    ScalingStatusCode = Shapes::StringShape.new(name: 'ScalingStatusCode')
    ServiceNamespace = Shapes::StringShape.new(name: 'ServiceNamespace')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagFilters = Shapes::ListShape.new(name: 'TagFilters')
    TagValues = Shapes::ListShape.new(name: 'TagValues')
    TargetTrackingConfiguration = Shapes::StructureShape.new(name: 'TargetTrackingConfiguration')
    TargetTrackingConfigurations = Shapes::ListShape.new(name: 'TargetTrackingConfigurations')
    TimestampType = Shapes::TimestampShape.new(name: 'TimestampType')
    UpdateScalingPlanRequest = Shapes::StructureShape.new(name: 'UpdateScalingPlanRequest')
    UpdateScalingPlanResponse = Shapes::StructureShape.new(name: 'UpdateScalingPlanResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    XmlString = Shapes::StringShape.new(name: 'XmlString')
    XmlStringMaxLen128 = Shapes::StringShape.new(name: 'XmlStringMaxLen128')
    XmlStringMaxLen256 = Shapes::StringShape.new(name: 'XmlStringMaxLen256')

    ApplicationSource.add_member(:cloud_formation_stack_arn, Shapes::ShapeRef.new(shape: XmlString, location_name: "CloudFormationStackARN"))
    ApplicationSource.add_member(:tag_filters, Shapes::ShapeRef.new(shape: TagFilters, location_name: "TagFilters"))
    ApplicationSource.struct_class = Types::ApplicationSource

    ApplicationSources.member = Shapes::ShapeRef.new(shape: ApplicationSource)

    CreateScalingPlanRequest.add_member(:scaling_plan_name, Shapes::ShapeRef.new(shape: ScalingPlanName, required: true, location_name: "ScalingPlanName"))
    CreateScalingPlanRequest.add_member(:application_source, Shapes::ShapeRef.new(shape: ApplicationSource, required: true, location_name: "ApplicationSource"))
    CreateScalingPlanRequest.add_member(:scaling_instructions, Shapes::ShapeRef.new(shape: ScalingInstructions, required: true, location_name: "ScalingInstructions"))
    CreateScalingPlanRequest.struct_class = Types::CreateScalingPlanRequest

    CreateScalingPlanResponse.add_member(:scaling_plan_version, Shapes::ShapeRef.new(shape: ScalingPlanVersion, required: true, location_name: "ScalingPlanVersion"))
    CreateScalingPlanResponse.struct_class = Types::CreateScalingPlanResponse

    CustomizedScalingMetricSpecification.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, required: true, location_name: "MetricName"))
    CustomizedScalingMetricSpecification.add_member(:namespace, Shapes::ShapeRef.new(shape: MetricNamespace, required: true, location_name: "Namespace"))
    CustomizedScalingMetricSpecification.add_member(:dimensions, Shapes::ShapeRef.new(shape: MetricDimensions, location_name: "Dimensions"))
    CustomizedScalingMetricSpecification.add_member(:statistic, Shapes::ShapeRef.new(shape: MetricStatistic, required: true, location_name: "Statistic"))
    CustomizedScalingMetricSpecification.add_member(:unit, Shapes::ShapeRef.new(shape: MetricUnit, location_name: "Unit"))
    CustomizedScalingMetricSpecification.struct_class = Types::CustomizedScalingMetricSpecification

    DeleteScalingPlanRequest.add_member(:scaling_plan_name, Shapes::ShapeRef.new(shape: ScalingPlanName, required: true, location_name: "ScalingPlanName"))
    DeleteScalingPlanRequest.add_member(:scaling_plan_version, Shapes::ShapeRef.new(shape: ScalingPlanVersion, required: true, location_name: "ScalingPlanVersion"))
    DeleteScalingPlanRequest.struct_class = Types::DeleteScalingPlanRequest

    DeleteScalingPlanResponse.struct_class = Types::DeleteScalingPlanResponse

    DescribeScalingPlanResourcesRequest.add_member(:scaling_plan_name, Shapes::ShapeRef.new(shape: ScalingPlanName, required: true, location_name: "ScalingPlanName"))
    DescribeScalingPlanResourcesRequest.add_member(:scaling_plan_version, Shapes::ShapeRef.new(shape: ScalingPlanVersion, required: true, location_name: "ScalingPlanVersion"))
    DescribeScalingPlanResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeScalingPlanResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeScalingPlanResourcesRequest.struct_class = Types::DescribeScalingPlanResourcesRequest

    DescribeScalingPlanResourcesResponse.add_member(:scaling_plan_resources, Shapes::ShapeRef.new(shape: ScalingPlanResources, location_name: "ScalingPlanResources"))
    DescribeScalingPlanResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeScalingPlanResourcesResponse.struct_class = Types::DescribeScalingPlanResourcesResponse

    DescribeScalingPlansRequest.add_member(:scaling_plan_names, Shapes::ShapeRef.new(shape: ScalingPlanNames, location_name: "ScalingPlanNames"))
    DescribeScalingPlansRequest.add_member(:scaling_plan_version, Shapes::ShapeRef.new(shape: ScalingPlanVersion, location_name: "ScalingPlanVersion"))
    DescribeScalingPlansRequest.add_member(:application_sources, Shapes::ShapeRef.new(shape: ApplicationSources, location_name: "ApplicationSources"))
    DescribeScalingPlansRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    DescribeScalingPlansRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeScalingPlansRequest.struct_class = Types::DescribeScalingPlansRequest

    DescribeScalingPlansResponse.add_member(:scaling_plans, Shapes::ShapeRef.new(shape: ScalingPlans, location_name: "ScalingPlans"))
    DescribeScalingPlansResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    DescribeScalingPlansResponse.struct_class = Types::DescribeScalingPlansResponse

    MetricDimension.add_member(:name, Shapes::ShapeRef.new(shape: MetricDimensionName, required: true, location_name: "Name"))
    MetricDimension.add_member(:value, Shapes::ShapeRef.new(shape: MetricDimensionValue, required: true, location_name: "Value"))
    MetricDimension.struct_class = Types::MetricDimension

    MetricDimensions.member = Shapes::ShapeRef.new(shape: MetricDimension)

    PredefinedScalingMetricSpecification.add_member(:predefined_scaling_metric_type, Shapes::ShapeRef.new(shape: ScalingMetricType, required: true, location_name: "PredefinedScalingMetricType"))
    PredefinedScalingMetricSpecification.add_member(:resource_label, Shapes::ShapeRef.new(shape: ResourceLabel, location_name: "ResourceLabel"))
    PredefinedScalingMetricSpecification.struct_class = Types::PredefinedScalingMetricSpecification

    ScalingInstruction.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    ScalingInstruction.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    ScalingInstruction.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    ScalingInstruction.add_member(:min_capacity, Shapes::ShapeRef.new(shape: ResourceCapacity, required: true, location_name: "MinCapacity"))
    ScalingInstruction.add_member(:max_capacity, Shapes::ShapeRef.new(shape: ResourceCapacity, required: true, location_name: "MaxCapacity"))
    ScalingInstruction.add_member(:target_tracking_configurations, Shapes::ShapeRef.new(shape: TargetTrackingConfigurations, required: true, location_name: "TargetTrackingConfigurations"))
    ScalingInstruction.struct_class = Types::ScalingInstruction

    ScalingInstructions.member = Shapes::ShapeRef.new(shape: ScalingInstruction)

    ScalingPlan.add_member(:scaling_plan_name, Shapes::ShapeRef.new(shape: ScalingPlanName, required: true, location_name: "ScalingPlanName"))
    ScalingPlan.add_member(:scaling_plan_version, Shapes::ShapeRef.new(shape: ScalingPlanVersion, required: true, location_name: "ScalingPlanVersion"))
    ScalingPlan.add_member(:application_source, Shapes::ShapeRef.new(shape: ApplicationSource, required: true, location_name: "ApplicationSource"))
    ScalingPlan.add_member(:scaling_instructions, Shapes::ShapeRef.new(shape: ScalingInstructions, required: true, location_name: "ScalingInstructions"))
    ScalingPlan.add_member(:status_code, Shapes::ShapeRef.new(shape: ScalingPlanStatusCode, required: true, location_name: "StatusCode"))
    ScalingPlan.add_member(:status_message, Shapes::ShapeRef.new(shape: XmlString, location_name: "StatusMessage"))
    ScalingPlan.add_member(:status_start_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "StatusStartTime"))
    ScalingPlan.add_member(:creation_time, Shapes::ShapeRef.new(shape: TimestampType, location_name: "CreationTime"))
    ScalingPlan.struct_class = Types::ScalingPlan

    ScalingPlanNames.member = Shapes::ShapeRef.new(shape: ScalingPlanName)

    ScalingPlanResource.add_member(:scaling_plan_name, Shapes::ShapeRef.new(shape: ScalingPlanName, required: true, location_name: "ScalingPlanName"))
    ScalingPlanResource.add_member(:scaling_plan_version, Shapes::ShapeRef.new(shape: ScalingPlanVersion, required: true, location_name: "ScalingPlanVersion"))
    ScalingPlanResource.add_member(:service_namespace, Shapes::ShapeRef.new(shape: ServiceNamespace, required: true, location_name: "ServiceNamespace"))
    ScalingPlanResource.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceIdMaxLen1600, required: true, location_name: "ResourceId"))
    ScalingPlanResource.add_member(:scalable_dimension, Shapes::ShapeRef.new(shape: ScalableDimension, required: true, location_name: "ScalableDimension"))
    ScalingPlanResource.add_member(:scaling_policies, Shapes::ShapeRef.new(shape: ScalingPolicies, location_name: "ScalingPolicies"))
    ScalingPlanResource.add_member(:scaling_status_code, Shapes::ShapeRef.new(shape: ScalingStatusCode, required: true, location_name: "ScalingStatusCode"))
    ScalingPlanResource.add_member(:scaling_status_message, Shapes::ShapeRef.new(shape: XmlString, location_name: "ScalingStatusMessage"))
    ScalingPlanResource.struct_class = Types::ScalingPlanResource

    ScalingPlanResources.member = Shapes::ShapeRef.new(shape: ScalingPlanResource)

    ScalingPlans.member = Shapes::ShapeRef.new(shape: ScalingPlan)

    ScalingPolicies.member = Shapes::ShapeRef.new(shape: ScalingPolicy)

    ScalingPolicy.add_member(:policy_name, Shapes::ShapeRef.new(shape: PolicyName, required: true, location_name: "PolicyName"))
    ScalingPolicy.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyType, required: true, location_name: "PolicyType"))
    ScalingPolicy.add_member(:target_tracking_configuration, Shapes::ShapeRef.new(shape: TargetTrackingConfiguration, location_name: "TargetTrackingConfiguration"))
    ScalingPolicy.struct_class = Types::ScalingPolicy

    TagFilter.add_member(:key, Shapes::ShapeRef.new(shape: XmlStringMaxLen128, location_name: "Key"))
    TagFilter.add_member(:values, Shapes::ShapeRef.new(shape: TagValues, location_name: "Values"))
    TagFilter.struct_class = Types::TagFilter

    TagFilters.member = Shapes::ShapeRef.new(shape: TagFilter)

    TagValues.member = Shapes::ShapeRef.new(shape: XmlStringMaxLen256)

    TargetTrackingConfiguration.add_member(:predefined_scaling_metric_specification, Shapes::ShapeRef.new(shape: PredefinedScalingMetricSpecification, location_name: "PredefinedScalingMetricSpecification"))
    TargetTrackingConfiguration.add_member(:customized_scaling_metric_specification, Shapes::ShapeRef.new(shape: CustomizedScalingMetricSpecification, location_name: "CustomizedScalingMetricSpecification"))
    TargetTrackingConfiguration.add_member(:target_value, Shapes::ShapeRef.new(shape: MetricScale, required: true, location_name: "TargetValue"))
    TargetTrackingConfiguration.add_member(:disable_scale_in, Shapes::ShapeRef.new(shape: DisableScaleIn, location_name: "DisableScaleIn"))
    TargetTrackingConfiguration.add_member(:scale_out_cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "ScaleOutCooldown"))
    TargetTrackingConfiguration.add_member(:scale_in_cooldown, Shapes::ShapeRef.new(shape: Cooldown, location_name: "ScaleInCooldown"))
    TargetTrackingConfiguration.add_member(:estimated_instance_warmup, Shapes::ShapeRef.new(shape: Cooldown, location_name: "EstimatedInstanceWarmup"))
    TargetTrackingConfiguration.struct_class = Types::TargetTrackingConfiguration

    TargetTrackingConfigurations.member = Shapes::ShapeRef.new(shape: TargetTrackingConfiguration)

    UpdateScalingPlanRequest.add_member(:application_source, Shapes::ShapeRef.new(shape: ApplicationSource, location_name: "ApplicationSource"))
    UpdateScalingPlanRequest.add_member(:scaling_plan_name, Shapes::ShapeRef.new(shape: ScalingPlanName, required: true, location_name: "ScalingPlanName"))
    UpdateScalingPlanRequest.add_member(:scaling_instructions, Shapes::ShapeRef.new(shape: ScalingInstructions, location_name: "ScalingInstructions"))
    UpdateScalingPlanRequest.add_member(:scaling_plan_version, Shapes::ShapeRef.new(shape: ScalingPlanVersion, required: true, location_name: "ScalingPlanVersion"))
    UpdateScalingPlanRequest.struct_class = Types::UpdateScalingPlanRequest

    UpdateScalingPlanResponse.struct_class = Types::UpdateScalingPlanResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-01-06"

      api.metadata = {
        "apiVersion" => "2018-01-06",
        "endpointPrefix" => "autoscaling",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Auto Scaling Plans",
        "serviceId" => "Auto Scaling Plans",
        "signatureVersion" => "v4",
        "signingName" => "autoscaling-plans",
        "targetPrefix" => "AnyScaleScalingPlannerFrontendService",
        "uid" => "autoscaling-plans-2018-01-06",
      }

      api.add_operation(:create_scaling_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateScalingPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateScalingPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateScalingPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:delete_scaling_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteScalingPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteScalingPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteScalingPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_scaling_plan_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingPlanResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingPlanResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScalingPlanResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_scaling_plans, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingPlans"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingPlansRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScalingPlansResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:update_scaling_plan, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScalingPlan"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateScalingPlanRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScalingPlanResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdateException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ObjectNotFoundException)
      end)
    end

  end
end
