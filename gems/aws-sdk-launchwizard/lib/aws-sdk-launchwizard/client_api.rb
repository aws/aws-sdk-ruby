# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LaunchWizard
  # @api private
  module ClientApi

    include Seahorse::Model

    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    CreateDeploymentInput = Shapes::StructureShape.new(name: 'CreateDeploymentInput')
    CreateDeploymentOutput = Shapes::StructureShape.new(name: 'CreateDeploymentOutput')
    DeleteDeploymentInput = Shapes::StructureShape.new(name: 'DeleteDeploymentInput')
    DeleteDeploymentOutput = Shapes::StructureShape.new(name: 'DeleteDeploymentOutput')
    DeploymentData = Shapes::StructureShape.new(name: 'DeploymentData')
    DeploymentDataSummary = Shapes::StructureShape.new(name: 'DeploymentDataSummary')
    DeploymentDataSummaryList = Shapes::ListShape.new(name: 'DeploymentDataSummaryList')
    DeploymentEventDataSummary = Shapes::StructureShape.new(name: 'DeploymentEventDataSummary')
    DeploymentEventDataSummaryList = Shapes::ListShape.new(name: 'DeploymentEventDataSummaryList')
    DeploymentFilter = Shapes::StructureShape.new(name: 'DeploymentFilter')
    DeploymentFilterKey = Shapes::StringShape.new(name: 'DeploymentFilterKey')
    DeploymentFilterList = Shapes::ListShape.new(name: 'DeploymentFilterList')
    DeploymentFilterValues = Shapes::ListShape.new(name: 'DeploymentFilterValues')
    DeploymentFilterValuesMemberString = Shapes::StringShape.new(name: 'DeploymentFilterValuesMemberString')
    DeploymentId = Shapes::StringShape.new(name: 'DeploymentId')
    DeploymentName = Shapes::StringShape.new(name: 'DeploymentName')
    DeploymentPatternName = Shapes::StringShape.new(name: 'DeploymentPatternName')
    DeploymentSpecifications = Shapes::MapShape.new(name: 'DeploymentSpecifications')
    DeploymentStatus = Shapes::StringShape.new(name: 'DeploymentStatus')
    EventStatus = Shapes::StringShape.new(name: 'EventStatus')
    GetDeploymentInput = Shapes::StructureShape.new(name: 'GetDeploymentInput')
    GetDeploymentOutput = Shapes::StructureShape.new(name: 'GetDeploymentOutput')
    GetWorkloadInput = Shapes::StructureShape.new(name: 'GetWorkloadInput')
    GetWorkloadOutput = Shapes::StructureShape.new(name: 'GetWorkloadOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeyString = Shapes::StringShape.new(name: 'KeyString')
    ListDeploymentEventsInput = Shapes::StructureShape.new(name: 'ListDeploymentEventsInput')
    ListDeploymentEventsOutput = Shapes::StructureShape.new(name: 'ListDeploymentEventsOutput')
    ListDeploymentsInput = Shapes::StructureShape.new(name: 'ListDeploymentsInput')
    ListDeploymentsOutput = Shapes::StructureShape.new(name: 'ListDeploymentsOutput')
    ListWorkloadDeploymentPatternsInput = Shapes::StructureShape.new(name: 'ListWorkloadDeploymentPatternsInput')
    ListWorkloadDeploymentPatternsOutput = Shapes::StructureShape.new(name: 'ListWorkloadDeploymentPatternsOutput')
    ListWorkloadsInput = Shapes::StructureShape.new(name: 'ListWorkloadsInput')
    ListWorkloadsOutput = Shapes::StructureShape.new(name: 'ListWorkloadsOutput')
    MaxDeploymentEventResults = Shapes::IntegerShape.new(name: 'MaxDeploymentEventResults')
    MaxDeploymentResults = Shapes::IntegerShape.new(name: 'MaxDeploymentResults')
    MaxWorkloadDeploymentPatternResults = Shapes::IntegerShape.new(name: 'MaxWorkloadDeploymentPatternResults')
    MaxWorkloadResults = Shapes::IntegerShape.new(name: 'MaxWorkloadResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceLimitException = Shapes::StructureShape.new(name: 'ResourceLimitException')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    String = Shapes::StringShape.new(name: 'String')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValueString = Shapes::StringShape.new(name: 'ValueString')
    WorkloadData = Shapes::StructureShape.new(name: 'WorkloadData')
    WorkloadDataSummary = Shapes::StructureShape.new(name: 'WorkloadDataSummary')
    WorkloadDataSummaryList = Shapes::ListShape.new(name: 'WorkloadDataSummaryList')
    WorkloadDeploymentPatternDataSummary = Shapes::StructureShape.new(name: 'WorkloadDeploymentPatternDataSummary')
    WorkloadDeploymentPatternDataSummaryList = Shapes::ListShape.new(name: 'WorkloadDeploymentPatternDataSummaryList')
    WorkloadDeploymentPatternStatus = Shapes::StringShape.new(name: 'WorkloadDeploymentPatternStatus')
    WorkloadName = Shapes::StringShape.new(name: 'WorkloadName')
    WorkloadStatus = Shapes::StringShape.new(name: 'WorkloadStatus')
    WorkloadVersionName = Shapes::StringShape.new(name: 'WorkloadVersionName')

    CreateDeploymentInput.add_member(:deployment_pattern_name, Shapes::ShapeRef.new(shape: DeploymentPatternName, required: true, location_name: "deploymentPatternName"))
    CreateDeploymentInput.add_member(:dry_run, Shapes::ShapeRef.new(shape: Boolean, location_name: "dryRun"))
    CreateDeploymentInput.add_member(:name, Shapes::ShapeRef.new(shape: DeploymentName, required: true, location_name: "name"))
    CreateDeploymentInput.add_member(:specifications, Shapes::ShapeRef.new(shape: DeploymentSpecifications, required: true, location_name: "specifications"))
    CreateDeploymentInput.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, required: true, location_name: "workloadName"))
    CreateDeploymentInput.struct_class = Types::CreateDeploymentInput

    CreateDeploymentOutput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "deploymentId"))
    CreateDeploymentOutput.struct_class = Types::CreateDeploymentOutput

    DeleteDeploymentInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    DeleteDeploymentInput.struct_class = Types::DeleteDeploymentInput

    DeleteDeploymentOutput.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DeleteDeploymentOutput.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DeleteDeploymentOutput.struct_class = Types::DeleteDeploymentOutput

    DeploymentData.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DeploymentData.add_member(:deleted_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "deletedAt"))
    DeploymentData.add_member(:id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "id"))
    DeploymentData.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DeploymentData.add_member(:pattern_name, Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "patternName"))
    DeploymentData.add_member(:resource_group, Shapes::ShapeRef.new(shape: String, location_name: "resourceGroup"))
    DeploymentData.add_member(:specifications, Shapes::ShapeRef.new(shape: DeploymentSpecifications, location_name: "specifications"))
    DeploymentData.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DeploymentData.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    DeploymentData.struct_class = Types::DeploymentData

    DeploymentDataSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdAt"))
    DeploymentDataSummary.add_member(:id, Shapes::ShapeRef.new(shape: DeploymentId, location_name: "id"))
    DeploymentDataSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DeploymentDataSummary.add_member(:pattern_name, Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "patternName"))
    DeploymentDataSummary.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentStatus, location_name: "status"))
    DeploymentDataSummary.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    DeploymentDataSummary.struct_class = Types::DeploymentDataSummary

    DeploymentDataSummaryList.member = Shapes::ShapeRef.new(shape: DeploymentDataSummary)

    DeploymentEventDataSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    DeploymentEventDataSummary.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    DeploymentEventDataSummary.add_member(:status, Shapes::ShapeRef.new(shape: EventStatus, location_name: "status"))
    DeploymentEventDataSummary.add_member(:status_reason, Shapes::ShapeRef.new(shape: String, location_name: "statusReason"))
    DeploymentEventDataSummary.add_member(:timestamp, Shapes::ShapeRef.new(shape: Timestamp, location_name: "timestamp"))
    DeploymentEventDataSummary.struct_class = Types::DeploymentEventDataSummary

    DeploymentEventDataSummaryList.member = Shapes::ShapeRef.new(shape: DeploymentEventDataSummary)

    DeploymentFilter.add_member(:name, Shapes::ShapeRef.new(shape: DeploymentFilterKey, location_name: "name"))
    DeploymentFilter.add_member(:values, Shapes::ShapeRef.new(shape: DeploymentFilterValues, location_name: "values"))
    DeploymentFilter.struct_class = Types::DeploymentFilter

    DeploymentFilterList.member = Shapes::ShapeRef.new(shape: DeploymentFilter)

    DeploymentFilterValues.member = Shapes::ShapeRef.new(shape: DeploymentFilterValuesMemberString)

    DeploymentSpecifications.key = Shapes::ShapeRef.new(shape: KeyString)
    DeploymentSpecifications.value = Shapes::ShapeRef.new(shape: ValueString)

    GetDeploymentInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    GetDeploymentInput.struct_class = Types::GetDeploymentInput

    GetDeploymentOutput.add_member(:deployment, Shapes::ShapeRef.new(shape: DeploymentData, location_name: "deployment"))
    GetDeploymentOutput.struct_class = Types::GetDeploymentOutput

    GetWorkloadInput.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, required: true, location_name: "workloadName"))
    GetWorkloadInput.struct_class = Types::GetWorkloadInput

    GetWorkloadOutput.add_member(:workload, Shapes::ShapeRef.new(shape: WorkloadData, location_name: "workload"))
    GetWorkloadOutput.struct_class = Types::GetWorkloadOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDeploymentEventsInput.add_member(:deployment_id, Shapes::ShapeRef.new(shape: DeploymentId, required: true, location_name: "deploymentId"))
    ListDeploymentEventsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxDeploymentEventResults, location_name: "maxResults"))
    ListDeploymentEventsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentEventsInput.struct_class = Types::ListDeploymentEventsInput

    ListDeploymentEventsOutput.add_member(:deployment_events, Shapes::ShapeRef.new(shape: DeploymentEventDataSummaryList, location_name: "deploymentEvents"))
    ListDeploymentEventsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentEventsOutput.struct_class = Types::ListDeploymentEventsOutput

    ListDeploymentsInput.add_member(:filters, Shapes::ShapeRef.new(shape: DeploymentFilterList, location_name: "filters"))
    ListDeploymentsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxDeploymentResults, location_name: "maxResults"))
    ListDeploymentsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsInput.struct_class = Types::ListDeploymentsInput

    ListDeploymentsOutput.add_member(:deployments, Shapes::ShapeRef.new(shape: DeploymentDataSummaryList, location_name: "deployments"))
    ListDeploymentsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDeploymentsOutput.struct_class = Types::ListDeploymentsOutput

    ListWorkloadDeploymentPatternsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxWorkloadDeploymentPatternResults, location_name: "maxResults"))
    ListWorkloadDeploymentPatternsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkloadDeploymentPatternsInput.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, required: true, location_name: "workloadName"))
    ListWorkloadDeploymentPatternsInput.struct_class = Types::ListWorkloadDeploymentPatternsInput

    ListWorkloadDeploymentPatternsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkloadDeploymentPatternsOutput.add_member(:workload_deployment_patterns, Shapes::ShapeRef.new(shape: WorkloadDeploymentPatternDataSummaryList, location_name: "workloadDeploymentPatterns"))
    ListWorkloadDeploymentPatternsOutput.struct_class = Types::ListWorkloadDeploymentPatternsOutput

    ListWorkloadsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxWorkloadResults, location_name: "maxResults"))
    ListWorkloadsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkloadsInput.struct_class = Types::ListWorkloadsInput

    ListWorkloadsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListWorkloadsOutput.add_member(:workloads, Shapes::ShapeRef.new(shape: WorkloadDataSummaryList, location_name: "workloads"))
    ListWorkloadsOutput.struct_class = Types::ListWorkloadsOutput

    ResourceLimitException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceLimitException.struct_class = Types::ResourceLimitException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    WorkloadData.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    WorkloadData.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    WorkloadData.add_member(:documentation_url, Shapes::ShapeRef.new(shape: String, location_name: "documentationUrl"))
    WorkloadData.add_member(:icon_url, Shapes::ShapeRef.new(shape: String, location_name: "iconUrl"))
    WorkloadData.add_member(:status, Shapes::ShapeRef.new(shape: WorkloadStatus, location_name: "status"))
    WorkloadData.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    WorkloadData.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    WorkloadData.struct_class = Types::WorkloadData

    WorkloadDataSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    WorkloadDataSummary.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    WorkloadDataSummary.struct_class = Types::WorkloadDataSummary

    WorkloadDataSummaryList.member = Shapes::ShapeRef.new(shape: WorkloadDataSummary)

    WorkloadDeploymentPatternDataSummary.add_member(:deployment_pattern_name, Shapes::ShapeRef.new(shape: DeploymentPatternName, location_name: "deploymentPatternName"))
    WorkloadDeploymentPatternDataSummary.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "description"))
    WorkloadDeploymentPatternDataSummary.add_member(:display_name, Shapes::ShapeRef.new(shape: String, location_name: "displayName"))
    WorkloadDeploymentPatternDataSummary.add_member(:status, Shapes::ShapeRef.new(shape: WorkloadDeploymentPatternStatus, location_name: "status"))
    WorkloadDeploymentPatternDataSummary.add_member(:status_message, Shapes::ShapeRef.new(shape: String, location_name: "statusMessage"))
    WorkloadDeploymentPatternDataSummary.add_member(:workload_name, Shapes::ShapeRef.new(shape: WorkloadName, location_name: "workloadName"))
    WorkloadDeploymentPatternDataSummary.add_member(:workload_version_name, Shapes::ShapeRef.new(shape: WorkloadVersionName, location_name: "workloadVersionName"))
    WorkloadDeploymentPatternDataSummary.struct_class = Types::WorkloadDeploymentPatternDataSummary

    WorkloadDeploymentPatternDataSummaryList.member = Shapes::ShapeRef.new(shape: WorkloadDeploymentPatternDataSummary)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "launchwizard",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS Launch Wizard",
        "serviceId" => "Launch Wizard",
        "signatureVersion" => "v4",
        "signingName" => "launchwizard",
        "uid" => "launch-wizard-2018-05-10",
      }

      api.add_operation(:create_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/createDeployment"
        o.input = Shapes::ShapeRef.new(shape: CreateDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: CreateDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: ResourceLimitException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/deleteDeployment"
        o.input = Shapes::ShapeRef.new(shape: DeleteDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_deployment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeployment"
        o.http_method = "POST"
        o.http_request_uri = "/getDeployment"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentInput)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:get_workload, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetWorkload"
        o.http_method = "POST"
        o.http_request_uri = "/getWorkload"
        o.input = Shapes::ShapeRef.new(shape: GetWorkloadInput)
        o.output = Shapes::ShapeRef.new(shape: GetWorkloadOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_deployment_events, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentEvents"
        o.http_method = "POST"
        o.http_request_uri = "/listDeploymentEvents"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentEventsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentEventsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_deployments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeployments"
        o.http_method = "POST"
        o.http_request_uri = "/listDeployments"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentsInput)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workload_deployment_patterns, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkloadDeploymentPatterns"
        o.http_method = "POST"
        o.http_request_uri = "/listWorkloadDeploymentPatterns"
        o.input = Shapes::ShapeRef.new(shape: ListWorkloadDeploymentPatternsInput)
        o.output = Shapes::ShapeRef.new(shape: ListWorkloadDeploymentPatternsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_workloads, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListWorkloads"
        o.http_method = "POST"
        o.http_request_uri = "/listWorkloads"
        o.input = Shapes::ShapeRef.new(shape: ListWorkloadsInput)
        o.output = Shapes::ShapeRef.new(shape: ListWorkloadsOutput)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
