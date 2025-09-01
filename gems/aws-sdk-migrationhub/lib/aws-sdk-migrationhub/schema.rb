# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHub
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client"})
    ApplicationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#ApplicationId', name: 'ApplicationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^.{1,1600}$"})
    ApplicationIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#ApplicationIds', name: 'ApplicationIds', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ApplicationState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ApplicationState', name: 'ApplicationState')
    ApplicationStateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#ApplicationStateList', name: 'ApplicationStateList', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    ApplicationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.migrationhub#ApplicationStatus', name: 'ApplicationStatus')
    AssociateCreatedArtifactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#AssociateCreatedArtifactRequest', name: 'AssociateCreatedArtifactRequest')
    AssociateCreatedArtifactResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#AssociateCreatedArtifactResult', name: 'AssociateCreatedArtifactResult')
    AssociateDiscoveredResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#AssociateDiscoveredResourceRequest', name: 'AssociateDiscoveredResourceRequest')
    AssociateDiscoveredResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#AssociateDiscoveredResourceResult', name: 'AssociateDiscoveredResourceResult')
    AssociateSourceResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#AssociateSourceResourceRequest', name: 'AssociateSourceResourceRequest')
    AssociateSourceResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#AssociateSourceResourceResult', name: 'AssociateSourceResourceResult')
    ConfigurationId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#ConfigurationId', name: 'ConfigurationId', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^.{1,1600}$"})
    CreateProgressUpdateStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#CreateProgressUpdateStreamRequest', name: 'CreateProgressUpdateStreamRequest')
    CreateProgressUpdateStreamResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#CreateProgressUpdateStreamResult', name: 'CreateProgressUpdateStreamResult')
    CreatedArtifact = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#CreatedArtifact', name: 'CreatedArtifact')
    CreatedArtifactDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#CreatedArtifactDescription', name: 'CreatedArtifactDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^.{0,500}$"})
    CreatedArtifactList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#CreatedArtifactList', name: 'CreatedArtifactList')
    CreatedArtifactName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#CreatedArtifactName', name: 'CreatedArtifactName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:[a-z-]+:[a-z0-9-]+:(?:[a-z0-9-]+|):(?:[0-9]{12}|):"})
    DeleteProgressUpdateStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DeleteProgressUpdateStreamRequest', name: 'DeleteProgressUpdateStreamRequest')
    DeleteProgressUpdateStreamResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DeleteProgressUpdateStreamResult', name: 'DeleteProgressUpdateStreamResult')
    DescribeApplicationStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DescribeApplicationStateRequest', name: 'DescribeApplicationStateRequest')
    DescribeApplicationStateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DescribeApplicationStateResult', name: 'DescribeApplicationStateResult')
    DescribeMigrationTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DescribeMigrationTaskRequest', name: 'DescribeMigrationTaskRequest')
    DescribeMigrationTaskResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DescribeMigrationTaskResult', name: 'DescribeMigrationTaskResult')
    DisassociateCreatedArtifactRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DisassociateCreatedArtifactRequest', name: 'DisassociateCreatedArtifactRequest')
    DisassociateCreatedArtifactResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DisassociateCreatedArtifactResult', name: 'DisassociateCreatedArtifactResult')
    DisassociateDiscoveredResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DisassociateDiscoveredResourceRequest', name: 'DisassociateDiscoveredResourceRequest')
    DisassociateDiscoveredResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DisassociateDiscoveredResourceResult', name: 'DisassociateDiscoveredResourceResult')
    DisassociateSourceResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DisassociateSourceResourceRequest', name: 'DisassociateSourceResourceRequest')
    DisassociateSourceResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DisassociateSourceResourceResult', name: 'DisassociateSourceResourceResult')
    DiscoveredResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DiscoveredResource', name: 'DiscoveredResource')
    DiscoveredResourceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#DiscoveredResourceDescription', name: 'DiscoveredResourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^.{0,500}$"})
    DiscoveredResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#DiscoveredResourceList', name: 'DiscoveredResourceList')
    DryRun = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.migrationhub#DryRun', name: 'DryRun', traits: {"smithy.api#default" => false})
    DryRunOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#DryRunOperation', name: 'DryRunOperation', traits: {"smithy.api#error" => "client"})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#ErrorMessage', name: 'ErrorMessage')
    HomeRegionNotSetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#HomeRegionNotSetException', name: 'HomeRegionNotSetException', traits: {"smithy.api#error" => "client"})
    ImportMigrationTaskRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ImportMigrationTaskRequest', name: 'ImportMigrationTaskRequest')
    ImportMigrationTaskResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ImportMigrationTaskResult', name: 'ImportMigrationTaskResult')
    InternalServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#InternalServerError', name: 'InternalServerError', traits: {"smithy.api#error" => "server"})
    InvalidInputException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#InvalidInputException', name: 'InvalidInputException', traits: {"smithy.api#error" => "client"})
    LatestResourceAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#LatestResourceAttributeList', name: 'LatestResourceAttributeList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ListApplicationStatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListApplicationStatesRequest', name: 'ListApplicationStatesRequest')
    ListApplicationStatesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListApplicationStatesResult', name: 'ListApplicationStatesResult')
    ListCreatedArtifactsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListCreatedArtifactsRequest', name: 'ListCreatedArtifactsRequest')
    ListCreatedArtifactsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListCreatedArtifactsResult', name: 'ListCreatedArtifactsResult')
    ListDiscoveredResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListDiscoveredResourcesRequest', name: 'ListDiscoveredResourcesRequest')
    ListDiscoveredResourcesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListDiscoveredResourcesResult', name: 'ListDiscoveredResourcesResult')
    ListMigrationTaskUpdatesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListMigrationTaskUpdatesRequest', name: 'ListMigrationTaskUpdatesRequest')
    ListMigrationTaskUpdatesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListMigrationTaskUpdatesResult', name: 'ListMigrationTaskUpdatesResult')
    ListMigrationTasksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListMigrationTasksRequest', name: 'ListMigrationTasksRequest')
    ListMigrationTasksResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListMigrationTasksResult', name: 'ListMigrationTasksResult')
    ListProgressUpdateStreamsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListProgressUpdateStreamsRequest', name: 'ListProgressUpdateStreamsRequest')
    ListProgressUpdateStreamsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListProgressUpdateStreamsResult', name: 'ListProgressUpdateStreamsResult')
    ListSourceResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListSourceResourcesRequest', name: 'ListSourceResourcesRequest')
    ListSourceResourcesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ListSourceResourcesResult', name: 'ListSourceResourcesResult')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhub#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxResultsCreatedArtifacts = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhub#MaxResultsCreatedArtifacts', name: 'MaxResultsCreatedArtifacts', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsResources = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhub#MaxResultsResources', name: 'MaxResultsResources', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MaxResultsSourceResources = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhub#MaxResultsSourceResources', name: 'MaxResultsSourceResources', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    MigrationTask = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#MigrationTask', name: 'MigrationTask')
    MigrationTaskName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#MigrationTaskName', name: 'MigrationTaskName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[^:|]+$"})
    MigrationTaskSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#MigrationTaskSummary', name: 'MigrationTaskSummary')
    MigrationTaskSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#MigrationTaskSummaryList', name: 'MigrationTaskSummaryList')
    MigrationTaskUpdate = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#MigrationTaskUpdate', name: 'MigrationTaskUpdate')
    MigrationTaskUpdateList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#MigrationTaskUpdateList', name: 'MigrationTaskUpdateList')
    NextUpdateSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhub#NextUpdateSeconds', name: 'NextUpdateSeconds', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    NotifyApplicationStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#NotifyApplicationStateRequest', name: 'NotifyApplicationStateRequest')
    NotifyApplicationStateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#NotifyApplicationStateResult', name: 'NotifyApplicationStateResult')
    NotifyMigrationTaskStateRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#NotifyMigrationTaskStateRequest', name: 'NotifyMigrationTaskStateRequest')
    NotifyMigrationTaskStateResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#NotifyMigrationTaskStateResult', name: 'NotifyMigrationTaskStateResult')
    PolicyErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#PolicyErrorException', name: 'PolicyErrorException', traits: {"smithy.api#error" => "client"})
    ProgressPercent = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhub#ProgressPercent', name: 'ProgressPercent', traits: {"smithy.api#range" => {"min" => 0, "max" => 100}})
    ProgressUpdateStream = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#ProgressUpdateStream', name: 'ProgressUpdateStream', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[^/:|\\000-\\037]+$"})
    ProgressUpdateStreamSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ProgressUpdateStreamSummary', name: 'ProgressUpdateStreamSummary')
    ProgressUpdateStreamSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#ProgressUpdateStreamSummaryList', name: 'ProgressUpdateStreamSummaryList')
    PutResourceAttributesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#PutResourceAttributesRequest', name: 'PutResourceAttributesRequest')
    PutResourceAttributesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#PutResourceAttributesResult', name: 'PutResourceAttributesResult')
    ResourceAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ResourceAttribute', name: 'ResourceAttribute')
    ResourceAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#ResourceAttributeList', name: 'ResourceAttributeList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceAttributeType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.migrationhub#ResourceAttributeType', name: 'ResourceAttributeType')
    ResourceAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#ResourceAttributeValue', name: 'ResourceAttributeValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^.{1,256}$"})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#ResourceName', name: 'ResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^.{1,1600}$"})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client"})
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhub#RetryAfterSeconds', name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server"})
    SourceResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#SourceResource', name: 'SourceResource')
    SourceResourceDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#SourceResourceDescription', name: 'SourceResourceDescription', traits: {"smithy.api#length" => {"min" => 0, "max" => 500}, "smithy.api#pattern" => "^.{0,500}$"})
    SourceResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhub#SourceResourceList', name: 'SourceResourceList')
    SourceResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#SourceResourceName', name: 'SourceResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    Status = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.migrationhub#Status', name: 'Status')
    StatusDetail = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#StatusDetail', name: 'StatusDetail', traits: {"smithy.api#length" => {"min" => 0, "max" => 2500}, "smithy.api#pattern" => "^.{0,2500}$"})
    Task = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#Task', name: 'Task')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhub#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9\\/\\+\\=]{0,2048}$"})
    UnauthorizedOperation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhub#UnauthorizedOperation', name: 'UnauthorizedOperation', traits: {"smithy.api#error" => "client"})
    UpdateDateTime = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.migrationhub#UpdateDateTime', name: 'UpdateDateTime')
    UpdateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.migrationhub#UpdateType', name: 'UpdateType')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ApplicationIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId)
    ApplicationState.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The configurationId from the Application Discovery Service that uniquely identifies an\n         application.</p>"}))
    ApplicationState.add_member(:application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#documentation" => "<p>The current status of an application.</p>"}))
    ApplicationState.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the application status was last updated.</p>"}))
    ApplicationState.type = Types::ApplicationState
    ApplicationStateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState)
    ApplicationStatus.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    ApplicationStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ApplicationStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    AssociateCreatedArtifactRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. </p>", "smithy.api#required" => {}}))
    AssociateCreatedArtifactRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>Unique identifier that references the migration task. <i>Do not store personal\n            data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    AssociateCreatedArtifactRequest.add_member(:created_artifact, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedArtifact, location_name: 'CreatedArtifact', traits: {"smithy.api#documentation" => "<p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS\n         instance, etc.) </p>", "smithy.api#required" => {}}))
    AssociateCreatedArtifactRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    AssociateCreatedArtifactRequest.type = Types::AssociateCreatedArtifactRequest
    AssociateCreatedArtifactResult.type = Types::AssociateCreatedArtifactResult
    AssociateDiscoveredResourceRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream.</p>", "smithy.api#required" => {}}))
    AssociateDiscoveredResourceRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>The identifier given to the MigrationTask. <i>Do not store personal data in this\n            field.</i>\n         </p>", "smithy.api#required" => {}}))
    AssociateDiscoveredResourceRequest.add_member(:discovered_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveredResource, location_name: 'DiscoveredResource', traits: {"smithy.api#documentation" => "<p>Object representing a Resource.</p>", "smithy.api#required" => {}}))
    AssociateDiscoveredResourceRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    AssociateDiscoveredResourceRequest.type = Types::AssociateDiscoveredResourceRequest
    AssociateDiscoveredResourceResult.type = Types::AssociateDiscoveredResourceResult
    AssociateSourceResourceRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the progress-update stream, which is used for access control as well as a\n         namespace for migration-task names that is implicitly linked to your AWS account. The\n         progress-update stream must uniquely identify the migration tool as it is used for all\n         updates made by the tool; however, it does not need to be unique for each AWS account\n         because it is scoped to the AWS account.</p>", "smithy.api#required" => {}}))
    AssociateSourceResourceRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>A unique identifier that references the migration task. <i>Do not include\n            sensitive data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    AssociateSourceResourceRequest.add_member(:source_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceResource, location_name: 'SourceResource', traits: {"smithy.api#documentation" => "<p>The source resource that you want to associate.</p>", "smithy.api#required" => {}}))
    AssociateSourceResourceRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is an optional parameter that you can use to test whether the call will succeed.\n         Set this parameter to <code>true</code> to verify that you have the permissions that are\n         required to make the call, and that you have specified the other parameters in the call\n         correctly.</p>"}))
    AssociateSourceResourceRequest.type = Types::AssociateSourceResourceRequest
    AssociateSourceResourceResult.type = Types::AssociateSourceResourceResult
    CreateProgressUpdateStreamRequest.add_member(:progress_update_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStreamName', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. <i>Do not store personal data in this\n            field.</i>\n         </p>", "smithy.api#required" => {}}))
    CreateProgressUpdateStreamRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    CreateProgressUpdateStreamRequest.type = Types::CreateProgressUpdateStreamRequest
    CreateProgressUpdateStreamResult.type = Types::CreateProgressUpdateStreamResult
    CreatedArtifact.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedArtifactName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>An ARN that uniquely identifies the result of a migration task.</p>", "smithy.api#required" => {}}))
    CreatedArtifact.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedArtifactDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description that can be free-form text to record additional detail about the artifact\n         for clarity or for later reference.</p>"}))
    CreatedArtifact.type = Types::CreatedArtifact
    CreatedArtifactList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedArtifact)
    DeleteProgressUpdateStreamRequest.add_member(:progress_update_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStreamName', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. <i>Do not store personal data in this\n            field.</i>\n         </p>", "smithy.api#required" => {}}))
    DeleteProgressUpdateStreamRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    DeleteProgressUpdateStreamRequest.type = Types::DeleteProgressUpdateStreamRequest
    DeleteProgressUpdateStreamResult.type = Types::DeleteProgressUpdateStreamResult
    DescribeApplicationStateRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The configurationId in Application Discovery Service that uniquely identifies the\n         grouped application.</p>", "smithy.api#required" => {}}))
    DescribeApplicationStateRequest.type = Types::DescribeApplicationStateRequest
    DescribeApplicationStateResult.add_member(:application_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'ApplicationStatus', traits: {"smithy.api#documentation" => "<p>Status of the application - Not Started, In-Progress, Complete.</p>"}))
    DescribeApplicationStateResult.add_member(:last_updated_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: 'LastUpdatedTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the application status was last updated.</p>"}))
    DescribeApplicationStateResult.type = Types::DescribeApplicationStateResult
    DescribeMigrationTaskRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. </p>", "smithy.api#required" => {}}))
    DescribeMigrationTaskRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>The identifier given to the MigrationTask. <i>Do not store personal data in this\n            field.</i>\n         </p>", "smithy.api#required" => {}}))
    DescribeMigrationTaskRequest.type = Types::DescribeMigrationTaskRequest
    DescribeMigrationTaskResult.add_member(:migration_task, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTask, location_name: 'MigrationTask', traits: {"smithy.api#documentation" => "<p>Object encapsulating information about the migration task.</p>"}))
    DescribeMigrationTaskResult.type = Types::DescribeMigrationTaskResult
    DisassociateCreatedArtifactRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. </p>", "smithy.api#required" => {}}))
    DisassociateCreatedArtifactRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>Unique identifier that references the migration task to be disassociated with the\n         artifact. <i>Do not store personal data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    DisassociateCreatedArtifactRequest.add_member(:created_artifact_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedArtifactName, location_name: 'CreatedArtifactName', traits: {"smithy.api#documentation" => "<p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS\n         instance, etc.)</p>", "smithy.api#required" => {}}))
    DisassociateCreatedArtifactRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    DisassociateCreatedArtifactRequest.type = Types::DisassociateCreatedArtifactRequest
    DisassociateCreatedArtifactResult.type = Types::DisassociateCreatedArtifactResult
    DisassociateDiscoveredResourceRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream.</p>", "smithy.api#required" => {}}))
    DisassociateDiscoveredResourceRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>The identifier given to the MigrationTask. <i>Do not store personal data in this\n            field.</i>\n         </p>", "smithy.api#required" => {}}))
    DisassociateDiscoveredResourceRequest.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>ConfigurationId of the Application Discovery Service resource to be\n         disassociated.</p>", "smithy.api#required" => {}}))
    DisassociateDiscoveredResourceRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    DisassociateDiscoveredResourceRequest.type = Types::DisassociateDiscoveredResourceRequest
    DisassociateDiscoveredResourceResult.type = Types::DisassociateDiscoveredResourceResult
    DisassociateSourceResourceRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the progress-update stream, which is used for access control as well as a\n         namespace for migration-task names that is implicitly linked to your AWS account. The\n         progress-update stream must uniquely identify the migration tool as it is used for all\n         updates made by the tool; however, it does not need to be unique for each AWS account\n         because it is scoped to the AWS account.</p>", "smithy.api#required" => {}}))
    DisassociateSourceResourceRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>A unique identifier that references the migration task. <i>Do not include\n            sensitive data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    DisassociateSourceResourceRequest.add_member(:source_resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceResourceName, location_name: 'SourceResourceName', traits: {"smithy.api#documentation" => "<p>The name that was specified for the source resource.</p>", "smithy.api#required" => {}}))
    DisassociateSourceResourceRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>This is an optional parameter that you can use to test whether the call will succeed.\n         Set this parameter to <code>true</code> to verify that you have the permissions that are\n         required to make the call, and that you have specified the other parameters in the call\n         correctly.</p>"}))
    DisassociateSourceResourceRequest.type = Types::DisassociateSourceResourceRequest
    DisassociateSourceResourceResult.type = Types::DisassociateSourceResourceResult
    DiscoveredResource.add_member(:configuration_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationId, location_name: 'ConfigurationId', traits: {"smithy.api#documentation" => "<p>The configurationId in Application Discovery Service that uniquely identifies the\n         on-premise resource.</p>", "smithy.api#required" => {}}))
    DiscoveredResource.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveredResourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description that can be free-form text to record additional detail about the\n         discovered resource for clarity or later reference.</p>"}))
    DiscoveredResource.type = Types::DiscoveredResource
    DiscoveredResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveredResource)
    DryRunOperation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DryRunOperation.type = Types::DryRunOperation
    HomeRegionNotSetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    HomeRegionNotSetException.type = Types::HomeRegionNotSetException
    ImportMigrationTaskRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. ></p>", "smithy.api#required" => {}}))
    ImportMigrationTaskRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>Unique identifier that references the migration task. <i>Do not store personal\n            data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    ImportMigrationTaskRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    ImportMigrationTaskRequest.type = Types::ImportMigrationTaskRequest
    ImportMigrationTaskResult.type = Types::ImportMigrationTaskResult
    InternalServerError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerError.type = Types::InternalServerError
    InvalidInputException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidInputException.type = Types::InvalidInputException
    LatestResourceAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAttribute)
    ListApplicationStatesRequest.add_member(:application_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationIds, location_name: 'ApplicationIds', traits: {"smithy.api#documentation" => "<p>The configurationIds from the Application Discovery Service that uniquely identifies\n         your applications.</p>"}))
    ListApplicationStatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a <code>NextToken</code> was returned by a previous call, there are more results\n         available. To retrieve the next page of results, make the call again using the returned\n         token in <code>NextToken</code>.</p>"}))
    ListApplicationStatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to be returned per page.</p>"}))
    ListApplicationStatesRequest.type = Types::ListApplicationStatesRequest
    ListApplicationStatesResult.add_member(:application_state_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStateList, location_name: 'ApplicationStateList', traits: {"smithy.api#documentation" => "<p>A list of Applications that exist in Application Discovery Service.</p>"}))
    ListApplicationStatesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a <code>NextToken</code> was returned by a previous call, there are more results\n         available. To retrieve the next page of results, make the call again using the returned\n         token in <code>NextToken</code>.</p>"}))
    ListApplicationStatesResult.type = Types::ListApplicationStatesResult
    ListCreatedArtifactsRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. </p>", "smithy.api#required" => {}}))
    ListCreatedArtifactsRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>Unique identifier that references the migration task. <i>Do not store personal\n            data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    ListCreatedArtifactsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a <code>NextToken</code> was returned by a previous call, there are more results\n         available. To retrieve the next page of results, make the call again using the returned\n         token in <code>NextToken</code>.</p>"}))
    ListCreatedArtifactsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsCreatedArtifacts, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Maximum number of results to be returned per page.</p>"}))
    ListCreatedArtifactsRequest.type = Types::ListCreatedArtifactsRequest
    ListCreatedArtifactsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are more created artifacts than the max result, return the next token to be\n         passed to the next call as a bookmark of where to start from.</p>"}))
    ListCreatedArtifactsResult.add_member(:created_artifact_list, Smithy::Schema::Shapes::ShapeRef.new(shape: CreatedArtifactList, location_name: 'CreatedArtifactList', traits: {"smithy.api#documentation" => "<p>List of created artifacts up to the maximum number of results specified in the\n         request.</p>"}))
    ListCreatedArtifactsResult.type = Types::ListCreatedArtifactsResult
    ListDiscoveredResourcesRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream.</p>", "smithy.api#required" => {}}))
    ListDiscoveredResourcesRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>The name of the MigrationTask. <i>Do not store personal data in this\n            field.</i>\n         </p>", "smithy.api#required" => {}}))
    ListDiscoveredResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a <code>NextToken</code> was returned by a previous call, there are more results\n         available. To retrieve the next page of results, make the call again using the returned\n         token in <code>NextToken</code>.</p>"}))
    ListDiscoveredResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsResources, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results returned per page.</p>"}))
    ListDiscoveredResourcesRequest.type = Types::ListDiscoveredResourcesRequest
    ListDiscoveredResourcesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are more discovered resources than the max result, return the next token to be\n         passed to the next call as a bookmark of where to start from.</p>"}))
    ListDiscoveredResourcesResult.add_member(:discovered_resource_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DiscoveredResourceList, location_name: 'DiscoveredResourceList', traits: {"smithy.api#documentation" => "<p>Returned list of discovered resources associated with the given MigrationTask.</p>"}))
    ListDiscoveredResourcesResult.type = Types::ListDiscoveredResourcesResult
    ListMigrationTaskUpdatesRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the progress-update stream, which is used for access control as well as a\n         namespace for migration-task names that is implicitly linked to your AWS account. The\n         progress-update stream must uniquely identify the migration tool as it is used for all\n         updates made by the tool; however, it does not need to be unique for each AWS account\n         because it is scoped to the AWS account.</p>", "smithy.api#required" => {}}))
    ListMigrationTaskUpdatesRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>A unique identifier that references the migration task. <i>Do not include\n            sensitive data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    ListMigrationTaskUpdatesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> was returned by a previous call, there are more results\n         available. The value of <code>NextToken</code> is a unique pagination token for each page.\n         To retrieve the next page of results, specify the <code>NextToken</code> value that the\n         previous call returned. Keep all other arguments unchanged. Each pagination token expires\n         after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken\n         error.</p>"}))
    ListMigrationTaskUpdatesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the\n         value that you specify here for <code>MaxResults</code>, the response will include a token\n         that you can use to retrieve the next set of results.</p>"}))
    ListMigrationTaskUpdatesRequest.type = Types::ListMigrationTaskUpdatesRequest
    ListMigrationTaskUpdatesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response includes a <code>NextToken</code> value, that means that there are more\n         results available. The value of <code>NextToken</code> is a unique pagination token for\n         each page. To retrieve the next page of results, call this API again and specify this\n            <code>NextToken</code> value in the request. Keep all other arguments unchanged. Each\n         pagination token expires after 24 hours. Using an expired pagination token will return an\n         HTTP 400 InvalidToken error.</p>"}))
    ListMigrationTaskUpdatesResult.add_member(:migration_task_update_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskUpdateList, location_name: 'MigrationTaskUpdateList', traits: {"smithy.api#documentation" => "<p>The list of migration-task updates.</p>"}))
    ListMigrationTaskUpdatesResult.type = Types::ListMigrationTaskUpdatesResult
    ListMigrationTasksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a <code>NextToken</code> was returned by a previous call, there are more results\n         available. To retrieve the next page of results, make the call again using the returned\n         token in <code>NextToken</code>.</p>"}))
    ListMigrationTasksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Value to specify how many results are returned per page.</p>"}))
    ListMigrationTasksRequest.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>Filter migration tasks by discovered resource name.</p>"}))
    ListMigrationTasksRequest.type = Types::ListMigrationTasksRequest
    ListMigrationTasksResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are more migration tasks than the max result, return the next token to be\n         passed to the next call as a bookmark of where to start from.</p>"}))
    ListMigrationTasksResult.add_member(:migration_task_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskSummaryList, location_name: 'MigrationTaskSummaryList', traits: {"smithy.api#documentation" => "<p>Lists the migration task's summary which includes: <code>MigrationTaskName</code>,\n            <code>ProgressPercent</code>, <code>ProgressUpdateStream</code>, <code>Status</code>,\n         and the <code>UpdateDateTime</code> for each task.</p>"}))
    ListMigrationTasksResult.type = Types::ListMigrationTasksResult
    ListProgressUpdateStreamsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If a <code>NextToken</code> was returned by a previous call, there are more results\n         available. To retrieve the next page of results, make the call again using the returned\n         token in <code>NextToken</code>.</p>"}))
    ListProgressUpdateStreamsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Filter to limit the maximum number of results to list per page.</p>"}))
    ListProgressUpdateStreamsRequest.type = Types::ListProgressUpdateStreamsRequest
    ListProgressUpdateStreamsResult.add_member(:progress_update_stream_summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStreamSummaryList, location_name: 'ProgressUpdateStreamSummaryList', traits: {"smithy.api#documentation" => "<p>List of progress update streams up to the max number of results passed in the\n         input.</p>"}))
    ListProgressUpdateStreamsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If there are more streams created than the max result, return the next token to be\n         passed to the next call as a bookmark of where to start from.</p>"}))
    ListProgressUpdateStreamsResult.type = Types::ListProgressUpdateStreamsResult
    ListSourceResourcesRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the progress-update stream, which is used for access control as well as a\n         namespace for migration-task names that is implicitly linked to your AWS account. The\n         progress-update stream must uniquely identify the migration tool as it is used for all\n         updates made by the tool; however, it does not need to be unique for each AWS account\n         because it is scoped to the AWS account.</p>", "smithy.api#required" => {}}))
    ListSourceResourcesRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>A unique identifier that references the migration task. <i>Do not store\n            confidential data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    ListSourceResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If <code>NextToken</code> was returned by a previous call, there are more results\n         available. The value of <code>NextToken</code> is a unique pagination token for each page.\n         To retrieve the next page of results, specify the <code>NextToken</code> value that the\n         previous call returned. Keep all other arguments unchanged. Each pagination token expires\n         after 24 hours. Using an expired pagination token will return an HTTP 400 InvalidToken\n         error.</p>"}))
    ListSourceResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsSourceResources, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to include in the response. If more results exist than the\n         value that you specify here for <code>MaxResults</code>, the response will include a token\n         that you can use to retrieve the next set of results.</p>"}))
    ListSourceResourcesRequest.type = Types::ListSourceResourcesRequest
    ListSourceResourcesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If the response includes a <code>NextToken</code> value, that means that there are more\n         results available. The value of <code>NextToken</code> is a unique pagination token for\n         each page. To retrieve the next page of results, call this API again and specify this\n            <code>NextToken</code> value in the request. Keep all other arguments unchanged. Each\n         pagination token expires after 24 hours. Using an expired pagination token will return an\n         HTTP 400 InvalidToken error.</p>"}))
    ListSourceResourcesResult.add_member(:source_resource_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceResourceList, location_name: 'SourceResourceList', traits: {"smithy.api#documentation" => "<p>The list of source resources.</p>"}))
    ListSourceResourcesResult.type = Types::ListSourceResourcesResult
    MigrationTask.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>A name that identifies the vendor of the migration tool being used.</p>"}))
    MigrationTask.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>Unique identifier that references the migration task. <i>Do not store personal\n            data in this field.</i>\n         </p>"}))
    MigrationTask.add_member(:task, Smithy::Schema::Shapes::ShapeRef.new(shape: Task, location_name: 'Task', traits: {"smithy.api#documentation" => "<p>Task object encapsulating task information.</p>"}))
    MigrationTask.add_member(:update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: 'UpdateDateTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the task was gathered.</p>"}))
    MigrationTask.add_member(:resource_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestResourceAttributeList, location_name: 'ResourceAttributeList', traits: {"smithy.api#documentation" => "<p>Information about the resource that is being migrated. This data will be used to map the\n         task to a resource in the Application Discovery Service repository.</p>"}))
    MigrationTask.type = Types::MigrationTask
    MigrationTaskSummary.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>An AWS resource used for access control. It should uniquely identify the migration tool\n         as it is used for all updates made by the tool.</p>"}))
    MigrationTaskSummary.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>Unique identifier that references the migration task. <i>Do not store personal\n            data in this field.</i>\n         </p>"}))
    MigrationTaskSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the task.</p>"}))
    MigrationTaskSummary.add_member(:progress_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressPercent, location_name: 'ProgressPercent', traits: {"smithy.api#documentation" => "<p>Indication of the percentage completion of the task.</p>"}))
    MigrationTaskSummary.add_member(:status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetail, location_name: 'StatusDetail', traits: {"smithy.api#documentation" => "<p>Detail information of what is being done within the overall status state.</p>"}))
    MigrationTaskSummary.add_member(:update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: 'UpdateDateTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the task was gathered.</p>"}))
    MigrationTaskSummary.type = Types::MigrationTaskSummary
    MigrationTaskSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskSummary)
    MigrationTaskUpdate.add_member(:update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: 'UpdateDateTime', traits: {"smithy.api#documentation" => "<p>The timestamp for the update.</p>"}))
    MigrationTaskUpdate.add_member(:update_type, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateType, location_name: 'UpdateType', traits: {"smithy.api#documentation" => "<p>The type of the update.</p>"}))
    MigrationTaskUpdate.add_member(:migration_task_state, Smithy::Schema::Shapes::ShapeRef.new(shape: Task, location_name: 'MigrationTaskState'))
    MigrationTaskUpdate.type = Types::MigrationTaskUpdate
    MigrationTaskUpdateList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskUpdate)
    NotifyApplicationStateRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationId, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The configurationId in Application Discovery Service that uniquely identifies the\n         grouped application.</p>", "smithy.api#required" => {}}))
    NotifyApplicationStateRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the application - Not Started, In-Progress, Complete.</p>", "smithy.api#required" => {}}))
    NotifyApplicationStateRequest.add_member(:update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: 'UpdateDateTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the application state changed.</p>"}))
    NotifyApplicationStateRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    NotifyApplicationStateRequest.type = Types::NotifyApplicationStateRequest
    NotifyApplicationStateResult.type = Types::NotifyApplicationStateResult
    NotifyMigrationTaskStateRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. </p>", "smithy.api#required" => {}}))
    NotifyMigrationTaskStateRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>Unique identifier that references the migration task. <i>Do not store personal\n            data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    NotifyMigrationTaskStateRequest.add_member(:task, Smithy::Schema::Shapes::ShapeRef.new(shape: Task, location_name: 'Task', traits: {"smithy.api#documentation" => "<p>Information about the task's progress and status.</p>", "smithy.api#required" => {}}))
    NotifyMigrationTaskStateRequest.add_member(:update_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDateTime, location_name: 'UpdateDateTime', traits: {"smithy.api#documentation" => "<p>The timestamp when the task was gathered.</p>", "smithy.api#required" => {}}))
    NotifyMigrationTaskStateRequest.add_member(:next_update_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: NextUpdateSeconds, location_name: 'NextUpdateSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Number of seconds after the UpdateDateTime within which the Migration Hub can expect an\n         update. If Migration Hub does not receive an update within the specified interval, then the\n         migration task will be considered stale.</p>", "smithy.api#required" => {}}))
    NotifyMigrationTaskStateRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    NotifyMigrationTaskStateRequest.type = Types::NotifyMigrationTaskStateRequest
    NotifyMigrationTaskStateResult.type = Types::NotifyMigrationTaskStateResult
    PolicyErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    PolicyErrorException.type = Types::PolicyErrorException
    ProgressUpdateStreamSummary.add_member(:progress_update_stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStreamName', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. <i>Do not store personal data in this\n            field.</i>\n         </p>"}))
    ProgressUpdateStreamSummary.type = Types::ProgressUpdateStreamSummary
    ProgressUpdateStreamSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStreamSummary)
    PutResourceAttributesRequest.add_member(:progress_update_stream, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressUpdateStream, location_name: 'ProgressUpdateStream', traits: {"smithy.api#documentation" => "<p>The name of the ProgressUpdateStream. </p>", "smithy.api#required" => {}}))
    PutResourceAttributesRequest.add_member(:migration_task_name, Smithy::Schema::Shapes::ShapeRef.new(shape: MigrationTaskName, location_name: 'MigrationTaskName', traits: {"smithy.api#documentation" => "<p>Unique identifier that references the migration task. <i>Do not store personal\n            data in this field.</i>\n         </p>", "smithy.api#required" => {}}))
    PutResourceAttributesRequest.add_member(:resource_attribute_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAttributeList, location_name: 'ResourceAttributeList', traits: {"smithy.api#documentation" => "<p>Information about the resource that is being migrated. This data will be used to map the\n         task to a resource in the Application Discovery Service repository.</p>\n         <note>\n            <p>Takes the object array of <code>ResourceAttribute</code> where the <code>Type</code>\n            field is reserved for the following values: <code>IPV4_ADDRESS | IPV6_ADDRESS |\n               MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH\n               | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER</code> where the identifying value can be a\n            string up to 256 characters.</p>\n         </note>\n         <important>\n            <ul>\n               <li>\n                  <p>If any \"VM\" related value is set for a <code>ResourceAttribute</code> object,\n                  it is required that <code>VM_MANAGER_ID</code>, as a minimum, is always set. If\n                     <code>VM_MANAGER_ID</code> is not set, then all \"VM\" fields will be discarded\n                  and \"VM\" fields will not be used for matching the migration task to a server in\n                  Application Discovery Service repository. See the <a href=\"https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples\">Example</a> section below for a use case of specifying \"VM\" related\n                  values.</p>\n               </li>\n               <li>\n                  <p> If a server you are trying to match has multiple IP or MAC addresses, you\n                  should provide as many as you know in separate type/value pairs passed to the\n                     <code>ResourceAttributeList</code> parameter to maximize the chances of\n                  matching.</p>\n               </li>\n            </ul>\n         </important>", "smithy.api#required" => {}}))
    PutResourceAttributesRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRun, location_name: 'DryRun', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Optional boolean flag to indicate whether any effect should take place. Used to test if\n         the caller has permission to make the call.</p>"}))
    PutResourceAttributesRequest.type = Types::PutResourceAttributesRequest
    PutResourceAttributesResult.type = Types::PutResourceAttributesResult
    ResourceAttribute.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAttributeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of resource.</p>", "smithy.api#required" => {}}))
    ResourceAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAttributeValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>Value of the resource type.</p>", "smithy.api#required" => {}}))
    ResourceAttribute.type = Types::ResourceAttribute
    ResourceAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAttribute)
    ResourceAttributeType.add_member(:ipv4_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4_ADDRESS', traits: {"smithy.api#enumValue" => "IPV4_ADDRESS"}))
    ResourceAttributeType.add_member(:ipv6_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV6_ADDRESS', traits: {"smithy.api#enumValue" => "IPV6_ADDRESS"}))
    ResourceAttributeType.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAC_ADDRESS', traits: {"smithy.api#enumValue" => "MAC_ADDRESS"}))
    ResourceAttributeType.add_member(:fqdn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FQDN', traits: {"smithy.api#enumValue" => "FQDN"}))
    ResourceAttributeType.add_member(:vm_manager_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VM_MANAGER_ID', traits: {"smithy.api#enumValue" => "VM_MANAGER_ID"}))
    ResourceAttributeType.add_member(:vm_managed_object_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VM_MANAGED_OBJECT_REFERENCE', traits: {"smithy.api#enumValue" => "VM_MANAGED_OBJECT_REFERENCE"}))
    ResourceAttributeType.add_member(:vm_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VM_NAME', traits: {"smithy.api#enumValue" => "VM_NAME"}))
    ResourceAttributeType.add_member(:vm_path, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VM_PATH', traits: {"smithy.api#enumValue" => "VM_PATH"}))
    ResourceAttributeType.add_member(:bios_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BIOS_ID', traits: {"smithy.api#enumValue" => "BIOS_ID"}))
    ResourceAttributeType.add_member(:motherboard_serial_number, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MOTHERBOARD_SERIAL_NUMBER', traits: {"smithy.api#enumValue" => "MOTHERBOARD_SERIAL_NUMBER"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SourceResource.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceResourceName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>This is the name that you want to use to identify the resource. If the resource is an\n         AWS resource, we recommend that you set this parameter to the ARN of the resource.</p>", "smithy.api#required" => {}}))
    SourceResource.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceResourceDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description that can be free-form text to record additional detail about the resource\n         for clarity or later reference.</p>"}))
    SourceResource.add_member(:status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetail, location_name: 'StatusDetail', traits: {"smithy.api#documentation" => "<p>A free-form description of the status of the resource.</p>"}))
    SourceResource.type = Types::SourceResource
    SourceResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceResource)
    Status.add_member(:not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_STARTED', traits: {"smithy.api#enumValue" => "NOT_STARTED"}))
    Status.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    Status.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    Status.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    Task.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Status of the task - Not Started, In-Progress, Complete.</p>", "smithy.api#required" => {}}))
    Task.add_member(:status_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusDetail, location_name: 'StatusDetail', traits: {"smithy.api#documentation" => "<p>Details of task status as notified by a migration tool. A tool might use this field to\n         provide clarifying information about the status that is unique to that tool or that\n         explains an error state.</p>"}))
    Task.add_member(:progress_percent, Smithy::Schema::Shapes::ShapeRef.new(shape: ProgressPercent, location_name: 'ProgressPercent', traits: {"smithy.api#documentation" => "<p>Indication of the percentage completion of the task.</p>"}))
    Task.type = Types::Task
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message that provides information about the exception.</p>", "smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'RetryAfterSeconds', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of seconds the caller should wait before retrying.</p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UnauthorizedOperation.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnauthorizedOperation.type = Types::UnauthorizedOperation
    UpdateType.add_member(:migration_task_state_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MigrationTaskStateUpdated', traits: {"smithy.api#enumValue" => "MIGRATION_TASK_STATE_UPDATED"}))

    AWSMigrationHub = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.migrationhub#AWSMigrationHub"
      service.name = "AWSMigrationHub"
      service.version = "2017-05-31"
      service.traits = {"aws.api#service" => {"sdkId" => "Migration Hub", "arnNamespace" => "mgh", "cloudFormationName" => "MigrationHub", "cloudTrailEventSource" => "migrationhub.amazonaws.com", "docId" => "AWSMigrationHub-2017-05-31", "endpointPrefix" => "mgh"}, "aws.auth#sigv4" => {"name" => "mgh"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Migration Hub"}
      service.add_operation(:associate_created_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#AssociateCreatedArtifact"
        operation.name = "AssociateCreatedArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateCreatedArtifactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateCreatedArtifactResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:associate_discovered_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#AssociateDiscoveredResource"
        operation.name = "AssociateDiscoveredResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDiscoveredResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateDiscoveredResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:associate_source_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#AssociateSourceResource"
        operation.name = "AssociateSourceResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateSourceResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:create_progress_update_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#CreateProgressUpdateStream"
        operation.name = "CreateProgressUpdateStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProgressUpdateStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateProgressUpdateStreamResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:delete_progress_update_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#DeleteProgressUpdateStream"
        operation.name = "DeleteProgressUpdateStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProgressUpdateStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteProgressUpdateStreamResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#DescribeApplicationState"
        operation.name = "DescribeApplicationState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationStateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:describe_migration_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#DescribeMigrationTask"
        operation.name = "DescribeMigrationTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMigrationTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeMigrationTaskResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_created_artifact, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#DisassociateCreatedArtifact"
        operation.name = "DisassociateCreatedArtifact"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateCreatedArtifactRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateCreatedArtifactResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_discovered_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#DisassociateDiscoveredResource"
        operation.name = "DisassociateDiscoveredResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDiscoveredResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateDiscoveredResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_source_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#DisassociateSourceResource"
        operation.name = "DisassociateSourceResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateSourceResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:import_migration_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#ImportMigrationTask"
        operation.name = "ImportMigrationTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportMigrationTaskRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportMigrationTaskResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:list_application_states, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#ListApplicationStates"
        operation.name = "ListApplicationStates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationStatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationStatesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListApplicationStates.new
      end)
      service.add_operation(:list_created_artifacts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#ListCreatedArtifacts"
        operation.name = "ListCreatedArtifacts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCreatedArtifactsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCreatedArtifactsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListCreatedArtifacts.new
      end)
      service.add_operation(:list_discovered_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#ListDiscoveredResources"
        operation.name = "ListDiscoveredResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDiscoveredResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDiscoveredResourcesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListDiscoveredResources.new
      end)
      service.add_operation(:list_migration_task_updates, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#ListMigrationTaskUpdates"
        operation.name = "ListMigrationTaskUpdates"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMigrationTaskUpdatesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMigrationTaskUpdatesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListMigrationTaskUpdates.new
      end)
      service.add_operation(:list_migration_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#ListMigrationTasks"
        operation.name = "ListMigrationTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMigrationTasksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMigrationTasksResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListMigrationTasks.new
      end)
      service.add_operation(:list_progress_update_streams, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#ListProgressUpdateStreams"
        operation.name = "ListProgressUpdateStreams"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProgressUpdateStreamsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProgressUpdateStreamsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListProgressUpdateStreams.new
      end)
      service.add_operation(:list_source_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#ListSourceResources"
        operation.name = "ListSourceResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSourceResourcesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
        operation[:paginator] = Paginators::ListSourceResources.new
      end)
      service.add_operation(:notify_application_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#NotifyApplicationState"
        operation.name = "NotifyApplicationState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyApplicationStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyApplicationStateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:notify_migration_task_state, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#NotifyMigrationTaskState"
        operation.name = "NotifyMigrationTaskState"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyMigrationTaskStateRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: NotifyMigrationTaskStateResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
        operation.traits = {}
      end)
      service.add_operation(:put_resource_attributes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhub#PutResourceAttributes"
        operation.name = "PutResourceAttributes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourceAttributesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutResourceAttributesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunOperation)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: HomeRegionNotSetException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerError)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidInputException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedOperation)
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
