# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApplicationInsights
  # @api private
  module ClientApi

    include Seahorse::Model

    AffectedResource = Shapes::StringShape.new(name: 'AffectedResource')
    ApplicationComponent = Shapes::StructureShape.new(name: 'ApplicationComponent')
    ApplicationComponentList = Shapes::ListShape.new(name: 'ApplicationComponentList')
    ApplicationInfo = Shapes::StructureShape.new(name: 'ApplicationInfo')
    ApplicationInfoList = Shapes::ListShape.new(name: 'ApplicationInfoList')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ComponentConfiguration = Shapes::StringShape.new(name: 'ComponentConfiguration')
    ComponentName = Shapes::StringShape.new(name: 'ComponentName')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    CreateComponentRequest = Shapes::StructureShape.new(name: 'CreateComponentRequest')
    CreateComponentResponse = Shapes::StructureShape.new(name: 'CreateComponentResponse')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DeleteComponentRequest = Shapes::StructureShape.new(name: 'DeleteComponentRequest')
    DeleteComponentResponse = Shapes::StructureShape.new(name: 'DeleteComponentResponse')
    DescribeApplicationRequest = Shapes::StructureShape.new(name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Shapes::StructureShape.new(name: 'DescribeApplicationResponse')
    DescribeComponentConfigurationRecommendationRequest = Shapes::StructureShape.new(name: 'DescribeComponentConfigurationRecommendationRequest')
    DescribeComponentConfigurationRecommendationResponse = Shapes::StructureShape.new(name: 'DescribeComponentConfigurationRecommendationResponse')
    DescribeComponentConfigurationRequest = Shapes::StructureShape.new(name: 'DescribeComponentConfigurationRequest')
    DescribeComponentConfigurationResponse = Shapes::StructureShape.new(name: 'DescribeComponentConfigurationResponse')
    DescribeComponentRequest = Shapes::StructureShape.new(name: 'DescribeComponentRequest')
    DescribeComponentResponse = Shapes::StructureShape.new(name: 'DescribeComponentResponse')
    DescribeObservationRequest = Shapes::StructureShape.new(name: 'DescribeObservationRequest')
    DescribeObservationResponse = Shapes::StructureShape.new(name: 'DescribeObservationResponse')
    DescribeProblemObservationsRequest = Shapes::StructureShape.new(name: 'DescribeProblemObservationsRequest')
    DescribeProblemObservationsResponse = Shapes::StructureShape.new(name: 'DescribeProblemObservationsResponse')
    DescribeProblemRequest = Shapes::StructureShape.new(name: 'DescribeProblemRequest')
    DescribeProblemResponse = Shapes::StructureShape.new(name: 'DescribeProblemResponse')
    EndTime = Shapes::TimestampShape.new(name: 'EndTime')
    ErrorMsg = Shapes::StringShape.new(name: 'ErrorMsg')
    Feedback = Shapes::MapShape.new(name: 'Feedback')
    FeedbackKey = Shapes::StringShape.new(name: 'FeedbackKey')
    FeedbackValue = Shapes::StringShape.new(name: 'FeedbackValue')
    Insights = Shapes::StringShape.new(name: 'Insights')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LifeCycle = Shapes::StringShape.new(name: 'LifeCycle')
    LineTime = Shapes::TimestampShape.new(name: 'LineTime')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListComponentsRequest = Shapes::StructureShape.new(name: 'ListComponentsRequest')
    ListComponentsResponse = Shapes::StructureShape.new(name: 'ListComponentsResponse')
    ListProblemsRequest = Shapes::StructureShape.new(name: 'ListProblemsRequest')
    ListProblemsResponse = Shapes::StructureShape.new(name: 'ListProblemsResponse')
    LogFilter = Shapes::StringShape.new(name: 'LogFilter')
    LogGroup = Shapes::StringShape.new(name: 'LogGroup')
    LogText = Shapes::StringShape.new(name: 'LogText')
    MaxEntities = Shapes::IntegerShape.new(name: 'MaxEntities')
    MetricName = Shapes::StringShape.new(name: 'MetricName')
    MetricNamespace = Shapes::StringShape.new(name: 'MetricNamespace')
    Monitor = Shapes::BooleanShape.new(name: 'Monitor')
    NewComponentName = Shapes::StringShape.new(name: 'NewComponentName')
    Observation = Shapes::StructureShape.new(name: 'Observation')
    ObservationId = Shapes::StringShape.new(name: 'ObservationId')
    ObservationList = Shapes::ListShape.new(name: 'ObservationList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    Problem = Shapes::StructureShape.new(name: 'Problem')
    ProblemId = Shapes::StringShape.new(name: 'ProblemId')
    ProblemList = Shapes::ListShape.new(name: 'ProblemList')
    RelatedObservations = Shapes::StructureShape.new(name: 'RelatedObservations')
    Remarks = Shapes::StringShape.new(name: 'Remarks')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceGroupName = Shapes::StringShape.new(name: 'ResourceGroupName')
    ResourceInUseException = Shapes::StructureShape.new(name: 'ResourceInUseException')
    ResourceList = Shapes::ListShape.new(name: 'ResourceList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    SeverityLevel = Shapes::StringShape.new(name: 'SeverityLevel')
    SourceARN = Shapes::StringShape.new(name: 'SourceARN')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartTime = Shapes::TimestampShape.new(name: 'StartTime')
    Status = Shapes::StringShape.new(name: 'Status')
    Tier = Shapes::StringShape.new(name: 'Tier')
    Title = Shapes::StringShape.new(name: 'Title')
    Unit = Shapes::StringShape.new(name: 'Unit')
    UpdateComponentConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateComponentConfigurationRequest')
    UpdateComponentConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateComponentConfigurationResponse')
    UpdateComponentRequest = Shapes::StructureShape.new(name: 'UpdateComponentRequest')
    UpdateComponentResponse = Shapes::StructureShape.new(name: 'UpdateComponentResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    Value = Shapes::FloatShape.new(name: 'Value')

    ApplicationComponent.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, location_name: "ComponentName"))
    ApplicationComponent.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ApplicationComponent.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, location_name: "Tier"))
    ApplicationComponent.add_member(:monitor, Shapes::ShapeRef.new(shape: Monitor, location_name: "Monitor"))
    ApplicationComponent.struct_class = Types::ApplicationComponent

    ApplicationComponentList.member = Shapes::ShapeRef.new(shape: ApplicationComponent)

    ApplicationInfo.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    ApplicationInfo.add_member(:life_cycle, Shapes::ShapeRef.new(shape: LifeCycle, location_name: "LifeCycle"))
    ApplicationInfo.add_member(:remarks, Shapes::ShapeRef.new(shape: Remarks, location_name: "Remarks"))
    ApplicationInfo.struct_class = Types::ApplicationInfo

    ApplicationInfoList.member = Shapes::ShapeRef.new(shape: ApplicationInfo)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    CreateApplicationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_info, Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: "ApplicationInfo"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    CreateComponentRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    CreateComponentRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    CreateComponentRequest.add_member(:resource_list, Shapes::ShapeRef.new(shape: ResourceList, required: true, location_name: "ResourceList"))
    CreateComponentRequest.struct_class = Types::CreateComponentRequest

    CreateComponentResponse.struct_class = Types::CreateComponentResponse

    DeleteApplicationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DeleteComponentRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DeleteComponentRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    DeleteComponentRequest.struct_class = Types::DeleteComponentRequest

    DeleteComponentResponse.struct_class = Types::DeleteComponentResponse

    DescribeApplicationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeApplicationRequest.struct_class = Types::DescribeApplicationRequest

    DescribeApplicationResponse.add_member(:application_info, Shapes::ShapeRef.new(shape: ApplicationInfo, location_name: "ApplicationInfo"))
    DescribeApplicationResponse.struct_class = Types::DescribeApplicationResponse

    DescribeComponentConfigurationRecommendationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeComponentConfigurationRecommendationRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    DescribeComponentConfigurationRecommendationRequest.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, required: true, location_name: "Tier"))
    DescribeComponentConfigurationRecommendationRequest.struct_class = Types::DescribeComponentConfigurationRecommendationRequest

    DescribeComponentConfigurationRecommendationResponse.add_member(:component_configuration, Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: "ComponentConfiguration"))
    DescribeComponentConfigurationRecommendationResponse.struct_class = Types::DescribeComponentConfigurationRecommendationResponse

    DescribeComponentConfigurationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeComponentConfigurationRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    DescribeComponentConfigurationRequest.struct_class = Types::DescribeComponentConfigurationRequest

    DescribeComponentConfigurationResponse.add_member(:monitor, Shapes::ShapeRef.new(shape: Monitor, location_name: "Monitor"))
    DescribeComponentConfigurationResponse.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, location_name: "Tier"))
    DescribeComponentConfigurationResponse.add_member(:component_configuration, Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: "ComponentConfiguration"))
    DescribeComponentConfigurationResponse.struct_class = Types::DescribeComponentConfigurationResponse

    DescribeComponentRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    DescribeComponentRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    DescribeComponentRequest.struct_class = Types::DescribeComponentRequest

    DescribeComponentResponse.add_member(:application_component, Shapes::ShapeRef.new(shape: ApplicationComponent, location_name: "ApplicationComponent"))
    DescribeComponentResponse.add_member(:resource_list, Shapes::ShapeRef.new(shape: ResourceList, location_name: "ResourceList"))
    DescribeComponentResponse.struct_class = Types::DescribeComponentResponse

    DescribeObservationRequest.add_member(:observation_id, Shapes::ShapeRef.new(shape: ObservationId, required: true, location_name: "ObservationId"))
    DescribeObservationRequest.struct_class = Types::DescribeObservationRequest

    DescribeObservationResponse.add_member(:observation, Shapes::ShapeRef.new(shape: Observation, location_name: "Observation"))
    DescribeObservationResponse.struct_class = Types::DescribeObservationResponse

    DescribeProblemObservationsRequest.add_member(:problem_id, Shapes::ShapeRef.new(shape: ProblemId, required: true, location_name: "ProblemId"))
    DescribeProblemObservationsRequest.struct_class = Types::DescribeProblemObservationsRequest

    DescribeProblemObservationsResponse.add_member(:related_observations, Shapes::ShapeRef.new(shape: RelatedObservations, location_name: "RelatedObservations"))
    DescribeProblemObservationsResponse.struct_class = Types::DescribeProblemObservationsResponse

    DescribeProblemRequest.add_member(:problem_id, Shapes::ShapeRef.new(shape: ProblemId, required: true, location_name: "ProblemId"))
    DescribeProblemRequest.struct_class = Types::DescribeProblemRequest

    DescribeProblemResponse.add_member(:problem, Shapes::ShapeRef.new(shape: Problem, location_name: "Problem"))
    DescribeProblemResponse.struct_class = Types::DescribeProblemResponse

    Feedback.key = Shapes::ShapeRef.new(shape: FeedbackKey)
    Feedback.value = Shapes::ShapeRef.new(shape: FeedbackValue)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListApplicationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:application_info_list, Shapes::ShapeRef.new(shape: ApplicationInfoList, location_name: "ApplicationInfoList"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListComponentsRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    ListComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListComponentsRequest.struct_class = Types::ListComponentsRequest

    ListComponentsResponse.add_member(:application_component_list, Shapes::ShapeRef.new(shape: ApplicationComponentList, location_name: "ApplicationComponentList"))
    ListComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListComponentsResponse.struct_class = Types::ListComponentsResponse

    ListProblemsRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    ListProblemsRequest.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    ListProblemsRequest.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    ListProblemsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxEntities, location_name: "MaxResults"))
    ListProblemsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProblemsRequest.struct_class = Types::ListProblemsRequest

    ListProblemsResponse.add_member(:problem_list, Shapes::ShapeRef.new(shape: ProblemList, location_name: "ProblemList"))
    ListProblemsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListProblemsResponse.struct_class = Types::ListProblemsResponse

    Observation.add_member(:id, Shapes::ShapeRef.new(shape: ObservationId, location_name: "Id"))
    Observation.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    Observation.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    Observation.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, location_name: "SourceType"))
    Observation.add_member(:source_arn, Shapes::ShapeRef.new(shape: SourceARN, location_name: "SourceARN"))
    Observation.add_member(:log_group, Shapes::ShapeRef.new(shape: LogGroup, location_name: "LogGroup"))
    Observation.add_member(:line_time, Shapes::ShapeRef.new(shape: LineTime, location_name: "LineTime"))
    Observation.add_member(:log_text, Shapes::ShapeRef.new(shape: LogText, location_name: "LogText"))
    Observation.add_member(:log_filter, Shapes::ShapeRef.new(shape: LogFilter, location_name: "LogFilter"))
    Observation.add_member(:metric_namespace, Shapes::ShapeRef.new(shape: MetricNamespace, location_name: "MetricNamespace"))
    Observation.add_member(:metric_name, Shapes::ShapeRef.new(shape: MetricName, location_name: "MetricName"))
    Observation.add_member(:unit, Shapes::ShapeRef.new(shape: Unit, location_name: "Unit"))
    Observation.add_member(:value, Shapes::ShapeRef.new(shape: Value, location_name: "Value"))
    Observation.struct_class = Types::Observation

    ObservationList.member = Shapes::ShapeRef.new(shape: Observation)

    Problem.add_member(:id, Shapes::ShapeRef.new(shape: ProblemId, location_name: "Id"))
    Problem.add_member(:title, Shapes::ShapeRef.new(shape: Title, location_name: "Title"))
    Problem.add_member(:insights, Shapes::ShapeRef.new(shape: Insights, location_name: "Insights"))
    Problem.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    Problem.add_member(:affected_resource, Shapes::ShapeRef.new(shape: AffectedResource, location_name: "AffectedResource"))
    Problem.add_member(:start_time, Shapes::ShapeRef.new(shape: StartTime, location_name: "StartTime"))
    Problem.add_member(:end_time, Shapes::ShapeRef.new(shape: EndTime, location_name: "EndTime"))
    Problem.add_member(:severity_level, Shapes::ShapeRef.new(shape: SeverityLevel, location_name: "SeverityLevel"))
    Problem.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, location_name: "ResourceGroupName"))
    Problem.add_member(:feedback, Shapes::ShapeRef.new(shape: Feedback, location_name: "Feedback"))
    Problem.struct_class = Types::Problem

    ProblemList.member = Shapes::ShapeRef.new(shape: Problem)

    RelatedObservations.add_member(:observation_list, Shapes::ShapeRef.new(shape: ObservationList, location_name: "ObservationList"))
    RelatedObservations.struct_class = Types::RelatedObservations

    ResourceInUseException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    ResourceInUseException.struct_class = Types::ResourceInUseException

    ResourceList.member = Shapes::ShapeRef.new(shape: ResourceARN)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    UpdateComponentConfigurationRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    UpdateComponentConfigurationRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    UpdateComponentConfigurationRequest.add_member(:monitor, Shapes::ShapeRef.new(shape: Monitor, location_name: "Monitor"))
    UpdateComponentConfigurationRequest.add_member(:tier, Shapes::ShapeRef.new(shape: Tier, location_name: "Tier"))
    UpdateComponentConfigurationRequest.add_member(:component_configuration, Shapes::ShapeRef.new(shape: ComponentConfiguration, location_name: "ComponentConfiguration"))
    UpdateComponentConfigurationRequest.struct_class = Types::UpdateComponentConfigurationRequest

    UpdateComponentConfigurationResponse.struct_class = Types::UpdateComponentConfigurationResponse

    UpdateComponentRequest.add_member(:resource_group_name, Shapes::ShapeRef.new(shape: ResourceGroupName, required: true, location_name: "ResourceGroupName"))
    UpdateComponentRequest.add_member(:component_name, Shapes::ShapeRef.new(shape: ComponentName, required: true, location_name: "ComponentName"))
    UpdateComponentRequest.add_member(:new_component_name, Shapes::ShapeRef.new(shape: NewComponentName, location_name: "NewComponentName"))
    UpdateComponentRequest.add_member(:resource_list, Shapes::ShapeRef.new(shape: ResourceList, location_name: "ResourceList"))
    UpdateComponentRequest.struct_class = Types::UpdateComponentRequest

    UpdateComponentResponse.struct_class = Types::UpdateComponentResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMsg, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-25"

      api.metadata = {
        "apiVersion" => "2018-11-25",
        "endpointPrefix" => "applicationinsights",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "Application Insights",
        "serviceFullName" => "Amazon CloudWatch Application Insights",
        "serviceId" => "Application Insights",
        "signatureVersion" => "v4",
        "signingName" => "applicationinsights",
        "targetPrefix" => "EC2WindowsBarleyService",
        "uid" => "application-insights-2018-11-25",
      }

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplication"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_component_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComponentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComponentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_component_configuration_recommendation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeComponentConfigurationRecommendation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRecommendationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeComponentConfigurationRecommendationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_observation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeObservation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeObservationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeObservationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_problem, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProblem"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProblemRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProblemResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_problem_observations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeProblemObservations"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeProblemObservationsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeProblemObservationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
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
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_problems, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProblems"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProblemsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProblemsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_component, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComponent"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateComponentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComponentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceInUseException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_component_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateComponentConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateComponentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateComponentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
