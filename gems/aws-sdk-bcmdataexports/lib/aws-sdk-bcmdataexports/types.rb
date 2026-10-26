# frozen_string_literal: true

# This is generated code!

module Aws::BCMDataExports
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Includes basic information for a data column such as its description, name, and type.</p>
    # @!attribute name
    #   <p>The column name.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The kind of data a column stores.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for a column.</p>
    #   @return [String]
    class Column < Struct.new(
      nil,
      :name,
      :type,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export
    #   <p>The details of the export, including data query, name, description, and destination configuration.</p>
    #   @return [Types::Export]
    # @!attribute resource_tags
    #   <p>An optional list of tags to associate with the specified export. Each tag consists of a key and a value, and each key must be unique for the resource.</p>
    #   @return [Array<Types::ResourceTag>]
    class CreateExportRequest < Struct.new(
      nil,
      :export,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    class CreateExportResponse < Struct.new(
      nil,
      :export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The SQL query of column selections and row filters from the data table you want.</p>
    # @!attribute query_statement
    #   <p>The query statement.</p>
    #   @return [String]
    # @!attribute table_configurations
    #   <p>The table configuration.</p>
    #   @return [Hash<String, Hash<String, String>>]
    class DataQuery < Struct.new(
      nil,
      :query_statement,
      :table_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    class DeleteExportRequest < Struct.new(
      nil,
      :export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    class DeleteExportResponse < Struct.new(
      nil,
      :export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The destinations used for data exports.</p>
    # @!attribute s3_destination
    #   <p>An object that describes the destination of the data exports file.</p>
    #   @return [Types::S3Destination]
    class DestinationConfigurations < Struct.new(
      nil,
      :s3_destination,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The reference for the data export update.</p>
    # @!attribute execution_id
    #   <p>The ID for this specific execution.</p>
    #   @return [String]
    # @!attribute execution_status
    #   <p>The status of this specific execution.</p>
    #   @return [Types::ExecutionStatus]
    class ExecutionReference < Struct.new(
      nil,
      :execution_id,
      :execution_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the execution.</p>
    # @!attribute status_code
    #   <p>The code for the status of the execution.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the failed status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time when the execution was created.</p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The time when the execution was completed.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time when the execution was last updated.</p>
    #   @return [Time]
    class ExecutionStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      :created_at,
      :completed_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details that are available for an export.</p>
    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of this specific data export.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for this specific data export.</p>
    #   @return [String]
    # @!attribute data_query
    #   <p>The data query for this specific data export.</p>
    #   @return [Types::DataQuery]
    # @!attribute destination_configurations
    #   <p>The destination configuration for this specific data export.</p>
    #   @return [Types::DestinationConfigurations]
    # @!attribute refresh_cadence
    #   <p>The cadence for Amazon Web Services to update the export in your S3 bucket.</p>
    #   @return [Types::RefreshCadence]
    class Export < Struct.new(
      nil,
      :export_arn,
      :name,
      :description,
      :data_query,
      :destination_configurations,
      :refresh_cadence,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The reference details for a given export.</p>
    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    # @!attribute export_name
    #   <p>The name of this specific data export.</p>
    #   @return [String]
    # @!attribute export_status
    #   <p>The status of this specific data export.</p>
    #   @return [Types::ExportStatus]
    class ExportReference < Struct.new(
      nil,
      :export_arn,
      :export_name,
      :export_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the data export.</p>
    # @!attribute status_code
    #   <p>The status code for the request.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The description for the status code.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the export was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the export was updated.</p>
    #   @return [Time]
    # @!attribute last_refreshed_at
    #   <p>The timestamp of when the export was last generated.</p>
    #   @return [Time]
    class ExportStatus < Struct.new(
      nil,
      :status_code,
      :status_reason,
      :created_at,
      :last_updated_at,
      :last_refreshed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) of the Export object that generated this specific execution.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The ID for this specific execution.</p>
    #   @return [String]
    class GetExecutionRequest < Struct.new(
      nil,
      :export_arn,
      :execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The ID for this specific execution.</p>
    #   @return [String]
    # @!attribute export
    #   <p>The export data for this specific execution. This export data is a snapshot from when the execution was generated. The data could be different from the current export data if the export was updated since the execution was generated.</p>
    #   @return [Types::Export]
    # @!attribute execution_status
    #   <p>The status of this specific execution.</p>
    #   @return [Types::ExecutionStatus]
    class GetExecutionResponse < Struct.new(
      nil,
      :execution_id,
      :export,
      :execution_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    class GetExportRequest < Struct.new(
      nil,
      :export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export
    #   <p>The data for this specific export.</p>
    #   @return [Types::Export]
    # @!attribute export_status
    #   <p>The status of this specific export.</p>
    #   @return [Types::ExportStatus]
    class GetExportResponse < Struct.new(
      nil,
      :export,
      :export_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute table_properties
    #   <p>TableProperties are additional configurations you can provide to change the data and schema of a table. Each table can have different TableProperties. Tables are not required to have any TableProperties. Each table property has a default value that it assumes if not specified.</p>
    #   @return [Hash<String, String>]
    class GetTableRequest < Struct.new(
      nil,
      :table_name,
      :table_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The table description.</p>
    #   @return [String]
    # @!attribute table_properties
    #   <p>TableProperties are additional configurations you can provide to change the data and schema of a table. Each table can have different TableProperties. Tables are not required to have any TableProperties. Each table property has a default value that it assumes if not specified.</p>
    #   @return [Hash<String, String>]
    # @!attribute schema
    #   <p>The schema of the table.</p>
    #   @return [Array<Types::Column>]
    class GetTableResponse < Struct.new(
      nil,
      :table_name,
      :description,
      :table_properties,
      :schema,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error on the server occurred during the processing of your request. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListExecutionsRequest < Struct.new(
      nil,
      :export_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute executions
    #   <p>The list of executions.</p>
    #   @return [Array<Types::ExecutionReference>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListExecutionsResponse < Struct.new(
      nil,
      :executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListExportsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute exports
    #   <p>The details of the exports, including name and export status.</p>
    #   @return [Array<Types::ExportReference>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListExportsResponse < Struct.new(
      nil,
      :exports,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    #   @return [Integer]
    class ListTablesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tables
    #   <p>The list of tables.</p>
    #   @return [Array<Types::Table>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListTablesResponse < Struct.new(
      nil,
      :tables,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects that are returned for the request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_tags
    #   <p>An optional list of tags to associate with the specified export. Each tag consists of a key and a value, and each key must be unique for the resource.</p>
    #   @return [Array<Types::ResourceTag>]
    # @!attribute next_token
    #   <p>The token to retrieve the next set of results.</p>
    #   @return [String]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :resource_tags,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The cadence for Amazon Web Services to update the data export in your S3 bucket.</p>
    # @!attribute frequency
    #   <p>The frequency that data exports are updated. The export refreshes each time the source data updates, up to three times daily.</p>
    #   @return [String]
    class RefreshCadence < Struct.new(
      nil,
      :frequency,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified Amazon Resource Name (ARN) in the request doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that was not found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that was not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The tag structure that contains a tag key and value.</p>
    # @!attribute key
    #   <p>The key that's associated with the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that's associated with the tag.</p>
    #   @return [String]
    class ResourceTag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the destination Amazon Simple Storage Service (Amazon S3) bucket name and object keys of a data exports file.</p>
    # @!attribute s3_bucket
    #   <p>The name of the Amazon S3 bucket used as the destination of a data export file.</p>
    #   @return [String]
    # @!attribute s3_bucket_owner
    #   <p>The Amazon Web Services account ID that owns the S3 bucket used as the destination for the data export.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The S3 path prefix you want prepended to the name of your data export.</p>
    #   @return [String]
    # @!attribute s3_region
    #   <p>The S3 bucket Region.</p>
    #   @return [String]
    # @!attribute s3_output_configurations
    #   <p>The output configuration for the data export.</p>
    #   @return [Types::S3OutputConfigurations]
    class S3Destination < Struct.new(
      nil,
      :s3_bucket,
      :s3_bucket_owner,
      :s3_prefix,
      :s3_region,
      :s3_output_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The compression type, file format, and overwrite preference for the data export.</p>
    # @!attribute output_type
    #   <p>The output type for the data export.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The file format for the data export.</p>
    #   @return [String]
    # @!attribute compression
    #   <p>The compression type for the data export.</p>
    #   @return [String]
    # @!attribute overwrite
    #   <p>The rule to follow when generating a version of the data export file. You have the choice to overwrite the previous version or to be delivered in addition to the previous versions. Overwriting exports can save on Amazon S3 storage costs. Creating new export versions allows you to track the changes in cost and usage data over time.</p>
    #   @return [String]
    class S3OutputConfigurations < Struct.new(
      nil,
      :output_type,
      :format,
      :compression,
      :overwrite,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of resources you can create, or exceeded the size of an individual resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that exceeded quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that exceeded quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code that was exceeded.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code that exceeded quota. It will always be “AWSBillingAndCostManagementDataExports”.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :quota_code,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for the data export table.</p>
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the table.</p>
    #   @return [String]
    # @!attribute table_properties
    #   <p>The properties for the table.</p>
    #   @return [Array<Types::TablePropertyDescription>]
    class Table < Struct.new(
      nil,
      :table_name,
      :description,
      :table_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties for the data export table.</p>
    # @!attribute name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute valid_values
    #   <p>The valid values for the table.</p>
    #   @return [Array<String>]
    # @!attribute default_value
    #   <p>The default value for the table.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the table.</p>
    #   @return [String]
    class TablePropertyDescription < Struct.new(
      nil,
      :name,
      :valid_values,
      :default_value,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute resource_tags
    #   <p>The tags to associate with the resource. Each tag consists of a key and a value, and each key must be unique for the resource.</p>
    #   @return [Array<Types::ResourceTag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :resource_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code that exceeded the throttling limit.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code that exceeded the throttling limit. It will always be “AWSBillingAndCostManagementDataExports”.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :quota_code,
      :service_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier for the resource.</p>
    #   @return [String]
    # @!attribute resource_tag_keys
    #   <p>The tag keys that are associated with the resource ARN.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :resource_tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    # @!attribute export
    #   <p>The name and query details for the export.</p>
    #   @return [Types::Export]
    class UpdateExportRequest < Struct.new(
      nil,
      :export_arn,
      :export,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_arn
    #   <p>The Amazon Resource Name (ARN) for this export.</p>
    #   @return [String]
    class UpdateExportResponse < Struct.new(
      nil,
      :export_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation exception.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The list of fields that are invalid.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input failed to meet the constraints specified by the Amazon Web Services service in a specified field.</p>
    # @!attribute name
    #   <p>The field name where the invalid entry was detected.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message with the reason for the validation exception error.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
