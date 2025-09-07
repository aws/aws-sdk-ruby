# frozen_string_literal: true

# This is generated code!

module Aws::NeptuneGraph
  # This module contains the types returned by client operations.
  module Types

    # <p>Raised in case of an authentication or authorization failure.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_identifier
    #   <p>The unique identifier of the export task.</p>
    #   @return [String]
    class CancelExportTaskInput < Struct.new(
      :task_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_id
    #   <p>The source graph identifier of the cancelled export task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow the exporting of data to the destination.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the export task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the export task. The status is <code>CANCELLING</code> when the export task is cancelled.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the cancelled export task.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The Amazon S3 URI of the cancelled export task where data will be exported to.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The KMS key identifier of the cancelled export task.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the cancelled export task.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the export task has this status value.</p>
    #   @return [String]
    class CancelExportTaskOutput < Struct.new(
      :graph_id,
      :role_arn,
      :task_id,
      :status,
      :format,
      :destination,
      :kms_key_identifier,
      :parquet_type,
      :status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_identifier
    #   <p>The unique identifier of the import task.</p>
    #   @return [String]
    class CancelImportTaskInput < Struct.new(
      :task_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_id
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the import task.</p>
    #   @return [String]
    # @!attribute source
    #   <p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV format</a> or <code>OPENCYPHER</code>, which identies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher load format</a>.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the cancelled import task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Current status of the task. Status is CANCELLING when the import task is cancelled.</p>
    #   @return [String]
    class CancelImportTaskOutput < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The unique identifier of the query to cancel.</p>
    #   @return [String]
    class CancelQueryInput < Struct.new(
      :graph_identifier,
      :query_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Raised when a conflict is encountered.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the conflict exception.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_name
    #   <p>A name for the new Neptune Analytics graph to be created.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Adds metadata tags to the new graph. These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>
    #   @return [Hash<String, String>]
    # @!attribute public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated. (<code>true</code> to enable, or <code>false</code> to disable.</p>
    #   @return [Boolean]
    # @!attribute kms_key_identifier
    #   <p>Specifies a KMS key to use to encrypt data in the new graph.</p>
    #   @return [String]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings that will be loaded into the graph. The value is specified as <code>dimension=</code>value. Max = 65,535</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas in other AZs. Min =0, Max = 2, Default = 1.</p> <important> <p> Additional charges equivalent to the m-NCUs selected for the graph apply for each replica. </p> </important>
    #   @return [Integer]
    # @!attribute deletion_protection
    #   <p>Indicates whether or not to enable deletion protection on the graph. The graph can’t be deleted when deletion protection is enabled. (<code>true</code> or <code>false</code>).</p>
    #   @return [Boolean]
    # @!attribute provisioned_memory
    #   <p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Min = 16</p>
    #   @return [Integer]
    class CreateGraphInput < Struct.new(
      :graph_name,
      :tags,
      :public_connectivity,
      :kms_key_identifier,
      :vector_search_configuration,
      :replica_count,
      :deletion_protection,
      :provisioned_memory,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The graph name. For example: <code>my-graph-1</code>.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the graph.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason the status was given.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time when the graph was created.</p>
    #   @return [Time]
    # @!attribute provisioned_memory
    #   <p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.</p> <p>Min = 16</p>
    #   @return [Integer]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated.</p> <note> <p>If enabling public connectivity for the first time, there will be a delay while it is enabled.</p> </note>
    #   @return [Boolean]
    # @!attribute vector_search_configuration
    #   <p>The vector-search configuration for the graph, which specifies the vector dimension to use in the vector index, if any.</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas in other AZs.</p> <p>Default: If not specified, the default value is 1.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>Specifies the KMS key used to encrypt data in the new graph.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>The ID of the source graph.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.</p>
    #   @return [Boolean]
    # @!attribute build_number
    #   <p>The build number of the graph software.</p>
    #   @return [String]
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
      :build_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute snapshot_name
    #   <p>The snapshot name. For example: <code>my-snapshot-1</code>.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Adds metadata tags to the new graph. These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>
    #   @return [Hash<String, String>]
    class CreateGraphSnapshotInput < Struct.new(
      :graph_identifier,
      :snapshot_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the snapshot created.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the snapshot created.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the snapshot created.</p>
    #   @return [String]
    # @!attribute source_graph_id
    #   <p>The Id of the Neptune Analytics graph from which the snapshot is created.</p>
    #   @return [String]
    # @!attribute snapshot_create_time
    #   <p>The snapshot creation time</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current state of the snapshot.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    class CreateGraphSnapshotOutput < Struct.new(
      :id,
      :name,
      :arn,
      :source_graph_id,
      :snapshot_create_time,
      :status,
      :kms_key_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_name
    #   <p>A name for the new Neptune Analytics graph to be created.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Adds metadata tags to the new graph. These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>
    #   @return [Hash<String, String>]
    # @!attribute public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated. (<code>true</code> to enable, or <code>false</code> to disable).</p>
    #   @return [Boolean]
    # @!attribute kms_key_identifier
    #   <p>Specifies a KMS key to use to encrypt data imported into the new graph.</p>
    #   @return [String]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings that will be loaded into the graph. The value is specified as <code>dimension=</code>value. Max = 65,535 </p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas in other AZs to provision on the new graph after import. Default = 0, Min = 0, Max = 2.</p> <important> <p> Additional charges equivalent to the m-NCUs selected for the graph apply for each replica. </p> </important>
    #   @return [Integer]
    # @!attribute deletion_protection
    #   <p>Indicates whether or not to enable deletion protection on the graph. The graph can’t be deleted when deletion protection is enabled. (<code>true</code> or <code>false</code>).</p>
    #   @return [Boolean]
    # @!attribute import_options
    #   <p>Contains options for controlling the import process. For example, if the <code>failOnError</code> key is set to <code>false</code>, the import skips problem data and attempts to continue (whereas if set to <code>true</code>, the default, or if omitted, the import operation halts immediately when an error is encountered.</p>
    #   @return [Types::ImportOptions]
    # @!attribute max_provisioned_memory
    #   <p>The maximum provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Default: 1024, or the approved upper limit for your account.</p> <p> If both the minimum and maximum values are specified, the final <code>provisioned-memory</code> will be chosen per the actual size of your imported data. If neither value is specified, 128 m-NCUs are used.</p>
    #   @return [Integer]
    # @!attribute min_provisioned_memory
    #   <p>The minimum provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph. Default: 16</p>
    #   @return [Integer]
    # @!attribute fail_on_error
    #   <p>If set to <code>true</code>, the task halts when an import error is encountered. If set to <code>false</code>, the task skips the data that caused the error and continues if possible.</p>
    #   @return [Boolean]
    # @!attribute source
    #   <p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV format</a>, <code>OPEN_CYPHER</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher load format</a>, or <code>ntriples</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html">RDF n-triples</a> format.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the import task.</p>
    #   @return [String]
    # @!attribute blank_node_handling
    #   <p>The method to handle blank nodes in the dataset. Currently, only <code>convertToIri</code> is supported, meaning blank nodes are converted to unique IRIs at load time. Must be provided when format is <code>ntriples</code>. For more information, see <a href="https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling">Handling RDF values</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    #   @return [String]
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
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_id
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the import task.</p>
    #   @return [String]
    # @!attribute source
    #   <p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV format</a>, <code>OPENCYPHER</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher load format</a>, or <code>ntriples</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html">RDF n-triples</a> format.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the import task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import task.</p>
    #   @return [String]
    # @!attribute import_options
    #   <p>Contains options for controlling the import process. For example, if the <code>failOnError</code> key is set to <code>false</code>, the import skips problem data and attempts to continue (whereas if set to <code>true</code>, the default, or if omitted, the import operation halts immediately when an error is encountered.</p>
    #   @return [Types::ImportOptions]
    class CreateGraphUsingImportTaskOutput < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status,
      :import_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p> The VPC in which the private graph endpoint needs to be created.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Subnets in which private graph endpoint ENIs are created.</p>
    #   @return [Array<String>]
    # @!attribute vpc_security_group_ids
    #   <p>Security groups to be attached to the private graph endpoint..</p>
    #   @return [Array<String>]
    class CreatePrivateGraphEndpointInput < Struct.new(
      :graph_identifier,
      :vpc_id,
      :subnet_ids,
      :vpc_security_group_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_id
    #   <p>VPC in which the private graph endpoint is created.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Subnets in which the private graph endpoint ENIs are created. </p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>Status of the private graph endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>Endpoint ID of the prviate grpah endpoint.</p>
    #   @return [String]
    class CreatePrivateGraphEndpointOutput < Struct.new(
      :vpc_id,
      :subnet_ids,
      :status,
      :vpc_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute skip_snapshot
    #   <p>Determines whether a final graph snapshot is created before the graph is deleted. If <code>true</code> is specified, no graph snapshot is created. If <code>false</code> is specified, a graph snapshot is created before the graph is deleted.</p>
    #   @return [Boolean]
    class DeleteGraphInput < Struct.new(
      :graph_identifier,
      :skip_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the graph.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN associated with the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the graph.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the status of the graph.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the graph was created.</p>
    #   @return [Time]
    # @!attribute provisioned_memory
    #   <p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>
    #   @return [Integer]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>
    #   @return [Boolean]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings loaded into the graph. Max = 65535</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas for the graph.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>The ID of the snapshot from which the graph was created, if the graph was recovered from a snapshot.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>If <code>true</code>, deletion protection was enabled for the graph.</p>
    #   @return [Boolean]
    # @!attribute build_number
    #   <p>The build number associated with the graph.</p>
    #   @return [String]
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
      :build_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_identifier
    #   <p>ID of the graph snapshot to be deleted.</p>
    #   @return [String]
    class DeleteGraphSnapshotInput < Struct.new(
      :snapshot_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph snapshot.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The snapshot name. For example: <code>my-snapshot-1</code>.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the graph snapshot.</p>
    #   @return [String]
    # @!attribute source_graph_id
    #   <p>The graph identifier for the graph from which the snapshot was created.</p>
    #   @return [String]
    # @!attribute snapshot_create_time
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the graph snapshot.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt the snapshot.</p>
    #   @return [String]
    class DeleteGraphSnapshotOutput < Struct.new(
      :id,
      :name,
      :arn,
      :source_graph_id,
      :snapshot_create_time,
      :status,
      :kms_key_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC where the private endpoint is located.</p>
    #   @return [String]
    class DeletePrivateGraphEndpointInput < Struct.new(
      :graph_identifier,
      :vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_id
    #   <p>The ID of the VPC where the private endpoint was deleted.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnet IDs involved.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the delete operation.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint that was deleted.</p>
    #   @return [String]
    class DeletePrivateGraphEndpointOutput < Struct.new(
      :vpc_id,
      :subnet_ids,
      :status,
      :vpc_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an edge in a Neptune Analytics graph.</p>
    # @!attribute count
    #   <p>The number of instances of the edge in the graph.</p>
    #   @return [Integer]
    # @!attribute edge_properties
    #   <p>A list of the properties associated with the edge.</p>
    #   @return [Array<String>]
    class EdgeStructure < Struct.new(
      :count,
      :edge_properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The query string to be executed.</p>
    #   @return [String]
    # @!attribute language
    #   <p>The query language the query is written in. Currently only openCypher is supported.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The data parameters the query can use in JSON format. For example: {"name": "john", "age": 20}. (optional) </p>
    #   @return [Hash<String, JSON>]
    # @!attribute plan_cache
    #   <p>Query plan cache is a feature that saves the query plan and reuses it on successive executions of the same query. This reduces query latency, and works for both <code>READ</code> and <code>UPDATE</code> queries. The plan cache is an LRU cache with a 5 minute TTL and a capacity of 1000.</p>
    #   @return [String]
    # @!attribute explain_mode
    #   <p>The explain mode parameter returns a query explain instead of the actual query results. A query explain can be used to gather insights about the query execution such as planning decisions, time spent on each operator, solutions flowing etc.</p>
    #   @return [String]
    # @!attribute query_timeout_milliseconds
    #   <p>Specifies the query timeout duration, in milliseconds. (optional)</p>
    #   @return [Integer]
    class ExecuteQueryInput < Struct.new(
      :graph_identifier,
      :query_string,
      :language,
      :parameters,
      :plan_cache,
      :explain_mode,
      :query_timeout_milliseconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute payload
    #   <p>The query results.</p>
    #   @return [String]
    class ExecuteQueryOutput < Struct.new(
      :payload,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This is the top-level field for specifying vertex or edge filters. If the ExportFilter is not provided, then all properties for all labels will be exported. If the ExportFilter is provided but is an empty object, then no data will be exported.</p>
    # @!attribute vertex_filter
    #   <p>Used to specify filters on a per-label basis for vertices. This allows you to control which vertex labels and properties are included in the export.</p>
    #   @return [Hash<String, Types::ExportFilterElement>]
    # @!attribute edge_filter
    #   <p>Used to specify filters on a per-label basis for edges. This allows you to control which edge labels and properties are included in the export.</p>
    #   @return [Hash<String, Types::ExportFilterElement>]
    class ExportFilter < Struct.new(
      :vertex_filter,
      :edge_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies whihc properties of that label should be included in the export.</p>
    # @!attribute properties
    #   <p>Each property is defined by a key-value pair, where the key is the desired output property name (e.g. "name"), and the value is an object.</p>
    #   @return [Hash<String, Types::ExportFilterPropertyAttributes>]
    class ExportFilterElement < Struct.new(
      :properties,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A structure representing a property's attributes. It is a map object of outputType, sourcePropertyName and multiValueHandling.</p>
    # @!attribute output_type
    #   <p>Specifies the data type to use for the property in the exported data (e.g. "String", "Int", "Float"). If a type is not provided, the export process will determine the type. If a given property is present as multiple types (e.g. one vertex has "height" stored as a double, and another edge has it stored as a string), the type will be of Any type, otherwise, it will be the type of the property as present in vertices.</p>
    #   @return [String]
    # @!attribute source_property_name
    #   <p>The name of the property as it exists in the original graph data. If not provided, it is assumed that the key matches the desired sourcePropertyName.</p>
    #   @return [String]
    # @!attribute multi_value_handling
    #   <p>Specifies how to handle properties that have multiple values. Can be either <code>TO_LIST</code> to export all values as a list, or <code>PICK_FIRST</code> to export the first value encountered. If not specified, the default value is <code>PICK_FIRST</code>.</p>
    #   @return [String]
    class ExportFilterPropertyAttributes < Struct.new(
      :output_type,
      :source_property_name,
      :multi_value_handling,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:multi_value_handling] = 'PICK_FIRST' unless options.key?(:multi_value_handling)
        super
      end
    end

    # <p>Contains details about the specified export task.</p>
    # @!attribute start_time
    #   <p>The start time of the export task.</p>
    #   @return [Time]
    # @!attribute time_elapsed_seconds
    #   <p>The time elapsed, in seconds, since the start time of the export task.</p>
    #   @return [Integer]
    # @!attribute progress_percentage
    #   <p>The number of progress percentage of the export task.</p>
    #   @return [Integer]
    # @!attribute num_vertices_written
    #   <p>The number of exported vertices.</p>
    #   @return [Integer]
    # @!attribute num_edges_written
    #   <p>The number of exported edges.</p>
    #   @return [Integer]
    class ExportTaskDetails < Struct.new(
      :start_time,
      :time_elapsed_seconds,
      :progress_percentage,
      :num_vertices_written,
      :num_edges_written,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about an export task.</p>
    # @!attribute graph_id
    #   <p>The source graph identifier of the export task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow the data to be exported to the destination.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the export task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the export task.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the export task.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The Amazon S3 URI of the export task where data will be exported to.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The KMS key identifier of the export task.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the export task.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the export task has this status value.</p>
    #   @return [String]
    class ExportTaskSummary < Struct.new(
      :graph_id,
      :role_arn,
      :task_id,
      :status,
      :format,
      :destination,
      :kms_key_identifier,
      :parquet_type,
      :status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_identifier
    #   <p>The unique identifier of the export task.</p>
    #   @return [String]
    class GetExportTaskInput < Struct.new(
      :task_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_id
    #   <p>The source graph identifier of the export task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow data to be exported to the destination.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the export task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the export task.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the export task.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The Amazon S3 URI of the export task where data will be exported.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The KMS key identifier of the export task.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the export task.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the export task has this status value.</p>
    #   @return [String]
    # @!attribute export_task_details
    #   <p>The details of the export task.</p>
    #   @return [Types::ExportTaskDetails]
    # @!attribute export_filter
    #   <p>The export filter of the export task.</p>
    #   @return [Types::ExportFilter]
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
      :export_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    class GetGraphInput < Struct.new(
      :graph_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the graph.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN associated with the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the graph.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the graph has this status.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the graph was created.</p>
    #   @return [Time]
    # @!attribute provisioned_memory
    #   <p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>
    #   @return [Integer]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>
    #   @return [Boolean]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings loaded into the graph. Max = 65535</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas for the graph.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>The ID of the snapshot from which the graph was created, if it was created from a snapshot.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>If <code>true</code>, deletion protection is enabled for the graph.</p>
    #   @return [Boolean]
    # @!attribute build_number
    #   <p>The build number of the graph.</p>
    #   @return [String]
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
      :build_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_identifier
    #   <p>The ID of the snapshot to retrieve.</p>
    #   @return [String]
    class GetGraphSnapshotInput < Struct.new(
      :snapshot_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph snapshot.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The snapshot name. For example: <code>my-snapshot-1</code>.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the graph snapshot.</p>
    #   @return [String]
    # @!attribute source_graph_id
    #   <p>The graph identifier for the graph for which a snapshot is to be created.</p>
    #   @return [String]
    # @!attribute snapshot_create_time
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the graph snapshot.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt the snapshot.</p>
    #   @return [String]
    class GetGraphSnapshotOutput < Struct.new(
      :id,
      :name,
      :arn,
      :source_graph_id,
      :snapshot_create_time,
      :status,
      :kms_key_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The summary mode can take one of two values: <code>basic</code> (the default), and <code>detailed</code>.</p>
    #   @return [String]
    class GetGraphSummaryInput < Struct.new(
      :graph_identifier,
      :mode,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute version
    #   <p>Display the version of this tool.</p>
    #   @return [String]
    # @!attribute last_statistics_computation_time
    #   <p>The timestamp, in ISO 8601 format, of the time at which Neptune Analytics last computed statistics.</p>
    #   @return [Time]
    # @!attribute graph_summary
    #   <p>The graph summary.</p>
    #   @return [Types::GraphDataSummary]
    class GetGraphSummaryOutput < Struct.new(
      :version,
      :last_statistics_computation_time,
      :graph_summary,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_identifier
    #   <p>The unique identifier of the import task.</p>
    #   @return [String]
    class GetImportTaskInput < Struct.new(
      :task_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_id
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the import task.</p>
    #   @return [String]
    # @!attribute source
    #   <p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV format</a> or <code>OPENCYPHER</code>, which identies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher load format</a>.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the import task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import task:</p> <ul> <li> <p> <b>INITIALIZING</b>   –   The necessary resources needed to create the graph are being prepared.</p> </li> <li> <p> <b>ANALYZING_DATA</b>   –   The data is being analyzed to determine the optimal infrastructure configuration for the new graph.</p> </li> <li> <p> <b>RE_PROVISIONING</b>   –   The data did not fit into the provisioned graph, so it is being re-provisioned with more capacity.</p> </li> <li> <p> <b>IMPORTING</b>   –   The data is being loaded.</p> </li> <li> <p> <b>ERROR_ENCOUNTERED</b>   –   An error has been encountered while trying to create the graph and import the data.</p> </li> <li> <p> <b>ERROR_ENCOUNTERED_ROLLING_BACK</b>   –   Because of the error that was encountered, the graph is being rolled back and all its resources released.</p> </li> <li> <p> <b>SUCCEEDED</b>   –   Graph creation and data loading succeeded.</p> </li> <li> <p> <b>FAILED</b>   –   Graph creation or data loading failed. When the status is <code>FAILED</code>, you can use <code>get-graphs</code> to get more information about the state of the graph.</p> </li> <li> <p> <b>CANCELLING</b>   –   Because you cancelled the import task, cancellation is in progress.</p> </li> <li> <p> <b>CANCELLED</b>   –   You have successfully cancelled the import task.</p> </li> </ul>
    #   @return [String]
    # @!attribute import_options
    #   <p>Contains options for controlling the import process. For example, if the <code>failOnError</code> key is set to <code>false</code>, the import skips problem data and attempts to continue (whereas if set to <code>true</code>, the default, or if omitted, the import operation halts immediately when an error is encountered.</p>
    #   @return [Types::ImportOptions]
    # @!attribute import_task_details
    #   <p>Contains details about the specified import task.</p>
    #   @return [Types::ImportTaskDetails]
    # @!attribute attempt_number
    #   <p>The number of the current attempts to execute the import task.</p>
    #   @return [Integer]
    # @!attribute status_reason
    #   <p>The reason that the import task has this status value.</p>
    #   @return [String]
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
      :status_reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC where the private endpoint is located.</p>
    #   @return [String]
    class GetPrivateGraphEndpointInput < Struct.new(
      :graph_identifier,
      :vpc_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute vpc_id
    #   <p>The ID of the VPC where the private endpoint is located.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnet IDs involved.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The current status of the private endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the private endpoint.</p>
    #   @return [String]
    class GetPrivateGraphEndpointOutput < Struct.new(
      :vpc_id,
      :subnet_ids,
      :status,
      :vpc_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute query_id
    #   <p>The ID of the query in question.</p>
    #   @return [String]
    class GetQueryInput < Struct.new(
      :graph_identifier,
      :query_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The ID of the query in question.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The query in question.</p>
    #   @return [String]
    # @!attribute waited
    #   <p>Indicates how long the query waited, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute elapsed
    #   <p>The number of milliseconds the query has been running.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>State of the query.</p>
    #   @return [String]
    class GetQueryOutput < Struct.new(
      :id,
      :query_string,
      :waited,
      :elapsed,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the graph.</p>
    # @!attribute num_nodes
    #   <p>The number of nodes in the graph.</p>
    #   @return [Integer]
    # @!attribute num_edges
    #   <p>The number of edges in the graph.</p>
    #   @return [Integer]
    # @!attribute num_node_labels
    #   <p>The number of distinct node labels in the graph.</p>
    #   @return [Integer]
    # @!attribute num_edge_labels
    #   <p>The number of unique edge labels in the graph.</p>
    #   @return [Integer]
    # @!attribute node_labels
    #   <p>A list of distinct node labels in the graph.</p>
    #   @return [Array<String>]
    # @!attribute edge_labels
    #   <p>A list of the edge labels in the graph.</p>
    #   @return [Array<String>]
    # @!attribute num_node_properties
    #   <p>The number of distinct node properties in the graph.</p>
    #   @return [Integer]
    # @!attribute num_edge_properties
    #   <p>The number of edge properties in the graph.</p>
    #   @return [Integer]
    # @!attribute node_properties
    #   <p>A list of the distinct node properties in the graph, along with the count of nodes where each property is used.</p>
    #   @return [Array<Hash<String, Integer>>]
    # @!attribute edge_properties
    #   <p>A list of the distinct edge properties in the graph, along with the count of edges where each property is used.</p>
    #   @return [Array<Hash<String, Integer>>]
    # @!attribute total_node_property_values
    #   <p>The total number of usages of all node properties.</p>
    #   @return [Integer]
    # @!attribute total_edge_property_values
    #   <p>The total number of usages of all edge properties.</p>
    #   @return [Integer]
    # @!attribute node_structures
    #   <p>This field is only present when the requested mode is DETAILED. It contains a list of node structures.</p>
    #   @return [Array<Types::NodeStructure>]
    # @!attribute edge_structures
    #   <p>This field is only present when the requested mode is DETAILED. It contains a list of edge structures.</p>
    #   @return [Array<Types::EdgeStructure>]
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
      :edge_structures,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a graph snapshot.</p>
    # @!attribute id
    #   <p>The unique identifier of the graph snapshot.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The snapshot name. For example: <code>my-snapshot-1</code>.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the graph snapshot.</p>
    #   @return [String]
    # @!attribute source_graph_id
    #   <p>The graph identifier for the graph for which a snapshot is to be created.</p>
    #   @return [String]
    # @!attribute snapshot_create_time
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the graph snapshot.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt the snapshot.</p>
    #   @return [String]
    class GraphSnapshotSummary < Struct.new(
      :id,
      :name,
      :arn,
      :source_graph_id,
      :snapshot_create_time,
      :status,
      :kms_key_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary details about a graph.</p>
    # @!attribute id
    #   <p>The unique identifier of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the graph.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN associated with the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the graph.</p>
    #   @return [String]
    # @!attribute provisioned_memory
    #   <p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>
    #   @return [Integer]
    # @!attribute public_connectivity
    #   <p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>
    #   @return [Boolean]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute replica_count
    #   <p>The number of replicas for the graph.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>If <code>true</code>, deletion protection is enabled for the graph.</p>
    #   @return [Boolean]
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
      :deletion_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Options for how to perform an import.</p>
    # @!attribute neptune
    #   <p>Options for importing data from a Neptune database.</p>
    #   @return [Types::NeptuneImportOptions]
    class ImportOptions < Struct.new(
      :neptune,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Neptune < ImportOptions; end
      class Unknown < ImportOptions; end
    end

    # <p>Contains details about an import task.</p>
    # @!attribute status
    #   <p>Status of the import task.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Time at which the import task started.</p>
    #   @return [Time]
    # @!attribute time_elapsed_seconds
    #   <p>Seconds elapsed since the import task started.</p>
    #   @return [Integer]
    # @!attribute progress_percentage
    #   <p>The percentage progress so far.</p>
    #   @return [Integer]
    # @!attribute error_count
    #   <p>The number of errors encountered so far.</p>
    #   @return [Integer]
    # @!attribute error_details
    #   <p>Details about the errors that have been encountered.</p>
    #   @return [String]
    # @!attribute statement_count
    #   <p>The number of statements in the import task.</p>
    #   @return [Integer]
    # @!attribute dictionary_entry_count
    #   <p>The number of dictionary entries in the import task.</p>
    #   @return [Integer]
    class ImportTaskDetails < Struct.new(
      :status,
      :start_time,
      :time_elapsed_seconds,
      :progress_percentage,
      :error_count,
      :error_details,
      :statement_count,
      :dictionary_entry_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an import task.</p>
    # @!attribute graph_id
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the import task.</p>
    #   @return [String]
    # @!attribute source
    #   <p>A URL identifying to the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the format of S3 data to be imported. Valid values are <code>CSV</code>, which identifies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html">Gremlin CSV format</a> or <code>OPENCYPHER</code>, which identies the <a href="https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html">openCypher load format</a>.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the import task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of the import task.</p>
    #   @return [String]
    class ImportTaskSummary < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A failure occurred on the server.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination token used to paginate input.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of export tasks to return.</p>
    #   @return [Integer]
    class ListExportTasksInput < Struct.new(
      :graph_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tasks
    #   <p>The requested list of export tasks.</p>
    #   @return [Array<Types::ExportTaskSummary>]
    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p>
    #   @return [String]
    class ListExportTasksOutput < Struct.new(
      :tasks,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of records to return in the command's output.</p> <p>If the total number of records available is more than the value specified, <code>nextToken</code> is provided in the command's output. To resume pagination, provide the <code>nextToken</code> output value in the <code>nextToken</code> argument of a subsequent command. Do not use the <code>nextToken</code> response element directly outside of the Amazon CLI.</p>
    #   @return [Integer]
    class ListGraphSnapshotsInput < Struct.new(
      :graph_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_snapshots
    #   <p>The requested list of snapshots.</p>
    #   @return [Array<Types::GraphSnapshotSummary>]
    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    #   @return [String]
    class ListGraphSnapshotsOutput < Struct.new(
      :graph_snapshots,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of records to return in the command's output.</p> <p>If the total number of records available is more than the value specified, <code>nextToken</code> is provided in the command's output. To resume pagination, provide the <code>nextToken</code> output value in the <code>nextToken</code> argument of a subsequent command. Do not use the <code>nextToken</code> response element directly outside of the Amazon CLI.</p>
    #   @return [Integer]
    class ListGraphsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graphs
    #   <p>A list of the graphs.</p>
    #   @return [Array<Types::GraphSummary>]
    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    #   @return [String]
    class ListGraphsOutput < Struct.new(
      :graphs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of records to return in the command's output.</p> <p>If the total number of records available is more than the value specified, <code>nextToken</code> is provided in the command's output. To resume pagination, provide the <code>nextToken</code> output value in the <code>nextToken</code> argument of a subsequent command. Do not use the <code>nextToken</code> response element directly outside of the Amazon CLI.</p>
    #   @return [Integer]
    class ListImportTasksInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tasks
    #   <p>The requested list of import tasks.</p>
    #   @return [Array<Types::ImportTaskSummary>]
    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    #   @return [String]
    class ListImportTasksOutput < Struct.new(
      :tasks,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of records to return in the command's output.</p> <p>If the total number of records available is more than the value specified, <code>nextToken</code> is provided in the command's output. To resume pagination, provide the <code>nextToken</code> output value in the <code>nextToken</code> argument of a subsequent command. Do not use the <code>nextToken</code> response element directly outside of the Amazon CLI.</p>
    #   @return [Integer]
    class ListPrivateGraphEndpointsInput < Struct.new(
      :graph_identifier,
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute private_graph_endpoints
    #   <p>A list of private endpoints for the specified Neptune Analytics graph.</p>
    #   @return [Array<Types::PrivateGraphEndpointSummary>]
    # @!attribute next_token
    #   <p>Pagination token used to paginate output.</p> <p>When this value is provided as input, the service returns results from where the previous response left off. When this value is present in output, it indicates that there are more results to retrieve.</p>
    #   @return [String]
    class ListPrivateGraphEndpointsOutput < Struct.new(
      :private_graph_endpoints,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to be fetched by the API.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>Filtered list of queries based on state.</p>
    #   @return [String]
    class ListQueriesInput < Struct.new(
      :graph_identifier,
      :max_results,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute queries
    #   <p>A list of current openCypher queries.</p>
    #   @return [Array<Types::QuerySummary>]
    class ListQueriesOutput < Struct.new(
      :queries,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of metadata tags associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Options for how to import Neptune data.</p>
    # @!attribute s3_export_path
    #   <p>The path to an S3 bucket from which to import data.</p>
    #   @return [String]
    # @!attribute s3_export_kms_key_id
    #   <p>The KMS key to use to encrypt data in the S3 bucket where the graph data is exported</p>
    #   @return [String]
    # @!attribute preserve_default_vertex_labels
    #   <p>Neptune Analytics supports label-less vertices and no labels are assigned unless one is explicitly provided. Neptune assigns default labels when none is explicitly provided. When importing the data into Neptune Analytics, the default vertex labels can be omitted by setting <i>preserveDefaultVertexLabels</i> to false. Note that if the vertex only has default labels, and has no other properties or edges, then the vertex will effectively not get imported into Neptune Analytics when preserveDefaultVertexLabels is set to false.</p>
    #   @return [Boolean]
    # @!attribute preserve_edge_ids
    #   <p>Neptune Analytics currently does not support user defined edge ids. The edge ids are not imported by default. They are imported if <i>preserveEdgeIds</i> is set to true, and ids are stored as properties on the relationships with the property name <i>neptuneEdgeId</i>.</p>
    #   @return [Boolean]
    class NeptuneImportOptions < Struct.new(
      :s3_export_path,
      :s3_export_kms_key_id,
      :preserve_default_vertex_labels,
      :preserve_edge_ids,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a node.</p>
    # @!attribute count
    #   <p>The number of instances of this node.</p>
    #   @return [Integer]
    # @!attribute node_properties
    #   <p>Properties associated with this node.</p>
    #   @return [Array<String>]
    # @!attribute distinct_outgoing_edge_labels
    #   <p>The outgoing edge labels associated with this node.</p>
    #   @return [Array<String>]
    class NodeStructure < Struct.new(
      :count,
      :node_properties,
      :distinct_outgoing_edge_labels,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a private graph endpoint.</p>
    # @!attribute vpc_id
    #   <p>The ID of the VPC in which the private graph endpoint is located.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The subnet IDs associated with the private graph endpoint.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the private graph endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>The ID of the VPC endpoint.</p>
    #   @return [String]
    class PrivateGraphEndpointSummary < Struct.new(
      :vpc_id,
      :subnet_ids,
      :status,
      :vpc_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the query listed.</p>
    # @!attribute id
    #   <p>A string representation of the id of the query.</p>
    #   @return [String]
    # @!attribute query_string
    #   <p>The actual query text. The <code>queryString</code> may be truncated if the actual query string is too long.</p>
    #   @return [String]
    # @!attribute waited
    #   <p>The amount of time, in milliseconds, the query has waited in the queue before being picked up by a worker thread.</p>
    #   @return [Integer]
    # @!attribute elapsed
    #   <p>The running time of the query, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>State of the query.</p>
    #   @return [String]
    class QuerySummary < Struct.new(
      :id,
      :query_string,
      :waited,
      :elapsed,
      :state,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>ID of the graph to reset.</p>
    #   @return [String]
    # @!attribute skip_snapshot
    #   <p>Determines whether a final graph snapshot is created before the graph data is deleted. If set to <code>true</code>, no graph snapshot is created. If set to <code>false</code>, a graph snapshot is created before the data is deleted.</p>
    #   @return [Boolean]
    class ResetGraphInput < Struct.new(
      :graph_identifier,
      :skip_snapshot,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the graph.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN associated with the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the graph.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the graph has this status.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the graph was created.</p>
    #   @return [Time]
    # @!attribute provisioned_memory
    #   <p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>
    #   @return [Integer]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>
    #   @return [Boolean]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings loaded into the graph. Max = 65535</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas for the graph.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>The ID of the snapshot from which the graph was created, if any.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>If <code>true</code>, deletion protection is enabled for the graph.</p>
    #   @return [Boolean]
    # @!attribute build_number
    #   <p>The build number of the graph.</p>
    #   @return [String]
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
      :build_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A specified resource could not be located.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_identifier
    #   <p>The ID of the snapshot in question.</p>
    #   @return [String]
    # @!attribute graph_name
    #   <p>A name for the new Neptune Analytics graph to be created from the snapshot.</p> <p>The name must contain from 1 to 63 letters, numbers, or hyphens, and its first character must be a letter. It cannot end with a hyphen or contain two consecutive hyphens. Only lowercase letters are allowed.</p>
    #   @return [String]
    # @!attribute provisioned_memory
    #   <p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.</p> <p>Min = 16</p>
    #   @return [Integer]
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>Adds metadata tags to the snapshot. These tags can also be used with cost allocation reporting, or used in a Condition statement in an IAM policy.</p>
    #   @return [Hash<String, String>]
    # @!attribute replica_count
    #   <p>The number of replicas in other AZs. Min =0, Max = 2, Default =1</p> <important> <p> Additional charges equivalent to the m-NCUs selected for the graph apply for each replica. </p> </important>
    #   @return [Integer]
    # @!attribute public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated. (<code>true</code> to enable, or <code>false</code> to disable).</p>
    #   @return [Boolean]
    class RestoreGraphFromSnapshotInput < Struct.new(
      :snapshot_identifier,
      :graph_name,
      :provisioned_memory,
      :deletion_protection,
      :tags,
      :replica_count,
      :public_connectivity,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the graph.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN associated with the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the graph.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the graph has this status.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the graph was created.</p>
    #   @return [Time]
    # @!attribute provisioned_memory
    #   <p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>
    #   @return [Integer]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>
    #   @return [Boolean]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings loaded into the graph. Max = 65535</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas for the graph.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>The ID of the snapshot from which the graph was created, if any.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>If <code>true</code>, deletion protection is enabled for the graph.</p>
    #   @return [Boolean]
    # @!attribute build_number
    #   <p>The build number of the graph.</p>
    #   @return [String]
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
      :build_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A service quota was exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that exceeded quota.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that exceeded quota. Ex: Graph, Snapshot</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code that exceeded quota.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>Service quota code of the resource for which quota was exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The source graph identifier of the export task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow data to be exported to the destination.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the export task.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The Amazon S3 URI where data will be exported to.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The KMS key identifier of the export task.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the export task.</p>
    #   @return [String]
    # @!attribute export_filter
    #   <p>The export filter of the export task.</p>
    #   @return [Types::ExportFilter]
    # @!attribute tags
    #   <p>Tags to be applied to the export task.</p>
    #   @return [Hash<String, String>]
    class StartExportTaskInput < Struct.new(
      :graph_identifier,
      :role_arn,
      :format,
      :destination,
      :kms_key_identifier,
      :parquet_type,
      :export_filter,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_id
    #   <p>The source graph identifier of the export task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow data to be exported to the destination.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the export task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the export task.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the export task.</p>
    #   @return [String]
    # @!attribute destination
    #   <p>The Amazon S3 URI of the export task where data will be exported to.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The KMS key identifier of the export task.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the export task.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the export task has this status value.</p>
    #   @return [String]
    # @!attribute export_filter
    #   <p>The export filter of the export task.</p>
    #   @return [Types::ExportFilter]
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
      :export_filter,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    class StartGraphInput < Struct.new(
      :graph_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the graph.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN associated with the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the graph.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the graph has this status.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the graph was created.</p>
    #   @return [Time]
    # @!attribute provisioned_memory
    #   <p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>
    #   @return [Integer]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>
    #   @return [Boolean]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings loaded into the graph. Max = 65535</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas for the graph.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>The ID of the snapshot from which the graph was created, if it was created from a snapshot.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>If <code>true</code>, deletion protection is enabled for the graph.</p>
    #   @return [Boolean]
    # @!attribute build_number
    #   <p>The build number of the graph.</p>
    #   @return [String]
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
      :build_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_options
    #   <p>Options for how to perform an import.</p>
    #   @return [Types::ImportOptions]
    # @!attribute fail_on_error
    #   <p>If set to true, the task halts when an import error is encountered. If set to false, the task skips the data that caused the error and continues if possible.</p>
    #   @return [Boolean]
    # @!attribute source
    #   <p>A URL identifying the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the format of Amazon S3 data to be imported. Valid values are CSV, which identifies the Gremlin CSV format or OPENCYPHER, which identies the openCypher load format.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the import task.</p>
    #   @return [String]
    # @!attribute blank_node_handling
    #   <p>The method to handle blank nodes in the dataset. Currently, only <code>convertToIri</code> is supported, meaning blank nodes are converted to unique IRIs at load time. Must be provided when format is <code>ntriples</code>. For more information, see <a href="https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling">Handling RDF values</a>.</p>
    #   @return [String]
    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    #   @return [String]
    class StartImportTaskInput < Struct.new(
      :import_options,
      :fail_on_error,
      :source,
      :format,
      :parquet_type,
      :blank_node_handling,
      :graph_identifier,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_id
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The unique identifier of the import task.</p>
    #   @return [String]
    # @!attribute source
    #   <p>A URL identifying the location of the data to be imported. This can be an Amazon S3 path, or can point to a Neptune database endpoint or snapshot.</p>
    #   @return [String]
    # @!attribute format
    #   <p>Specifies the format of Amazon S3 data to be imported. Valid values are CSV, which identifies the Gremlin CSV format or OPENCYPHER, which identies the openCypher load format.</p>
    #   @return [String]
    # @!attribute parquet_type
    #   <p>The parquet type of the import task.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that will allow access to the data that is to be imported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import task.</p>
    #   @return [String]
    # @!attribute import_options
    #   <p>Options for how to perform an import.</p>
    #   @return [Types::ImportOptions]
    class StartImportTaskOutput < Struct.new(
      :graph_id,
      :task_id,
      :source,
      :format,
      :parquet_type,
      :role_arn,
      :status,
      :import_options,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    class StopGraphInput < Struct.new(
      :graph_identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the graph.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN associated with the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the graph.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the graph has this status.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the graph was created.</p>
    #   @return [Time]
    # @!attribute provisioned_memory
    #   <p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>
    #   @return [Integer]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>If true, the graph has a public endpoint, otherwise not.</p>
    #   @return [Boolean]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings loaded into the graph. Max = 65535</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas for the graph.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>The ID of the snapshot from which the graph was created, if it was created from a snapshot.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>If <code>true</code>, deletion protection is enabled for the graph.</p>
    #   @return [Boolean]
    # @!attribute build_number
    #   <p>The build number of the graph.</p>
    #   @return [String]
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
      :build_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource for which tags need to be added.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the Neptune Analytics resource.</p> <p>The tags are metadata that are specified as a list of key-value pairs:</p> <p> <b>Key</b> (string)   –   A key is the required name of the tag. The string value can be from 1 to 128 Unicode characters in length. It can't be prefixed with <code>aws:</code> and can only contain the set of Unicode characters specified by this Java regular expression: <code>"^([\p{L}\p{Z}\p{N}_.:/=+\-]*)$")</code>.</p> <p> <b>Value</b> (string)   –   A value is the optional value of the tag. The string value can be from 1 to 256 Unicode characters in length. It can't be prefixed with <code>aws:</code> and can only contain the set of Unicode characters specified by this Java regular expression: <code>"^([\p{L}\p{Z}\p{N}_.:/=+\-]*)$")</code>.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The exception was interrupted by throttling.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Request cannot be processed due to known reasons. Eg. partition full.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the unprocessable exception.</p>
    #   @return [String]
    class UnprocessableException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>ARN of the resource whose tag needs to be removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Tag keys for the tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_identifier
    #   <p>The unique identifier of the Neptune Analytics graph.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>Specifies whether or not the graph can be reachable over the internet. All access to graphs is IAM authenticated. (<code>true</code> to enable, or <code>false</code> to disable.</p>
    #   @return [Boolean]
    # @!attribute provisioned_memory
    #   <p>The provisioned memory-optimized Neptune Capacity Units (m-NCUs) to use for the graph.</p> <p>Min = 16</p>
    #   @return [Integer]
    # @!attribute deletion_protection
    #   <p>A value that indicates whether the graph has deletion protection enabled. The graph can't be deleted when deletion protection is enabled.</p>
    #   @return [Boolean]
    class UpdateGraphInput < Struct.new(
      :graph_identifier,
      :public_connectivity,
      :provisioned_memory,
      :deletion_protection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the graph.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the graph.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN associated with the graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the graph.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason that the graph has this status.</p>
    #   @return [String]
    # @!attribute create_time
    #   <p>The time at which the graph was created.</p>
    #   @return [Time]
    # @!attribute provisioned_memory
    #   <p>The number of memory-optimized Neptune Capacity Units (m-NCUs) allocated to the graph.</p>
    #   @return [Integer]
    # @!attribute endpoint
    #   <p>The graph endpoint.</p>
    #   @return [String]
    # @!attribute public_connectivity
    #   <p>If <code>true</code>, the graph has a public endpoint, otherwise not.</p>
    #   @return [Boolean]
    # @!attribute vector_search_configuration
    #   <p>Specifies the number of dimensions for vector embeddings loaded into the graph. Max = 65535</p>
    #   @return [Types::VectorSearchConfiguration]
    # @!attribute replica_count
    #   <p>The number of replicas for the graph.</p>
    #   @return [Integer]
    # @!attribute kms_key_identifier
    #   <p>The ID of the KMS key used to encrypt and decrypt graph data.</p>
    #   @return [String]
    # @!attribute source_snapshot_id
    #   <p>The ID of the snapshot from which the graph was created, if any.</p>
    #   @return [String]
    # @!attribute deletion_protection
    #   <p>If <code>true</code>, deletion protection is enabled for the graph.</p>
    #   @return [Boolean]
    # @!attribute build_number
    #   <p>The build number of the graph.</p>
    #   @return [String]
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
      :build_number,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A resource could not be validated.</p>
    # @!attribute message
    #   <p>A message describing the problem.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that the resource could not be validated.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the number of dimensions for vector embeddings loaded into the graph. Max = 65535</p>
    # @!attribute dimension
    #   <p>The number of dimensions.</p>
    #   @return [Integer]
    class VectorSearchConfiguration < Struct.new(
      :dimension,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
