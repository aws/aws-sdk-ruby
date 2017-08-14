# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Glue
  module Types

    # @note When making an API call, you may pass Action
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString",
    #         arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #       }
    #
    # @!attribute [rw] job_name
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Action AWS API Documentation
    #
    class Action < Struct.new(
      :job_name,
      :arguments)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchCreatePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_input_list: [ # required
    #           {
    #             values: ["ValueString"],
    #             last_access_time: Time.now,
    #             storage_descriptor: {
    #               columns: [
    #                 {
    #                   name: "NameString", # required
    #                   type: "ColumnTypeString",
    #                   comment: "CommentString",
    #                 },
    #               ],
    #               location: "LocationString",
    #               input_format: "FormatString",
    #               output_format: "FormatString",
    #               compressed: false,
    #               number_of_buckets: 1,
    #               serde_info: {
    #                 name: "NameString",
    #                 serialization_library: "NameString",
    #                 parameters: {
    #                   "KeyString" => "ParametersMapValue",
    #                 },
    #               },
    #               bucket_columns: ["NameString"],
    #               sort_columns: [
    #                 {
    #                   column: "NameString", # required
    #                   sort_order: 1, # required
    #                 },
    #               ],
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #               skewed_info: {
    #                 skewed_column_names: ["NameString"],
    #                 skewed_column_values: ["ColumnValuesString"],
    #                 skewed_column_value_location_maps: {
    #                   "ColumnValuesString" => "ColumnValuesString",
    #                 },
    #               },
    #               stored_as_sub_directories: false,
    #             },
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             last_analyzed_time: Time.now,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the catalog in which the partion is to be created.
    #   Currently, this should be the AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] partition_input_list
    #   A list of `PartitionInput` structures that define the partitions to
    #   be created.
    #   @return [Array<Types::PartitionInput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartitionRequest AWS API Documentation
    #
    class BatchCreatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input_list)
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Errors encountered when trying to create the requested partitions.
    #   @return [Array<Types::PartitionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchCreatePartitionResponse AWS API Documentation
    #
    class BatchCreatePartitionResponse < Struct.new(
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         connection_name_list: ["NameString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] connection_name_list
    #   A list of names of the connections to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnectionRequest AWS API Documentation
    #
    class BatchDeleteConnectionRequest < Struct.new(
      :catalog_id,
      :connection_name_list)
      include Aws::Structure
    end

    # @!attribute [rw] succeeded
    #   A list of names of the connection definitions that were successfully
    #   deleted.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   A map of the names of connections that were not successfully deleted
    #   to error details.
    #   @return [Hash<String,Types::ErrorDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteConnectionResponse AWS API Documentation
    #
    class BatchDeleteConnectionResponse < Struct.new(
      :succeeded,
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeletePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partitions_to_delete: [ # required
    #           {
    #             values: ["ValueString"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be deleted
    #   resides. If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table where the partitions to be deleted is located.
    #   @return [String]
    #
    # @!attribute [rw] partitions_to_delete
    #   A list of `PartitionInput` structures that define the partitions to
    #   be deleted.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartitionRequest AWS API Documentation
    #
    class BatchDeletePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_delete)
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Errors encountered when trying to delete the requested partitions.
    #   @return [Array<Types::PartitionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeletePartitionResponse AWS API Documentation
    #
    class BatchDeletePartitionResponse < Struct.new(
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         tables_to_delete: ["NameString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the tables to delete reside.
    #   @return [String]
    #
    # @!attribute [rw] tables_to_delete
    #   A list of the table to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableRequest AWS API Documentation
    #
    class BatchDeleteTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :tables_to_delete)
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of errors encountered in attempting to delete the specified
    #   tables.
    #   @return [Array<Types::TableError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchDeleteTableResponse AWS API Documentation
    #
    class BatchDeleteTableResponse < Struct.new(
      :errors)
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetPartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partitions_to_get: [ # required
    #           {
    #             values: ["ValueString"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] partitions_to_get
    #   A list of partition values identifying the partitions to retrieve.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartitionRequest AWS API Documentation
    #
    class BatchGetPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partitions_to_get)
      include Aws::Structure
    end

    # @!attribute [rw] partitions
    #   A list of the requested partitions.
    #   @return [Array<Types::Partition>]
    #
    # @!attribute [rw] unprocessed_keys
    #   A list of the partition values in the request for which partions
    #   were not returned.
    #   @return [Array<Types::PartitionValueList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/BatchGetPartitionResponse AWS API Documentation
    #
    class BatchGetPartitionResponse < Struct.new(
      :partitions,
      :unprocessed_keys)
      include Aws::Structure
    end

    # Specifies a table definition in the Data Catalog.
    #
    # @note When making an API call, you may pass CatalogEntry
    #   data as a hash:
    #
    #       {
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] database_name
    #   The database in which the table metadata resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogEntry AWS API Documentation
    #
    class CatalogEntry < Struct.new(
      :database_name,
      :table_name)
      include Aws::Structure
    end

    # A structure containing migration status information.
    #
    # @!attribute [rw] import_completed
    #   True if the migration has completed, or False otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] import_time
    #   The time that the migration was started.
    #   @return [Time]
    #
    # @!attribute [rw] imported_by
    #   The name of the person who initiated the migration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CatalogImportStatus AWS API Documentation
    #
    class CatalogImportStatus < Struct.new(
      :import_completed,
      :import_time,
      :imported_by)
      include Aws::Structure
    end

    # Classifiers are written in Python and triggered during a Crawl Task.
    # You can write your own Classifiers to best categorize your data
    # sources and specify the appropriate schemas to use for them. A
    # Classifier first checks whether a given file is in a format it can
    # handle, and then, if so, creates a schema in the form of a
    # `StructType` object that matches that data format.
    #
    # @!attribute [rw] grok_classifier
    #   A GrokClassifier object.
    #   @return [Types::GrokClassifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Classifier AWS API Documentation
    #
    class Classifier < Struct.new(
      :grok_classifier)
      include Aws::Structure
    end

    # Represents a directional edge in a directed acyclic graph (DAG).
    #
    # @note When making an API call, you may pass CodeGenEdge
    #   data as a hash:
    #
    #       {
    #         source: "CodeGenIdentifier", # required
    #         target: "CodeGenIdentifier", # required
    #         target_parameter: "CodeGenArgName",
    #       }
    #
    # @!attribute [rw] source
    #   The ID of the node at which the edge starts.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The ID of the node at which the edge ends.
    #   @return [String]
    #
    # @!attribute [rw] target_parameter
    #   The target of the edge.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenEdge AWS API Documentation
    #
    class CodeGenEdge < Struct.new(
      :source,
      :target,
      :target_parameter)
      include Aws::Structure
    end

    # Represents a node in a directed acyclic graph (DAG)
    #
    # @note When making an API call, you may pass CodeGenNode
    #   data as a hash:
    #
    #       {
    #         id: "CodeGenIdentifier", # required
    #         node_type: "CodeGenNodeType", # required
    #         args: [ # required
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #         line_number: 1,
    #       }
    #
    # @!attribute [rw] id
    #   A node identifier that is unique within the node's graph.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The type of node this is.
    #   @return [String]
    #
    # @!attribute [rw] args
    #   Properties of the node, in the form of name-value pairs.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @!attribute [rw] line_number
    #   The line number of the node.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenNode AWS API Documentation
    #
    class CodeGenNode < Struct.new(
      :id,
      :node_type,
      :args,
      :line_number)
      include Aws::Structure
    end

    # An argument or property of a node.
    #
    # @note When making an API call, you may pass CodeGenNodeArg
    #   data as a hash:
    #
    #       {
    #         name: "CodeGenArgName", # required
    #         value: "CodeGenArgValue", # required
    #         param: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the argument or property.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the argument or property.
    #   @return [String]
    #
    # @!attribute [rw] param
    #   True if the value is used as a parameter.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CodeGenNodeArg AWS API Documentation
    #
    class CodeGenNodeArg < Struct.new(
      :name,
      :value,
      :param)
      include Aws::Structure
    end

    # A column in a `Table`.
    #
    # @note When making an API call, you may pass Column
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         type: "ColumnTypeString",
    #         comment: "CommentString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the `Column`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The datatype of data in the `Column`.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   Free-form text comment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Column AWS API Documentation
    #
    class Column < Struct.new(
      :name,
      :type,
      :comment)
      include Aws::Structure
    end

    # @note When making an API call, you may pass Condition
    #   data as a hash:
    #
    #       {
    #         logical_operator: "EQUALS", # accepts EQUALS
    #         job_name: "NameString",
    #         state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED
    #       }
    #
    # @!attribute [rw] logical_operator
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   @return [String]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Condition AWS API Documentation
    #
    class Condition < Struct.new(
      :logical_operator,
      :job_name,
      :state)
      include Aws::Structure
    end

    # Defines a connection to a data source.
    #
    # @!attribute [rw] name
    #   The name of the connection definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the connection.
    #   @return [String]
    #
    # @!attribute [rw] match_criteria
    #   A list of criteria that can be used in selecting this connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_properties
    #   A list of key-value pairs used as parameters for this connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] physical_connection_requirements
    #   A map of physical connection requirements, such as VPC and
    #   SecurityGroup, needed for making this connection successfully.
    #   @return [Types::PhysicalConnectionRequirements]
    #
    # @!attribute [rw] creation_time
    #   The time this connection definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time this connection definition was updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_by
    #   The user, group or role that last updated this connection
    #   definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :physical_connection_requirements,
      :creation_time,
      :last_updated_time,
      :last_updated_by)
      include Aws::Structure
    end

    # A structure used to specify a connection to create or update.
    #
    # @note When making an API call, you may pass ConnectionInput
    #   data as a hash:
    #
    #       {
    #         name: "NameString",
    #         description: "DescriptionString",
    #         connection_type: "JDBC", # accepts JDBC, SFTP
    #         match_criteria: ["NameString"],
    #         connection_properties: {
    #           "HOST" => "ValueString",
    #         },
    #         physical_connection_requirements: {
    #           subnet_id: "NameString",
    #           security_group_id_list: ["NameString"],
    #           availability_zone: "NameString",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the connection.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the connection.
    #   @return [String]
    #
    # @!attribute [rw] connection_type
    #   The type of the connection.
    #   @return [String]
    #
    # @!attribute [rw] match_criteria
    #   A list of criteria that can be used in selecting this connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_properties
    #   A list of key-value pairs used as parameters for this connection.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] physical_connection_requirements
    #   A map of physical connection requirements, such as VPC and
    #   SecurityGroup, needed for making this connection successfully.
    #   @return [Types::PhysicalConnectionRequirements]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionInput AWS API Documentation
    #
    class ConnectionInput < Struct.new(
      :name,
      :description,
      :connection_type,
      :match_criteria,
      :connection_properties,
      :physical_connection_requirements)
      include Aws::Structure
    end

    # Specifies the connections used by a job.
    #
    # @note When making an API call, you may pass ConnectionsList
    #   data as a hash:
    #
    #       {
    #         connections: ["GenericString"],
    #       }
    #
    # @!attribute [rw] connections
    #   A list of connections used by the job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ConnectionsList AWS API Documentation
    #
    class ConnectionsList < Struct.new(
      :connections)
      include Aws::Structure
    end

    # Specifies a crawler program that examines a data source and uses
    # classifiers to try to its schema. If successful, the crawler records
    # metatdata concerning the data source in the Data Catalog.
    #
    # @!attribute [rw] name
    #   The `Crawler` name.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The ARN of an IAM role used to access customer resources such as
    #   data in S3.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A collection of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] database_name
    #   The `Database` where this Crawler's output should be stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of this Crawler and where it should be used.
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of custom `Classifier`s associated with this Crawler.
    #   @return [Array<String>]
    #
    # @!attribute [rw] schema_change_policy
    #   Sets policy for the crawler's update and delete behavior.
    #   @return [Types::SchemaChangePolicy]
    #
    # @!attribute [rw] state
    #   Indicates whether this Crawler is running, or whether a run is
    #   pending.
    #   @return [String]
    #
    # @!attribute [rw] table_prefix
    #   The table prefix used for catalog tables created.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A `Schedule` object that specifies the schedule on which this
    #   Crawler is to be run.
    #   @return [Types::Schedule]
    #
    # @!attribute [rw] crawl_elapsed_time
    #   If this Crawler is running, contains the total time elapsed since
    #   the last crawl began.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time when the Crawler was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time the Crawler was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_crawl
    #   The status of the last crawl, and potentially error information if
    #   an error occurred.
    #   @return [Types::LastCrawlInfo]
    #
    # @!attribute [rw] version
    #   The version of the Crawler.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Crawler AWS API Documentation
    #
    class Crawler < Struct.new(
      :name,
      :role,
      :targets,
      :database_name,
      :description,
      :classifiers,
      :schema_change_policy,
      :state,
      :table_prefix,
      :schedule,
      :crawl_elapsed_time,
      :creation_time,
      :last_updated,
      :last_crawl,
      :version)
      include Aws::Structure
    end

    # Metrics for a specified crawler.
    #
    # @!attribute [rw] crawler_name
    #   The name of the crawler.
    #   @return [String]
    #
    # @!attribute [rw] time_left_seconds
    #   The estimated time left to complete a running crawl.
    #   @return [Float]
    #
    # @!attribute [rw] still_estimating
    #   True if the crawler is estimating its
    #   @return [Boolean]
    #
    # @!attribute [rw] last_runtime_seconds
    #   The duration of the crawler's most recent run, in seconds.
    #   @return [Float]
    #
    # @!attribute [rw] median_runtime_seconds
    #   The median duration of this crawler's runs, in seconds.
    #   @return [Float]
    #
    # @!attribute [rw] tables_created
    #   A list of the tables created by this crawler.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_updated
    #   A list of the tables created by this crawler.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_deleted
    #   A list of the tables deleted by this crawler.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerMetrics AWS API Documentation
    #
    class CrawlerMetrics < Struct.new(
      :crawler_name,
      :time_left_seconds,
      :still_estimating,
      :last_runtime_seconds,
      :median_runtime_seconds,
      :tables_created,
      :tables_updated,
      :tables_deleted)
      include Aws::Structure
    end

    # Specifies crawler targets.
    #
    # @note When making an API call, you may pass CrawlerTargets
    #   data as a hash:
    #
    #       {
    #         s3_targets: [
    #           {
    #             path: "Path",
    #             exclusions: ["Path"],
    #           },
    #         ],
    #         jdbc_targets: [
    #           {
    #             connection_name: "ConnectionName",
    #             path: "Path",
    #             exclusions: ["Path"],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] s3_targets
    #   Specifies targets in AWS S3.
    #   @return [Array<Types::S3Target>]
    #
    # @!attribute [rw] jdbc_targets
    #   Specifies JDBC targets.
    #   @return [Array<Types::JdbcTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CrawlerTargets AWS API Documentation
    #
    class CrawlerTargets < Struct.new(
      :s3_targets,
      :jdbc_targets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClassifierRequest
    #   data as a hash:
    #
    #       {
    #         grok_classifier: {
    #           classification: "Classification", # required
    #           name: "NameString", # required
    #           grok_pattern: "GrokPattern", # required
    #           custom_patterns: "CustomPatterns",
    #         },
    #       }
    #
    # @!attribute [rw] grok_classifier
    #   A grok classifier to create.
    #   @return [Types::CreateGrokClassifierRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifierRequest AWS API Documentation
    #
    class CreateClassifierRequest < Struct.new(
      :grok_classifier)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateClassifierResponse AWS API Documentation
    #
    class CreateClassifierResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         connection_input: { # required
    #           name: "NameString",
    #           description: "DescriptionString",
    #           connection_type: "JDBC", # accepts JDBC, SFTP
    #           match_criteria: ["NameString"],
    #           connection_properties: {
    #             "HOST" => "ValueString",
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "NameString",
    #             security_group_id_list: ["NameString"],
    #             availability_zone: "NameString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the connection. If
    #   none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] connection_input
    #   A `ConnectionInput` object defining the connection to create.
    #   @return [Types::ConnectionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnectionRequest AWS API Documentation
    #
    class CreateConnectionRequest < Struct.new(
      :catalog_id,
      :connection_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateConnectionResponse AWS API Documentation
    #
    class CreateConnectionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         role: "RoleArn", # required
    #         database_name: "DatabaseName", # required
    #         description: "DescriptionString",
    #         targets: { # required
    #           s3_targets: [
    #             {
    #               path: "Path",
    #               exclusions: ["Path"],
    #             },
    #           ],
    #           jdbc_targets: [
    #             {
    #               connection_name: "ConnectionName",
    #               path: "Path",
    #               exclusions: ["Path"],
    #             },
    #           ],
    #         },
    #         schedule: "CronExpression",
    #         classifiers: ["NameString"],
    #         table_prefix: "TablePrefix",
    #         schema_change_policy: {
    #           update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #           delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the new `Crawler`.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The AWS ARN of the IAM role used by the new `Crawler` to access
    #   customer resources.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The Glue `Database` where results will be stored, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the new `Crawler`.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of collection of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] schedule
    #   A cron expression that can be used as a Cloudwatch event (see
    #   [CloudWatch Schedule Expression Syntax][1]. For example, to run
    #   every day at 12:15 UTC, specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of custom `Classifier` names that the user has registered. By
    #   default, all AWS classifiers are included in a crawl, but these
    #   custom classifiers always override the default classifiers for a
    #   given classification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] table_prefix
    #   The table prefix used for catalog tables created.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   Policy for the crawler's update and deletion behavior.
    #   @return [Types::SchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawlerRequest AWS API Documentation
    #
    class CreateCrawlerRequest < Struct.new(
      :name,
      :role,
      :database_name,
      :description,
      :targets,
      :schedule,
      :classifiers,
      :table_prefix,
      :schema_change_policy)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateCrawlerResponse AWS API Documentation
    #
    class CreateCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           location_uri: "URI",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the database. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_input
    #   A `DatabaseInput` object defining the metadata database to create in
    #   the catalog.
    #   @return [Types::DatabaseInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabaseRequest AWS API Documentation
    #
    class CreateDatabaseRequest < Struct.new(
      :catalog_id,
      :database_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDatabaseResponse AWS API Documentation
    #
    class CreateDatabaseResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateDevEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "GenericString", # required
    #         role_arn: "RoleArn", # required
    #         security_group_ids: ["GenericString"], # required
    #         subnet_id: "GenericString", # required
    #         public_key: "GenericString",
    #         number_of_nodes: 1,
    #         extra_python_libs_s3_path: "GenericString",
    #         extra_jars_s3_path: "GenericString",
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name to be assigned to the new DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role for the DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   Security group IDs for the security groups to be used by the new
    #   DevEndpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID for the new DevEndpoint to use.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key to use for authentication.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of nodes to use.
    #   @return [Integer]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   Path to one or more Python libraries in an S3 bucket that should be
    #   loaded in your DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   Path to one or more Java Jars in an S3 bucket that should be loaded
    #   in your DevEndpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpointRequest AWS API Documentation
    #
    class CreateDevEndpointRequest < Struct.new(
      :endpoint_name,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :public_key,
      :number_of_nodes,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_name
    #   The name assigned to the new DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the new DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups assigned to the new DevEndpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID assigned to the new DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The AWS ARN of the role assigned to the new DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] yarn_endpoint_address
    #   The address of the YARN endpoint used by this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of nodes in this DevEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The AWS availability zone where this DevEndpoint is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC used by this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   Path to one or more Python libraries in an S3 bucket that will be
    #   loaded in your DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   Path to one or more Java Jars in an S3 bucket that will be loaded in
    #   your DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for a current failure in this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The point in time at which this DevEndpoint was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateDevEndpointResponse AWS API Documentation
    #
    class CreateDevEndpointResponse < Struct.new(
      :endpoint_name,
      :status,
      :security_group_ids,
      :subnet_id,
      :role_arn,
      :yarn_endpoint_address,
      :number_of_nodes,
      :availability_zone,
      :vpc_id,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :failure_reason,
      :created_timestamp)
      include Aws::Structure
    end

    # Specifies a Grok classifier for CreateClassifier to create.
    #
    # @note When making an API call, you may pass CreateGrokClassifierRequest
    #   data as a hash:
    #
    #       {
    #         classification: "Classification", # required
    #         name: "NameString", # required
    #         grok_pattern: "GrokPattern", # required
    #         custom_patterns: "CustomPatterns",
    #       }
    #
    # @!attribute [rw] classification
    #   The type of result that the classifier matches, such as Twitter
    #   Json, Omniture logs, Cloudwatch logs, and so forth.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new Classifier.
    #   @return [String]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern used by this classifier.
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Custom grok patterns used by this classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateGrokClassifierRequest AWS API Documentation
    #
    class CreateGrokClassifierRequest < Struct.new(
      :classification,
      :name,
      :grok_pattern,
      :custom_patterns)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateJobRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         log_uri: "UriString",
    #         role: "RoleString", # required
    #         execution_property: {
    #           max_concurrent_runs: 1,
    #         },
    #         command: { # required
    #           name: "GenericString",
    #           script_location: "ScriptLocationString",
    #         },
    #         default_arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         connections: {
    #           connections: ["GenericString"],
    #         },
    #         max_retries: 1,
    #         allocated_capacity: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name you assign to this job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the job.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   Location of the logs for this job.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role associated with this job.
    #   @return [String]
    #
    # @!attribute [rw] execution_property
    #   An ExecutionProperty specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The JobCommand that executes this job.
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default parameters for this job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job if it fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   The number of capacity units allocated to this job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJobRequest AWS API Documentation
    #
    class CreateJobRequest < Struct.new(
      :name,
      :description,
      :log_uri,
      :role,
      :execution_property,
      :command,
      :default_arguments,
      :connections,
      :max_retries,
      :allocated_capacity)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The unique name of the new job that has been created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateJobResponse AWS API Documentation
    #
    class CreateJobResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_input: { # required
    #           values: ["ValueString"],
    #           last_access_time: Time.now,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #               },
    #             ],
    #             location: "LocationString",
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #           },
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           last_analyzed_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the catalog in which the partion is to be created.
    #   Currently, this should be the AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the metadata database in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the metadata table in which the partition is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] partition_input
    #   A `PartitionInput` structure defining the partition to be created.
    #   @return [Types::PartitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionRequest AWS API Documentation
    #
    class CreatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreatePartitionResponse AWS API Documentation
    #
    class CreatePartitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateScriptRequest
    #   data as a hash:
    #
    #       {
    #         dag_nodes: [
    #           {
    #             id: "CodeGenIdentifier", # required
    #             node_type: "CodeGenNodeType", # required
    #             args: [ # required
    #               {
    #                 name: "CodeGenArgName", # required
    #                 value: "CodeGenArgValue", # required
    #                 param: false,
    #               },
    #             ],
    #             line_number: 1,
    #           },
    #         ],
    #         dag_edges: [
    #           {
    #             source: "CodeGenIdentifier", # required
    #             target: "CodeGenIdentifier", # required
    #             target_parameter: "CodeGenArgName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] dag_nodes
    #   A list of the nodes in the DAG.
    #   @return [Array<Types::CodeGenNode>]
    #
    # @!attribute [rw] dag_edges
    #   A list of the edges in the DAG.
    #   @return [Array<Types::CodeGenEdge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScriptRequest AWS API Documentation
    #
    class CreateScriptRequest < Struct.new(
      :dag_nodes,
      :dag_edges)
      include Aws::Structure
    end

    # @!attribute [rw] python_script
    #   The Python script generated from the DAG.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateScriptResponse AWS API Documentation
    #
    class CreateScriptResponse < Struct.new(
      :python_script)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           owner: "NameString",
    #           last_access_time: Time.now,
    #           last_analyzed_time: Time.now,
    #           retention: 1,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #               },
    #             ],
    #             location: "LocationString",
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #           },
    #           partition_keys: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #             },
    #           ],
    #           view_original_text: "ViewTextString",
    #           view_expanded_text: "ViewTextString",
    #           table_type: "TableTypeString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the `Table`. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The catalog database in which to create the new table.
    #   @return [String]
    #
    # @!attribute [rw] table_input
    #   The `TableInput` object that defines the metadata table to create in
    #   the catalog.
    #   @return [Types::TableInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTableRequest AWS API Documentation
    #
    class CreateTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTableResponse AWS API Documentation
    #
    class CreateTableResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         type: "SCHEDULED", # required, accepts SCHEDULED, CONDITIONAL, ON_DEMAND
    #         schedule: "GenericString",
    #         predicate: {
    #           logical: "AND", # accepts AND
    #           conditions: [
    #             {
    #               logical_operator: "EQUALS", # accepts EQUALS
    #               job_name: "NameString",
    #               state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED
    #             },
    #           ],
    #         },
    #         actions: [ # required
    #           {
    #             job_name: "NameString",
    #             arguments: {
    #               "GenericString" => "GenericString",
    #             },
    #           },
    #         ],
    #         description: "DescriptionString",
    #       }
    #
    # @!attribute [rw] name
    #   The name to assign to the new trigger.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the new trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A cron schedule expression for the new trigger.
    #   @return [String]
    #
    # @!attribute [rw] predicate
    #   A predicate to specify when the new trigger should fire.
    #   @return [Types::Predicate]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger when it fires.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] description
    #   A description of the new trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTriggerRequest AWS API Documentation
    #
    class CreateTriggerRequest < Struct.new(
      :name,
      :type,
      :schedule,
      :predicate,
      :actions,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name assigned to the new trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateTriggerResponse AWS API Documentation
    #
    class CreateTriggerResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserDefinedFunctionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         function_input: { # required
    #           function_name: "NameString",
    #           class_name: "NameString",
    #           owner_name: "NameString",
    #           owner_type: "USER", # accepts USER, ROLE, GROUP
    #           resource_uris: [
    #             {
    #               resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #               uri: "URI",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which to create the function. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which to create the function.
    #   @return [String]
    #
    # @!attribute [rw] function_input
    #   A `FunctionInput` object that defines the function to create in the
    #   Data Catalog.
    #   @return [Types::UserDefinedFunctionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunctionRequest AWS API Documentation
    #
    class CreateUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/CreateUserDefinedFunctionResponse AWS API Documentation
    #
    class CreateUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # The `Database` object represents a logical grouping of tables that may
    # reside in a Hive metastore or an RDBMS.
    #
    # @!attribute [rw] name
    #   Name of the database.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the database.
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The location of the database (for example, an HDFS path).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of key-value pairs that define parameters and properties of
    #   the database.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] create_time
    #   The time at which the metadata database was created in the catalog.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Database AWS API Documentation
    #
    class Database < Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters,
      :create_time)
      include Aws::Structure
    end

    # The structure used to create or updata a database.
    #
    # @note When making an API call, you may pass DatabaseInput
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         location_uri: "URI",
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the database.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the database
    #   @return [String]
    #
    # @!attribute [rw] location_uri
    #   The location of the database (for example, an HDFS path).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of key-value pairs that define parameters and properties of
    #   the database.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DatabaseInput AWS API Documentation
    #
    class DatabaseInput < Struct.new(
      :name,
      :description,
      :location_uri,
      :parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the `Classifier` to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifierRequest AWS API Documentation
    #
    class DeleteClassifierRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteClassifierResponse AWS API Documentation
    #
    class DeleteClassifierResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         connection_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnectionRequest AWS API Documentation
    #
    class DeleteConnectionRequest < Struct.new(
      :catalog_id,
      :connection_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the `Crawler` to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawlerRequest AWS API Documentation
    #
    class DeleteCrawlerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteCrawlerResponse AWS API Documentation
    #
    class DeleteCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Database to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabaseRequest AWS API Documentation
    #
    class DeleteDatabaseRequest < Struct.new(
      :catalog_id,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDatabaseResponse AWS API Documentation
    #
    class DeleteDatabaseResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDevEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "GenericString", # required
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the DevEndpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpointRequest AWS API Documentation
    #
    class DeleteDevEndpointRequest < Struct.new(
      :endpoint_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteDevEndpointResponse AWS API Documentation
    #
    class DeleteDevEndpointResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJobRequest AWS API Documentation
    #
    class DeleteJobRequest < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The name of the job that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteJobResponse AWS API Documentation
    #
    class DeleteJobResponse < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_values: ["ValueString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be deleted
    #   resides. If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table where the partition to be deleted is located.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionRequest AWS API Documentation
    #
    class DeletePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeletePartitionResponse AWS API Documentation
    #
    class DeletePartitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableRequest AWS API Documentation
    #
    class DeleteTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTableResponse AWS API Documentation
    #
    class DeleteTableResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTriggerRequest AWS API Documentation
    #
    class DeleteTriggerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteTriggerResponse AWS API Documentation
    #
    class DeleteTriggerResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserDefinedFunctionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         function_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be deleted is
    #   located. If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function is located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function definition to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunctionRequest AWS API Documentation
    #
    class DeleteUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DeleteUserDefinedFunctionResponse AWS API Documentation
    #
    class DeleteUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # A development endpoint where a developer can remotely debug ETL
    # scripts.
    #
    # @!attribute [rw] endpoint_name
    #   The name of the DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The AWS ARN of the IAM role used in this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group identifiers used in this DevEndpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID for this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] yarn_endpoint_address
    #   The YARN endpoint address used by this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_address
    #   The public address used by this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of nodes used by this DevEndpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The AWS availability zone where this DevEndpoint is located.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the virtual private cloud (VPC) used by this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   Path to one or more Python libraries in an S3 bucket that should be
    #   loaded in your DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   Path to one or more Java Jars in an S3 bucket that should be loaded
    #   in your DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   The reason for a current failure in this DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] last_update_status
    #   The status of the last update.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The point in time at which this DevEndpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The point in time at which this DevEndpoint was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] public_key
    #   The public key to be used by this DevEndpoint for authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DevEndpoint AWS API Documentation
    #
    class DevEndpoint < Struct.new(
      :endpoint_name,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :yarn_endpoint_address,
      :public_address,
      :status,
      :number_of_nodes,
      :availability_zone,
      :vpc_id,
      :extra_python_libs_s3_path,
      :extra_jars_s3_path,
      :failure_reason,
      :last_update_status,
      :created_timestamp,
      :last_modified_timestamp,
      :public_key)
      include Aws::Structure
    end

    # Custom libraries to be loaded into a DevEndpoint.
    #
    # @note When making an API call, you may pass DevEndpointCustomLibraries
    #   data as a hash:
    #
    #       {
    #         extra_python_libs_s3_path: "GenericString",
    #         extra_jars_s3_path: "GenericString",
    #       }
    #
    # @!attribute [rw] extra_python_libs_s3_path
    #   Path to one or more Python libraries in an S3 bucket that should be
    #   loaded in your DevEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] extra_jars_s3_path
    #   Path to one or more Java Jars in an S3 bucket that should be loaded
    #   in your DevEndpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/DevEndpointCustomLibraries AWS API Documentation
    #
    class DevEndpointCustomLibraries < Struct.new(
      :extra_python_libs_s3_path,
      :extra_jars_s3_path)
      include Aws::Structure
    end

    # Contains details about an error.
    #
    # @!attribute [rw] error_code
    #   The code associated with this error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message)
      include Aws::Structure
    end

    # An execution property of a job.
    #
    # @note When making an API call, you may pass ExecutionProperty
    #   data as a hash:
    #
    #       {
    #         max_concurrent_runs: 1,
    #       }
    #
    # @!attribute [rw] max_concurrent_runs
    #   The maximum number of concurrent runs allowed for a job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ExecutionProperty AWS API Documentation
    #
    class ExecutionProperty < Struct.new(
      :max_concurrent_runs)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCatalogImportStatusRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the catalog to migrate. Currently, this should be the AWS
    #   account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatusRequest AWS API Documentation
    #
    class GetCatalogImportStatusRequest < Struct.new(
      :catalog_id)
      include Aws::Structure
    end

    # @!attribute [rw] import_status
    #   The status of the specified catalog migration.
    #   @return [Types::CatalogImportStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCatalogImportStatusResponse AWS API Documentation
    #
    class GetCatalogImportStatusResponse < Struct.new(
      :import_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the `Classifier` to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifierRequest AWS API Documentation
    #
    class GetClassifierRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] classifier
    #   The requested `Classifier`.
    #   @return [Types::Classifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifierResponse AWS API Documentation
    #
    class GetClassifierResponse < Struct.new(
      :classifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetClassifiersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   Size of the list to return (optional).
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   An optional continuation token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiersRequest AWS API Documentation
    #
    class GetClassifiersRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] classifiers
    #   The requested list of `Classifier` objects.
    #   @return [Array<Types::Classifier>]
    #
    # @!attribute [rw] next_token
    #   A continuation token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetClassifiersResponse AWS API Documentation
    #
    class GetClassifiersResponse < Struct.new(
      :classifiers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection definition to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionRequest AWS API Documentation
    #
    class GetConnectionRequest < Struct.new(
      :catalog_id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The requested connection definition.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionResponse AWS API Documentation
    #
    class GetConnectionResponse < Struct.new(
      :connection)
      include Aws::Structure
    end

    # Filters the connection definitions returned by the `GetConnections`
    # API.
    #
    # @note When making an API call, you may pass GetConnectionsFilter
    #   data as a hash:
    #
    #       {
    #         match_criteria: ["NameString"],
    #         connection_type: "JDBC", # accepts JDBC, SFTP
    #       }
    #
    # @!attribute [rw] match_criteria
    #   A criteria string that must match the criteria recorded in the
    #   connection definition for that connection definition to be returned.
    #   @return [Array<String>]
    #
    # @!attribute [rw] connection_type
    #   The type of connections to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsFilter AWS API Documentation
    #
    class GetConnectionsFilter < Struct.new(
      :match_criteria,
      :connection_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetConnectionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         filter: {
    #           match_criteria: ["NameString"],
    #           connection_type: "JDBC", # accepts JDBC, SFTP
    #         },
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connections reside. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   A filter that controls which connections will be returned.
    #   @return [Types::GetConnectionsFilter]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of connections to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsRequest AWS API Documentation
    #
    class GetConnectionsRequest < Struct.new(
      :catalog_id,
      :filter,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] connection_list
    #   A list of requested connection definitions.
    #   @return [Array<Types::Connection>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of connections returned does not
    #   include the last of the filtered connections.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetConnectionsResponse AWS API Documentation
    #
    class GetConnectionsResponse < Struct.new(
      :connection_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCrawlerMetricsRequest
    #   data as a hash:
    #
    #       {
    #         crawler_name_list: ["NameString"],
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] crawler_name_list
    #   A list of the names of crawlers about which to retrieve metrics.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum size of a list to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetricsRequest AWS API Documentation
    #
    class GetCrawlerMetricsRequest < Struct.new(
      :crawler_name_list,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] crawler_metrics_list
    #   A list of metrics for the specified crawler.
    #   @return [Array<Types::CrawlerMetrics>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list does not contain the last
    #   metric available.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerMetricsResponse AWS API Documentation
    #
    class GetCrawlerMetricsResponse < Struct.new(
      :crawler_metrics_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the `Crawler` to retrieve metadata for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerRequest AWS API Documentation
    #
    class GetCrawlerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] crawler
    #   The metadata for the specified `Crawler`.
    #   @return [Types::Crawler]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlerResponse AWS API Documentation
    #
    class GetCrawlerResponse < Struct.new(
      :crawler)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCrawlersRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   The number of Crawlers to return on each call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlersRequest AWS API Documentation
    #
    class GetCrawlersRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] crawlers
    #   A list of `Crawler` metadata.
    #   @return [Array<Types::Crawler>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list has not reached the end
    #   of those defined in this customer account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetCrawlersResponse AWS API Documentation
    #
    class GetCrawlersResponse < Struct.new(
      :crawlers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the database resides. If none is
    #   supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the database to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabaseRequest AWS API Documentation
    #
    class GetDatabaseRequest < Struct.new(
      :catalog_id,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] database
    #   The definition of the specified database in the catalog.
    #   @return [Types::Database]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabaseResponse AWS API Documentation
    #
    class GetDatabaseResponse < Struct.new(
      :database)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDatabasesRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog from which to retrieve `Databases`. If
    #   none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of databases to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabasesRequest AWS API Documentation
    #
    class GetDatabasesRequest < Struct.new(
      :catalog_id,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] database_list
    #   A list of `Database` objects from the specified catalog.
    #   @return [Array<Types::Database>]
    #
    # @!attribute [rw] next_token
    #   A continuation token for paginating the returned list of tokens,
    #   returned if the current segment of the list is not the last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDatabasesResponse AWS API Documentation
    #
    class GetDatabasesResponse < Struct.new(
      :database_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDataflowGraphRequest
    #   data as a hash:
    #
    #       {
    #         python_script: "PythonScript",
    #       }
    #
    # @!attribute [rw] python_script
    #   The Python script to transform.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraphRequest AWS API Documentation
    #
    class GetDataflowGraphRequest < Struct.new(
      :python_script)
      include Aws::Structure
    end

    # @!attribute [rw] dag_nodes
    #   A list of the nodes in the resulting DAG.
    #   @return [Array<Types::CodeGenNode>]
    #
    # @!attribute [rw] dag_edges
    #   A list of the edges in the resulting DAG.
    #   @return [Array<Types::CodeGenEdge>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDataflowGraphResponse AWS API Documentation
    #
    class GetDataflowGraphResponse < Struct.new(
      :dag_nodes,
      :dag_edges)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDevEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "GenericString", # required
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   Name of the DevEndpoint for which to retrieve information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointRequest AWS API Documentation
    #
    class GetDevEndpointRequest < Struct.new(
      :endpoint_name)
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoint
    #   A DevEndpoint definition.
    #   @return [Types::DevEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointResponse AWS API Documentation
    #
    class GetDevEndpointResponse < Struct.new(
      :dev_endpoint)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDevEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum size of information to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointsRequest AWS API Documentation
    #
    class GetDevEndpointsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] dev_endpoints
    #   A list of DevEndpoint definitions.
    #   @return [Array<Types::DevEndpoint>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all DevEndpoint definitions have yet
    #   been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetDevEndpointsResponse AWS API Documentation
    #
    class GetDevEndpointsResponse < Struct.new(
      :dev_endpoints,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRequest AWS API Documentation
    #
    class GetJobRequest < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # @!attribute [rw] job
    #   The requested job definition.
    #   @return [Types::Job]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobResponse AWS API Documentation
    #
    class GetJobResponse < Struct.new(
      :job)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobRunRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         run_id: "IdString", # required
    #         predecessors_included: false,
    #       }
    #
    # @!attribute [rw] job_name
    #   Name of the job being run.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] predecessors_included
    #   A list of the predecessor runs to return as well.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunRequest AWS API Documentation
    #
    class GetJobRunRequest < Struct.new(
      :job_name,
      :run_id,
      :predecessors_included)
      include Aws::Structure
    end

    # @!attribute [rw] job_run
    #   The requested job-run metadata.
    #   @return [Types::JobRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunResponse AWS API Documentation
    #
    class GetJobRunResponse < Struct.new(
      :job_run)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobRunsRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         next_token: "GenericString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job for which to retrieve all job runs.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunsRequest AWS API Documentation
    #
    class GetJobRunsRequest < Struct.new(
      :job_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] job_runs
    #   A list of job-run metatdata objects.
    #   @return [Array<Types::JobRun>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all reequested job runs have been
    #   returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobRunsResponse AWS API Documentation
    #
    class GetJobRunsResponse < Struct.new(
      :job_runs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetJobsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GenericString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobsRequest AWS API Documentation
    #
    class GetJobsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] jobs
    #   A list of jobs.
    #   @return [Array<Types::Job>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all jobs have yet been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetJobsResponse AWS API Documentation
    #
    class GetJobsResponse < Struct.new(
      :jobs,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMappingRequest
    #   data as a hash:
    #
    #       {
    #         source: { # required
    #           database_name: "NameString", # required
    #           table_name: "NameString", # required
    #         },
    #         sinks: [
    #           {
    #             database_name: "NameString", # required
    #             table_name: "NameString", # required
    #           },
    #         ],
    #         location: {
    #           jdbc: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #           s3: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] source
    #   Specifies the source table.
    #   @return [Types::CatalogEntry]
    #
    # @!attribute [rw] sinks
    #   A list of target tables.
    #   @return [Array<Types::CatalogEntry>]
    #
    # @!attribute [rw] location
    #   Parameters for the mapping.
    #   @return [Types::Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMappingRequest AWS API Documentation
    #
    class GetMappingRequest < Struct.new(
      :source,
      :sinks,
      :location)
      include Aws::Structure
    end

    # @!attribute [rw] mapping
    #   A list of mappings to the specified targets.
    #   @return [Array<Types::MappingEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetMappingResponse AWS API Documentation
    #
    class GetMappingResponse < Struct.new(
      :mapping)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_values: ["ValueString"], # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition in question resides.
    #   If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partition resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partition's table.
    #   @return [String]
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionRequest AWS API Documentation
    #
    class GetPartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_values)
      include Aws::Structure
    end

    # @!attribute [rw] partition
    #   The requested information, in the form of a `Partition` object.
    #   @return [Types::Partition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionResponse AWS API Documentation
    #
    class GetPartitionResponse < Struct.new(
      :partition)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPartitionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         expression: "PredicateString",
    #         next_token: "Token",
    #         segment: {
    #           segment_number: 1, # required
    #           total_segments: 1, # required
    #         },
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partitions in question reside.
    #   If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the partitions reside.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the partitions' table.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   An expression filtering the partitions to be returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call to retrieve
    #   these partitions.
    #   @return [String]
    #
    # @!attribute [rw] segment
    #   The segment of the table's partitions to scan in this request.
    #   @return [Types::Segment]
    #
    # @!attribute [rw] max_results
    #   The maximum number of partitions to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionsRequest AWS API Documentation
    #
    class GetPartitionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :expression,
      :next_token,
      :segment,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] partitions
    #   A list of requested partitions.
    #   @return [Array<Types::Partition>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the returned list of partitions does not
    #   does not include the last one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPartitionsResponse AWS API Documentation
    #
    class GetPartitionsResponse < Struct.new(
      :partitions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPlanRequest
    #   data as a hash:
    #
    #       {
    #         mapping: [ # required
    #           {
    #             source_table: "TableName",
    #             source_path: "SchemaPathString",
    #             source_type: "FieldType",
    #             target_table: "TableName",
    #             target_path: "SchemaPathString",
    #             target_type: "FieldType",
    #           },
    #         ],
    #         source: { # required
    #           database_name: "NameString", # required
    #           table_name: "NameString", # required
    #         },
    #         sinks: [
    #           {
    #             database_name: "NameString", # required
    #             table_name: "NameString", # required
    #           },
    #         ],
    #         location: {
    #           jdbc: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #           s3: [
    #             {
    #               name: "CodeGenArgName", # required
    #               value: "CodeGenArgValue", # required
    #               param: false,
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] mapping
    #   The list of mappings from a source table to target tables.
    #   @return [Array<Types::MappingEntry>]
    #
    # @!attribute [rw] source
    #   The source table.
    #   @return [Types::CatalogEntry]
    #
    # @!attribute [rw] sinks
    #   The target tables.
    #   @return [Array<Types::CatalogEntry>]
    #
    # @!attribute [rw] location
    #   Parameters for the mapping.
    #   @return [Types::Location]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlanRequest AWS API Documentation
    #
    class GetPlanRequest < Struct.new(
      :mapping,
      :source,
      :sinks,
      :location)
      include Aws::Structure
    end

    # @!attribute [rw] python_script
    #   A python script to perform the mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetPlanResponse AWS API Documentation
    #
    class GetPlanResponse < Struct.new(
      :python_script)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the table for which to retrieve the definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableRequest AWS API Documentation
    #
    class GetTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   The `Table` object that defines the specified table.
    #   @return [Types::Table]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableResponse AWS API Documentation
    #
    class GetTableResponse < Struct.new(
      :table)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTableVersionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is not the first call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of table versions to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionsRequest AWS API Documentation
    #
    class GetTableVersionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] table_versions
    #   A list of strings identifying available versions of the specified
    #   table.
    #   @return [Array<Types::TableVersion>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of available versions does not
    #   include the last one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTableVersionsResponse AWS API Documentation
    #
    class GetTableVersionsResponse < Struct.new(
      :table_versions,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTablesRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         expression: "FilterString",
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the tables reside. If none is
    #   supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The database in the catalog whose tables to list.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   A regular expression pattern. If present, only those tables whose
    #   names match the pattern are returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, included if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of tables to return in a single response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTablesRequest AWS API Documentation
    #
    class GetTablesRequest < Struct.new(
      :catalog_id,
      :database_name,
      :expression,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] table_list
    #   A list of the requested `Table` objects.
    #   @return [Array<Types::Table>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, present if the current list segment is not the
    #   last.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTablesResponse AWS API Documentation
    #
    class GetTablesResponse < Struct.new(
      :table_list,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggerRequest AWS API Documentation
    #
    class GetTriggerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] trigger
    #   The requested trigger definition.
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggerResponse AWS API Documentation
    #
    class GetTriggerResponse < Struct.new(
      :trigger)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTriggersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "GenericString",
    #         dependent_job_name: "NameString",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] dependent_job_name
    #   The name of the job for which to retrieve triggers.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum size of the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggersRequest AWS API Documentation
    #
    class GetTriggersRequest < Struct.new(
      :next_token,
      :dependent_job_name,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] triggers
    #   A list of triggers for the specified job.
    #   @return [Array<Types::Trigger>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if not all the requested triggers have yet
    #   been returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetTriggersResponse AWS API Documentation
    #
    class GetTriggersResponse < Struct.new(
      :triggers,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserDefinedFunctionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         function_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be retrieved is
    #   located. If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function is located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionRequest AWS API Documentation
    #
    class GetUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name)
      include Aws::Structure
    end

    # @!attribute [rw] user_defined_function
    #   The requested function definition.
    #   @return [Types::UserDefinedFunction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionResponse AWS API Documentation
    #
    class GetUserDefinedFunctionResponse < Struct.new(
      :user_defined_function)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserDefinedFunctionsRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         pattern: "NameString", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the functions to be retrieved are
    #   located. If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the functions are located.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   An optional function-name pattern string that filters the function
    #   definitions returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if this is a continuation call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of functions to return in one response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionsRequest AWS API Documentation
    #
    class GetUserDefinedFunctionsRequest < Struct.new(
      :catalog_id,
      :database_name,
      :pattern,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] user_defined_functions
    #   A list of requested function definitions.
    #   @return [Array<Types::UserDefinedFunction>]
    #
    # @!attribute [rw] next_token
    #   A continuation token, if the list of functions returned does not
    #   include the last requested function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GetUserDefinedFunctionsResponse AWS API Documentation
    #
    class GetUserDefinedFunctionsResponse < Struct.new(
      :user_defined_functions,
      :next_token)
      include Aws::Structure
    end

    # A classifier that uses `grok`.
    #
    # @!attribute [rw] name
    #   The name of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The data form that the classifier matches, such as Twitter, JSON,
    #   Omniture Logs, and so forth.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time this classifier was registered.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time this classifier was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of this classifier.
    #   @return [Integer]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern used by this classifier.
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Custom grok patterns used by this classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/GrokClassifier AWS API Documentation
    #
    class GrokClassifier < Struct.new(
      :name,
      :classification,
      :creation_time,
      :last_updated,
      :version,
      :grok_pattern,
      :custom_patterns)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportCatalogToGlueRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the catalog to import. Currently, this should be the AWS
    #   account ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlueRequest AWS API Documentation
    #
    class ImportCatalogToGlueRequest < Struct.new(
      :catalog_id)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ImportCatalogToGlueResponse AWS API Documentation
    #
    class ImportCatalogToGlueResponse < Aws::EmptyStructure; end

    # Specifies a JDBC target for a crawl.
    #
    # @note When making an API call, you may pass JdbcTarget
    #   data as a hash:
    #
    #       {
    #         connection_name: "ConnectionName",
    #         path: "Path",
    #         exclusions: ["Path"],
    #       }
    #
    # @!attribute [rw] connection_name
    #   The name of the connection to use for the JDBC target.
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path of the JDBC target.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A list of items to exclude from the crawl.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JdbcTarget AWS API Documentation
    #
    class JdbcTarget < Struct.new(
      :connection_name,
      :path,
      :exclusions)
      include Aws::Structure
    end

    # Specifies a job in the Data Catalog.
    #
    # @!attribute [rw] name
    #   The name you assign to this job.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of this job.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   Location of the logs for this job.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role associated with this job.
    #   @return [String]
    #
    # @!attribute [rw] created_on
    #   The time and date that this job specification was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The last point in time when this job specification was modified.
    #   @return [Time]
    #
    # @!attribute [rw] execution_property
    #   An ExecutionProperty specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The JobCommand that executes this job.
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default parameters for this job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job if it fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   The number of capacity units allocated to this job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Job AWS API Documentation
    #
    class Job < Struct.new(
      :name,
      :description,
      :log_uri,
      :role,
      :created_on,
      :last_modified_on,
      :execution_property,
      :command,
      :default_arguments,
      :connections,
      :max_retries,
      :allocated_capacity)
      include Aws::Structure
    end

    # Defines a point which a job can resume processing.
    #
    # @!attribute [rw] job_name
    #   Name of the job in question.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of the job.
    #   @return [Integer]
    #
    # @!attribute [rw] run
    #   The run ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] attempt
    #   The attempt ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] job_bookmark
    #   The bookmark itself.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobBookmarkEntry AWS API Documentation
    #
    class JobBookmarkEntry < Struct.new(
      :job_name,
      :version,
      :run,
      :attempt,
      :job_bookmark)
      include Aws::Structure
    end

    # Specifies code that executes a job.
    #
    # @note When making an API call, you may pass JobCommand
    #   data as a hash:
    #
    #       {
    #         name: "GenericString",
    #         script_location: "ScriptLocationString",
    #       }
    #
    # @!attribute [rw] name
    #   The name of this job command.
    #   @return [String]
    #
    # @!attribute [rw] script_location
    #   Specifies the location of a script that executes a job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobCommand AWS API Documentation
    #
    class JobCommand < Struct.new(
      :name,
      :script_location)
      include Aws::Structure
    end

    # Contains information about a job run.
    #
    # @!attribute [rw] id
    #   The ID of this job run.
    #   @return [String]
    #
    # @!attribute [rw] attempt
    #   The number or the attempt to run this job.
    #   @return [Integer]
    #
    # @!attribute [rw] previous_run_id
    #   The ID of the previous run of this job.
    #   @return [String]
    #
    # @!attribute [rw] trigger_name
    #   The name of the trigger for this job run.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the job being run.
    #   @return [String]
    #
    # @!attribute [rw] started_on
    #   The date and time at which this job run was started.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_on
    #   The last time this job run was modified.
    #   @return [Time]
    #
    # @!attribute [rw] completed_on
    #   The date and time this job run completed.
    #   @return [Time]
    #
    # @!attribute [rw] job_run_state
    #   The current state of the job run.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   The job arguments associated with this run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] error_message
    #   An error message associated with this job run.
    #   @return [String]
    #
    # @!attribute [rw] predecessor_runs
    #   A list of predecessors to this job run.
    #   @return [Array<Types::Predecessor>]
    #
    # @!attribute [rw] allocated_capacity
    #   The amount of infrastructure capacity allocated to this job run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobRun AWS API Documentation
    #
    class JobRun < Struct.new(
      :id,
      :attempt,
      :previous_run_id,
      :trigger_name,
      :job_name,
      :started_on,
      :last_modified_on,
      :completed_on,
      :job_run_state,
      :arguments,
      :error_message,
      :predecessor_runs,
      :allocated_capacity)
      include Aws::Structure
    end

    # Specifies information used to update an existing job.
    #
    # @note When making an API call, you may pass JobUpdate
    #   data as a hash:
    #
    #       {
    #         description: "DescriptionString",
    #         log_uri: "UriString",
    #         role: "RoleString",
    #         execution_property: {
    #           max_concurrent_runs: 1,
    #         },
    #         command: {
    #           name: "GenericString",
    #           script_location: "ScriptLocationString",
    #         },
    #         default_arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         connections: {
    #           connections: ["GenericString"],
    #         },
    #         max_retries: 1,
    #         allocated_capacity: 1,
    #       }
    #
    # @!attribute [rw] description
    #   Description of the job.
    #   @return [String]
    #
    # @!attribute [rw] log_uri
    #   Location of the logs for this job.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role associated with this job.
    #   @return [String]
    #
    # @!attribute [rw] execution_property
    #   An ExecutionProperty specifying the maximum number of concurrent
    #   runs allowed for this job.
    #   @return [Types::ExecutionProperty]
    #
    # @!attribute [rw] command
    #   The JobCommand that executes this job.
    #   @return [Types::JobCommand]
    #
    # @!attribute [rw] default_arguments
    #   The default parameters for this job.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] connections
    #   The connections used for this job.
    #   @return [Types::ConnectionsList]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times to retry this job if it fails.
    #   @return [Integer]
    #
    # @!attribute [rw] allocated_capacity
    #   The number of capacity units allocated to this job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/JobUpdate AWS API Documentation
    #
    class JobUpdate < Struct.new(
      :description,
      :log_uri,
      :role,
      :execution_property,
      :command,
      :default_arguments,
      :connections,
      :max_retries,
      :allocated_capacity)
      include Aws::Structure
    end

    # Status and error information about the most recent crawl.
    #
    # @!attribute [rw] status
    #   Status of the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error information about the last crawl, if an error occurred.
    #   @return [String]
    #
    # @!attribute [rw] log_group
    #   The log group for the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] log_stream
    #   The log stream for the last crawl.
    #   @return [String]
    #
    # @!attribute [rw] message_prefix
    #   The prefix for a message about this crawl.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time at which the crawl started.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/LastCrawlInfo AWS API Documentation
    #
    class LastCrawlInfo < Struct.new(
      :status,
      :error_message,
      :log_group,
      :log_stream,
      :message_prefix,
      :start_time)
      include Aws::Structure
    end

    # The location of resources.
    #
    # @note When making an API call, you may pass Location
    #   data as a hash:
    #
    #       {
    #         jdbc: [
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #         s3: [
    #           {
    #             name: "CodeGenArgName", # required
    #             value: "CodeGenArgValue", # required
    #             param: false,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] jdbc
    #   A JDBC location.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @!attribute [rw] s3
    #   An AWS S3 location.
    #   @return [Array<Types::CodeGenNodeArg>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Location AWS API Documentation
    #
    class Location < Struct.new(
      :jdbc,
      :s3)
      include Aws::Structure
    end

    # Defines a mapping.
    #
    # @note When making an API call, you may pass MappingEntry
    #   data as a hash:
    #
    #       {
    #         source_table: "TableName",
    #         source_path: "SchemaPathString",
    #         source_type: "FieldType",
    #         target_table: "TableName",
    #         target_path: "SchemaPathString",
    #         target_type: "FieldType",
    #       }
    #
    # @!attribute [rw] source_table
    #   The name of the source table.
    #   @return [String]
    #
    # @!attribute [rw] source_path
    #   The source path.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source type.
    #   @return [String]
    #
    # @!attribute [rw] target_table
    #   The target table.
    #   @return [String]
    #
    # @!attribute [rw] target_path
    #   The target path.
    #   @return [String]
    #
    # @!attribute [rw] target_type
    #   The target type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/MappingEntry AWS API Documentation
    #
    class MappingEntry < Struct.new(
      :source_table,
      :source_path,
      :source_type,
      :target_table,
      :target_path,
      :target_type)
      include Aws::Structure
    end

    # Specifies the sort order of a sorted column.
    #
    # @note When making an API call, you may pass Order
    #   data as a hash:
    #
    #       {
    #         column: "NameString", # required
    #         sort_order: 1, # required
    #       }
    #
    # @!attribute [rw] column
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Indicates that the column is sorted in ascending order (`== 1`), or
    #   in descending order (`==0`).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Order AWS API Documentation
    #
    class Order < Struct.new(
      :column,
      :sort_order)
      include Aws::Structure
    end

    # Represents a slice of table data.
    #
    # @!attribute [rw] values
    #   The values of the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the table in question is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table in question.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the partition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_access_time
    #   The last time at which the partition was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] storage_descriptor
    #   Provides information about the physical location where the partition
    #   is stored.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] parameters
    #   Partition parameters, in the form of a list of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time at which column statistics were computed for this
    #   partition.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Partition AWS API Documentation
    #
    class Partition < Struct.new(
      :values,
      :database_name,
      :table_name,
      :creation_time,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time)
      include Aws::Structure
    end

    # Contains information about a partition error.
    #
    # @!attribute [rw] partition_values
    #   The values that define the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] error_detail
    #   Details about the partition error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionError AWS API Documentation
    #
    class PartitionError < Struct.new(
      :partition_values,
      :error_detail)
      include Aws::Structure
    end

    # The structure used to create and update a partion.
    #
    # @note When making an API call, you may pass PartitionInput
    #   data as a hash:
    #
    #       {
    #         values: ["ValueString"],
    #         last_access_time: Time.now,
    #         storage_descriptor: {
    #           columns: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #             },
    #           ],
    #           location: "LocationString",
    #           input_format: "FormatString",
    #           output_format: "FormatString",
    #           compressed: false,
    #           number_of_buckets: 1,
    #           serde_info: {
    #             name: "NameString",
    #             serialization_library: "NameString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #           bucket_columns: ["NameString"],
    #           sort_columns: [
    #             {
    #               column: "NameString", # required
    #               sort_order: 1, # required
    #             },
    #           ],
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           skewed_info: {
    #             skewed_column_names: ["NameString"],
    #             skewed_column_values: ["ColumnValuesString"],
    #             skewed_column_value_location_maps: {
    #               "ColumnValuesString" => "ColumnValuesString",
    #             },
    #           },
    #           stored_as_sub_directories: false,
    #         },
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         last_analyzed_time: Time.now,
    #       }
    #
    # @!attribute [rw] values
    #   The values of the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_access_time
    #   The last time at which the partition was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] storage_descriptor
    #   Provides information about the physical location where the partition
    #   is stored.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] parameters
    #   Partition parameters, in the form of a list of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_analyzed_time
    #   The last time at which column statistics were computed for this
    #   partition.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionInput AWS API Documentation
    #
    class PartitionInput < Struct.new(
      :values,
      :last_access_time,
      :storage_descriptor,
      :parameters,
      :last_analyzed_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PartitionValueList
    #   data as a hash:
    #
    #       {
    #         values: ["ValueString"], # required
    #       }
    #
    # @!attribute [rw] values
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PartitionValueList AWS API Documentation
    #
    class PartitionValueList < Struct.new(
      :values)
      include Aws::Structure
    end

    # Specifies the physical requirements for a connection.
    #
    # @note When making an API call, you may pass PhysicalConnectionRequirements
    #   data as a hash:
    #
    #       {
    #         subnet_id: "NameString",
    #         security_group_id_list: ["NameString"],
    #         availability_zone: "NameString",
    #       }
    #
    # @!attribute [rw] subnet_id
    #   The subnet ID used by the connection.
    #   @return [String]
    #
    # @!attribute [rw] security_group_id_list
    #   The security group ID list used by the connection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The connection's availability zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/PhysicalConnectionRequirements AWS API Documentation
    #
    class PhysicalConnectionRequirements < Struct.new(
      :subnet_id,
      :security_group_id_list,
      :availability_zone)
      include Aws::Structure
    end

    # A job run that preceded this one.
    #
    # @!attribute [rw] job_name
    #   The name of the predecessor job.
    #   @return [String]
    #
    # @!attribute [rw] run_id
    #   The job-run ID of the precessor job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Predecessor AWS API Documentation
    #
    class Predecessor < Struct.new(
      :job_name,
      :run_id)
      include Aws::Structure
    end

    # Defines the predicate of the trigger, which determines when it fires.
    #
    # @note When making an API call, you may pass Predicate
    #   data as a hash:
    #
    #       {
    #         logical: "AND", # accepts AND
    #         conditions: [
    #           {
    #             logical_operator: "EQUALS", # accepts EQUALS
    #             job_name: "NameString",
    #             state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] logical
    #   Currently "OR" is not supported.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   A list of the conditions that determine when the trigger will fire.
    #   @return [Array<Types::Condition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Predicate AWS API Documentation
    #
    class Predicate < Struct.new(
      :logical,
      :conditions)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetJobBookmarkRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName", # required
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job in question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmarkRequest AWS API Documentation
    #
    class ResetJobBookmarkRequest < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # @!attribute [rw] job_bookmark_entry
    #   The reset bookmark entry.
    #   @return [Types::JobBookmarkEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResetJobBookmarkResponse AWS API Documentation
    #
    class ResetJobBookmarkResponse < Struct.new(
      :job_bookmark_entry)
      include Aws::Structure
    end

    # URIs for function resources.
    #
    # @note When making an API call, you may pass ResourceUri
    #   data as a hash:
    #
    #       {
    #         resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #         uri: "URI",
    #       }
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI for accessing the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/ResourceUri AWS API Documentation
    #
    class ResourceUri < Struct.new(
      :resource_type,
      :uri)
      include Aws::Structure
    end

    # Specifies a crawler target in AWS S3.
    #
    # @note When making an API call, you may pass S3Target
    #   data as a hash:
    #
    #       {
    #         path: "Path",
    #         exclusions: ["Path"],
    #       }
    #
    # @!attribute [rw] path
    #   The path to the S3 target.
    #   @return [String]
    #
    # @!attribute [rw] exclusions
    #   A list of S3 objects to exclude from the crawl.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/S3Target AWS API Documentation
    #
    class S3Target < Struct.new(
      :path,
      :exclusions)
      include Aws::Structure
    end

    # A scheduling object using a `cron` statement to schedule an event.
    #
    # @!attribute [rw] schedule_expression
    #   A `cron` expression that can be used as a Cloudwatch event to
    #   schedule something (see [CloudWatch Schedule Expression Syntax][1].
    #   For example, to run something every day at 12:15 UTC, you would
    #   specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Schedule AWS API Documentation
    #
    class Schedule < Struct.new(
      :schedule_expression,
      :state)
      include Aws::Structure
    end

    # Crawler policy for update and deletion behavior.
    #
    # @note When making an API call, you may pass SchemaChangePolicy
    #   data as a hash:
    #
    #       {
    #         update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #         delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #       }
    #
    # @!attribute [rw] update_behavior
    #   The update behavior.
    #   @return [String]
    #
    # @!attribute [rw] delete_behavior
    #   The deletion behavior.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SchemaChangePolicy AWS API Documentation
    #
    class SchemaChangePolicy < Struct.new(
      :update_behavior,
      :delete_behavior)
      include Aws::Structure
    end

    # Defines a non-overlapping region of a table's partitions, allowing
    # multiple requests to be executed in parallel.
    #
    # @note When making an API call, you may pass Segment
    #   data as a hash:
    #
    #       {
    #         segment_number: 1, # required
    #         total_segments: 1, # required
    #       }
    #
    # @!attribute [rw] segment_number
    #   The zero-based index number of the this segment. For example, if the
    #   total number of segments is 4, SegmentNumber values will range from
    #   zero through three.
    #   @return [Integer]
    #
    # @!attribute [rw] total_segments
    #   The total numer of segments.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Segment AWS API Documentation
    #
    class Segment < Struct.new(
      :segment_number,
      :total_segments)
      include Aws::Structure
    end

    # Information about a serialization/deserialization program (SerDe)
    # which serves as an extractor and loader.
    #
    # @note When making an API call, you may pass SerDeInfo
    #   data as a hash:
    #
    #       {
    #         name: "NameString",
    #         serialization_library: "NameString",
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the SerDe.
    #   @return [String]
    #
    # @!attribute [rw] serialization_library
    #   Usually the class that implements the SerDe. An example is:
    #   `org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe`.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   A list of initialization parameters for the SerDe, in key-value
    #   form.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SerDeInfo AWS API Documentation
    #
    class SerDeInfo < Struct.new(
      :name,
      :serialization_library,
      :parameters)
      include Aws::Structure
    end

    # Specifies skewed values in a table. Skewed are ones that occur with
    # very high frequency.
    #
    # @note When making an API call, you may pass SkewedInfo
    #   data as a hash:
    #
    #       {
    #         skewed_column_names: ["NameString"],
    #         skewed_column_values: ["ColumnValuesString"],
    #         skewed_column_value_location_maps: {
    #           "ColumnValuesString" => "ColumnValuesString",
    #         },
    #       }
    #
    # @!attribute [rw] skewed_column_names
    #   A list of names of columns that contain skewed values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skewed_column_values
    #   A list of values that appear so frequently as to be considered
    #   skewed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] skewed_column_value_location_maps
    #   A mapping of skewed values to the columns that contain them.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/SkewedInfo AWS API Documentation
    #
    class SkewedInfo < Struct.new(
      :skewed_column_names,
      :skewed_column_values,
      :skewed_column_value_location_maps)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the `Crawler` to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerRequest AWS API Documentation
    #
    class StartCrawlerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerResponse AWS API Documentation
    #
    class StartCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartCrawlerScheduleRequest
    #   data as a hash:
    #
    #       {
    #         crawler_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] crawler_name
    #   Name of the crawler to schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerScheduleRequest AWS API Documentation
    #
    class StartCrawlerScheduleRequest < Struct.new(
      :crawler_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartCrawlerScheduleResponse AWS API Documentation
    #
    class StartCrawlerScheduleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StartJobRunRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         job_run_id: "IdString",
    #         arguments: {
    #           "GenericString" => "GenericString",
    #         },
    #         allocated_capacity: 1,
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the job to start.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of the job run to start.
    #   @return [String]
    #
    # @!attribute [rw] arguments
    #   Specific arguments for this job run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] allocated_capacity
    #   The infrastructure capacity to allocate to this job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRunRequest AWS API Documentation
    #
    class StartJobRunRequest < Struct.new(
      :job_name,
      :job_run_id,
      :arguments,
      :allocated_capacity)
      include Aws::Structure
    end

    # @!attribute [rw] job_run_id
    #   The ID assigned to this job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartJobRunResponse AWS API Documentation
    #
    class StartJobRunResponse < Struct.new(
      :job_run_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTriggerRequest AWS API Documentation
    #
    class StartTriggerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StartTriggerResponse AWS API Documentation
    #
    class StartTriggerResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   Name of the `Crawler` to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerRequest AWS API Documentation
    #
    class StopCrawlerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerResponse AWS API Documentation
    #
    class StopCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopCrawlerScheduleRequest
    #   data as a hash:
    #
    #       {
    #         crawler_name: "NameString", # required
    #       }
    #
    # @!attribute [rw] crawler_name
    #   Name of the crawler whose schedule state to set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerScheduleRequest AWS API Documentation
    #
    class StopCrawlerScheduleRequest < Struct.new(
      :crawler_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopCrawlerScheduleResponse AWS API Documentation
    #
    class StopCrawlerScheduleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTriggerRequest AWS API Documentation
    #
    class StopTriggerRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the trigger that was stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StopTriggerResponse AWS API Documentation
    #
    class StopTriggerResponse < Struct.new(
      :name)
      include Aws::Structure
    end

    # Describes the physical storage of table data.
    #
    # @note When making an API call, you may pass StorageDescriptor
    #   data as a hash:
    #
    #       {
    #         columns: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #           },
    #         ],
    #         location: "LocationString",
    #         input_format: "FormatString",
    #         output_format: "FormatString",
    #         compressed: false,
    #         number_of_buckets: 1,
    #         serde_info: {
    #           name: "NameString",
    #           serialization_library: "NameString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #         bucket_columns: ["NameString"],
    #         sort_columns: [
    #           {
    #             column: "NameString", # required
    #             sort_order: 1, # required
    #           },
    #         ],
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #         skewed_info: {
    #           skewed_column_names: ["NameString"],
    #           skewed_column_values: ["ColumnValuesString"],
    #           skewed_column_value_location_maps: {
    #             "ColumnValuesString" => "ColumnValuesString",
    #           },
    #         },
    #         stored_as_sub_directories: false,
    #       }
    #
    # @!attribute [rw] columns
    #   A list of the `Columns` in the table.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] location
    #   The physical location of the table. By default this takes the form
    #   of the warehouse location, followed by the database location in the
    #   warehouse, followed by the table name.
    #   @return [String]
    #
    # @!attribute [rw] input_format
    #   The input format: `SequenceFileInputFormat` (binary), or
    #   `TextInputFormat`, or a custom format.
    #   @return [String]
    #
    # @!attribute [rw] output_format
    #   The output format: `SequenceFileOutputFormat` (binary), or
    #   `IgnoreKeyTextOutputFormat`, or a custom format.
    #   @return [String]
    #
    # @!attribute [rw] compressed
    #   True if the data in the table is compressed, or False if not.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_buckets
    #   Must be specified if the table contains any dimension columns.
    #   @return [Integer]
    #
    # @!attribute [rw] serde_info
    #   Serialization/deserialization (SerDe) information.
    #   @return [Types::SerDeInfo]
    #
    # @!attribute [rw] bucket_columns
    #   A list of reducer grouping columns, clustering columns, and
    #   bucketing columns in the table.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort_columns
    #   A list specifying the sort order of each bucket in the table.
    #   @return [Array<Types::Order>]
    #
    # @!attribute [rw] parameters
    #   User-supplied properties in key-value form.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] skewed_info
    #   Information about values that appear very frequently in a column
    #   (skewed values).
    #   @return [Types::SkewedInfo]
    #
    # @!attribute [rw] stored_as_sub_directories
    #   True if the table data is stored in subdirectories, or False if not.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/StorageDescriptor AWS API Documentation
    #
    class StorageDescriptor < Struct.new(
      :columns,
      :location,
      :input_format,
      :output_format,
      :compressed,
      :number_of_buckets,
      :serde_info,
      :bucket_columns,
      :sort_columns,
      :parameters,
      :skewed_info,
      :stored_as_sub_directories)
      include Aws::Structure
    end

    # Represents a collection of related data organized in columns and rows.
    #
    # @!attribute [rw] name
    #   Name of the table.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Name of the metadata database where the table metadata resides.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the table.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Owner of the table.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   Time when the table definition was created in the Data Catalog.
    #   @return [Time]
    #
    # @!attribute [rw] update_time
    #   Last time the table was updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_access_time
    #   Last time the table was accessed. This is usually taken from HDFS,
    #   and may not be reliable.
    #   @return [Time]
    #
    # @!attribute [rw] last_analyzed_time
    #   Last time column statistics were computed for this table.
    #   @return [Time]
    #
    # @!attribute [rw] retention
    #   Retention time for this table.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_descriptor
    #   A storage descriptor containing information about the physical
    #   storage of this table.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] partition_keys
    #   A list of columns by which the table is partitioned. Only primitive
    #   types are supported as partition keys.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] view_original_text
    #   If the table is a view, the original text of the view; otherwise
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] view_expanded_text
    #   If the table is a view, the expanded text of the view; otherwise
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] table_type
    #   The type of this table (`EXTERNAL_TABLE`, `VIRTUAL_VIEW`, etc.).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Properties associated with this table, as a list of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_by
    #   Person or entity who created the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Table AWS API Documentation
    #
    class Table < Struct.new(
      :name,
      :database_name,
      :description,
      :owner,
      :create_time,
      :update_time,
      :last_access_time,
      :last_analyzed_time,
      :retention,
      :storage_descriptor,
      :partition_keys,
      :view_original_text,
      :view_expanded_text,
      :table_type,
      :parameters,
      :created_by)
      include Aws::Structure
    end

    # An error record for table operations.
    #
    # @!attribute [rw] table_name
    #   Name of the table.
    #   @return [String]
    #
    # @!attribute [rw] error_detail
    #   Detail about the error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableError AWS API Documentation
    #
    class TableError < Struct.new(
      :table_name,
      :error_detail)
      include Aws::Structure
    end

    # Structure used to create or update the table.
    #
    # @note When making an API call, you may pass TableInput
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         description: "DescriptionString",
    #         owner: "NameString",
    #         last_access_time: Time.now,
    #         last_analyzed_time: Time.now,
    #         retention: 1,
    #         storage_descriptor: {
    #           columns: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #             },
    #           ],
    #           location: "LocationString",
    #           input_format: "FormatString",
    #           output_format: "FormatString",
    #           compressed: false,
    #           number_of_buckets: 1,
    #           serde_info: {
    #             name: "NameString",
    #             serialization_library: "NameString",
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #           },
    #           bucket_columns: ["NameString"],
    #           sort_columns: [
    #             {
    #               column: "NameString", # required
    #               sort_order: 1, # required
    #             },
    #           ],
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           skewed_info: {
    #             skewed_column_names: ["NameString"],
    #             skewed_column_values: ["ColumnValuesString"],
    #             skewed_column_value_location_maps: {
    #               "ColumnValuesString" => "ColumnValuesString",
    #             },
    #           },
    #           stored_as_sub_directories: false,
    #         },
    #         partition_keys: [
    #           {
    #             name: "NameString", # required
    #             type: "ColumnTypeString",
    #             comment: "CommentString",
    #           },
    #         ],
    #         view_original_text: "ViewTextString",
    #         view_expanded_text: "ViewTextString",
    #         table_type: "TableTypeString",
    #         parameters: {
    #           "KeyString" => "ParametersMapValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the table.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the table.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   Owner of the table.
    #   @return [String]
    #
    # @!attribute [rw] last_access_time
    #   Last time the table was accessed.
    #   @return [Time]
    #
    # @!attribute [rw] last_analyzed_time
    #   Last time column statistics were computed for this table.
    #   @return [Time]
    #
    # @!attribute [rw] retention
    #   Retention time for this table.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_descriptor
    #   A storage descriptor containing information about the physical
    #   storage of this table.
    #   @return [Types::StorageDescriptor]
    #
    # @!attribute [rw] partition_keys
    #   A list of columns by which the table is partitioned. Only primitive
    #   types are supported as partition keys.
    #   @return [Array<Types::Column>]
    #
    # @!attribute [rw] view_original_text
    #   If the table is a view, the original text of the view; otherwise
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] view_expanded_text
    #   If the table is a view, the expanded text of the view; otherwise
    #   `null`.
    #   @return [String]
    #
    # @!attribute [rw] table_type
    #   The type of this table (`EXTERNAL_TABLE`, `VIRTUAL_VIEW`, etc.).
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   Properties associated with this table, as a list of key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableInput AWS API Documentation
    #
    class TableInput < Struct.new(
      :name,
      :description,
      :owner,
      :last_access_time,
      :last_analyzed_time,
      :retention,
      :storage_descriptor,
      :partition_keys,
      :view_original_text,
      :view_expanded_text,
      :table_type,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] table
    #   Represents a collection of related data organized in columns and
    #   rows.
    #   @return [Types::Table]
    #
    # @!attribute [rw] version_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TableVersion AWS API Documentation
    #
    class TableVersion < Struct.new(
      :table,
      :version_id)
      include Aws::Structure
    end

    # Information about a specific trigger.
    #
    # @!attribute [rw] name
    #   Name of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The trigger ID.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of trigger that this is.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of this trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A cron schedule expression.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] predicate
    #   The predicate of this trigger.
    #   @return [Types::Predicate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/Trigger AWS API Documentation
    #
    class Trigger < Struct.new(
      :name,
      :id,
      :type,
      :state,
      :description,
      :schedule,
      :actions,
      :predicate)
      include Aws::Structure
    end

    # A structure used to provide information used to updata a trigger.
    #
    # @note When making an API call, you may pass TriggerUpdate
    #   data as a hash:
    #
    #       {
    #         name: "NameString",
    #         description: "DescriptionString",
    #         schedule: "GenericString",
    #         actions: [
    #           {
    #             job_name: "NameString",
    #             arguments: {
    #               "GenericString" => "GenericString",
    #             },
    #           },
    #         ],
    #         predicate: {
    #           logical: "AND", # accepts AND
    #           conditions: [
    #             {
    #               logical_operator: "EQUALS", # accepts EQUALS
    #               job_name: "NameString",
    #               state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of this trigger.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   A cron expression specifying the schedule.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The actions initiated by this trigger.
    #   @return [Array<Types::Action>]
    #
    # @!attribute [rw] predicate
    #   The predicate of this trigger, which defines when it will fire.
    #   @return [Types::Predicate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/TriggerUpdate AWS API Documentation
    #
    class TriggerUpdate < Struct.new(
      :name,
      :description,
      :schedule,
      :actions,
      :predicate)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateClassifierRequest
    #   data as a hash:
    #
    #       {
    #         grok_classifier: {
    #           name: "NameString", # required
    #           classification: "Classification",
    #           grok_pattern: "GrokPattern",
    #           custom_patterns: "CustomPatterns",
    #         },
    #       }
    #
    # @!attribute [rw] grok_classifier
    #   A `GrokClassifier` object with updated fields.
    #   @return [Types::UpdateGrokClassifierRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifierRequest AWS API Documentation
    #
    class UpdateClassifierRequest < Struct.new(
      :grok_classifier)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateClassifierResponse AWS API Documentation
    #
    class UpdateClassifierResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateConnectionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #         connection_input: { # required
    #           name: "NameString",
    #           description: "DescriptionString",
    #           connection_type: "JDBC", # accepts JDBC, SFTP
    #           match_criteria: ["NameString"],
    #           connection_properties: {
    #             "HOST" => "ValueString",
    #           },
    #           physical_connection_requirements: {
    #             subnet_id: "NameString",
    #             security_group_id_list: ["NameString"],
    #             availability_zone: "NameString",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the connection resides. If none
    #   is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the connection definition to update.
    #   @return [String]
    #
    # @!attribute [rw] connection_input
    #   A `ConnectionInput` object that redefines the connection in
    #   question.
    #   @return [Types::ConnectionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnectionRequest AWS API Documentation
    #
    class UpdateConnectionRequest < Struct.new(
      :catalog_id,
      :name,
      :connection_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateConnectionResponse AWS API Documentation
    #
    class UpdateConnectionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateCrawlerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         role: "RoleArn",
    #         database_name: "DatabaseName",
    #         description: "DescriptionStringRemovable",
    #         targets: {
    #           s3_targets: [
    #             {
    #               path: "Path",
    #               exclusions: ["Path"],
    #             },
    #           ],
    #           jdbc_targets: [
    #             {
    #               connection_name: "ConnectionName",
    #               path: "Path",
    #               exclusions: ["Path"],
    #             },
    #           ],
    #         },
    #         schedule: "CronExpression",
    #         classifiers: ["NameString"],
    #         table_prefix: "TablePrefix",
    #         schema_change_policy: {
    #           update_behavior: "LOG", # accepts LOG, UPDATE_IN_DATABASE
    #           delete_behavior: "LOG", # accepts LOG, DELETE_FROM_DATABASE, DEPRECATE_IN_DATABASE
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   Name of the new `Crawler`.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The AWS ARN of the IAM role used by the new `Crawler` to access
    #   customer resources.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The Glue `Database` where results will be stored, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the new `Crawler`.
    #   @return [String]
    #
    # @!attribute [rw] targets
    #   A list of collection of targets to crawl.
    #   @return [Types::CrawlerTargets]
    #
    # @!attribute [rw] schedule
    #   A cron expression that can be used as a Cloudwatch event (see
    #   [CloudWatch Schedule Expression Syntax][1]. For example, to run
    #   every day at 12:15 UTC, specify: `cron(15 12 * * ? *)`.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html
    #   @return [String]
    #
    # @!attribute [rw] classifiers
    #   A list of custom `Classifier` names that the user has registered. By
    #   default, all AWS classifiers are included in a crawl, but these
    #   custom classifiers always override the default classifiers for a
    #   given classification.
    #   @return [Array<String>]
    #
    # @!attribute [rw] table_prefix
    #   The table prefix used for catalog tables created.
    #   @return [String]
    #
    # @!attribute [rw] schema_change_policy
    #   Policy for the crawler's update and deletion behavior.
    #   @return [Types::SchemaChangePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerRequest AWS API Documentation
    #
    class UpdateCrawlerRequest < Struct.new(
      :name,
      :role,
      :database_name,
      :description,
      :targets,
      :schedule,
      :classifiers,
      :table_prefix,
      :schema_change_policy)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerResponse AWS API Documentation
    #
    class UpdateCrawlerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateCrawlerScheduleRequest
    #   data as a hash:
    #
    #       {
    #         crawler_name: "NameString", # required
    #         schedule: "CronExpression",
    #       }
    #
    # @!attribute [rw] crawler_name
    #   Name of the crawler whose schedule to update.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   Cron expression of the updated schedule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerScheduleRequest AWS API Documentation
    #
    class UpdateCrawlerScheduleRequest < Struct.new(
      :crawler_name,
      :schedule)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateCrawlerScheduleResponse AWS API Documentation
    #
    class UpdateCrawlerScheduleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDatabaseRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         name: "NameString", # required
    #         database_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           location_uri: "URI",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog in which the metadata database resides.
    #   If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the metadata database to update in the catalog.
    #   @return [String]
    #
    # @!attribute [rw] database_input
    #   A `DatabaseInput` object specifying the new definition of the
    #   metadata database in the catalog.
    #   @return [Types::DatabaseInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabaseRequest AWS API Documentation
    #
    class UpdateDatabaseRequest < Struct.new(
      :catalog_id,
      :name,
      :database_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDatabaseResponse AWS API Documentation
    #
    class UpdateDatabaseResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDevEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "GenericString", # required
    #         public_key: "GenericString",
    #         custom_libraries: {
    #           extra_python_libs_s3_path: "GenericString",
    #           extra_jars_s3_path: "GenericString",
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   The name of the DevEndpoint to be updated.
    #   @return [String]
    #
    # @!attribute [rw] public_key
    #   The public key for the DevEndpoint to use.
    #   @return [String]
    #
    # @!attribute [rw] custom_libraries
    #   Custom Python or Java custom libraries to be loaded in the
    #   DevEndpoint.
    #   @return [Types::DevEndpointCustomLibraries]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpointRequest AWS API Documentation
    #
    class UpdateDevEndpointRequest < Struct.new(
      :endpoint_name,
      :public_key,
      :custom_libraries)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateDevEndpointResponse AWS API Documentation
    #
    class UpdateDevEndpointResponse < Aws::EmptyStructure; end

    # Specifies a Grok classifier to update when passed to UpdateClassifier.
    #
    # @note When making an API call, you may pass UpdateGrokClassifierRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         classification: "Classification",
    #         grok_pattern: "GrokPattern",
    #         custom_patterns: "CustomPatterns",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the `GrokClassifier`.
    #   @return [String]
    #
    # @!attribute [rw] classification
    #   The type of result that the classifier matches, such as Twitter
    #   Json, Omniture logs, Cloudwatch logs, and so forth.
    #   @return [String]
    #
    # @!attribute [rw] grok_pattern
    #   The grok pattern used by this classifier.
    #   @return [String]
    #
    # @!attribute [rw] custom_patterns
    #   Custom grok patterns used by this classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateGrokClassifierRequest AWS API Documentation
    #
    class UpdateGrokClassifierRequest < Struct.new(
      :name,
      :classification,
      :grok_pattern,
      :custom_patterns)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "NameString", # required
    #         job_update: { # required
    #           description: "DescriptionString",
    #           log_uri: "UriString",
    #           role: "RoleString",
    #           execution_property: {
    #             max_concurrent_runs: 1,
    #           },
    #           command: {
    #             name: "GenericString",
    #             script_location: "ScriptLocationString",
    #           },
    #           default_arguments: {
    #             "GenericString" => "GenericString",
    #           },
    #           connections: {
    #             connections: ["GenericString"],
    #           },
    #           max_retries: 1,
    #           allocated_capacity: 1,
    #         },
    #       }
    #
    # @!attribute [rw] job_name
    #   Name of the job definition to update.
    #   @return [String]
    #
    # @!attribute [rw] job_update
    #   Specifies the values with which to update the job.
    #   @return [Types::JobUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobRequest AWS API Documentation
    #
    class UpdateJobRequest < Struct.new(
      :job_name,
      :job_update)
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   Returns the name of the updated job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateJobResponse AWS API Documentation
    #
    class UpdateJobResponse < Struct.new(
      :job_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdatePartitionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_name: "NameString", # required
    #         partition_value_list: ["ValueString"], # required
    #         partition_input: { # required
    #           values: ["ValueString"],
    #           last_access_time: Time.now,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #               },
    #             ],
    #             location: "LocationString",
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #           },
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #           last_analyzed_time: Time.now,
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the partition to be updated
    #   resides. If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table in question
    #   resides.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table where the partition to be updated is located.
    #   @return [String]
    #
    # @!attribute [rw] partition_value_list
    #   A list of the values defining the partition.
    #   @return [Array<String>]
    #
    # @!attribute [rw] partition_input
    #   The new partition object to which to update the partition.
    #   @return [Types::PartitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartitionRequest AWS API Documentation
    #
    class UpdatePartitionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_name,
      :partition_value_list,
      :partition_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdatePartitionResponse AWS API Documentation
    #
    class UpdatePartitionResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTableRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         table_input: { # required
    #           name: "NameString", # required
    #           description: "DescriptionString",
    #           owner: "NameString",
    #           last_access_time: Time.now,
    #           last_analyzed_time: Time.now,
    #           retention: 1,
    #           storage_descriptor: {
    #             columns: [
    #               {
    #                 name: "NameString", # required
    #                 type: "ColumnTypeString",
    #                 comment: "CommentString",
    #               },
    #             ],
    #             location: "LocationString",
    #             input_format: "FormatString",
    #             output_format: "FormatString",
    #             compressed: false,
    #             number_of_buckets: 1,
    #             serde_info: {
    #               name: "NameString",
    #               serialization_library: "NameString",
    #               parameters: {
    #                 "KeyString" => "ParametersMapValue",
    #               },
    #             },
    #             bucket_columns: ["NameString"],
    #             sort_columns: [
    #               {
    #                 column: "NameString", # required
    #                 sort_order: 1, # required
    #               },
    #             ],
    #             parameters: {
    #               "KeyString" => "ParametersMapValue",
    #             },
    #             skewed_info: {
    #               skewed_column_names: ["NameString"],
    #               skewed_column_values: ["ColumnValuesString"],
    #               skewed_column_value_location_maps: {
    #                 "ColumnValuesString" => "ColumnValuesString",
    #               },
    #             },
    #             stored_as_sub_directories: false,
    #           },
    #           partition_keys: [
    #             {
    #               name: "NameString", # required
    #               type: "ColumnTypeString",
    #               comment: "CommentString",
    #             },
    #           ],
    #           view_original_text: "ViewTextString",
    #           view_expanded_text: "ViewTextString",
    #           table_type: "TableTypeString",
    #           parameters: {
    #             "KeyString" => "ParametersMapValue",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the table resides. If none is
    #   supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database in which the table resides.
    #   @return [String]
    #
    # @!attribute [rw] table_input
    #   An updated `TableInput` object to define the metadata table in the
    #   catalog.
    #   @return [Types::TableInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTableRequest AWS API Documentation
    #
    class UpdateTableRequest < Struct.new(
      :catalog_id,
      :database_name,
      :table_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTableResponse AWS API Documentation
    #
    class UpdateTableResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateTriggerRequest
    #   data as a hash:
    #
    #       {
    #         name: "NameString", # required
    #         trigger_update: { # required
    #           name: "NameString",
    #           description: "DescriptionString",
    #           schedule: "GenericString",
    #           actions: [
    #             {
    #               job_name: "NameString",
    #               arguments: {
    #                 "GenericString" => "GenericString",
    #               },
    #             },
    #           ],
    #           predicate: {
    #             logical: "AND", # accepts AND
    #             conditions: [
    #               {
    #                 logical_operator: "EQUALS", # accepts EQUALS
    #                 job_name: "NameString",
    #                 state: "STARTING", # accepts STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED
    #               },
    #             ],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the trigger to update.
    #   @return [String]
    #
    # @!attribute [rw] trigger_update
    #   The new values with which to update the trigger.
    #   @return [Types::TriggerUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTriggerRequest AWS API Documentation
    #
    class UpdateTriggerRequest < Struct.new(
      :name,
      :trigger_update)
      include Aws::Structure
    end

    # @!attribute [rw] trigger
    #   The resulting trigger definition.
    #   @return [Types::Trigger]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateTriggerResponse AWS API Documentation
    #
    class UpdateTriggerResponse < Struct.new(
      :trigger)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserDefinedFunctionRequest
    #   data as a hash:
    #
    #       {
    #         catalog_id: "CatalogIdString",
    #         database_name: "NameString", # required
    #         function_name: "NameString", # required
    #         function_input: { # required
    #           function_name: "NameString",
    #           class_name: "NameString",
    #           owner_name: "NameString",
    #           owner_type: "USER", # accepts USER, ROLE, GROUP
    #           resource_uris: [
    #             {
    #               resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #               uri: "URI",
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] catalog_id
    #   The ID of the Data Catalog where the function to be updated is
    #   located. If none is supplied, the AWS account ID is used by default.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the catalog database where the function to be updated is
    #   located.
    #   @return [String]
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] function_input
    #   A `FunctionInput` object that re-defines the function in the Data
    #   Catalog.
    #   @return [Types::UserDefinedFunctionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunctionRequest AWS API Documentation
    #
    class UpdateUserDefinedFunctionRequest < Struct.new(
      :catalog_id,
      :database_name,
      :function_name,
      :function_input)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UpdateUserDefinedFunctionResponse AWS API Documentation
    #
    class UpdateUserDefinedFunctionResponse < Aws::EmptyStructure; end

    # Represents the equivalent of a Hive user-defined function (`UDF`)
    # definition.
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] class_name
    #   The Java class that contains the function code.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The owner of the function.
    #   @return [String]
    #
    # @!attribute [rw] owner_type
    #   The owner type.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the function was created.
    #   @return [Time]
    #
    # @!attribute [rw] resource_uris
    #   The resource URIs for the function.
    #   @return [Array<Types::ResourceUri>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UserDefinedFunction AWS API Documentation
    #
    class UserDefinedFunction < Struct.new(
      :function_name,
      :class_name,
      :owner_name,
      :owner_type,
      :create_time,
      :resource_uris)
      include Aws::Structure
    end

    # A structure used to create or updata a user-defined function.
    #
    # @note When making an API call, you may pass UserDefinedFunctionInput
    #   data as a hash:
    #
    #       {
    #         function_name: "NameString",
    #         class_name: "NameString",
    #         owner_name: "NameString",
    #         owner_type: "USER", # accepts USER, ROLE, GROUP
    #         resource_uris: [
    #           {
    #             resource_type: "JAR", # accepts JAR, FILE, ARCHIVE
    #             uri: "URI",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] function_name
    #   The name of the function.
    #   @return [String]
    #
    # @!attribute [rw] class_name
    #   The Java class that contains the function code.
    #   @return [String]
    #
    # @!attribute [rw] owner_name
    #   The owner of the function.
    #   @return [String]
    #
    # @!attribute [rw] owner_type
    #   The owner type.
    #   @return [String]
    #
    # @!attribute [rw] resource_uris
    #   The resource URIs for the function.
    #   @return [Array<Types::ResourceUri>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/glue-2017-03-31/UserDefinedFunctionInput AWS API Documentation
    #
    class UserDefinedFunctionInput < Struct.new(
      :function_name,
      :class_name,
      :owner_name,
      :owner_type,
      :resource_uris)
      include Aws::Structure
    end

  end
end
