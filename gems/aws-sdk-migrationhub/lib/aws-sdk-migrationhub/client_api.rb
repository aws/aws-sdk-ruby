# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHub
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    ApplicationId = Shapes::StringShape.new(name: 'ApplicationId')
    ApplicationStatus = Shapes::StringShape.new(name: 'ApplicationStatus')
    AssociateCreatedArtifactRequest = Shapes::StructureShape.new(name: 'AssociateCreatedArtifactRequest')
    AssociateCreatedArtifactResult = Shapes::StructureShape.new(name: 'AssociateCreatedArtifactResult')
    AssociateDiscoveredResourceRequest = Shapes::StructureShape.new(name: 'AssociateDiscoveredResourceRequest')
    AssociateDiscoveredResourceResult = Shapes::StructureShape.new(name: 'AssociateDiscoveredResourceResult')
    ConfigurationId = Shapes::StringShape.new(name: 'ConfigurationId')
    CreateProgressUpdateStreamRequest = Shapes::StructureShape.new(name: 'CreateProgressUpdateStreamRequest')
    CreateProgressUpdateStreamResult = Shapes::StructureShape.new(name: 'CreateProgressUpdateStreamResult')
    CreatedArtifact = Shapes::StructureShape.new(name: 'CreatedArtifact')
    CreatedArtifactDescription = Shapes::StringShape.new(name: 'CreatedArtifactDescription')
    CreatedArtifactList = Shapes::ListShape.new(name: 'CreatedArtifactList')
    CreatedArtifactName = Shapes::StringShape.new(name: 'CreatedArtifactName')
    DeleteProgressUpdateStreamRequest = Shapes::StructureShape.new(name: 'DeleteProgressUpdateStreamRequest')
    DeleteProgressUpdateStreamResult = Shapes::StructureShape.new(name: 'DeleteProgressUpdateStreamResult')
    DescribeApplicationStateRequest = Shapes::StructureShape.new(name: 'DescribeApplicationStateRequest')
    DescribeApplicationStateResult = Shapes::StructureShape.new(name: 'DescribeApplicationStateResult')
    DescribeMigrationTaskRequest = Shapes::StructureShape.new(name: 'DescribeMigrationTaskRequest')
    DescribeMigrationTaskResult = Shapes::StructureShape.new(name: 'DescribeMigrationTaskResult')
    DisassociateCreatedArtifactRequest = Shapes::StructureShape.new(name: 'DisassociateCreatedArtifactRequest')
    DisassociateCreatedArtifactResult = Shapes::StructureShape.new(name: 'DisassociateCreatedArtifactResult')
    DisassociateDiscoveredResourceRequest = Shapes::StructureShape.new(name: 'DisassociateDiscoveredResourceRequest')
    DisassociateDiscoveredResourceResult = Shapes::StructureShape.new(name: 'DisassociateDiscoveredResourceResult')
    DiscoveredResource = Shapes::StructureShape.new(name: 'DiscoveredResource')
    DiscoveredResourceDescription = Shapes::StringShape.new(name: 'DiscoveredResourceDescription')
    DiscoveredResourceList = Shapes::ListShape.new(name: 'DiscoveredResourceList')
    DryRun = Shapes::BooleanShape.new(name: 'DryRun')
    DryRunOperation = Shapes::StructureShape.new(name: 'DryRunOperation')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ImportMigrationTaskRequest = Shapes::StructureShape.new(name: 'ImportMigrationTaskRequest')
    ImportMigrationTaskResult = Shapes::StructureShape.new(name: 'ImportMigrationTaskResult')
    InternalServerError = Shapes::StructureShape.new(name: 'InternalServerError')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    LatestResourceAttributeList = Shapes::ListShape.new(name: 'LatestResourceAttributeList')
    ListCreatedArtifactsRequest = Shapes::StructureShape.new(name: 'ListCreatedArtifactsRequest')
    ListCreatedArtifactsResult = Shapes::StructureShape.new(name: 'ListCreatedArtifactsResult')
    ListDiscoveredResourcesRequest = Shapes::StructureShape.new(name: 'ListDiscoveredResourcesRequest')
    ListDiscoveredResourcesResult = Shapes::StructureShape.new(name: 'ListDiscoveredResourcesResult')
    ListMigrationTasksRequest = Shapes::StructureShape.new(name: 'ListMigrationTasksRequest')
    ListMigrationTasksResult = Shapes::StructureShape.new(name: 'ListMigrationTasksResult')
    ListProgressUpdateStreamsRequest = Shapes::StructureShape.new(name: 'ListProgressUpdateStreamsRequest')
    ListProgressUpdateStreamsResult = Shapes::StructureShape.new(name: 'ListProgressUpdateStreamsResult')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaxResultsCreatedArtifacts = Shapes::IntegerShape.new(name: 'MaxResultsCreatedArtifacts')
    MaxResultsResources = Shapes::IntegerShape.new(name: 'MaxResultsResources')
    MigrationTask = Shapes::StructureShape.new(name: 'MigrationTask')
    MigrationTaskName = Shapes::StringShape.new(name: 'MigrationTaskName')
    MigrationTaskSummary = Shapes::StructureShape.new(name: 'MigrationTaskSummary')
    MigrationTaskSummaryList = Shapes::ListShape.new(name: 'MigrationTaskSummaryList')
    NextUpdateSeconds = Shapes::IntegerShape.new(name: 'NextUpdateSeconds')
    NotifyApplicationStateRequest = Shapes::StructureShape.new(name: 'NotifyApplicationStateRequest')
    NotifyApplicationStateResult = Shapes::StructureShape.new(name: 'NotifyApplicationStateResult')
    NotifyMigrationTaskStateRequest = Shapes::StructureShape.new(name: 'NotifyMigrationTaskStateRequest')
    NotifyMigrationTaskStateResult = Shapes::StructureShape.new(name: 'NotifyMigrationTaskStateResult')
    PolicyErrorException = Shapes::StructureShape.new(name: 'PolicyErrorException')
    ProgressPercent = Shapes::IntegerShape.new(name: 'ProgressPercent')
    ProgressUpdateStream = Shapes::StringShape.new(name: 'ProgressUpdateStream')
    ProgressUpdateStreamSummary = Shapes::StructureShape.new(name: 'ProgressUpdateStreamSummary')
    ProgressUpdateStreamSummaryList = Shapes::ListShape.new(name: 'ProgressUpdateStreamSummaryList')
    PutResourceAttributesRequest = Shapes::StructureShape.new(name: 'PutResourceAttributesRequest')
    PutResourceAttributesResult = Shapes::StructureShape.new(name: 'PutResourceAttributesResult')
    ResourceAttribute = Shapes::StructureShape.new(name: 'ResourceAttribute')
    ResourceAttributeList = Shapes::ListShape.new(name: 'ResourceAttributeList')
    ResourceAttributeType = Shapes::StringShape.new(name: 'ResourceAttributeType')
    ResourceAttributeValue = Shapes::StringShape.new(name: 'ResourceAttributeValue')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusDetail = Shapes::StringShape.new(name: 'StatusDetail')
    Task = Shapes::StructureShape.new(name: 'Task')
    Token = Shapes::StringShape.new(name: 'Token')
    UnauthorizedOperation = Shapes::StructureShape.new(name: 'UnauthorizedOperation')
    UpdateDateTime = Shapes::TimestampShape.new(name: 'UpdateDateTime')

    AssociateCreatedArtifactRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    AssociateCreatedArtifactRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    AssociateCreatedArtifactRequest.add_member(:created_artifact, Shapes::ShapeRef.new(shape: CreatedArtifact, required: true, location_name: "CreatedArtifact"))
    AssociateCreatedArtifactRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    AssociateCreatedArtifactRequest.struct_class = Types::AssociateCreatedArtifactRequest

    AssociateCreatedArtifactResult.struct_class = Types::AssociateCreatedArtifactResult

    AssociateDiscoveredResourceRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    AssociateDiscoveredResourceRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    AssociateDiscoveredResourceRequest.add_member(:discovered_resource, Shapes::ShapeRef.new(shape: DiscoveredResource, required: true, location_name: "DiscoveredResource"))
    AssociateDiscoveredResourceRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    AssociateDiscoveredResourceRequest.struct_class = Types::AssociateDiscoveredResourceRequest

    AssociateDiscoveredResourceResult.struct_class = Types::AssociateDiscoveredResourceResult

    CreateProgressUpdateStreamRequest.add_member(:progress_update_stream_name, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStreamName"))
    CreateProgressUpdateStreamRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    CreateProgressUpdateStreamRequest.struct_class = Types::CreateProgressUpdateStreamRequest

    CreateProgressUpdateStreamResult.struct_class = Types::CreateProgressUpdateStreamResult

    CreatedArtifact.add_member(:name, Shapes::ShapeRef.new(shape: CreatedArtifactName, required: true, location_name: "Name"))
    CreatedArtifact.add_member(:description, Shapes::ShapeRef.new(shape: CreatedArtifactDescription, location_name: "Description"))
    CreatedArtifact.struct_class = Types::CreatedArtifact

    CreatedArtifactList.member = Shapes::ShapeRef.new(shape: CreatedArtifact)

    DeleteProgressUpdateStreamRequest.add_member(:progress_update_stream_name, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStreamName"))
    DeleteProgressUpdateStreamRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    DeleteProgressUpdateStreamRequest.struct_class = Types::DeleteProgressUpdateStreamRequest

    DeleteProgressUpdateStreamResult.struct_class = Types::DeleteProgressUpdateStreamResult

    DescribeApplicationStateRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    DescribeApplicationStateRequest.struct_class = Types::DescribeApplicationStateRequest

    DescribeApplicationStateResult.add_member(:application_status, Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: "ApplicationStatus"))
    DescribeApplicationStateResult.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: "LastUpdatedTime"))
    DescribeApplicationStateResult.struct_class = Types::DescribeApplicationStateResult

    DescribeMigrationTaskRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    DescribeMigrationTaskRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    DescribeMigrationTaskRequest.struct_class = Types::DescribeMigrationTaskRequest

    DescribeMigrationTaskResult.add_member(:migration_task, Shapes::ShapeRef.new(shape: MigrationTask, location_name: "MigrationTask"))
    DescribeMigrationTaskResult.struct_class = Types::DescribeMigrationTaskResult

    DisassociateCreatedArtifactRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    DisassociateCreatedArtifactRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    DisassociateCreatedArtifactRequest.add_member(:created_artifact_name, Shapes::ShapeRef.new(shape: CreatedArtifactName, required: true, location_name: "CreatedArtifactName"))
    DisassociateCreatedArtifactRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    DisassociateCreatedArtifactRequest.struct_class = Types::DisassociateCreatedArtifactRequest

    DisassociateCreatedArtifactResult.struct_class = Types::DisassociateCreatedArtifactResult

    DisassociateDiscoveredResourceRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    DisassociateDiscoveredResourceRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    DisassociateDiscoveredResourceRequest.add_member(:configuration_id, Shapes::ShapeRef.new(shape: ConfigurationId, required: true, location_name: "ConfigurationId"))
    DisassociateDiscoveredResourceRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    DisassociateDiscoveredResourceRequest.struct_class = Types::DisassociateDiscoveredResourceRequest

    DisassociateDiscoveredResourceResult.struct_class = Types::DisassociateDiscoveredResourceResult

    DiscoveredResource.add_member(:configuration_id, Shapes::ShapeRef.new(shape: ConfigurationId, required: true, location_name: "ConfigurationId"))
    DiscoveredResource.add_member(:description, Shapes::ShapeRef.new(shape: DiscoveredResourceDescription, location_name: "Description"))
    DiscoveredResource.struct_class = Types::DiscoveredResource

    DiscoveredResourceList.member = Shapes::ShapeRef.new(shape: DiscoveredResource)

    ImportMigrationTaskRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    ImportMigrationTaskRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    ImportMigrationTaskRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    ImportMigrationTaskRequest.struct_class = Types::ImportMigrationTaskRequest

    ImportMigrationTaskResult.struct_class = Types::ImportMigrationTaskResult

    LatestResourceAttributeList.member = Shapes::ShapeRef.new(shape: ResourceAttribute)

    ListCreatedArtifactsRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    ListCreatedArtifactsRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    ListCreatedArtifactsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCreatedArtifactsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsCreatedArtifacts, location_name: "MaxResults"))
    ListCreatedArtifactsRequest.struct_class = Types::ListCreatedArtifactsRequest

    ListCreatedArtifactsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListCreatedArtifactsResult.add_member(:created_artifact_list, Shapes::ShapeRef.new(shape: CreatedArtifactList, location_name: "CreatedArtifactList"))
    ListCreatedArtifactsResult.struct_class = Types::ListCreatedArtifactsResult

    ListDiscoveredResourcesRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    ListDiscoveredResourcesRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    ListDiscoveredResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDiscoveredResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsResources, location_name: "MaxResults"))
    ListDiscoveredResourcesRequest.struct_class = Types::ListDiscoveredResourcesRequest

    ListDiscoveredResourcesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListDiscoveredResourcesResult.add_member(:discovered_resource_list, Shapes::ShapeRef.new(shape: DiscoveredResourceList, location_name: "DiscoveredResourceList"))
    ListDiscoveredResourcesResult.struct_class = Types::ListDiscoveredResourcesResult

    ListMigrationTasksRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListMigrationTasksRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListMigrationTasksRequest.add_member(:resource_name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "ResourceName"))
    ListMigrationTasksRequest.struct_class = Types::ListMigrationTasksRequest

    ListMigrationTasksResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListMigrationTasksResult.add_member(:migration_task_summary_list, Shapes::ShapeRef.new(shape: MigrationTaskSummaryList, location_name: "MigrationTaskSummaryList"))
    ListMigrationTasksResult.struct_class = Types::ListMigrationTasksResult

    ListProgressUpdateStreamsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListProgressUpdateStreamsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListProgressUpdateStreamsRequest.struct_class = Types::ListProgressUpdateStreamsRequest

    ListProgressUpdateStreamsResult.add_member(:progress_update_stream_summary_list, Shapes::ShapeRef.new(shape: ProgressUpdateStreamSummaryList, location_name: "ProgressUpdateStreamSummaryList"))
    ListProgressUpdateStreamsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListProgressUpdateStreamsResult.struct_class = Types::ListProgressUpdateStreamsResult

    MigrationTask.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: "ProgressUpdateStream"))
    MigrationTask.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: "MigrationTaskName"))
    MigrationTask.add_member(:task, Shapes::ShapeRef.new(shape: Task, location_name: "Task"))
    MigrationTask.add_member(:update_date_time, Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: "UpdateDateTime"))
    MigrationTask.add_member(:resource_attribute_list, Shapes::ShapeRef.new(shape: LatestResourceAttributeList, location_name: "ResourceAttributeList"))
    MigrationTask.struct_class = Types::MigrationTask

    MigrationTaskSummary.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: "ProgressUpdateStream"))
    MigrationTaskSummary.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: "MigrationTaskName"))
    MigrationTaskSummary.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    MigrationTaskSummary.add_member(:progress_percent, Shapes::ShapeRef.new(shape: ProgressPercent, location_name: "ProgressPercent"))
    MigrationTaskSummary.add_member(:status_detail, Shapes::ShapeRef.new(shape: StatusDetail, location_name: "StatusDetail"))
    MigrationTaskSummary.add_member(:update_date_time, Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: "UpdateDateTime"))
    MigrationTaskSummary.struct_class = Types::MigrationTaskSummary

    MigrationTaskSummaryList.member = Shapes::ShapeRef.new(shape: MigrationTaskSummary)

    NotifyApplicationStateRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: ApplicationId, required: true, location_name: "ApplicationId"))
    NotifyApplicationStateRequest.add_member(:status, Shapes::ShapeRef.new(shape: ApplicationStatus, required: true, location_name: "Status"))
    NotifyApplicationStateRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    NotifyApplicationStateRequest.struct_class = Types::NotifyApplicationStateRequest

    NotifyApplicationStateResult.struct_class = Types::NotifyApplicationStateResult

    NotifyMigrationTaskStateRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    NotifyMigrationTaskStateRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    NotifyMigrationTaskStateRequest.add_member(:task, Shapes::ShapeRef.new(shape: Task, required: true, location_name: "Task"))
    NotifyMigrationTaskStateRequest.add_member(:update_date_time, Shapes::ShapeRef.new(shape: UpdateDateTime, required: true, location_name: "UpdateDateTime"))
    NotifyMigrationTaskStateRequest.add_member(:next_update_seconds, Shapes::ShapeRef.new(shape: NextUpdateSeconds, required: true, location_name: "NextUpdateSeconds"))
    NotifyMigrationTaskStateRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    NotifyMigrationTaskStateRequest.struct_class = Types::NotifyMigrationTaskStateRequest

    NotifyMigrationTaskStateResult.struct_class = Types::NotifyMigrationTaskStateResult

    ProgressUpdateStreamSummary.add_member(:progress_update_stream_name, Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: "ProgressUpdateStreamName"))
    ProgressUpdateStreamSummary.struct_class = Types::ProgressUpdateStreamSummary

    ProgressUpdateStreamSummaryList.member = Shapes::ShapeRef.new(shape: ProgressUpdateStreamSummary)

    PutResourceAttributesRequest.add_member(:progress_update_stream, Shapes::ShapeRef.new(shape: ProgressUpdateStream, required: true, location_name: "ProgressUpdateStream"))
    PutResourceAttributesRequest.add_member(:migration_task_name, Shapes::ShapeRef.new(shape: MigrationTaskName, required: true, location_name: "MigrationTaskName"))
    PutResourceAttributesRequest.add_member(:resource_attribute_list, Shapes::ShapeRef.new(shape: ResourceAttributeList, required: true, location_name: "ResourceAttributeList"))
    PutResourceAttributesRequest.add_member(:dry_run, Shapes::ShapeRef.new(shape: DryRun, location_name: "DryRun"))
    PutResourceAttributesRequest.struct_class = Types::PutResourceAttributesRequest

    PutResourceAttributesResult.struct_class = Types::PutResourceAttributesResult

    ResourceAttribute.add_member(:type, Shapes::ShapeRef.new(shape: ResourceAttributeType, required: true, location_name: "Type"))
    ResourceAttribute.add_member(:value, Shapes::ShapeRef.new(shape: ResourceAttributeValue, required: true, location_name: "Value"))
    ResourceAttribute.struct_class = Types::ResourceAttribute

    ResourceAttributeList.member = Shapes::ShapeRef.new(shape: ResourceAttribute)

    Task.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "Status"))
    Task.add_member(:status_detail, Shapes::ShapeRef.new(shape: StatusDetail, location_name: "StatusDetail"))
    Task.add_member(:progress_percent, Shapes::ShapeRef.new(shape: ProgressPercent, location_name: "ProgressPercent"))
    Task.struct_class = Types::Task


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-05-31"

      api.metadata = {
        "apiVersion" => "2017-05-31",
        "endpointPrefix" => "mgh",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Migration Hub",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSMigrationHub",
        "uid" => "AWSMigrationHub-2017-05-31",
      }

      api.add_operation(:associate_created_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateCreatedArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateCreatedArtifactRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateCreatedArtifactResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:associate_discovered_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateDiscoveredResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: AssociateDiscoveredResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateDiscoveredResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_progress_update_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProgressUpdateStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateProgressUpdateStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProgressUpdateStreamResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:delete_progress_update_stream, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProgressUpdateStream"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteProgressUpdateStreamRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProgressUpdateStreamResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_application_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplicationState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationStateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationStateResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_migration_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeMigrationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeMigrationTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeMigrationTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_created_artifact, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateCreatedArtifact"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateCreatedArtifactRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateCreatedArtifactResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:disassociate_discovered_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateDiscoveredResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisassociateDiscoveredResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateDiscoveredResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:import_migration_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ImportMigrationTask"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ImportMigrationTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: ImportMigrationTaskResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_created_artifacts, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCreatedArtifacts"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListCreatedArtifactsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCreatedArtifactsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_discovered_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDiscoveredResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListDiscoveredResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDiscoveredResourcesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_migration_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListMigrationTasks"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListMigrationTasksRequest)
        o.output = Shapes::ShapeRef.new(shape: ListMigrationTasksResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_progress_update_streams, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProgressUpdateStreams"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListProgressUpdateStreamsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProgressUpdateStreamsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:notify_application_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "NotifyApplicationState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: NotifyApplicationStateRequest)
        o.output = Shapes::ShapeRef.new(shape: NotifyApplicationStateResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: PolicyErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:notify_migration_task_state, Seahorse::Model::Operation.new.tap do |o|
        o.name = "NotifyMigrationTaskState"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: NotifyMigrationTaskStateRequest)
        o.output = Shapes::ShapeRef.new(shape: NotifyMigrationTaskStateResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:put_resource_attributes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutResourceAttributes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutResourceAttributesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutResourceAttributesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerError)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: DryRunOperation)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
