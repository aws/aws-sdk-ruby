# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BCMDataExports
  module Types

    # Includes basic information for a data column such as its description,
    # name, and type.
    #
    # @!attribute [rw] description
    #   The description for a column.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The column name.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The kind of data a column stores.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/Column AWS API Documentation
    #
    class Column < Struct.new(
      :description,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export
    #   The details of the export, including data query, name, description,
    #   and destination configuration.
    #   @return [Types::Export]
    #
    # @!attribute [rw] resource_tags
    #   An optional list of tags to associate with the specified export.
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/CreateExportRequest AWS API Documentation
    #
    class CreateExportRequest < Struct.new(
      :export,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/CreateExportResponse AWS API Documentation
    #
    class CreateExportResponse < Struct.new(
      :export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SQL query of column selections and row filters from the data table
    # you want.
    #
    # @!attribute [rw] query_statement
    #   The query statement.
    #   @return [String]
    #
    # @!attribute [rw] table_configurations
    #   The table configuration.
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/DataQuery AWS API Documentation
    #
    class DataQuery < Struct.new(
      :query_statement,
      :table_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/DeleteExportRequest AWS API Documentation
    #
    class DeleteExportRequest < Struct.new(
      :export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/DeleteExportResponse AWS API Documentation
    #
    class DeleteExportResponse < Struct.new(
      :export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destinations used for data exports.
    #
    # @!attribute [rw] s3_destination
    #   An object that describes the destination of the data exports file.
    #   @return [Types::S3Destination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/DestinationConfigurations AWS API Documentation
    #
    class DestinationConfigurations < Struct.new(
      :s3_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference for the data export update.
    #
    # @!attribute [rw] execution_id
    #   The ID for this specific execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The status of this specific execution.
    #   @return [Types::ExecutionStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ExecutionReference AWS API Documentation
    #
    class ExecutionReference < Struct.new(
      :execution_id,
      :execution_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the execution.
    #
    # @!attribute [rw] completed_at
    #   The time when the execution was completed.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The time when the execution was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time when the execution was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The code for the status of the execution.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the failed status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ExecutionStatus AWS API Documentation
    #
    class ExecutionStatus < Struct.new(
      :completed_at,
      :created_at,
      :last_updated_at,
      :status_code,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details that are available for an export.
    #
    # @!attribute [rw] data_query
    #   The data query for this specific data export.
    #   @return [Types::DataQuery]
    #
    # @!attribute [rw] description
    #   The description for this specific data export.
    #   @return [String]
    #
    # @!attribute [rw] destination_configurations
    #   The destination configuration for this specific data export.
    #   @return [Types::DestinationConfigurations]
    #
    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of this specific data export.
    #   @return [String]
    #
    # @!attribute [rw] refresh_cadence
    #   The cadence for Amazon Web Services to update the export in your S3
    #   bucket.
    #   @return [Types::RefreshCadence]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/Export AWS API Documentation
    #
    class Export < Struct.new(
      :data_query,
      :description,
      :destination_configurations,
      :export_arn,
      :name,
      :refresh_cadence)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference details for a given export.
    #
    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @!attribute [rw] export_name
    #   The name of this specific data export.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of this specific data export.
    #   @return [Types::ExportStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ExportReference AWS API Documentation
    #
    class ExportReference < Struct.new(
      :export_arn,
      :export_name,
      :export_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the data export.
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the export was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_refreshed_at
    #   The timestamp of when the export was last generated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the export was updated.
    #   @return [Time]
    #
    # @!attribute [rw] status_code
    #   The status code for the request.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The description for the status code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ExportStatus AWS API Documentation
    #
    class ExportStatus < Struct.new(
      :created_at,
      :last_refreshed_at,
      :last_updated_at,
      :status_code,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   The ID for this specific execution.
    #   @return [String]
    #
    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) of the Export object that generated
    #   this specific execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/GetExecutionRequest AWS API Documentation
    #
    class GetExecutionRequest < Struct.new(
      :execution_id,
      :export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   The ID for this specific execution.
    #   @return [String]
    #
    # @!attribute [rw] execution_status
    #   The status of this specific execution.
    #   @return [Types::ExecutionStatus]
    #
    # @!attribute [rw] export
    #   The export data for this specific execution. This export data is a
    #   snapshot from when the execution was generated. The data could be
    #   different from the current export data if the export was updated
    #   since the execution was generated.
    #   @return [Types::Export]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/GetExecutionResponse AWS API Documentation
    #
    class GetExecutionResponse < Struct.new(
      :execution_id,
      :execution_status,
      :export)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/GetExportRequest AWS API Documentation
    #
    class GetExportRequest < Struct.new(
      :export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export
    #   The data for this specific export.
    #   @return [Types::Export]
    #
    # @!attribute [rw] export_status
    #   The status of this specific export.
    #   @return [Types::ExportStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/GetExportResponse AWS API Documentation
    #
    class GetExportResponse < Struct.new(
      :export,
      :export_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_properties
    #   TableProperties are additional configurations you can provide to
    #   change the data and schema of a table. Each table can have different
    #   TableProperties. Tables are not required to have any
    #   TableProperties. Each table property has a default value that it
    #   assumes if not specified.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/GetTableRequest AWS API Documentation
    #
    class GetTableRequest < Struct.new(
      :table_name,
      :table_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The table description.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema of the table.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_properties
    #   TableProperties are additional configurations you can provide to
    #   change the data and schema of a table. Each table can have different
    #   TableProperties. Tables are not required to have any
    #   TableProperties. Each table property has a default value that it
    #   assumes if not specified.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/GetTableResponse AWS API Documentation
    #
    class GetTableResponse < Struct.new(
      :description,
      :schema,
      :table_name,
      :table_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error on the server occurred during the processing of your request.
    # Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that are returned for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ListExecutionsRequest AWS API Documentation
    #
    class ListExecutionsRequest < Struct.new(
      :export_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] executions
    #   The list of executions.
    #   @return [Array<Types::ExecutionReference>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ListExecutionsResponse AWS API Documentation
    #
    class ListExecutionsResponse < Struct.new(
      :executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that are returned for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ListExportsRequest AWS API Documentation
    #
    class ListExportsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exports
    #   The details of the exports, including name and export status.
    #   @return [Array<Types::ExportReference>]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ListExportsResponse AWS API Documentation
    #
    class ListExportsResponse < Struct.new(
      :exports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that are returned for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ListTablesRequest AWS API Documentation
    #
    class ListTablesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] tables
    #   The list of tables.
    #   @return [Array<Types::Table>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ListTablesResponse AWS API Documentation
    #
    class ListTablesResponse < Struct.new(
      :next_token,
      :tables)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of objects that are returned for the request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :max_results,
      :next_token,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token to retrieve the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   An optional list of tags to associate with the specified export.
    #   Each tag consists of a key and a value, and each key must be unique
    #   for the resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :next_token,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cadence for Amazon Web Services to update the data export in your
    # S3 bucket.
    #
    # @!attribute [rw] frequency
    #   The frequency that data exports are updated. The export refreshes
    #   each time the source data updates, up to three times daily.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/RefreshCadence AWS API Documentation
    #
    class RefreshCadence < Struct.new(
      :frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified Amazon Resource Name (ARN) in the request doesn't
    # exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that was not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that was not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tag structure that contains a tag key and value.
    #
    # @!attribute [rw] key
    #   The key that's associated with the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value that's associated with the tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the destination Amazon Simple Storage Service (Amazon S3)
    # bucket name and object keys of a data exports file.
    #
    # @!attribute [rw] s3_bucket
    #   The name of the Amazon S3 bucket used as the destination of a data
    #   export file.
    #   @return [String]
    #
    # @!attribute [rw] s3_output_configurations
    #   The output configuration for the data export.
    #   @return [Types::S3OutputConfigurations]
    #
    # @!attribute [rw] s3_prefix
    #   The S3 path prefix you want prepended to the name of your data
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] s3_region
    #   The S3 bucket Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/S3Destination AWS API Documentation
    #
    class S3Destination < Struct.new(
      :s3_bucket,
      :s3_output_configurations,
      :s3_prefix,
      :s3_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # The compression type, file format, and overwrite preference for the
    # data export.
    #
    # @!attribute [rw] compression
    #   The compression type for the data export.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The file format for the data export.
    #   @return [String]
    #
    # @!attribute [rw] output_type
    #   The output type for the data export.
    #   @return [String]
    #
    # @!attribute [rw] overwrite
    #   The rule to follow when generating a version of the data export
    #   file. You have the choice to overwrite the previous version or to be
    #   delivered in addition to the previous versions. Overwriting exports
    #   can save on Amazon S3 storage costs. Creating new export versions
    #   allows you to track the changes in cost and usage data over time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/S3OutputConfigurations AWS API Documentation
    #
    class S3OutputConfigurations < Struct.new(
      :compression,
      :format,
      :output_type,
      :overwrite)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit on the number of resources you can create,
    # or exceeded the size of an individual resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code that exceeded quota. It will always be
    #   “AWSBillingAndCostManagementDataExports”.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for the data export table.
    #
    # @!attribute [rw] description
    #   The description for the table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] table_properties
    #   The properties for the table.
    #   @return [Array<Types::TablePropertyDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/Table AWS API Documentation
    #
    class Table < Struct.new(
      :description,
      :table_name,
      :table_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties for the data export table.
    #
    # @!attribute [rw] default_value
    #   The default value for the table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the table.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] valid_values
    #   The valid values for the table.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/TablePropertyDescription AWS API Documentation
    #
    class TablePropertyDescription < Struct.new(
      :default_value,
      :description,
      :name,
      :valid_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   The tags to associate with the resource. Each tag consists of a key
    #   and a value, and each key must be unique for the resource.
    #   @return [Array<Types::ResourceTag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code that exceeded the throttling limit.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code that exceeded the throttling limit. It will always
    #   be “AWSBillingAndCostManagementDataExports”.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The unique identifier for the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_keys
    #   The tag keys that are associated with the resource ARN.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :resource_tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] export
    #   The name and query details for the export.
    #   @return [Types::Export]
    #
    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/UpdateExportRequest AWS API Documentation
    #
    class UpdateExportRequest < Struct.new(
      :export,
      :export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_arn
    #   The Amazon Resource Name (ARN) for this export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/UpdateExportResponse AWS API Documentation
    #
    class UpdateExportResponse < Struct.new(
      :export_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] fields
    #   The list of fields that are invalid.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :fields,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by the Amazon Web
    # Services service in a specified field.
    #
    # @!attribute [rw] message
    #   A message with the reason for the validation exception error.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The field name where the invalid entry was detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bcm-data-exports-2023-11-26/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

