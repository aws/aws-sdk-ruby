# frozen_string_literal: true

# This is generated code!

module Aws::OSIS
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have permissions to access the resource.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Options that specify the configuration of a persistent buffer.
    #    To configure how OpenSearch Ingestion encrypts this data, set the <code>EncryptionAtRestOptions</code>. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/osis-features-overview.html#persistent-buffering">Persistent buffering</a>.</p>
    # @!attribute persistent_buffer_enabled
    #   <p>Whether persistent buffering should be enabled.</p>
    #   @return [Boolean]
    class BufferOptions < Struct.new(
      :persistent_buffer_enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Progress details for a specific stage of a pipeline configuration change.</p>
    # @!attribute name
    #   <p>The name of the stage.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the stage that the change is in.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the stage.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The most recent updated timestamp of the stage.</p>
    #   @return [Time]
    class ChangeProgressStage < Struct.new(
      :name,
      :status,
      :description,
      :last_updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The progress details of a pipeline configuration change.</p>
    # @!attribute start_time
    #   <p>The time at which the configuration change is made on the pipeline.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The overall status of the pipeline configuration change.</p>
    #   @return [String]
    # @!attribute total_number_of_stages
    #   <p>The total number of stages required for the pipeline configuration change.</p>
    #   @return [Integer]
    # @!attribute change_progress_stages
    #   <p>Information about the stages that the pipeline is going through to perform the configuration change.</p>
    #   @return [Array<Types::ChangeProgressStage>]
    class ChangeProgressStatus < Struct.new(
      :start_time,
      :status,
      :total_number_of_stages,
      :change_progress_stages,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_number_of_stages] = 0 unless options.key?(:total_number_of_stages)
        super
      end
    end

    # <p>The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch.</p>
    # @!attribute log_group
    #   <p>The name of the CloudWatch Logs group to send pipeline logs to. You can specify an existing
    #      log group or create a new one. For example,
    #      <code>/aws/vendedlogs/OpenSearchService/pipelines</code>.</p>
    #   @return [String]
    class CloudWatchLogDestination < Struct.new(
      :log_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The client attempted to remove a resource that is currently in use.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the OpenSearch Ingestion pipeline to create. Pipeline names are unique across the pipelines
    #      owned by an account within an Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute min_units
    #   <p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    #   @return [Integer]
    # @!attribute max_units
    #   <p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    #   @return [Integer]
    # @!attribute pipeline_configuration_body
    #   <p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as
    #      a string or within a .yaml file. If you provide the configuration as a string, each new line must
    #      be escaped with <code>\n</code>.</p>
    #   @return [String]
    # @!attribute log_publishing_options
    #   <p>Key-value pairs to configure log publishing.</p>
    #   @return [Types::LogPublishingOptions]
    # @!attribute vpc_options
    #   <p>Container for the values required to configure VPC access for the pipeline. If you don't specify
    #      these values, OpenSearch Ingestion creates the pipeline with a public endpoint.</p>
    #   @return [Types::VpcOptions]
    # @!attribute buffer_options
    #   <p>Key-value pairs to configure persistent buffering for the pipeline.</p>
    #   @return [Types::BufferOptions]
    # @!attribute encryption_at_rest_options
    #   <p>Key-value pairs to configure encryption for data that is written to a persistent buffer.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute tags
    #   <p>List of tags to add to the pipeline upon creation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute pipeline_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that provides
    #      the required permissions for a pipeline to read from the source and write to the sink.
    #      For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline-security-overview.html">Setting up roles and users in Amazon OpenSearch Ingestion</a>.</p>
    #   @return [String]
    class CreatePipelineRequest < Struct.new(
      :pipeline_name,
      :min_units,
      :max_units,
      :pipeline_configuration_body,
      :log_publishing_options,
      :vpc_options,
      :buffer_options,
      :encryption_at_rest_options,
      :tags,
      :pipeline_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline
    #   <p>Container for information about the created pipeline.</p>
    #   @return [Types::Pipeline]
    class CreatePipelineResponse < Struct.new(
      :pipeline,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline to delete.</p>
    #   @return [String]
    class DeletePipelineRequest < Struct.new(
      :pipeline_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeletePipelineResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Exception is thrown when an operation has been disabled.</p>
    # @!attribute message
    #   @return [String]
    class DisabledOperationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Options to control how OpenSearch encrypts buffer data.</p>
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key used to encrypt buffer data.
    #      By default, data is encrypted using an Amazon Web Services owned key.</p>
    #   @return [String]
    class EncryptionAtRestOptions < Struct.new(
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprint_name
    #   <p>The name of the blueprint to retrieve.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format format of the blueprint to retrieve.</p>
    #   @return [String]
    class GetPipelineBlueprintRequest < Struct.new(
      :blueprint_name,
      :format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprint
    #   <p>The requested blueprint in YAML format.</p>
    #   @return [Types::PipelineBlueprint]
    # @!attribute format
    #   <p>The format of the blueprint.</p>
    #   @return [String]
    class GetPipelineBlueprintResponse < Struct.new(
      :blueprint,
      :format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    class GetPipelineChangeProgressRequest < Struct.new(
      :pipeline_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute change_progress_statuses
    #   <p>The current status of the change happening on the pipeline.</p>
    #   @return [Array<Types::ChangeProgressStatus>]
    class GetPipelineChangeProgressResponse < Struct.new(
      :change_progress_statuses,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    class GetPipelineRequest < Struct.new(
      :pipeline_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline
    #   <p>Detailed information about the requested pipeline.</p>
    #   @return [Types::Pipeline]
    class GetPipelineResponse < Struct.new(
      :pipeline,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed because of an unknown error, exception, or failure (the failure is
    #    internal to the service).</p>
    # @!attribute message
    #   @return [String]
    class InternalException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An invalid pagination token provided in the request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPaginationTokenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You attempted to create more than the allowed number of tags.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class ListPipelineBlueprintsRequest < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute blueprints
    #   <p>A list of available blueprints for Data Prepper.</p>
    #   @return [Array<Types::PipelineBlueprintSummary>]
    class ListPipelineBlueprintsResponse < Struct.new(
      :blueprints,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #      <code>nextToken</code> to get the next page of results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If your initial <code>ListPipelines</code> operation returns a <code>nextToken</code>, you
    #      can include the returned <code>nextToken</code> in subsequent <code>ListPipelines</code>
    #      operations, which returns results in the next page.</p>
    #   @return [String]
    class ListPipelinesRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>When <code>nextToken</code> is returned, there are more results available. The value of
    #      <code>nextToken</code> is a unique pagination token for each page. Make the call again using
    #      the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute pipelines
    #   <p>A list of all existing Data Prepper pipelines.</p>
    #   @return [Array<Types::PipelineSummary>]
    class ListPipelinesResponse < Struct.new(
      :next_token,
      :pipelines,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline to retrieve tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags associated with the given pipeline.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Container for the values required to configure logging for the pipeline. If you don't
    #    specify these values, OpenSearch Ingestion will not publish logs from your application to
    #    CloudWatch Logs.</p>
    # @!attribute is_logging_enabled
    #   <p>Whether logs should be published.</p>
    #   @return [Boolean]
    # @!attribute cloud_watch_log_destination
    #   <p>The destination for OpenSearch Ingestion logs sent to Amazon CloudWatch Logs. This
    #      parameter is required if <code>IsLoggingEnabled</code> is set to <code>true</code>.</p>
    #   @return [Types::CloudWatchLogDestination]
    class LogPublishingOptions < Struct.new(
      :is_logging_enabled,
      :cloud_watch_log_destination,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an existing OpenSearch Ingestion pipeline.</p>
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline.</p>
    #   @return [String]
    # @!attribute min_units
    #   <p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    #   @return [Integer]
    # @!attribute max_units
    #   <p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the pipeline.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the pipeline.</p>
    #   @return [Types::PipelineStatusReason]
    # @!attribute pipeline_configuration_body
    #   <p>The Data Prepper pipeline configuration in YAML format.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the pipeline was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time when the pipeline was last updated.</p>
    #   @return [Time]
    # @!attribute ingest_endpoint_urls
    #   <p>The ingestion endpoints for the pipeline, which you can send data to.</p>
    #   @return [Array<String>]
    # @!attribute log_publishing_options
    #   <p>Key-value pairs that represent log publishing settings.</p>
    #   @return [Types::LogPublishingOptions]
    # @!attribute vpc_endpoints
    #   <p>The VPC interface endpoints that have access to the pipeline.</p>
    #   @return [Array<Types::VpcEndpoint>]
    # @!attribute buffer_options
    #   <p>Options that specify the configuration of a persistent buffer.
    #      To configure how OpenSearch Ingestion encrypts this data, set the <code>EncryptionAtRestOptions</code>. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/osis-features-overview.html#persistent-buffering">Persistent buffering</a>.</p>
    #   @return [Types::BufferOptions]
    # @!attribute encryption_at_rest_options
    #   <p>Options to control how OpenSearch encrypts buffer data.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute vpc_endpoint_service
    #   <p>The VPC endpoint service name for the pipeline.</p>
    #   @return [String]
    # @!attribute service_vpc_endpoints
    #   <p>A list of VPC endpoints that OpenSearch Ingestion has created to other Amazon Web Services services.</p>
    #   @return [Array<Types::ServiceVpcEndpoint>]
    # @!attribute destinations
    #   <p>Destinations to which the pipeline writes data.</p>
    #   @return [Array<Types::PipelineDestination>]
    # @!attribute tags
    #   <p>A list of tags associated with the given pipeline.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute pipeline_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that provides
    #      the required permissions for a pipeline to read from the source and write to the sink.</p>
    #   @return [String]
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
      :vpc_endpoints,
      :buffer_options,
      :encryption_at_rest_options,
      :vpc_endpoint_service,
      :service_vpc_endpoints,
      :destinations,
      :tags,
      :pipeline_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_units] = 0 unless options.key?(:min_units)
        options[:max_units] = 0 unless options.key?(:max_units)
        super
      end
    end

    # <p>Container for information about an OpenSearch Ingestion blueprint.</p>
    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute pipeline_configuration_body
    #   <p>The YAML configuration of the blueprint.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the blueprint.</p>
    #   @return [String]
    # @!attribute display_description
    #   <p>A description of the blueprint.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The name of the service that the blueprint is associated with.</p>
    #   @return [String]
    # @!attribute use_case
    #   <p>The use case that the blueprint relates to.</p>
    #   @return [String]
    class PipelineBlueprint < Struct.new(
      :blueprint_name,
      :pipeline_configuration_body,
      :display_name,
      :display_description,
      :service,
      :use_case,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of an OpenSearch Ingestion blueprint.</p>
    # @!attribute blueprint_name
    #   <p>The name of the blueprint.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the blueprint.</p>
    #   @return [String]
    # @!attribute display_description
    #   <p>A description of the blueprint.</p>
    #   @return [String]
    # @!attribute service
    #   <p>The name of the service that the blueprint is associated with.</p>
    #   @return [String]
    # @!attribute use_case
    #   <p>The use case that the blueprint relates to.</p>
    #   @return [String]
    class PipelineBlueprintSummary < Struct.new(
      :blueprint_name,
      :display_name,
      :display_description,
      :service,
      :use_case,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An object representing the destination of a pipeline.</p>
    # @!attribute service_name
    #   <p>The name of the service receiving data from the pipeline.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint receiving data from the pipeline.</p>
    #   @return [String]
    class PipelineDestination < Struct.new(
      :service_name,
      :endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a pipeline's current status.</p>
    # @!attribute description
    #   <p>A description of why a pipeline has a certain status.</p>
    #   @return [String]
    class PipelineStatusReason < Struct.new(
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information for an OpenSearch Ingestion pipeline.</p>
    # @!attribute status
    #   <p>The current status of the pipeline.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>Information about a pipeline's current status.</p>
    #   @return [Types::PipelineStatusReason]
    # @!attribute pipeline_name
    #   <p>The name of the pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline.</p>
    #   @return [String]
    # @!attribute min_units
    #   <p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    #   @return [Integer]
    # @!attribute max_units
    #   <p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    #   @return [Integer]
    # @!attribute created_at
    #   <p>The date and time when the pipeline was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The date and time when the pipeline was last updated.</p>
    #   @return [Time]
    # @!attribute destinations
    #   <p>A list of destinations to which the pipeline writes data.</p>
    #   @return [Array<Types::PipelineDestination>]
    # @!attribute tags
    #   <p>A list of tags associated with the given pipeline.</p>
    #   @return [Array<Types::Tag>]
    class PipelineSummary < Struct.new(
      :status,
      :status_reason,
      :pipeline_name,
      :pipeline_arn,
      :min_units,
      :max_units,
      :created_at,
      :last_updated_at,
      :destinations,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You attempted to create a resource that already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>You attempted to access or delete a resource that does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A container for information about VPC endpoints that were created to other services</p>
    # @!attribute service_name
    #   <p>The name of the service for which a VPC endpoint was created.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the VPC endpoint that was created.</p>
    #   @return [String]
    class ServiceVpcEndpoint < Struct.new(
      :service_name,
      :vpc_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline to start.</p>
    #   @return [String]
    class StartPipelineRequest < Struct.new(
      :pipeline_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline
    #   <p>Information about an existing OpenSearch Ingestion pipeline.</p>
    #   @return [Types::Pipeline]
    class StartPipelineResponse < Struct.new(
      :pipeline,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline to stop.</p>
    #   @return [String]
    class StopPipelineRequest < Struct.new(
      :pipeline_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline
    #   <p>Information about an existing OpenSearch Ingestion pipeline.</p>
    #   @return [Types::Pipeline]
    class StopPipelineResponse < Struct.new(
      :pipeline,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag (key-value pair) for an OpenSearch Ingestion pipeline.</p>
    # @!attribute key
    #   <p>The tag key. Tag keys must be unique for the pipeline to which they are attached.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value assigned to the corresponding tag key. Tag values can be null and don't have to
    #      be unique in a tag set. For example, you can have a key value pair in a tag set of
    #      <code>project : Trinity</code> and <code>cost-center : Trinity</code>
    #            </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value tags to add to the pipeline.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline to update.</p>
    #   @return [String]
    # @!attribute min_units
    #   <p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    #   @return [Integer]
    # @!attribute max_units
    #   <p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs)</p>
    #   @return [Integer]
    # @!attribute pipeline_configuration_body
    #   <p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as
    #      a string or within a .yaml file. If you provide the configuration as a string, each new line must
    #      be escaped with <code>\n</code>.</p>
    #   @return [String]
    # @!attribute log_publishing_options
    #   <p>Key-value pairs to configure log publishing.</p>
    #   @return [Types::LogPublishingOptions]
    # @!attribute buffer_options
    #   <p>Key-value pairs to configure persistent buffering for the pipeline.</p>
    #   @return [Types::BufferOptions]
    # @!attribute encryption_at_rest_options
    #   <p>Key-value pairs to configure encryption for data that is written to a persistent buffer.</p>
    #   @return [Types::EncryptionAtRestOptions]
    # @!attribute pipeline_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that provides
    #      the required permissions for a pipeline to read from the source and write to the sink.
    #      For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline-security-overview.html">Setting up roles and users in Amazon OpenSearch Ingestion</a>.</p>
    #   @return [String]
    class UpdatePipelineRequest < Struct.new(
      :pipeline_name,
      :min_units,
      :max_units,
      :pipeline_configuration_body,
      :log_publishing_options,
      :buffer_options,
      :encryption_at_rest_options,
      :pipeline_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline
    #   <p>Container for information about the updated pipeline.</p>
    #   @return [Types::Pipeline]
    class UpdatePipelineResponse < Struct.new(
      :pipeline,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute pipeline_configuration_body
    #   <p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as
    #      a string or within a .yaml file. If you provide the configuration as a string, each new line must
    #      be escaped with <code>\n</code>.</p>
    #   @return [String]
    class ValidatePipelineRequest < Struct.new(
      :pipeline_configuration_body,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute is_valid
    #   <p>A boolean indicating whether or not the pipeline configuration is valid.</p>
    #   @return [Boolean]
    # @!attribute errors
    #   <p>A list of errors if the configuration is invalid.</p>
    #   @return [Array<Types::ValidationMessage>]
    class ValidatePipelineResponse < Struct.new(
      :is_valid,
      :errors,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An exception for missing or invalid input fields.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A validation message associated with a <code>ValidatePipeline</code> request in OpenSearch
    #    Ingestion.</p>
    # @!attribute message
    #   <p>The validation message.</p>
    #   @return [String]
    class ValidationMessage < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Options for attaching a VPC to pipeline.</p>
    # @!attribute attach_to_vpc
    #   <p>Whether a VPC is attached to the pipeline.</p>
    #   @return [Boolean]
    # @!attribute cidr_block
    #   <p>The CIDR block to be reserved for OpenSearch Ingestion to create elastic network interfaces (ENIs).</p>
    #   @return [String]
    class VpcAttachmentOptions < Struct.new(
      :attach_to_vpc,
      :cidr_block,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An OpenSearch Ingestion-managed VPC endpoint that will access one or more
    #    pipelines.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The unique identifier of the endpoint.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID for your VPC. Amazon Web Services PrivateLink generates this value when you create a
    #      VPC.</p>
    #   @return [String]
    # @!attribute vpc_options
    #   <p>Information about the VPC, including associated subnets and security groups.</p>
    #   @return [Types::VpcOptions]
    class VpcEndpoint < Struct.new(
      :vpc_endpoint_id,
      :vpc_id,
      :vpc_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Options that specify the subnets and security groups for an OpenSearch Ingestion
    #    VPC endpoint.</p>
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs associated with the VPC endpoint.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of security groups associated with the VPC endpoint.</p>
    #   @return [Array<String>]
    # @!attribute vpc_attachment_options
    #   <p>Options for attaching a VPC to a pipeline.</p>
    #   @return [Types::VpcAttachmentOptions]
    # @!attribute vpc_endpoint_management
    #   <p>Defines whether you or Amazon OpenSearch Ingestion service create and manage the VPC endpoint configured for the pipeline.</p>
    #   @return [String]
    class VpcOptions < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :vpc_attachment_options,
      :vpc_endpoint_management,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
