# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OSIS
  module Types

    # You don't have permissions to access the resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # Progress details for a specific stage of a pipeline configuration
    # change.
    #
    # @!attribute [rw] name
    #   The name of the stage.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the stage that the change is in.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the stage.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The most recent updated timestamp of the stage.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ChangeProgressStage AWS API Documentation
    #
    class ChangeProgressStage < Struct.new(
      :name,
      :status,
      :description,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The progress details of a pipeline configuration change.
    #
    # @!attribute [rw] start_time
    #   The time at which the configuration change is made on the pipeline.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The overall status of the pipeline configuration change.
    #   @return [String]
    #
    # @!attribute [rw] total_number_of_stages
    #   The total number of stages required for the pipeline configuration
    #   change.
    #   @return [Integer]
    #
    # @!attribute [rw] change_progress_stages
    #   Information about the stages that the pipeline is going through to
    #   perform the configuration change.
    #   @return [Array<Types::ChangeProgressStage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ChangeProgressStatus AWS API Documentation
    #
    class ChangeProgressStatus < Struct.new(
      :start_time,
      :status,
      :total_number_of_stages,
      :change_progress_stages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination for OpenSearch Ingestion logs sent to Amazon
    # CloudWatch.
    #
    # @!attribute [rw] log_group
    #   The name of the CloudWatch Logs group to send pipeline logs to. You
    #   can specify an existing log group or create a new one. For example,
    #   `/aws/OpenSearchService/IngestionService/my-pipeline`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/CloudWatchLogDestination AWS API Documentation
    #
    class CloudWatchLogDestination < Struct.new(
      :log_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client attempted to remove a resource that is currently in use.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # @!attribute [rw] pipeline_name
    #   The name of the OpenSearch Ingestion pipeline to create. Pipeline
    #   names are unique across the pipelines owned by an account within an
    #   Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] min_units
    #   The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
    #   @return [Integer]
    #
    # @!attribute [rw] max_units
    #   The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
    #   @return [Integer]
    #
    # @!attribute [rw] pipeline_configuration_body
    #   The pipeline configuration in YAML format. The command accepts the
    #   pipeline configuration as a string or within a .yaml file. If you
    #   provide the configuration as a string, each new line must be escaped
    #   with `\n`.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_options
    #   Key-value pairs to configure log publishing.
    #   @return [Types::LogPublishingOptions]
    #
    # @!attribute [rw] vpc_options
    #   Container for the values required to configure VPC access for the
    #   pipeline. If you don't specify these values, OpenSearch Ingestion
    #   creates the pipeline with a public endpoint.
    #   @return [Types::VpcOptions]
    #
    # @!attribute [rw] tags
    #   List of tags to add to the pipeline upon creation.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/CreatePipelineRequest AWS API Documentation
    #
    class CreatePipelineRequest < Struct.new(
      :pipeline_name,
      :min_units,
      :max_units,
      :pipeline_configuration_body,
      :log_publishing_options,
      :vpc_options,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   Container for information about the created pipeline.
    #   @return [Types::Pipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/CreatePipelineResponse AWS API Documentation
    #
    class CreatePipelineResponse < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/DeletePipelineRequest AWS API Documentation
    #
    class DeletePipelineRequest < Struct.new(
      :pipeline_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/DeletePipelineResponse AWS API Documentation
    #
    class DeletePipelineResponse < Aws::EmptyStructure; end

    # @!attribute [rw] blueprint_name
    #   The name of the blueprint to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipelineBlueprintRequest AWS API Documentation
    #
    class GetPipelineBlueprintRequest < Struct.new(
      :blueprint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint
    #   The requested blueprint in YAML format.
    #   @return [Types::PipelineBlueprint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipelineBlueprintResponse AWS API Documentation
    #
    class GetPipelineBlueprintResponse < Struct.new(
      :blueprint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipelineChangeProgressRequest AWS API Documentation
    #
    class GetPipelineChangeProgressRequest < Struct.new(
      :pipeline_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_progress_statuses
    #   The current status of the change happening on the pipeline.
    #   @return [Array<Types::ChangeProgressStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipelineChangeProgressResponse AWS API Documentation
    #
    class GetPipelineChangeProgressResponse < Struct.new(
      :change_progress_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to get information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipelineRequest AWS API Documentation
    #
    class GetPipelineRequest < Struct.new(
      :pipeline_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   Detailed information about the requested pipeline.
    #   @return [Types::Pipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/GetPipelineResponse AWS API Documentation
    #
    class GetPipelineResponse < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed because of an unknown error, exception, or failure
    # (the failure is internal to the service).
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/InternalException AWS API Documentation
    #
    class InternalException < Aws::EmptyStructure; end

    # An invalid pagination token provided in the request.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/InvalidPaginationTokenException AWS API Documentation
    #
    class InvalidPaginationTokenException < Aws::EmptyStructure; end

    # You attempted to create more than the allowed number of tags.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListPipelineBlueprintsRequest AWS API Documentation
    #
    class ListPipelineBlueprintsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] blueprints
    #   A list of available blueprints for Data Prepper.
    #   @return [Array<Types::PipelineBlueprintSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListPipelineBlueprintsResponse AWS API Documentation
    #
    class ListPipelineBlueprintsResponse < Struct.new(
      :blueprints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   An optional parameter that specifies the maximum number of results
    #   to return. You can use `nextToken` to get the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If your initial `ListPipelines` operation returns a `nextToken`, you
    #   can include the returned `nextToken` in subsequent `ListPipelines`
    #   operations, which returns results in the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListPipelinesRequest AWS API Documentation
    #
    class ListPipelinesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When `nextToken` is returned, there are more results available. The
    #   value of `nextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page.
    #   @return [String]
    #
    # @!attribute [rw] pipelines
    #   A list of all existing Data Prepper pipelines.
    #   @return [Array<Types::PipelineSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListPipelinesResponse AWS API Documentation
    #
    class ListPipelinesResponse < Struct.new(
      :next_token,
      :pipelines)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the pipeline to retrieve tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags associated with the given pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for the values required to configure logging for the
    # pipeline. If you don't specify these values, OpenSearch Ingestion
    # will not publish logs from your application to CloudWatch Logs.
    #
    # @!attribute [rw] is_logging_enabled
    #   Whether logs should be published.
    #   @return [Boolean]
    #
    # @!attribute [rw] cloud_watch_log_destination
    #   The destination for OpenSearch Ingestion logs sent to Amazon
    #   CloudWatch Logs. This parameter is required if `IsLoggingEnabled` is
    #   set to `true`.
    #   @return [Types::CloudWatchLogDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/LogPublishingOptions AWS API Documentation
    #
    class LogPublishingOptions < Struct.new(
      :is_logging_enabled,
      :cloud_watch_log_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an existing OpenSearch Ingestion pipeline.
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_arn
    #   The Amazon Resource Name (ARN) of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] min_units
    #   The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
    #   @return [Integer]
    #
    # @!attribute [rw] max_units
    #   The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the pipeline.
    #   @return [Types::PipelineStatusReason]
    #
    # @!attribute [rw] pipeline_configuration_body
    #   The Data Prepper pipeline configuration in YAML format.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when the pipeline was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] ingest_endpoint_urls
    #   The ingestion endpoints for the pipeline, which you can send data
    #   to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] log_publishing_options
    #   Key-value pairs that represent log publishing settings.
    #   @return [Types::LogPublishingOptions]
    #
    # @!attribute [rw] vpc_endpoints
    #   The VPC interface endpoints that have access to the pipeline.
    #   @return [Array<Types::VpcEndpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/Pipeline AWS API Documentation
    #
    class Pipeline < Struct.new(
      :pipeline_name,
      :pipeline_arn,
      :min_units,
      :max_units,
      :status,
      :status_reason,
      :pipeline_configuration_body,
      :created_at,
      :last_updated_at,
      :ingest_endpoint_urls,
      :log_publishing_options,
      :vpc_endpoints)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for information about an OpenSearch Ingestion blueprint.
    #
    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_configuration_body
    #   The YAML configuration of the blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/PipelineBlueprint AWS API Documentation
    #
    class PipelineBlueprint < Struct.new(
      :blueprint_name,
      :pipeline_configuration_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of an OpenSearch Ingestion blueprint.
    #
    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/PipelineBlueprintSummary AWS API Documentation
    #
    class PipelineBlueprintSummary < Struct.new(
      :blueprint_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a pipeline's current status.
    #
    # @!attribute [rw] description
    #   A description of why a pipeline has a certain status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/PipelineStatusReason AWS API Documentation
    #
    class PipelineStatusReason < Struct.new(
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an OpenSearch Ingestion pipeline.
    #
    # @!attribute [rw] status
    #   The current status of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   Information about a pipeline's current status.
    #   @return [Types::PipelineStatusReason]
    #
    # @!attribute [rw] pipeline_name
    #   The name of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_arn
    #   The Amazon Resource Name (ARN) of the pipeline.
    #   @return [String]
    #
    # @!attribute [rw] min_units
    #   The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
    #   @return [Integer]
    #
    # @!attribute [rw] max_units
    #   The maximum pipeline capacity, in Ingestion Compute Units (ICUs).
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The date and time when the pipeline was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The date and time when the pipeline was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/PipelineSummary AWS API Documentation
    #
    class PipelineSummary < Struct.new(
      :status,
      :status_reason,
      :pipeline_name,
      :pipeline_arn,
      :min_units,
      :max_units,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # You attempted to create a resource that already exists.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Aws::EmptyStructure; end

    # You attempted to access or delete a resource that does not exist.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/StartPipelineRequest AWS API Documentation
    #
    class StartPipelineRequest < Struct.new(
      :pipeline_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   Information about an existing OpenSearch Ingestion pipeline.
    #   @return [Types::Pipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/StartPipelineResponse AWS API Documentation
    #
    class StartPipelineResponse < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/StopPipelineRequest AWS API Documentation
    #
    class StopPipelineRequest < Struct.new(
      :pipeline_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   Information about an existing OpenSearch Ingestion pipeline.
    #   @return [Types::Pipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/StopPipelineResponse AWS API Documentation
    #
    class StopPipelineResponse < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag (key-value pair) for an OpenSearch Ingestion pipeline.
    #
    # @!attribute [rw] key
    #   The tag key. Tag keys must be unique for the pipeline to which they
    #   are attached.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value assigned to the corresponding tag key. Tag values can be
    #   null and don't have to be unique in a tag set. For example, you can
    #   have a key value pair in a tag set of `project : Trinity` and
    #   `cost-center : Trinity`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the pipeline to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value tags to add to the pipeline.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the pipeline to remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] pipeline_name
    #   The name of the pipeline to update.
    #   @return [String]
    #
    # @!attribute [rw] min_units
    #   The minimum pipeline capacity, in Ingestion Compute Units (ICUs).
    #   @return [Integer]
    #
    # @!attribute [rw] max_units
    #   The maximum pipeline capacity, in Ingestion Compute Units (ICUs)
    #   @return [Integer]
    #
    # @!attribute [rw] pipeline_configuration_body
    #   The pipeline configuration in YAML format. The command accepts the
    #   pipeline configuration as a string or within a .yaml file. If you
    #   provide the configuration as a string, each new line must be escaped
    #   with `\n`.
    #   @return [String]
    #
    # @!attribute [rw] log_publishing_options
    #   Key-value pairs to configure log publishing.
    #   @return [Types::LogPublishingOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/UpdatePipelineRequest AWS API Documentation
    #
    class UpdatePipelineRequest < Struct.new(
      :pipeline_name,
      :min_units,
      :max_units,
      :pipeline_configuration_body,
      :log_publishing_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline
    #   Container for information about the updated pipeline.
    #   @return [Types::Pipeline]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/UpdatePipelineResponse AWS API Documentation
    #
    class UpdatePipelineResponse < Struct.new(
      :pipeline)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pipeline_configuration_body
    #   The pipeline configuration in YAML format. The command accepts the
    #   pipeline configuration as a string or within a .yaml file. If you
    #   provide the configuration as a string, each new line must be escaped
    #   with `\n`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ValidatePipelineRequest AWS API Documentation
    #
    class ValidatePipelineRequest < Struct.new(
      :pipeline_configuration_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] is_valid
    #   A boolean indicating whether or not the pipeline configuration is
    #   valid.
    #   @return [Boolean]
    #
    # @!attribute [rw] errors
    #   A list of errors if the configuration is invalid.
    #   @return [Array<Types::ValidationMessage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ValidatePipelineResponse AWS API Documentation
    #
    class ValidatePipelineResponse < Struct.new(
      :is_valid,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception for missing or invalid input fields.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

    # A validation message associated with a `ValidatePipeline` request in
    # OpenSearch Ingestion.
    #
    # @!attribute [rw] message
    #   The validation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/ValidationMessage AWS API Documentation
    #
    class ValidationMessage < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An OpenSearch Ingestion-managed VPC endpoint that will access one or
    # more pipelines.
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The unique identifier of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID for your VPC. Amazon Web Services PrivateLink generates this
    #   value when you create a VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_options
    #   Information about the VPC, including associated subnets and security
    #   groups.
    #   @return [Types::VpcOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/VpcEndpoint AWS API Documentation
    #
    class VpcEndpoint < Struct.new(
      :vpc_endpoint_id,
      :vpc_id,
      :vpc_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options that specify the subnets and security groups for an OpenSearch
    # Ingestion VPC endpoint.
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs associated with the VPC endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security groups associated with the VPC endpoint.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/osis-2022-01-01/VpcOptions AWS API Documentation
    #
    class VpcOptions < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
