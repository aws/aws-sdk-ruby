# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NeptuneGraph
  module Types

    # Raised in case of an authentication or authorization failure.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_identifier
    #   The unique identifier of the export task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CancelExportTaskInput AWS API Documentation
    #
    class CancelExportTaskInput < Struct.new(
      :task_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_id
    #   The source graph identifier of the cancelled export task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow the exporting of data to the
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the export task. The status is `CANCELLING`
    #   when the export task is cancelled.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the cancelled export task.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The Amazon S3 URI of the cancelled export task where data will be
    #   exported to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The KMS key identifier of the cancelled export task.
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the cancelled export task.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the export task has this status value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CancelExportTaskOutput AWS API Documentation
    #
    class CancelExportTaskOutput < Struct.new(
      :graph_id,
      :role_arn,
      :task_id,
      :status,
      :format,
      :destination,
      :kms_key_identifier,
      :parquet_type,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_identifier
    #   The unique identifier of the import task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CancelImportTaskInput AWS API Documentation
    #
    class CancelImportTaskInput < Struct.new(
      :task_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_id
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the import task.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A URL identifying to the location of the data to be imported. This
    #   can be an Amazon S3 path, or can point to a Neptune database
    #   endpoint or snapshot.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the format of S3 data to be imported. Valid values are
    #   `CSV`, which identifies the [Gremlin CSV format][1] or `OPENCYPHER`,
    #   which identies the [openCypher load format][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the cancelled import task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow access to the data that is
    #   to be imported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Current status of the task. Status is CANCELLING when the import
    #   task is cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CancelImportTaskOutput AWS API Documentation
    #
    class CancelImportTaskOutput < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The unique identifier of the query to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CancelQueryInput AWS API Documentation
    #
    class CancelQueryInput < Struct.new(
      :graph_identifier,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Raised when a conflict is encountered.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the conflict exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_name
    #   A name for the new Neptune Analytics graph to be created.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens. Only lowercase letters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds metadata tags to the new graph. These tags can also be used
    #   with cost allocation reporting, or used in a Condition statement in
    #   an IAM policy.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] public_connectivity
    #   Specifies whether or not the graph can be reachable over the
    #   internet. All access to graphs is IAM authenticated. (`true` to
    #   enable, or `false` to disable.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_identifier
    #   Specifies a KMS key to use to encrypt data in the new graph.
    #   @return [String]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings that will
    #   be loaded into the graph. The value is specified as
    #   `dimension=`value. Max = 65,535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas in other AZs. Min =0, Max = 2, Default = 1.
    #
    #   Additional charges equivalent to the m-NCUs selected for the graph
    #   apply for each replica.
    #   @return [Integer]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether or not to enable deletion protection on the graph.
    #   The graph can’t be deleted when deletion protection is enabled.
    #   (`true` or `false`).
    #   @return [Boolean]
    #
    # @!attribute [rw] provisioned_memory
    #   The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to
    #   use for the graph. Min = 16
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraphInput AWS API Documentation
    #
    class CreateGraphInput < Struct.new(
      :graph_name,
      :tags,
      :public_connectivity,
      :kms_key_identifier,
      :vector_search_configuration,
      :replica_count,
      :deletion_protection,
      :provisioned_memory)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The graph name. For example: `my-graph-1`.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens. Only lowercase letters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason the status was given.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time when the graph was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_memory
    #   The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to
    #   use for the graph.
    #
    #   Min = 16
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   Specifies whether or not the graph can be reachable over the
    #   internet. All access to graphs is IAM authenticated.
    #
    #   <note markdown="1"> If enabling public connectivity for the first time, there will be a
    #   delay while it is enabled.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] vector_search_configuration
    #   The vector-search configuration for the graph, which specifies the
    #   vector dimension to use in the vector index, if any.
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas in other AZs.
    #
    #   Default: If not specified, the default value is 1.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   Specifies the KMS key used to encrypt data in the new graph.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the source graph.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the graph has deletion protection
    #   enabled. The graph can't be deleted when deletion protection is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_number
    #   The build number of the graph software.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraphOutput AWS API Documentation
    #
    class CreateGraphOutput < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :status_reason,
      :create_time,
      :provisioned_memory,
      :endpoint,
      :public_connectivity,
      :vector_search_configuration,
      :replica_count,
      :kms_key_identifier,
      :source_snapshot_id,
      :deletion_protection,
      :build_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_name
    #   The snapshot name. For example: `my-snapshot-1`.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens. Only lowercase letters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds metadata tags to the new graph. These tags can also be used
    #   with cost allocation reporting, or used in a Condition statement in
    #   an IAM policy.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraphSnapshotInput AWS API Documentation
    #
    class CreateGraphSnapshotInput < Struct.new(
      :graph_identifier,
      :snapshot_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the snapshot created.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the snapshot created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the snapshot created.
    #   @return [String]
    #
    # @!attribute [rw] source_graph_id
    #   The Id of the Neptune Analytics graph from which the snapshot is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   The snapshot creation time
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current state of the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraphSnapshotOutput AWS API Documentation
    #
    class CreateGraphSnapshotOutput < Struct.new(
      :id,
      :name,
      :arn,
      :source_graph_id,
      :snapshot_create_time,
      :status,
      :kms_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_name
    #   A name for the new Neptune Analytics graph to be created.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens. Only lowercase letters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds metadata tags to the new graph. These tags can also be used
    #   with cost allocation reporting, or used in a Condition statement in
    #   an IAM policy.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] public_connectivity
    #   Specifies whether or not the graph can be reachable over the
    #   internet. All access to graphs is IAM authenticated. (`true` to
    #   enable, or `false` to disable).
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_identifier
    #   Specifies a KMS key to use to encrypt data imported into the new
    #   graph.
    #   @return [String]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings that will
    #   be loaded into the graph. The value is specified as
    #   `dimension=`value. Max = 65,535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas in other AZs to provision on the new graph
    #   after import. Default = 0, Min = 0, Max = 2.
    #
    #   Additional charges equivalent to the m-NCUs selected for the graph
    #   apply for each replica.
    #   @return [Integer]
    #
    # @!attribute [rw] deletion_protection
    #   Indicates whether or not to enable deletion protection on the graph.
    #   The graph can’t be deleted when deletion protection is enabled.
    #   (`true` or `false`).
    #   @return [Boolean]
    #
    # @!attribute [rw] import_options
    #   Contains options for controlling the import process. For example, if
    #   the `failOnError` key is set to `false`, the import skips problem
    #   data and attempts to continue (whereas if set to `true`, the
    #   default, or if omitted, the import operation halts immediately when
    #   an error is encountered.
    #   @return [Types::ImportOptions]
    #
    # @!attribute [rw] max_provisioned_memory
    #   The maximum provisioned memory-optimized Neptune Capacity Units
    #   (m-NCUs) to use for the graph. Default: 1024, or the approved upper
    #   limit for your account.
    #
    #   If both the minimum and maximum values are specified, the final
    #   `provisioned-memory` will be chosen per the actual size of your
    #   imported data. If neither value is specified, 128 m-NCUs are used.
    #   @return [Integer]
    #
    # @!attribute [rw] min_provisioned_memory
    #   The minimum provisioned memory-optimized Neptune Capacity Units
    #   (m-NCUs) to use for the graph. Default: 16
    #   @return [Integer]
    #
    # @!attribute [rw] fail_on_error
    #   If set to `true`, the task halts when an import error is
    #   encountered. If set to `false`, the task skips the data that caused
    #   the error and continues if possible.
    #   @return [Boolean]
    #
    # @!attribute [rw] source
    #   A URL identifying to the location of the data to be imported. This
    #   can be an Amazon S3 path, or can point to a Neptune database
    #   endpoint or snapshot.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the format of S3 data to be imported. Valid values are
    #   `CSV`, which identifies the [Gremlin CSV format][1], `OPEN_CYPHER`,
    #   which identifies the [openCypher load format][2], or `ntriples`,
    #   which identifies the [RDF n-triples][3] format.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #   [3]: https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the import task.
    #   @return [String]
    #
    # @!attribute [rw] blank_node_handling
    #   The method to handle blank nodes in the dataset. Currently, only
    #   `convertToIri` is supported, meaning blank nodes are converted to
    #   unique IRIs at load time. Must be provided when format is
    #   `ntriples`. For more information, see [Handling RDF values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow access to the data that is
    #   to be imported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraphUsingImportTaskInput AWS API Documentation
    #
    class CreateGraphUsingImportTaskInput < Struct.new(
      :graph_name,
      :tags,
      :public_connectivity,
      :kms_key_identifier,
      :vector_search_configuration,
      :replica_count,
      :deletion_protection,
      :import_options,
      :max_provisioned_memory,
      :min_provisioned_memory,
      :fail_on_error,
      :source,
      :format,
      :parquet_type,
      :blank_node_handling,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_id
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the import task.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A URL identifying to the location of the data to be imported. This
    #   can be an Amazon S3 path, or can point to a Neptune database
    #   endpoint or snapshot.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the format of S3 data to be imported. Valid values are
    #   `CSV`, which identifies the [Gremlin CSV format][1], `OPENCYPHER`,
    #   which identifies the [openCypher load format][2], or `ntriples`,
    #   which identifies the [RDF n-triples][3] format.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #   [3]: https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the import task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow access to the data that is
    #   to be imported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the import task.
    #   @return [String]
    #
    # @!attribute [rw] import_options
    #   Contains options for controlling the import process. For example, if
    #   the `failOnError` key is set to `false`, the import skips problem
    #   data and attempts to continue (whereas if set to `true`, the
    #   default, or if omitted, the import operation halts immediately when
    #   an error is encountered.
    #   @return [Types::ImportOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreateGraphUsingImportTaskOutput AWS API Documentation
    #
    class CreateGraphUsingImportTaskOutput < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status,
      :import_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC in which the private graph endpoint needs to be created.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Subnets in which private graph endpoint ENIs are created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   Security groups to be attached to the private graph endpoint..
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreatePrivateGraphEndpointInput AWS API Documentation
    #
    class CreatePrivateGraphEndpointInput < Struct.new(
      :graph_identifier,
      :vpc_id,
      :subnet_ids,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_id
    #   VPC in which the private graph endpoint is created.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Subnets in which the private graph endpoint ENIs are created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Status of the private graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   Endpoint ID of the prviate grpah endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/CreatePrivateGraphEndpointOutput AWS API Documentation
    #
    class CreatePrivateGraphEndpointOutput < Struct.new(
      :vpc_id,
      :subnet_ids,
      :status,
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] skip_snapshot
    #   Determines whether a final graph snapshot is created before the
    #   graph is deleted. If `true` is specified, no graph snapshot is
    #   created. If `false` is specified, a graph snapshot is created before
    #   the graph is deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeleteGraphInput AWS API Documentation
    #
    class DeleteGraphInput < Struct.new(
      :graph_identifier,
      :skip_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the graph.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the graph was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_memory
    #   The number of memory-optimized Neptune Capacity Units (m-NCUs)
    #   allocated to the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   If `true`, the graph has a public endpoint, otherwise not.
    #   @return [Boolean]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings loaded into
    #   the graph. Max = 65535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas for the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the snapshot from which the graph was created, if the
    #   graph was recovered from a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   If `true`, deletion protection was enabled for the graph.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_number
    #   The build number associated with the graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeleteGraphOutput AWS API Documentation
    #
    class DeleteGraphOutput < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :status_reason,
      :create_time,
      :provisioned_memory,
      :endpoint,
      :public_connectivity,
      :vector_search_configuration,
      :replica_count,
      :kms_key_identifier,
      :source_snapshot_id,
      :deletion_protection,
      :build_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_identifier
    #   ID of the graph snapshot to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeleteGraphSnapshotInput AWS API Documentation
    #
    class DeleteGraphSnapshotInput < Struct.new(
      :snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The snapshot name. For example: `my-snapshot-1`.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens. Only lowercase letters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_graph_id
    #   The graph identifier for the graph from which the snapshot was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeleteGraphSnapshotOutput AWS API Documentation
    #
    class DeleteGraphSnapshotOutput < Struct.new(
      :id,
      :name,
      :arn,
      :source_graph_id,
      :snapshot_create_time,
      :status,
      :kms_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC where the private endpoint is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeletePrivateGraphEndpointInput AWS API Documentation
    #
    class DeletePrivateGraphEndpointInput < Struct.new(
      :graph_identifier,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_id
    #   The ID of the VPC where the private endpoint was deleted.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs involved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the delete operation.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC endpoint that was deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/DeletePrivateGraphEndpointOutput AWS API Documentation
    #
    class DeletePrivateGraphEndpointOutput < Struct.new(
      :vpc_id,
      :subnet_ids,
      :status,
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about an edge in a Neptune Analytics graph.
    #
    # @!attribute [rw] count
    #   The number of instances of the edge in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] edge_properties
    #   A list of the properties associated with the edge.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/EdgeStructure AWS API Documentation
    #
    class EdgeStructure < Struct.new(
      :count,
      :edge_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query string to be executed.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The query language the query is written in. Currently only
    #   openCypher is supported.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The data parameters the query can use in JSON format. For example:
    #   \{"name": "john", "age": 20}. (optional)
    #   @return [Hash<String,Hash,Array,String,Numeric,Boolean>]
    #
    # @!attribute [rw] plan_cache
    #   Query plan cache is a feature that saves the query plan and reuses
    #   it on successive executions of the same query. This reduces query
    #   latency, and works for both `READ` and `UPDATE` queries. The plan
    #   cache is an LRU cache with a 5 minute TTL and a capacity of 1000.
    #   @return [String]
    #
    # @!attribute [rw] explain_mode
    #   The explain mode parameter returns a query explain instead of the
    #   actual query results. A query explain can be used to gather insights
    #   about the query execution such as planning decisions, time spent on
    #   each operator, solutions flowing etc.
    #   @return [String]
    #
    # @!attribute [rw] query_timeout_milliseconds
    #   Specifies the query timeout duration, in milliseconds. (optional)
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ExecuteQueryInput AWS API Documentation
    #
    class ExecuteQueryInput < Struct.new(
      :graph_identifier,
      :query_string,
      :language,
      :parameters,
      :plan_cache,
      :explain_mode,
      :query_timeout_milliseconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] payload
    #   The query results.
    #   @return [IO]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ExecuteQueryOutput AWS API Documentation
    #
    class ExecuteQueryOutput < Struct.new(
      :payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is the top-level field for specifying vertex or edge filters. If
    # the ExportFilter is not provided, then all properties for all labels
    # will be exported. If the ExportFilter is provided but is an empty
    # object, then no data will be exported.
    #
    # @!attribute [rw] vertex_filter
    #   Used to specify filters on a per-label basis for vertices. This
    #   allows you to control which vertex labels and properties are
    #   included in the export.
    #   @return [Hash<String,Types::ExportFilterElement>]
    #
    # @!attribute [rw] edge_filter
    #   Used to specify filters on a per-label basis for edges. This allows
    #   you to control which edge labels and properties are included in the
    #   export.
    #   @return [Hash<String,Types::ExportFilterElement>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ExportFilter AWS API Documentation
    #
    class ExportFilter < Struct.new(
      :vertex_filter,
      :edge_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies whihc properties of that label should be included in the
    # export.
    #
    # @!attribute [rw] properties
    #   Each property is defined by a key-value pair, where the key is the
    #   desired output property name (e.g. "name"), and the value is an
    #   object.
    #   @return [Hash<String,Types::ExportFilterPropertyAttributes>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ExportFilterElement AWS API Documentation
    #
    class ExportFilterElement < Struct.new(
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure representing a property's attributes. It is a map object
    # of outputType, sourcePropertyName and multiValueHandling.
    #
    # @!attribute [rw] output_type
    #   Specifies the data type to use for the property in the exported data
    #   (e.g. "String", "Int", "Float"). If a type is not provided,
    #   the export process will determine the type. If a given property is
    #   present as multiple types (e.g. one vertex has "height" stored as
    #   a double, and another edge has it stored as a string), the type will
    #   be of Any type, otherwise, it will be the type of the property as
    #   present in vertices.
    #   @return [String]
    #
    # @!attribute [rw] source_property_name
    #   The name of the property as it exists in the original graph data. If
    #   not provided, it is assumed that the key matches the desired
    #   sourcePropertyName.
    #   @return [String]
    #
    # @!attribute [rw] multi_value_handling
    #   Specifies how to handle properties that have multiple values. Can be
    #   either `TO_LIST` to export all values as a list, or `PICK_FIRST` to
    #   export the first value encountered. If not specified, the default
    #   value is `PICK_FIRST`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ExportFilterPropertyAttributes AWS API Documentation
    #
    class ExportFilterPropertyAttributes < Struct.new(
      :output_type,
      :source_property_name,
      :multi_value_handling)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the specified export task.
    #
    # @!attribute [rw] start_time
    #   The start time of the export task.
    #   @return [Time]
    #
    # @!attribute [rw] time_elapsed_seconds
    #   The time elapsed, in seconds, since the start time of the export
    #   task.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_percentage
    #   The number of progress percentage of the export task.
    #   @return [Integer]
    #
    # @!attribute [rw] num_vertices_written
    #   The number of exported vertices.
    #   @return [Integer]
    #
    # @!attribute [rw] num_edges_written
    #   The number of exported edges.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ExportTaskDetails AWS API Documentation
    #
    class ExportTaskDetails < Struct.new(
      :start_time,
      :time_elapsed_seconds,
      :progress_percentage,
      :num_vertices_written,
      :num_edges_written)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details about an export task.
    #
    # @!attribute [rw] graph_id
    #   The source graph identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow the data to be exported to
    #   the destination.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the export task.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the export task.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The Amazon S3 URI of the export task where data will be exported to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The KMS key identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the export task.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the export task has this status value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ExportTaskSummary AWS API Documentation
    #
    class ExportTaskSummary < Struct.new(
      :graph_id,
      :role_arn,
      :task_id,
      :status,
      :format,
      :destination,
      :kms_key_identifier,
      :parquet_type,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_identifier
    #   The unique identifier of the export task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetExportTaskInput AWS API Documentation
    #
    class GetExportTaskInput < Struct.new(
      :task_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_id
    #   The source graph identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow data to be exported to the
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the export task.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the export task.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The Amazon S3 URI of the export task where data will be exported.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The KMS key identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the export task.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the export task has this status value.
    #   @return [String]
    #
    # @!attribute [rw] export_task_details
    #   The details of the export task.
    #   @return [Types::ExportTaskDetails]
    #
    # @!attribute [rw] export_filter
    #   The export filter of the export task.
    #   @return [Types::ExportFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetExportTaskOutput AWS API Documentation
    #
    class GetExportTaskOutput < Struct.new(
      :graph_id,
      :role_arn,
      :task_id,
      :status,
      :format,
      :destination,
      :kms_key_identifier,
      :parquet_type,
      :status_reason,
      :export_task_details,
      :export_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetGraphInput AWS API Documentation
    #
    class GetGraphInput < Struct.new(
      :graph_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the graph.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the graph has this status.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the graph was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_memory
    #   The number of memory-optimized Neptune Capacity Units (m-NCUs)
    #   allocated to the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   If `true`, the graph has a public endpoint, otherwise not.
    #   @return [Boolean]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings loaded into
    #   the graph. Max = 65535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas for the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the snapshot from which the graph was created, if it was
    #   created from a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   If `true`, deletion protection is enabled for the graph.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_number
    #   The build number of the graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetGraphOutput AWS API Documentation
    #
    class GetGraphOutput < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :status_reason,
      :create_time,
      :provisioned_memory,
      :endpoint,
      :public_connectivity,
      :vector_search_configuration,
      :replica_count,
      :kms_key_identifier,
      :source_snapshot_id,
      :deletion_protection,
      :build_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_identifier
    #   The ID of the snapshot to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetGraphSnapshotInput AWS API Documentation
    #
    class GetGraphSnapshotInput < Struct.new(
      :snapshot_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The snapshot name. For example: `my-snapshot-1`.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens. Only lowercase letters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_graph_id
    #   The graph identifier for the graph for which a snapshot is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetGraphSnapshotOutput AWS API Documentation
    #
    class GetGraphSnapshotOutput < Struct.new(
      :id,
      :name,
      :arn,
      :source_graph_id,
      :snapshot_create_time,
      :status,
      :kms_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The summary mode can take one of two values: `basic` (the default),
    #   and `detailed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetGraphSummaryInput AWS API Documentation
    #
    class GetGraphSummaryInput < Struct.new(
      :graph_identifier,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] version
    #   Display the version of this tool.
    #   @return [String]
    #
    # @!attribute [rw] last_statistics_computation_time
    #   The timestamp, in ISO 8601 format, of the time at which Neptune
    #   Analytics last computed statistics.
    #   @return [Time]
    #
    # @!attribute [rw] graph_summary
    #   The graph summary.
    #   @return [Types::GraphDataSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetGraphSummaryOutput AWS API Documentation
    #
    class GetGraphSummaryOutput < Struct.new(
      :version,
      :last_statistics_computation_time,
      :graph_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_identifier
    #   The unique identifier of the import task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetImportTaskInput AWS API Documentation
    #
    class GetImportTaskInput < Struct.new(
      :task_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_id
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the import task.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A URL identifying to the location of the data to be imported. This
    #   can be an Amazon S3 path, or can point to a Neptune database
    #   endpoint or snapshot
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the format of S3 data to be imported. Valid values are
    #   `CSV`, which identifies the [Gremlin CSV format][1] or `OPENCYPHER`,
    #   which identies the [openCypher load format][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the import task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow access to the data that is
    #   to be imported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the import task:
    #
    #   * **INITIALIZING**   –   The necessary resources needed to create
    #     the graph are being prepared.
    #
    #   * **ANALYZING\_DATA**   –   The data is being analyzed to determine
    #     the optimal infrastructure configuration for the new graph.
    #
    #   * **RE\_PROVISIONING**   –   The data did not fit into the
    #     provisioned graph, so it is being re-provisioned with more
    #     capacity.
    #
    #   * **IMPORTING**   –   The data is being loaded.
    #
    #   * **ERROR\_ENCOUNTERED**   –   An error has been encountered while
    #     trying to create the graph and import the data.
    #
    #   * **ERROR\_ENCOUNTERED\_ROLLING\_BACK**   –   Because of the error
    #     that was encountered, the graph is being rolled back and all its
    #     resources released.
    #
    #   * **SUCCEEDED**   –   Graph creation and data loading succeeded.
    #
    #   * **FAILED**   –   Graph creation or data loading failed. When the
    #     status is `FAILED`, you can use `get-graphs` to get more
    #     information about the state of the graph.
    #
    #   * **CANCELLING**   –   Because you cancelled the import task,
    #     cancellation is in progress.
    #
    #   * **CANCELLED**   –   You have successfully cancelled the import
    #     task.
    #   @return [String]
    #
    # @!attribute [rw] import_options
    #   Contains options for controlling the import process. For example, if
    #   the `failOnError` key is set to `false`, the import skips problem
    #   data and attempts to continue (whereas if set to `true`, the
    #   default, or if omitted, the import operation halts immediately when
    #   an error is encountered.
    #   @return [Types::ImportOptions]
    #
    # @!attribute [rw] import_task_details
    #   Contains details about the specified import task.
    #   @return [Types::ImportTaskDetails]
    #
    # @!attribute [rw] attempt_number
    #   The number of the current attempts to execute the import task.
    #   @return [Integer]
    #
    # @!attribute [rw] status_reason
    #   The reason that the import task has this status value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetImportTaskOutput AWS API Documentation
    #
    class GetImportTaskOutput < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status,
      :import_options,
      :import_task_details,
      :attempt_number,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC where the private endpoint is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetPrivateGraphEndpointInput AWS API Documentation
    #
    class GetPrivateGraphEndpointInput < Struct.new(
      :graph_identifier,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vpc_id
    #   The ID of the VPC where the private endpoint is located.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs involved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The current status of the private endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the private endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetPrivateGraphEndpointOutput AWS API Documentation
    #
    class GetPrivateGraphEndpointOutput < Struct.new(
      :vpc_id,
      :subnet_ids,
      :status,
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] query_id
    #   The ID of the query in question.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetQueryInput AWS API Documentation
    #
    class GetQueryInput < Struct.new(
      :graph_identifier,
      :query_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the query in question.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The query in question.
    #   @return [String]
    #
    # @!attribute [rw] waited
    #   Indicates how long the query waited, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed
    #   The number of milliseconds the query has been running.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   State of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GetQueryOutput AWS API Documentation
    #
    class GetQueryOutput < Struct.new(
      :id,
      :query_string,
      :waited,
      :elapsed,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the graph.
    #
    # @!attribute [rw] num_nodes
    #   The number of nodes in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_edges
    #   The number of edges in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_node_labels
    #   The number of distinct node labels in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_edge_labels
    #   The number of unique edge labels in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] node_labels
    #   A list of distinct node labels in the graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] edge_labels
    #   A list of the edge labels in the graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] num_node_properties
    #   The number of distinct node properties in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] num_edge_properties
    #   The number of edge properties in the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] node_properties
    #   A list of the distinct node properties in the graph, along with the
    #   count of nodes where each property is used.
    #   @return [Array<Hash<String,Integer>>]
    #
    # @!attribute [rw] edge_properties
    #   A list of the distinct edge properties in the graph, along with the
    #   count of edges where each property is used.
    #   @return [Array<Hash<String,Integer>>]
    #
    # @!attribute [rw] total_node_property_values
    #   The total number of usages of all node properties.
    #   @return [Integer]
    #
    # @!attribute [rw] total_edge_property_values
    #   The total number of usages of all edge properties.
    #   @return [Integer]
    #
    # @!attribute [rw] node_structures
    #   This field is only present when the requested mode is DETAILED. It
    #   contains a list of node structures.
    #   @return [Array<Types::NodeStructure>]
    #
    # @!attribute [rw] edge_structures
    #   This field is only present when the requested mode is DETAILED. It
    #   contains a list of edge structures.
    #   @return [Array<Types::EdgeStructure>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GraphDataSummary AWS API Documentation
    #
    class GraphDataSummary < Struct.new(
      :num_nodes,
      :num_edges,
      :num_node_labels,
      :num_edge_labels,
      :node_labels,
      :edge_labels,
      :num_node_properties,
      :num_edge_properties,
      :node_properties,
      :edge_properties,
      :total_node_property_values,
      :total_edge_property_values,
      :node_structures,
      :edge_structures)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a graph snapshot.
    #
    # @!attribute [rw] id
    #   The unique identifier of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The snapshot name. For example: `my-snapshot-1`.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens. Only lowercase letters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_graph_id
    #   The graph identifier for the graph for which a snapshot is to be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the graph snapshot.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GraphSnapshotSummary AWS API Documentation
    #
    class GraphSnapshotSummary < Struct.new(
      :id,
      :name,
      :arn,
      :source_graph_id,
      :snapshot_create_time,
      :status,
      :kms_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary details about a graph.
    #
    # @!attribute [rw] id
    #   The unique identifier of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the graph.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_memory
    #   The number of memory-optimized Neptune Capacity Units (m-NCUs)
    #   allocated to the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] public_connectivity
    #   If `true`, the graph has a public endpoint, otherwise not.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas for the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   If `true`, deletion protection is enabled for the graph.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/GraphSummary AWS API Documentation
    #
    class GraphSummary < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :provisioned_memory,
      :public_connectivity,
      :endpoint,
      :replica_count,
      :kms_key_identifier,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options for how to perform an import.
    #
    # @note ImportOptions is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ImportOptions is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ImportOptions corresponding to the set member.
    #
    # @!attribute [rw] neptune
    #   Options for importing data from a Neptune database.
    #   @return [Types::NeptuneImportOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ImportOptions AWS API Documentation
    #
    class ImportOptions < Struct.new(
      :neptune,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Neptune < ImportOptions; end
      class Unknown < ImportOptions; end
    end

    # Contains details about an import task.
    #
    # @!attribute [rw] status
    #   Status of the import task.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Time at which the import task started.
    #   @return [Time]
    #
    # @!attribute [rw] time_elapsed_seconds
    #   Seconds elapsed since the import task started.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_percentage
    #   The percentage progress so far.
    #   @return [Integer]
    #
    # @!attribute [rw] error_count
    #   The number of errors encountered so far.
    #   @return [Integer]
    #
    # @!attribute [rw] error_details
    #   Details about the errors that have been encountered.
    #   @return [String]
    #
    # @!attribute [rw] statement_count
    #   The number of statements in the import task.
    #   @return [Integer]
    #
    # @!attribute [rw] dictionary_entry_count
    #   The number of dictionary entries in the import task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ImportTaskDetails AWS API Documentation
    #
    class ImportTaskDetails < Struct.new(
      :status,
      :start_time,
      :time_elapsed_seconds,
      :progress_percentage,
      :error_count,
      :error_details,
      :statement_count,
      :dictionary_entry_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an import task.
    #
    # @!attribute [rw] graph_id
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the import task.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A URL identifying to the location of the data to be imported. This
    #   can be an Amazon S3 path, or can point to a Neptune database
    #   endpoint or snapshot
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the format of S3 data to be imported. Valid values are
    #   `CSV`, which identifies the [Gremlin CSV format][1] or `OPENCYPHER`,
    #   which identies the [openCypher load format][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html
    #   [2]: https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the import task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow access to the data that is
    #   to be imported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of the import task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ImportTaskSummary AWS API Documentation
    #
    class ImportTaskSummary < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A failure occurred on the server.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token used to paginate input.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of export tasks to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListExportTasksInput AWS API Documentation
    #
    class ListExportTasksInput < Struct.new(
      :graph_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   The requested list of export tasks.
    #   @return [Array<Types::ExportTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListExportTasksOutput AWS API Documentation
    #
    class ListExportTasksOutput < Struct.new(
      :tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results
    #   from where the previous response left off. When this value is
    #   present in output, it indicates that there are more results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of records to return in the command's output.
    #
    #   If the total number of records available is more than the value
    #   specified, `nextToken` is provided in the command's output. To
    #   resume pagination, provide the `nextToken` output value in the
    #   `nextToken` argument of a subsequent command. Do not use the
    #   `nextToken` response element directly outside of the Amazon CLI.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListGraphSnapshotsInput AWS API Documentation
    #
    class ListGraphSnapshotsInput < Struct.new(
      :graph_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_snapshots
    #   The requested list of snapshots.
    #   @return [Array<Types::GraphSnapshotSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results
    #   from where the previous response left off. When this value is
    #   present in output, it indicates that there are more results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListGraphSnapshotsOutput AWS API Documentation
    #
    class ListGraphSnapshotsOutput < Struct.new(
      :graph_snapshots,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results
    #   from where the previous response left off. When this value is
    #   present in output, it indicates that there are more results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of records to return in the command's output.
    #
    #   If the total number of records available is more than the value
    #   specified, `nextToken` is provided in the command's output. To
    #   resume pagination, provide the `nextToken` output value in the
    #   `nextToken` argument of a subsequent command. Do not use the
    #   `nextToken` response element directly outside of the Amazon CLI.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListGraphsInput AWS API Documentation
    #
    class ListGraphsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graphs
    #   A list of the graphs.
    #   @return [Array<Types::GraphSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results
    #   from where the previous response left off. When this value is
    #   present in output, it indicates that there are more results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListGraphsOutput AWS API Documentation
    #
    class ListGraphsOutput < Struct.new(
      :graphs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results
    #   from where the previous response left off. When this value is
    #   present in output, it indicates that there are more results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of records to return in the command's output.
    #
    #   If the total number of records available is more than the value
    #   specified, `nextToken` is provided in the command's output. To
    #   resume pagination, provide the `nextToken` output value in the
    #   `nextToken` argument of a subsequent command. Do not use the
    #   `nextToken` response element directly outside of the Amazon CLI.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListImportTasksInput AWS API Documentation
    #
    class ListImportTasksInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tasks
    #   The requested list of import tasks.
    #   @return [Array<Types::ImportTaskSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results
    #   from where the previous response left off. When this value is
    #   present in output, it indicates that there are more results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListImportTasksOutput AWS API Documentation
    #
    class ListImportTasksOutput < Struct.new(
      :tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results
    #   from where the previous response left off. When this value is
    #   present in output, it indicates that there are more results to
    #   retrieve.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of records to return in the command's output.
    #
    #   If the total number of records available is more than the value
    #   specified, `nextToken` is provided in the command's output. To
    #   resume pagination, provide the `nextToken` output value in the
    #   `nextToken` argument of a subsequent command. Do not use the
    #   `nextToken` response element directly outside of the Amazon CLI.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListPrivateGraphEndpointsInput AWS API Documentation
    #
    class ListPrivateGraphEndpointsInput < Struct.new(
      :graph_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] private_graph_endpoints
    #   A list of private endpoints for the specified Neptune Analytics
    #   graph.
    #   @return [Array<Types::PrivateGraphEndpointSummary>]
    #
    # @!attribute [rw] next_token
    #   Pagination token used to paginate output.
    #
    #   When this value is provided as input, the service returns results
    #   from where the previous response left off. When this value is
    #   present in output, it indicates that there are more results to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListPrivateGraphEndpointsOutput AWS API Documentation
    #
    class ListPrivateGraphEndpointsOutput < Struct.new(
      :private_graph_endpoints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to be fetched by the API.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   Filtered list of queries based on state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListQueriesInput AWS API Documentation
    #
    class ListQueriesInput < Struct.new(
      :graph_identifier,
      :max_results,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queries
    #   A list of current openCypher queries.
    #   @return [Array<Types::QuerySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListQueriesOutput AWS API Documentation
    #
    class ListQueriesOutput < Struct.new(
      :queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of metadata tags associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Options for how to import Neptune data.
    #
    # @!attribute [rw] s3_export_path
    #   The path to an S3 bucket from which to import data.
    #   @return [String]
    #
    # @!attribute [rw] s3_export_kms_key_id
    #   The KMS key to use to encrypt data in the S3 bucket where the graph
    #   data is exported
    #   @return [String]
    #
    # @!attribute [rw] preserve_default_vertex_labels
    #   Neptune Analytics supports label-less vertices and no labels are
    #   assigned unless one is explicitly provided. Neptune assigns default
    #   labels when none is explicitly provided. When importing the data
    #   into Neptune Analytics, the default vertex labels can be omitted by
    #   setting *preserveDefaultVertexLabels* to false. Note that if the
    #   vertex only has default labels, and has no other properties or
    #   edges, then the vertex will effectively not get imported into
    #   Neptune Analytics when preserveDefaultVertexLabels is set to false.
    #   @return [Boolean]
    #
    # @!attribute [rw] preserve_edge_ids
    #   Neptune Analytics currently does not support user defined edge ids.
    #   The edge ids are not imported by default. They are imported if
    #   *preserveEdgeIds* is set to true, and ids are stored as properties
    #   on the relationships with the property name *neptuneEdgeId*.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/NeptuneImportOptions AWS API Documentation
    #
    class NeptuneImportOptions < Struct.new(
      :s3_export_path,
      :s3_export_kms_key_id,
      :preserve_default_vertex_labels,
      :preserve_edge_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a node.
    #
    # @!attribute [rw] count
    #   The number of instances of this node.
    #   @return [Integer]
    #
    # @!attribute [rw] node_properties
    #   Properties associated with this node.
    #   @return [Array<String>]
    #
    # @!attribute [rw] distinct_outgoing_edge_labels
    #   The outgoing edge labels associated with this node.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/NodeStructure AWS API Documentation
    #
    class NodeStructure < Struct.new(
      :count,
      :node_properties,
      :distinct_outgoing_edge_labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a private graph endpoint.
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC in which the private graph endpoint is located.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The subnet IDs associated with the private graph endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the private graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_id
    #   The ID of the VPC endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/PrivateGraphEndpointSummary AWS API Documentation
    #
    class PrivateGraphEndpointSummary < Struct.new(
      :vpc_id,
      :subnet_ids,
      :status,
      :vpc_endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the query listed.
    #
    # @!attribute [rw] id
    #   A string representation of the id of the query.
    #   @return [String]
    #
    # @!attribute [rw] query_string
    #   The actual query text. The `queryString` may be truncated if the
    #   actual query string is too long.
    #   @return [String]
    #
    # @!attribute [rw] waited
    #   The amount of time, in milliseconds, the query has waited in the
    #   queue before being picked up by a worker thread.
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed
    #   The running time of the query, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   State of the query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/QuerySummary AWS API Documentation
    #
    class QuerySummary < Struct.new(
      :id,
      :query_string,
      :waited,
      :elapsed,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   ID of the graph to reset.
    #   @return [String]
    #
    # @!attribute [rw] skip_snapshot
    #   Determines whether a final graph snapshot is created before the
    #   graph data is deleted. If set to `true`, no graph snapshot is
    #   created. If set to `false`, a graph snapshot is created before the
    #   data is deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ResetGraphInput AWS API Documentation
    #
    class ResetGraphInput < Struct.new(
      :graph_identifier,
      :skip_snapshot)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the graph.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the graph has this status.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the graph was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_memory
    #   The number of memory-optimized Neptune Capacity Units (m-NCUs)
    #   allocated to the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   If `true`, the graph has a public endpoint, otherwise not.
    #   @return [Boolean]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings loaded into
    #   the graph. Max = 65535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas for the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the snapshot from which the graph was created, if any.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   If `true`, deletion protection is enabled for the graph.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_number
    #   The build number of the graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ResetGraphOutput AWS API Documentation
    #
    class ResetGraphOutput < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :status_reason,
      :create_time,
      :provisioned_memory,
      :endpoint,
      :public_connectivity,
      :vector_search_configuration,
      :replica_count,
      :kms_key_identifier,
      :source_snapshot_id,
      :deletion_protection,
      :build_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified resource could not be located.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_identifier
    #   The ID of the snapshot in question.
    #   @return [String]
    #
    # @!attribute [rw] graph_name
    #   A name for the new Neptune Analytics graph to be created from the
    #   snapshot.
    #
    #   The name must contain from 1 to 63 letters, numbers, or hyphens, and
    #   its first character must be a letter. It cannot end with a hyphen or
    #   contain two consecutive hyphens. Only lowercase letters are allowed.
    #   @return [String]
    #
    # @!attribute [rw] provisioned_memory
    #   The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to
    #   use for the graph.
    #
    #   Min = 16
    #   @return [Integer]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the graph has deletion protection
    #   enabled. The graph can't be deleted when deletion protection is
    #   enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Adds metadata tags to the snapshot. These tags can also be used with
    #   cost allocation reporting, or used in a Condition statement in an
    #   IAM policy.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas in other AZs. Min =0, Max = 2, Default =1
    #
    #   Additional charges equivalent to the m-NCUs selected for the graph
    #   apply for each replica.
    #   @return [Integer]
    #
    # @!attribute [rw] public_connectivity
    #   Specifies whether or not the graph can be reachable over the
    #   internet. All access to graphs is IAM authenticated. (`true` to
    #   enable, or `false` to disable).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/RestoreGraphFromSnapshotInput AWS API Documentation
    #
    class RestoreGraphFromSnapshotInput < Struct.new(
      :snapshot_identifier,
      :graph_name,
      :provisioned_memory,
      :deletion_protection,
      :tags,
      :replica_count,
      :public_connectivity)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the graph.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the graph has this status.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the graph was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_memory
    #   The number of memory-optimized Neptune Capacity Units (m-NCUs)
    #   allocated to the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   If `true`, the graph has a public endpoint, otherwise not.
    #   @return [Boolean]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings loaded into
    #   the graph. Max = 65535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas for the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the snapshot from which the graph was created, if any.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   If `true`, deletion protection is enabled for the graph.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_number
    #   The build number of the graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/RestoreGraphFromSnapshotOutput AWS API Documentation
    #
    class RestoreGraphFromSnapshotOutput < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :status_reason,
      :create_time,
      :provisioned_memory,
      :endpoint,
      :public_connectivity,
      :vector_search_configuration,
      :replica_count,
      :kms_key_identifier,
      :source_snapshot_id,
      :deletion_protection,
      :build_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service quota was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource that exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeded quota. Ex: Graph, Snapshot
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code that exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   Service quota code of the resource for which quota was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The source graph identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow data to be exported to the
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the export task.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The Amazon S3 URI where data will be exported to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The KMS key identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the export task.
    #   @return [String]
    #
    # @!attribute [rw] export_filter
    #   The export filter of the export task.
    #   @return [Types::ExportFilter]
    #
    # @!attribute [rw] tags
    #   Tags to be applied to the export task.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/StartExportTaskInput AWS API Documentation
    #
    class StartExportTaskInput < Struct.new(
      :graph_identifier,
      :role_arn,
      :format,
      :destination,
      :kms_key_identifier,
      :parquet_type,
      :export_filter,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_id
    #   The source graph identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow data to be exported to the
    #   destination.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the export task.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the export task.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The Amazon S3 URI of the export task where data will be exported to.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The KMS key identifier of the export task.
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the export task.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the export task has this status value.
    #   @return [String]
    #
    # @!attribute [rw] export_filter
    #   The export filter of the export task.
    #   @return [Types::ExportFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/StartExportTaskOutput AWS API Documentation
    #
    class StartExportTaskOutput < Struct.new(
      :graph_id,
      :role_arn,
      :task_id,
      :status,
      :format,
      :destination,
      :kms_key_identifier,
      :parquet_type,
      :status_reason,
      :export_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/StartGraphInput AWS API Documentation
    #
    class StartGraphInput < Struct.new(
      :graph_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the graph.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the graph has this status.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the graph was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_memory
    #   The number of memory-optimized Neptune Capacity Units (m-NCUs)
    #   allocated to the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   If `true`, the graph has a public endpoint, otherwise not.
    #   @return [Boolean]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings loaded into
    #   the graph. Max = 65535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas for the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the snapshot from which the graph was created, if it was
    #   created from a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   If `true`, deletion protection is enabled for the graph.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_number
    #   The build number of the graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/StartGraphOutput AWS API Documentation
    #
    class StartGraphOutput < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :status_reason,
      :create_time,
      :provisioned_memory,
      :endpoint,
      :public_connectivity,
      :vector_search_configuration,
      :replica_count,
      :kms_key_identifier,
      :source_snapshot_id,
      :deletion_protection,
      :build_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_options
    #   Options for how to perform an import.
    #   @return [Types::ImportOptions]
    #
    # @!attribute [rw] fail_on_error
    #   If set to true, the task halts when an import error is encountered.
    #   If set to false, the task skips the data that caused the error and
    #   continues if possible.
    #   @return [Boolean]
    #
    # @!attribute [rw] source
    #   A URL identifying the location of the data to be imported. This can
    #   be an Amazon S3 path, or can point to a Neptune database endpoint or
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the format of Amazon S3 data to be imported. Valid values
    #   are CSV, which identifies the Gremlin CSV format or OPENCYPHER,
    #   which identies the openCypher load format.
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the import task.
    #   @return [String]
    #
    # @!attribute [rw] blank_node_handling
    #   The method to handle blank nodes in the dataset. Currently, only
    #   `convertToIri` is supported, meaning blank nodes are converted to
    #   unique IRIs at load time. Must be provided when format is
    #   `ntriples`. For more information, see [Handling RDF values][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling
    #   @return [String]
    #
    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow access to the data that is
    #   to be imported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/StartImportTaskInput AWS API Documentation
    #
    class StartImportTaskInput < Struct.new(
      :import_options,
      :fail_on_error,
      :source,
      :format,
      :parquet_type,
      :blank_node_handling,
      :graph_identifier,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_id
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the import task.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   A URL identifying the location of the data to be imported. This can
    #   be an Amazon S3 path, or can point to a Neptune database endpoint or
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Specifies the format of Amazon S3 data to be imported. Valid values
    #   are CSV, which identifies the Gremlin CSV format or OPENCYPHER,
    #   which identies the openCypher load format.
    #   @return [String]
    #
    # @!attribute [rw] parquet_type
    #   The parquet type of the import task.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that will allow access to the data that is
    #   to be imported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the import task.
    #   @return [String]
    #
    # @!attribute [rw] import_options
    #   Options for how to perform an import.
    #   @return [Types::ImportOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/StartImportTaskOutput AWS API Documentation
    #
    class StartImportTaskOutput < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status,
      :import_options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/StopGraphInput AWS API Documentation
    #
    class StopGraphInput < Struct.new(
      :graph_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the graph.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the graph has this status.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the graph was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_memory
    #   The number of memory-optimized Neptune Capacity Units (m-NCUs)
    #   allocated to the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   If true, the graph has a public endpoint, otherwise not.
    #   @return [Boolean]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings loaded into
    #   the graph. Max = 65535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas for the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the snapshot from which the graph was created, if it was
    #   created from a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   If `true`, deletion protection is enabled for the graph.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_number
    #   The build number of the graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/StopGraphOutput AWS API Documentation
    #
    class StopGraphOutput < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :status_reason,
      :create_time,
      :provisioned_memory,
      :endpoint,
      :public_connectivity,
      :vector_search_configuration,
      :replica_count,
      :kms_key_identifier,
      :source_snapshot_id,
      :deletion_protection,
      :build_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of the resource for which tags need to be added.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Neptune Analytics resource.
    #
    #   The tags are metadata that are specified as a list of key-value
    #   pairs:
    #
    #   **Key** (string)   –   A key is the required name of the tag. The
    #   string value can be from 1 to 128 Unicode characters in length. It
    #   can't be prefixed with `aws:` and can only contain the set of
    #   Unicode characters specified by this Java regular expression:
    #   `"^([\p{L}\p{Z}\p{N}_.:/=+\-]*)$")`.
    #
    #   **Value** (string)   –   A value is the optional value of the tag.
    #   The string value can be from 1 to 256 Unicode characters in length.
    #   It can't be prefixed with `aws:` and can only contain the set of
    #   Unicode characters specified by this Java regular expression:
    #   `"^([\p{L}\p{Z}\p{N}_.:/=+\-]*)$")`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # The exception was interrupted by throttling.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request cannot be processed due to known reasons. Eg. partition full.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the unprocessable exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/UnprocessableException AWS API Documentation
    #
    class UnprocessableException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of the resource whose tag needs to be removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Tag keys for the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] graph_identifier
    #   The unique identifier of the Neptune Analytics graph.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   Specifies whether or not the graph can be reachable over the
    #   internet. All access to graphs is IAM authenticated. (`true` to
    #   enable, or `false` to disable.
    #   @return [Boolean]
    #
    # @!attribute [rw] provisioned_memory
    #   The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to
    #   use for the graph.
    #
    #   Min = 16
    #   @return [Integer]
    #
    # @!attribute [rw] deletion_protection
    #   A value that indicates whether the graph has deletion protection
    #   enabled. The graph can't be deleted when deletion protection is
    #   enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/UpdateGraphInput AWS API Documentation
    #
    class UpdateGraphInput < Struct.new(
      :graph_identifier,
      :public_connectivity,
      :provisioned_memory,
      :deletion_protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the graph.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the graph.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN associated with the graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the graph.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason that the graph has this status.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time at which the graph was created.
    #   @return [Time]
    #
    # @!attribute [rw] provisioned_memory
    #   The number of memory-optimized Neptune Capacity Units (m-NCUs)
    #   allocated to the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint
    #   The graph endpoint.
    #   @return [String]
    #
    # @!attribute [rw] public_connectivity
    #   If `true`, the graph has a public endpoint, otherwise not.
    #   @return [Boolean]
    #
    # @!attribute [rw] vector_search_configuration
    #   Specifies the number of dimensions for vector embeddings loaded into
    #   the graph. Max = 65535
    #   @return [Types::VectorSearchConfiguration]
    #
    # @!attribute [rw] replica_count
    #   The number of replicas for the graph.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_identifier
    #   The ID of the KMS key used to encrypt and decrypt graph data.
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_id
    #   The ID of the snapshot from which the graph was created, if any.
    #   @return [String]
    #
    # @!attribute [rw] deletion_protection
    #   If `true`, deletion protection is enabled for the graph.
    #   @return [Boolean]
    #
    # @!attribute [rw] build_number
    #   The build number of the graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/UpdateGraphOutput AWS API Documentation
    #
    class UpdateGraphOutput < Struct.new(
      :id,
      :name,
      :arn,
      :status,
      :status_reason,
      :create_time,
      :provisioned_memory,
      :endpoint,
      :public_connectivity,
      :vector_search_configuration,
      :replica_count,
      :kms_key_identifier,
      :source_snapshot_id,
      :deletion_protection,
      :build_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # A resource could not be validated.
    #
    # @!attribute [rw] message
    #   A message describing the problem.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the resource could not be validated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the number of dimensions for vector embeddings loaded into
    # the graph. Max = 65535
    #
    # @!attribute [rw] dimension
    #   The number of dimensions.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/neptune-graph-2023-11-29/VectorSearchConfiguration AWS API Documentation
    #
    class VectorSearchConfiguration < Struct.new(
      :dimension)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

