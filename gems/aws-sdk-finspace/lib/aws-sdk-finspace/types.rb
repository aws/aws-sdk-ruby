# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Finspace
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration based on which FinSpace will scale in or scale out
    # nodes in your cluster.
    #
    # @!attribute [rw] min_node_count
    #   The lowest number of nodes to scale. This value must be at least 1
    #   and less than the `maxNodeCount`. If the nodes in a cluster belong
    #   to multiple availability zones, then `minNodeCount` must be at least
    #   3.
    #   @return [Integer]
    #
    # @!attribute [rw] max_node_count
    #   The highest number of nodes to scale. This value cannot be greater
    #   than 5.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_scaling_metric
    #   The metric your cluster will track in order to scale in and out. For
    #   example, `CPU_UTILIZATION_PERCENTAGE` is the average CPU usage
    #   across all the nodes in a cluster.
    #   @return [String]
    #
    # @!attribute [rw] metric_target
    #   The desired value of the chosen `autoScalingMetric`. When the metric
    #   drops below this value, the cluster will scale in. When the metric
    #   goes above this value, the cluster will scale out. You can set the
    #   target value between 1 and 100 percent.
    #   @return [Float]
    #
    # @!attribute [rw] scale_in_cooldown_seconds
    #   The duration in seconds that FinSpace will wait after a scale in
    #   event before initiating another scaling event.
    #   @return [Float]
    #
    # @!attribute [rw] scale_out_cooldown_seconds
    #   The duration in seconds that FinSpace will wait after a scale out
    #   event before initiating another scaling event.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/AutoScalingConfiguration AWS API Documentation
    #
    class AutoScalingConfiguration < Struct.new(
      :min_node_count,
      :max_node_count,
      :auto_scaling_metric,
      :metric_target,
      :scale_in_cooldown_seconds,
      :scale_out_cooldown_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for the metadata of a cluster. It includes information
    # like the CPUs needed, memory of instances, and number of instances.
    #
    # @!attribute [rw] node_type
    #   The type that determines the hardware of the host computer used for
    #   your cluster instance. Each node type offers different memory and
    #   storage capabilities. Choose a node type based on the requirements
    #   of the application or software that you plan to run on your
    #   instance.
    #
    #   You can only specify one of the following values:
    #
    #   * `kx.s.large` – The node type with a configuration of 12 GiB memory
    #     and 2 vCPUs.
    #
    #   * `kx.s.xlarge` – The node type with a configuration of 27 GiB
    #     memory and 4 vCPUs.
    #
    #   * `kx.s.2xlarge` – The node type with a configuration of 54 GiB
    #     memory and 8 vCPUs.
    #
    #   * `kx.s.4xlarge` – The node type with a configuration of 108 GiB
    #     memory and 16 vCPUs.
    #
    #   * `kx.s.8xlarge` – The node type with a configuration of 216 GiB
    #     memory and 32 vCPUs.
    #
    #   * `kx.s.16xlarge` – The node type with a configuration of 432 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.s.32xlarge` – The node type with a configuration of 864 GiB
    #     memory and 128 vCPUs.
    #   @return [String]
    #
    # @!attribute [rw] node_count
    #   The number of instances running in a cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CapacityConfiguration AWS API Documentation
    #
    class CapacityConfiguration < Struct.new(
      :node_type,
      :node_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of change request objects.
    #
    # @!attribute [rw] change_type
    #   Defines the type of change request. A `changeType` can have the
    #   following values:
    #
    #   * PUT – Adds or updates files in a database.
    #
    #   * DELETE – Deletes files in a database.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   Defines the S3 path of the source file that is required to add or
    #   update files in a database.
    #   @return [String]
    #
    # @!attribute [rw] db_path
    #   Defines the path within the database directory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ChangeRequest AWS API Documentation
    #
    class ChangeRequest < Struct.new(
      :change_type,
      :s3_path,
      :db_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of the customer code available within the running
    # cluster.
    #
    # @!attribute [rw] s3_bucket
    #   A unique name for the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_key
    #   The full S3 path (excluding bucket) to the .zip file. This file
    #   contains the code that is loaded onto the cluster when it's
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_version
    #   The version of an S3 object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CodeConfiguration AWS API Documentation
    #
    class CodeConfiguration < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict with this action, and it could not be completed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the conflict exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the FinSpace environment to be created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the FinSpace environment to be created.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key id to encrypt your data in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Add tags to your FinSpace environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO)
    #     via your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #   @return [Types::FederationParameters]
    #
    # @!attribute [rw] superuser_parameters
    #   Configuration information for the superuser.
    #   @return [Types::SuperuserParameters]
    #
    # @!attribute [rw] data_bundles
    #   The list of Amazon Resource Names (ARN) of the data bundles to
    #   install. Currently supported data bundle ARNs:
    #
    #   * `arn:aws:finspace:${Region}::data-bundle/capital-markets-sample` -
    #     Contains sample Capital Markets datasets, categories and
    #     controlled vocabularies.
    #
    #   * `arn:aws:finspace:${Region}::data-bundle/taq` (default) - Contains
    #     trades and quotes data in addition to sample Capital Markets data.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateEnvironmentRequest AWS API Documentation
    #
    class CreateEnvironmentRequest < Struct.new(
      :name,
      :description,
      :kms_key_id,
      :tags,
      :federation_mode,
      :federation_parameters,
      :superuser_parameters,
      :data_bundles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The unique identifier for FinSpace environment that you created.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) of the FinSpace environment that you
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] environment_url
    #   The sign-in URL for the web application of the FinSpace environment
    #   you created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateEnvironmentResponse AWS API Documentation
    #
    class CreateEnvironmentResponse < Struct.new(
      :environment_id,
      :environment_arn,
      :environment_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] change_requests
    #   A list of change request objects that are run in order. A change
    #   request object consists of `changeType` , `s3Path`, and `dbPath`. A
    #   changeType can have the following values:
    #
    #   * PUT – Adds or updates files in a database.
    #
    #   * DELETE – Deletes files in a database.
    #
    #   All the change requests require a mandatory `dbPath` attribute that
    #   defines the path within the database directory. All database paths
    #   must start with a leading / and end with a trailing /. The `s3Path`
    #   attribute defines the s3 source file path and is required for a PUT
    #   change type. The `s3path` must end with a trailing / if it is a
    #   directory and must end without a trailing / if it is a file.
    #
    #   Here are few examples of how you can use the change request object:
    #
    #   1.  This request adds a single sym file at database root location.
    #
    #       `{ "changeType": "PUT", "s3Path":"s3://bucket/db/sym",
    #       "dbPath":"/"}`
    #
    #   2.  This request adds files in the given `s3Path` under the
    #       2020.01.02 partition of the database.
    #
    #       `{ "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/",
    #       "dbPath":"/2020.01.02/"}`
    #
    #   3.  This request adds files in the given `s3Path` under the *taq*
    #       table partition of the database.
    #
    #       `[ { "changeType": "PUT",
    #       "s3Path":"s3://bucket/db/2020.01.02/taq/",
    #       "dbPath":"/2020.01.02/taq/"}]`
    #
    #   4.  This request deletes the 2020.01.02 partition of the database.
    #
    #       `[{ "changeType": "DELETE", "dbPath": "/2020.01.02/"} ]`
    #
    #   5.  The *DELETE* request allows you to delete the existing files
    #       under the 2020.01.02 partition of the database, and the *PUT*
    #       request adds a new taq table under it.
    #
    #       `[ {"changeType": "DELETE", "dbPath":"/2020.01.02/"},
    #       {"changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/taq/",
    #       "dbPath":"/2020.01.02/taq/"}]`
    #   @return [Array<Types::ChangeRequest>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxChangesetRequest AWS API Documentation
    #
    class CreateKxChangesetRequest < Struct.new(
      :environment_id,
      :database_name,
      :change_requests,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] change_requests
    #   A list of change requests.
    #   @return [Array<Types::ChangeRequest>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the changeset was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The timestamp at which the changeset was updated in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of the changeset creation process.
    #
    #   * Pending – Changeset creation is pending.
    #
    #   * Processing – Changeset creation is running.
    #
    #   * Failed – Changeset creation has failed.
    #
    #   * Complete – Changeset creation has succeeded.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   The details of the error that you receive when creating a changeset.
    #   It consists of the type of error and the error message.
    #   @return [Types::ErrorInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxChangesetResponse AWS API Documentation
    #
    class CreateKxChangesetResponse < Struct.new(
      :changeset_id,
      :database_name,
      :environment_id,
      :change_requests,
      :created_timestamp,
      :last_modified_timestamp,
      :status,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A unique name for the cluster that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb
    #     databases mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads
    #     the HDB. This cluster type requires local storage for temporary
    #     storage of data during the savedown process. If you specify this
    #     field in your request, you must provide the
    #     `savedownStorageConfiguration` parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type
    #     of cluster does not require a writable local storage.
    #
    #   * GP – A general purpose cluster allows you to quickly iterate on
    #     code during development by granting greater access to system
    #     commands and enabling a fast reload of custom code. This cluster
    #     type can optionally mount databases including cache and savedown
    #     storage. For this cluster type, the node count is fixed at 1. It
    #     does not support autoscaling and supports only `SINGLE` AZ mode.
    #
    #   * Tickerplant – A tickerplant cluster allows you to subscribe to
    #     feed handlers based on IAM permissions. It can publish to RDBs,
    #     other Tickerplants, and real-time subscribers (RTS). Tickerplants
    #     can persist messages to log, which is readable by any RDB
    #     environment. It supports only single-node that is only one kdb
    #     process.
    #   @return [String]
    #
    # @!attribute [rw] tickerplant_log_configuration
    #   A configuration to store Tickerplant logs. It consists of a list of
    #   volumes that will be mounted to your cluster. For the cluster type
    #   `Tickerplant`, the location of the TP volume on the cluster will be
    #   available by using the global variable `.aws.tp_log_path`.
    #   @return [Types::TickerplantLogConfiguration]
    #
    # @!attribute [rw] databases
    #   A list of databases that will be available for querying.
    #   @return [Array<Types::KxDatabaseConfiguration>]
    #
    # @!attribute [rw] cache_storage_configurations
    #   The configurations for a read only cache storage associated with a
    #   cluster. This cache will be stored as an FSx Lustre that reads from
    #   the S3 store.
    #   @return [Array<Types::KxCacheStorageConfiguration>]
    #
    # @!attribute [rw] auto_scaling_configuration
    #   The configuration based on which FinSpace will scale in or scale out
    #   nodes in your cluster.
    #   @return [Types::AutoScalingConfiguration]
    #
    # @!attribute [rw] cluster_description
    #   A description of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] capacity_configuration
    #   A structure for the metadata of a cluster. It includes information
    #   like the CPUs needed, memory of instances, and number of instances.
    #   @return [Types::CapacityConfiguration]
    #
    # @!attribute [rw] release_label
    #   The version of FinSpace managed kdb to run.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   Configuration details about the network where the Privatelink
    #   endpoint of the cluster resides.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] initialization_script
    #   Specifies a Q program that will be run at launch of a cluster. It is
    #   a relative path within *.zip* file that contains the custom code,
    #   which will be loaded on the cluster. It must include the file name
    #   itself. For example, `somedir/init.q`.
    #   @return [String]
    #
    # @!attribute [rw] command_line_arguments
    #   Defines the key-value pairs to make them available inside the
    #   cluster.
    #   @return [Array<Types::KxCommandLineArgument>]
    #
    # @!attribute [rw] code
    #   The details of the custom code that you want to use inside a cluster
    #   when analyzing a data. It consists of the S3 source bucket,
    #   location, S3 object version, and the relative path from where the
    #   custom code is loaded into the cluster.
    #   @return [Types::CodeConfiguration]
    #
    # @!attribute [rw] execution_role
    #   An IAM role that defines a set of permissions associated with a
    #   cluster. These permissions are assumed when a cluster attempts to
    #   access another cluster.
    #   @return [String]
    #
    # @!attribute [rw] savedown_storage_configuration
    #   The size and type of the temporary storage that is used to hold data
    #   during the savedown process. This parameter is required when you
    #   choose `clusterType` as RDB. All the data written to this storage
    #   space is lost when the cluster node is restarted.
    #   @return [Types::KxSavedownStorageConfiguration]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per cluster.
    #   This can be one of the following
    #
    #   * `SINGLE` – Assigns one availability zone per cluster.
    #
    #   * `MULTI` – Assigns all the availability zones per cluster.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The availability zone identifiers for the requested regions.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the cluster. You can add up to 50
    #   tags to a cluster.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] scaling_group_configuration
    #   The structure that stores the configuration details of a scaling
    #   group.
    #   @return [Types::KxScalingGroupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxClusterRequest AWS API Documentation
    #
    class CreateKxClusterRequest < Struct.new(
      :client_token,
      :environment_id,
      :cluster_name,
      :cluster_type,
      :tickerplant_log_configuration,
      :databases,
      :cache_storage_configurations,
      :auto_scaling_configuration,
      :cluster_description,
      :capacity_configuration,
      :release_label,
      :vpc_configuration,
      :initialization_script,
      :command_line_arguments,
      :code,
      :execution_role,
      :savedown_storage_configuration,
      :az_mode,
      :availability_zone_id,
      :tags,
      :scaling_group_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of cluster creation.
    #
    #   * PENDING – The cluster is pending creation.
    #
    #   * CREATING – The cluster creation process is in progress.
    #
    #   * CREATE\_FAILED – The cluster creation process has failed.
    #
    #   * RUNNING – The cluster creation process is running.
    #
    #   * UPDATING – The cluster is in the process of being updated.
    #
    #   * DELETING – The cluster is in the process of being deleted.
    #
    #   * DELETED – The cluster has been deleted.
    #
    #   * DELETE\_FAILED – The cluster failed to delete.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A unique name for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb
    #     databases mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads
    #     the HDB. This cluster type requires local storage for temporary
    #     storage of data during the savedown process. If you specify this
    #     field in your request, you must provide the
    #     `savedownStorageConfiguration` parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type
    #     of cluster does not require a writable local storage.
    #
    #   * GP – A general purpose cluster allows you to quickly iterate on
    #     code during development by granting greater access to system
    #     commands and enabling a fast reload of custom code. This cluster
    #     type can optionally mount databases including cache and savedown
    #     storage. For this cluster type, the node count is fixed at 1. It
    #     does not support autoscaling and supports only `SINGLE` AZ mode.
    #
    #   * Tickerplant – A tickerplant cluster allows you to subscribe to
    #     feed handlers based on IAM permissions. It can publish to RDBs,
    #     other Tickerplants, and real-time subscribers (RTS). Tickerplants
    #     can persist messages to log, which is readable by any RDB
    #     environment. It supports only single-node that is only one kdb
    #     process.
    #   @return [String]
    #
    # @!attribute [rw] tickerplant_log_configuration
    #   A configuration to store the Tickerplant logs. It consists of a list
    #   of volumes that will be mounted to your cluster. For the cluster
    #   type `Tickerplant`, the location of the TP volume on the cluster
    #   will be available by using the global variable `.aws.tp_log_path`.
    #   @return [Types::TickerplantLogConfiguration]
    #
    # @!attribute [rw] volumes
    #   A list of volumes mounted on the cluster.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] databases
    #   A list of databases that will be available for querying.
    #   @return [Array<Types::KxDatabaseConfiguration>]
    #
    # @!attribute [rw] cache_storage_configurations
    #   The configurations for a read only cache storage associated with a
    #   cluster. This cache will be stored as an FSx Lustre that reads from
    #   the S3 store.
    #   @return [Array<Types::KxCacheStorageConfiguration>]
    #
    # @!attribute [rw] auto_scaling_configuration
    #   The configuration based on which FinSpace will scale in or scale out
    #   nodes in your cluster.
    #   @return [Types::AutoScalingConfiguration]
    #
    # @!attribute [rw] cluster_description
    #   A description of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] capacity_configuration
    #   A structure for the metadata of a cluster. It includes information
    #   like the CPUs needed, memory of instances, and number of instances.
    #   @return [Types::CapacityConfiguration]
    #
    # @!attribute [rw] release_label
    #   A version of the FinSpace managed kdb to run.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   Configuration details about the network where the Privatelink
    #   endpoint of the cluster resides.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] initialization_script
    #   Specifies a Q program that will be run at launch of a cluster. It is
    #   a relative path within *.zip* file that contains the custom code,
    #   which will be loaded on the cluster. It must include the file name
    #   itself. For example, `somedir/init.q`.
    #   @return [String]
    #
    # @!attribute [rw] command_line_arguments
    #   Defines the key-value pairs to make them available inside the
    #   cluster.
    #   @return [Array<Types::KxCommandLineArgument>]
    #
    # @!attribute [rw] code
    #   The details of the custom code that you want to use inside a cluster
    #   when analyzing a data. It consists of the S3 source bucket,
    #   location, S3 object version, and the relative path from where the
    #   custom code is loaded into the cluster.
    #   @return [Types::CodeConfiguration]
    #
    # @!attribute [rw] execution_role
    #   An IAM role that defines a set of permissions associated with a
    #   cluster. These permissions are assumed when a cluster attempts to
    #   access another cluster.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the cluster was modified. The value is determined
    #   as epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] savedown_storage_configuration
    #   The size and type of the temporary storage that is used to hold data
    #   during the savedown process. This parameter is required when you
    #   choose `clusterType` as RDB. All the data written to this storage
    #   space is lost when the cluster node is restarted.
    #   @return [Types::KxSavedownStorageConfiguration]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per cluster.
    #   This can be one of the following
    #
    #   * `SINGLE` – Assigns one availability zone per cluster.
    #
    #   * `MULTI` – Assigns all the availability zones per cluster.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The availability zone identifiers for the requested regions.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the cluster was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] scaling_group_configuration
    #   The structure that stores the configuration details of a scaling
    #   group.
    #   @return [Types::KxScalingGroupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxClusterResponse AWS API Documentation
    #
    class CreateKxClusterResponse < Struct.new(
      :environment_id,
      :status,
      :status_reason,
      :cluster_name,
      :cluster_type,
      :tickerplant_log_configuration,
      :volumes,
      :databases,
      :cache_storage_configurations,
      :auto_scaling_configuration,
      :cluster_description,
      :capacity_configuration,
      :release_label,
      :vpc_configuration,
      :initialization_script,
      :command_line_arguments,
      :code,
      :execution_role,
      :last_modified_timestamp,
      :savedown_storage_configuration,
      :az_mode,
      :availability_zone_id,
      :created_timestamp,
      :scaling_group_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the kdb database. You can add up
    #   to 50 tags to your kdb database
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxDatabaseRequest AWS API Documentation
    #
    class CreateKxDatabaseRequest < Struct.new(
      :environment_id,
      :database_name,
      :description,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] database_arn
    #   The ARN identifier of the database.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the database is created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the database was updated in FinSpace. The value
    #   is determined as epoch time in milliseconds. For example, the value
    #   for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxDatabaseResponse AWS API Documentation
    #
    class CreateKxDatabaseResponse < Struct.new(
      :database_name,
      :database_arn,
      :environment_id,
      :description,
      :created_timestamp,
      :last_modified_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, where you want to
    #   create the dataview.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database where you want to create a dataview.
    #   @return [String]
    #
    # @!attribute [rw] dataview_name
    #   A unique identifier for the dataview.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier of the changeset that you want to use to ingest
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] segment_configurations
    #   The configuration that contains the database path of the data that
    #   you want to place on each selected volume. Each segment must have a
    #   unique database path for each volume. If you do not explicitly
    #   specify any database path for a volume, they are accessible from the
    #   cluster through the default S3/object store segment.
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    #
    # @!attribute [rw] auto_update
    #   The option to specify whether you want to apply all the future
    #   additions and corrections automatically to the dataview, when you
    #   ingest new changesets. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_write
    #   The option to specify whether you want to make the dataview writable
    #   to perform database maintenance. The following are some
    #   considerations related to writable dataviews.  
    #
    #   * You cannot create partial writable dataviews. When you create
    #     writeable dataviews you must provide the entire database path.
    #
    #   * You cannot perform updates on a writeable dataview. Hence,
    #     `autoUpdate` must be set as **False** if `readWrite` is **True**
    #     for a dataview.
    #
    #   * You must also use a unique volume for creating a writeable
    #     dataview. So, if you choose a volume that is already in use by
    #     another dataview, the dataview creation fails.
    #
    #   * Once you create a dataview as writeable, you cannot change it to
    #     read-only. So, you cannot update the `readWrite` parameter later.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the dataview.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the dataview. You can add up to
    #   50 tags to a dataview.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxDataviewRequest AWS API Documentation
    #
    class CreateKxDataviewRequest < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name,
      :az_mode,
      :availability_zone_id,
      :changeset_id,
      :segment_configurations,
      :auto_update,
      :read_write,
      :description,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataview_name
    #   A unique identifier for the dataview.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database where you want to create a dataview.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, where you want to
    #   create the dataview.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] segment_configurations
    #   The configuration that contains the database path of the data that
    #   you want to place on each selected volume. Each segment must have a
    #   unique database path for each volume. If you do not explicitly
    #   specify any database path for a volume, they are accessible from the
    #   cluster through the default S3/object store segment.
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    #
    # @!attribute [rw] description
    #   A description of the dataview.
    #   @return [String]
    #
    # @!attribute [rw] auto_update
    #   The option to select whether you want to apply all the future
    #   additions and corrections automatically to the dataview when you
    #   ingest new changesets. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_write
    #   Returns True if the dataview is created as writeable and False
    #   otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the dataview was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the dataview was updated in FinSpace. The value
    #   is determined as epoch time in milliseconds. For example, the value
    #   for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of dataview creation.
    #
    #   * `CREATING` – The dataview creation is in progress.
    #
    #   * `UPDATING` – The dataview is in the process of being updated.
    #
    #   * `ACTIVE` – The dataview is active.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxDataviewResponse AWS API Documentation
    #
    class CreateKxDataviewResponse < Struct.new(
      :dataview_name,
      :database_name,
      :environment_id,
      :az_mode,
      :availability_zone_id,
      :changeset_id,
      :segment_configurations,
      :description,
      :auto_update,
      :read_write,
      :created_timestamp,
      :last_modified_timestamp,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the kdb environment that you want to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID to encrypt your data in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the kdb environment. You can add
    #   up to 50 tags to your kdb environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxEnvironmentRequest AWS API Documentation
    #
    class CreateKxEnvironmentRequest < Struct.new(
      :name,
      :description,
      :kms_key_id,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID to encrypt your data in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The timestamp at which the kdb environment was created in FinSpace.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxEnvironmentResponse AWS API Documentation
    #
    class CreateKxEnvironmentResponse < Struct.new(
      :name,
      :status,
      :environment_id,
      :description,
      :environment_arn,
      :kms_key_id,
      :creation_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, where you want to
    #   create the scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #   @return [String]
    #
    # @!attribute [rw] host_type
    #   The memory and CPU capabilities of the scaling group host on which
    #   FinSpace Managed kdb clusters will be placed.
    #
    #   You can add one of the following values:
    #
    #   * `kx.sg.large` – The host type with a configuration of 16 GiB
    #     memory and 2 vCPUs.
    #
    #   * `kx.sg.xlarge` – The host type with a configuration of 32 GiB
    #     memory and 4 vCPUs.
    #
    #   * `kx.sg.2xlarge` – The host type with a configuration of 64 GiB
    #     memory and 8 vCPUs.
    #
    #   * `kx.sg.4xlarge` – The host type with a configuration of 108 GiB
    #     memory and 16 vCPUs.
    #
    #   * `kx.sg.8xlarge` – The host type with a configuration of 216 GiB
    #     memory and 32 vCPUs.
    #
    #   * `kx.sg.16xlarge` – The host type with a configuration of 432 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.sg.32xlarge` – The host type with a configuration of 864 GiB
    #     memory and 128 vCPUs.
    #
    #   * `kx.sg1.16xlarge` – The host type with a configuration of 1949 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.sg1.24xlarge` – The host type with a configuration of 2948 GiB
    #     memory and 96 vCPUs.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the scaling group. You can add up
    #   to 50 tags to a scaling group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxScalingGroupRequest AWS API Documentation
    #
    class CreateKxScalingGroupRequest < Struct.new(
      :client_token,
      :environment_id,
      :scaling_group_name,
      :host_type,
      :availability_zone_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, where you create the
    #   scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #   @return [String]
    #
    # @!attribute [rw] host_type
    #   The memory and CPU capabilities of the scaling group host on which
    #   FinSpace Managed kdb clusters will be placed.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of scaling group.
    #
    #   * CREATING – The scaling group creation is in progress.
    #
    #   * CREATE\_FAILED – The scaling group creation has failed.
    #
    #   * ACTIVE – The scaling group is active.
    #
    #   * UPDATING – The scaling group is in the process of being updated.
    #
    #   * UPDATE\_FAILED – The update action failed.
    #
    #   * DELETING – The scaling group is in the process of being deleted.
    #
    #   * DELETE\_FAILED – The system failed to delete the scaling group.
    #
    #   * DELETED – The scaling group is successfully deleted.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the scaling group was updated in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the scaling group was created in FinSpace.
    #   The value is determined as epoch time in milliseconds. For example,
    #   the value for Monday, November 1, 2021 12:00:00 PM UTC is specified
    #   as 1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxScalingGroupResponse AWS API Documentation
    #
    class CreateKxScalingGroupResponse < Struct.new(
      :environment_id,
      :scaling_group_name,
      :host_type,
      :availability_zone_id,
      :status,
      :last_modified_timestamp,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment where you want to create
    #   a user.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The IAM role ARN that will be associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the user. You can add up to 50
    #   tags to a user.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxUserRequest AWS API Documentation
    #
    class CreateKxUserRequest < Struct.new(
      :environment_id,
      :user_name,
      :iam_role,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   A unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The IAM role ARN that will be associated with the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxUserResponse AWS API Documentation
    #
    class CreateKxUserResponse < Struct.new(
      :user_name,
      :user_arn,
      :environment_id,
      :iam_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, whose clusters can
    #   attach to the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type. When you select `NAS_1` volume type, you must
    #   also provide `nas1Configuration`.
    #   @return [String]
    #
    # @!attribute [rw] volume_name
    #   A unique identifier for the volume.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the volume.
    #   @return [String]
    #
    # @!attribute [rw] nas1_configuration
    #   Specifies the configuration for the Network attached storage
    #   (NAS\_1) file system volume. This parameter is required when you
    #   choose `volumeType` as *NAS\_1*.
    #   @return [Types::KxNAS1Configuration]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to label the volume. You can add up to 50
    #   tags to a volume.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxVolumeRequest AWS API Documentation
    #
    class CreateKxVolumeRequest < Struct.new(
      :client_token,
      :environment_id,
      :volume_type,
      :volume_name,
      :description,
      :nas1_configuration,
      :az_mode,
      :availability_zone_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, whose clusters can
    #   attach to the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_name
    #   A unique identifier for the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type.
    #   @return [String]
    #
    # @!attribute [rw] volume_arn
    #   The ARN identifier of the volume.
    #   @return [String]
    #
    # @!attribute [rw] nas1_configuration
    #   Specifies the configuration for the Network attached storage
    #   (NAS\_1) file system volume.
    #   @return [Types::KxNAS1Configuration]
    #
    # @!attribute [rw] status
    #   The status of volume creation.
    #
    #   * CREATING – The volume creation is in progress.
    #
    #   * CREATE\_FAILED – The volume creation has failed.
    #
    #   * ACTIVE – The volume is active.
    #
    #   * UPDATING – The volume is in the process of being updated.
    #
    #   * UPDATE\_FAILED – The update action failed.
    #
    #   * UPDATED – The volume is successfully updated.
    #
    #   * DELETING – The volume is in the process of being deleted.
    #
    #   * DELETE\_FAILED – The system failed to delete the volume.
    #
    #   * DELETED – The volume is successfully deleted.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the volume.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the volume was created in FinSpace. The value
    #   is determined as epoch time in milliseconds. For example, the value
    #   for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CreateKxVolumeResponse AWS API Documentation
    #
    class CreateKxVolumeResponse < Struct.new(
      :environment_id,
      :volume_name,
      :volume_type,
      :volume_arn,
      :nas1_configuration,
      :status,
      :status_reason,
      :az_mode,
      :description,
      :availability_zone_ids,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of DNS server name and server IP. This is used to set up
    # Route-53 outbound resolvers.
    #
    # @!attribute [rw] custom_dns_server_name
    #   The name of the DNS server.
    #   @return [String]
    #
    # @!attribute [rw] custom_dns_server_ip
    #   The IP address of the DNS server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/CustomDNSServer AWS API Documentation
    #
    class CustomDNSServer < Struct.new(
      :custom_dns_server_name,
      :custom_dns_server_ip)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The identifier for the FinSpace environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteEnvironmentResponse AWS API Documentation
    #
    class DeleteEnvironmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster, for which you want to delete the nodes.
    #   @return [String]
    #
    # @!attribute [rw] node_id
    #   A unique identifier for the node that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxClusterNodeRequest AWS API Documentation
    #
    class DeleteKxClusterNodeRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :node_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxClusterNodeResponse AWS API Documentation
    #
    class DeleteKxClusterNodeResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxClusterRequest AWS API Documentation
    #
    class DeleteKxClusterRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxClusterResponse AWS API Documentation
    #
    class DeleteKxClusterResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxDatabaseRequest AWS API Documentation
    #
    class DeleteKxDatabaseRequest < Struct.new(
      :environment_id,
      :database_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxDatabaseResponse AWS API Documentation
    #
    class DeleteKxDatabaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, from where you want to
    #   delete the dataview.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database whose dataview you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] dataview_name
    #   The name of the dataview that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxDataviewRequest AWS API Documentation
    #
    class DeleteKxDataviewRequest < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxDataviewResponse AWS API Documentation
    #
    class DeleteKxDataviewResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxEnvironmentRequest AWS API Documentation
    #
    class DeleteKxEnvironmentRequest < Struct.new(
      :environment_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxEnvironmentResponse AWS API Documentation
    #
    class DeleteKxEnvironmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, from where you want to
    #   delete the dataview.
    #   @return [String]
    #
    # @!attribute [rw] scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxScalingGroupRequest AWS API Documentation
    #
    class DeleteKxScalingGroupRequest < Struct.new(
      :environment_id,
      :scaling_group_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxScalingGroupResponse AWS API Documentation
    #
    class DeleteKxScalingGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] user_name
    #   A unique identifier for the user that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxUserRequest AWS API Documentation
    #
    class DeleteKxUserRequest < Struct.new(
      :user_name,
      :environment_id,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxUserResponse AWS API Documentation
    #
    class DeleteKxUserResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, whose clusters can
    #   attach to the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_name
    #   The name of the volume that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxVolumeRequest AWS API Documentation
    #
    class DeleteKxVolumeRequest < Struct.new(
      :environment_id,
      :volume_name,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/DeleteKxVolumeResponse AWS API Documentation
    #
    class DeleteKxVolumeResponse < Aws::EmptyStructure; end

    # Represents an FinSpace environment.
    #
    # @!attribute [rw] name
    #   The name of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The ID of the AWS account in which the FinSpace environment is
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of creation of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_url
    #   The sign-in URL for the web application of your FinSpace
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) of your FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] sage_maker_studio_domain_url
    #   The URL of the integrated FinSpace notebook environment in your web
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key id used to encrypt in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_service_account_id
    #   The AWS account ID of the dedicated service account associated with
    #   your FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_mode
    #   The authentication mode for the environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #   @return [Types::FederationParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :name,
      :environment_id,
      :aws_account_id,
      :status,
      :environment_url,
      :description,
      :environment_arn,
      :sage_maker_studio_domain_url,
      :kms_key_id,
      :dedicated_service_account_id,
      :federation_mode,
      :federation_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details in the event of a failed flow, including the error
    # type and the related error message.
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that appears if a flow fails.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   Specifies the type of error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ErrorInfo AWS API Documentation
    #
    class ErrorInfo < Struct.new(
      :error_message,
      :error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information when authentication mode is FEDERATED.
    #
    # @!attribute [rw] saml_metadata_document
    #   SAML 2.0 Metadata document from identity provider (IdP).
    #   @return [String]
    #
    # @!attribute [rw] saml_metadata_url
    #   Provide the metadata URL from your SAML 2.0 compliant identity
    #   provider (IdP).
    #   @return [String]
    #
    # @!attribute [rw] application_call_back_url
    #   The redirect or sign-in URL that should be entered into the SAML 2.0
    #   compliant identity provider configuration (IdP).
    #   @return [String]
    #
    # @!attribute [rw] federation_urn
    #   The Uniform Resource Name (URN). Also referred as Service Provider
    #   URN or Audience URI or Service Provider Entity ID.
    #   @return [String]
    #
    # @!attribute [rw] federation_provider_name
    #   Name of the identity provider (IdP).
    #   @return [String]
    #
    # @!attribute [rw] attribute_map
    #   SAML attribute name and value. The name must always be `Email` and
    #   the value should be set to the attribute definition in which user
    #   email is set. For example, name would be `Email` and value
    #   `http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress`.
    #   Please check your SAML 2.0 compliant identity provider (IdP)
    #   documentation for details.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/FederationParameters AWS API Documentation
    #
    class FederationParameters < Struct.new(
      :saml_metadata_document,
      :saml_metadata_url,
      :application_call_back_url,
      :federation_urn,
      :federation_provider_name,
      :attribute_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The identifier of the FinSpace environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   The name of the FinSpace environment.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetEnvironmentResponse AWS API Documentation
    #
    class GetEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier of the changeset for which you want to retrieve
    #   data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxChangesetRequest AWS API Documentation
    #
    class GetKxChangesetRequest < Struct.new(
      :environment_id,
      :database_name,
      :changeset_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] change_requests
    #   A list of change request objects that are run in order.
    #   @return [Array<Types::ChangeRequest>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the changeset was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] active_from_timestamp
    #   Beginning time from which the changeset is active. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The timestamp at which the changeset was updated in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of the changeset creation process.
    #
    #   * Pending – Changeset creation is pending.
    #
    #   * Processing – Changeset creation is running.
    #
    #   * Failed – Changeset creation has failed.
    #
    #   * Complete – Changeset creation has succeeded.
    #   @return [String]
    #
    # @!attribute [rw] error_info
    #   Provides details in the event of a failed flow, including the error
    #   type and the related error message.
    #   @return [Types::ErrorInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxChangesetResponse AWS API Documentation
    #
    class GetKxChangesetResponse < Struct.new(
      :changeset_id,
      :database_name,
      :environment_id,
      :change_requests,
      :created_timestamp,
      :active_from_timestamp,
      :last_modified_timestamp,
      :status,
      :error_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster that you want to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxClusterRequest AWS API Documentation
    #
    class GetKxClusterRequest < Struct.new(
      :environment_id,
      :cluster_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of cluster creation.
    #
    #   * PENDING – The cluster is pending creation.
    #
    #   * CREATING – The cluster creation process is in progress.
    #
    #   * CREATE\_FAILED – The cluster creation process has failed.
    #
    #   * RUNNING – The cluster creation process is running.
    #
    #   * UPDATING – The cluster is in the process of being updated.
    #
    #   * DELETING – The cluster is in the process of being deleted.
    #
    #   * DELETED – The cluster has been deleted.
    #
    #   * DELETE\_FAILED – The cluster failed to delete.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A unique name for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb
    #     databases mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads
    #     the HDB. This cluster type requires local storage for temporary
    #     storage of data during the savedown process. If you specify this
    #     field in your request, you must provide the
    #     `savedownStorageConfiguration` parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type
    #     of cluster does not require a writable local storage.
    #
    #   * GP – A general purpose cluster allows you to quickly iterate on
    #     code during development by granting greater access to system
    #     commands and enabling a fast reload of custom code. This cluster
    #     type can optionally mount databases including cache and savedown
    #     storage. For this cluster type, the node count is fixed at 1. It
    #     does not support autoscaling and supports only `SINGLE` AZ mode.
    #
    #   * Tickerplant – A tickerplant cluster allows you to subscribe to
    #     feed handlers based on IAM permissions. It can publish to RDBs,
    #     other Tickerplants, and real-time subscribers (RTS). Tickerplants
    #     can persist messages to log, which is readable by any RDB
    #     environment. It supports only single-node that is only one kdb
    #     process.
    #   @return [String]
    #
    # @!attribute [rw] tickerplant_log_configuration
    #   A configuration to store the Tickerplant logs. It consists of a list
    #   of volumes that will be mounted to your cluster. For the cluster
    #   type `Tickerplant`, the location of the TP volume on the cluster
    #   will be available by using the global variable `.aws.tp_log_path`.
    #   @return [Types::TickerplantLogConfiguration]
    #
    # @!attribute [rw] volumes
    #   A list of volumes attached to the cluster.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] databases
    #   A list of databases mounted on the cluster.
    #   @return [Array<Types::KxDatabaseConfiguration>]
    #
    # @!attribute [rw] cache_storage_configurations
    #   The configurations for a read only cache storage associated with a
    #   cluster. This cache will be stored as an FSx Lustre that reads from
    #   the S3 store.
    #   @return [Array<Types::KxCacheStorageConfiguration>]
    #
    # @!attribute [rw] auto_scaling_configuration
    #   The configuration based on which FinSpace will scale in or scale out
    #   nodes in your cluster.
    #   @return [Types::AutoScalingConfiguration]
    #
    # @!attribute [rw] cluster_description
    #   A description of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] capacity_configuration
    #   A structure for the metadata of a cluster. It includes information
    #   like the CPUs needed, memory of instances, and number of instances.
    #   @return [Types::CapacityConfiguration]
    #
    # @!attribute [rw] release_label
    #   The version of FinSpace managed kdb to run.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   Configuration details about the network where the Privatelink
    #   endpoint of the cluster resides.
    #   @return [Types::VpcConfiguration]
    #
    # @!attribute [rw] initialization_script
    #   Specifies a Q program that will be run at launch of a cluster. It is
    #   a relative path within *.zip* file that contains the custom code,
    #   which will be loaded on the cluster. It must include the file name
    #   itself. For example, `somedir/init.q`.
    #   @return [String]
    #
    # @!attribute [rw] command_line_arguments
    #   Defines key-value pairs to make them available inside the cluster.
    #   @return [Array<Types::KxCommandLineArgument>]
    #
    # @!attribute [rw] code
    #   The details of the custom code that you want to use inside a cluster
    #   when analyzing a data. It consists of the S3 source bucket,
    #   location, S3 object version, and the relative path from where the
    #   custom code is loaded into the cluster.
    #   @return [Types::CodeConfiguration]
    #
    # @!attribute [rw] execution_role
    #   An IAM role that defines a set of permissions associated with a
    #   cluster. These permissions are assumed when a cluster attempts to
    #   access another cluster.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the cluster was modified. The value is determined
    #   as epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] savedown_storage_configuration
    #   The size and type of the temporary storage that is used to hold data
    #   during the savedown process. This parameter is required when you
    #   choose `clusterType` as RDB. All the data written to this storage
    #   space is lost when the cluster node is restarted.
    #   @return [Types::KxSavedownStorageConfiguration]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per cluster.
    #   This can be one of the following
    #
    #   * `SINGLE` – Assigns one availability zone per cluster.
    #
    #   * `MULTI` – Assigns all the availability zones per cluster.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The availability zone identifiers for the requested regions.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the cluster was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] scaling_group_configuration
    #   The structure that stores the capacity configuration details of a
    #   scaling group.
    #   @return [Types::KxScalingGroupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxClusterResponse AWS API Documentation
    #
    class GetKxClusterResponse < Struct.new(
      :status,
      :status_reason,
      :cluster_name,
      :cluster_type,
      :tickerplant_log_configuration,
      :volumes,
      :databases,
      :cache_storage_configurations,
      :auto_scaling_configuration,
      :cluster_description,
      :capacity_configuration,
      :release_label,
      :vpc_configuration,
      :initialization_script,
      :command_line_arguments,
      :code,
      :execution_role,
      :last_modified_timestamp,
      :savedown_storage_configuration,
      :az_mode,
      :availability_zone_id,
      :created_timestamp,
      :scaling_group_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A name of the kdb cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxConnectionStringRequest AWS API Documentation
    #
    class GetKxConnectionStringRequest < Struct.new(
      :user_arn,
      :environment_id,
      :cluster_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] signed_connection_string
    #   The signed connection string that you can use to connect to
    #   clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxConnectionStringResponse AWS API Documentation
    #
    class GetKxConnectionStringResponse < Struct.new(
      :signed_connection_string)
      SENSITIVE = [:signed_connection_string]
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxDatabaseRequest AWS API Documentation
    #
    class GetKxDatabaseRequest < Struct.new(
      :environment_id,
      :database_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the kdb database for which the information is retrieved.
    #   @return [String]
    #
    # @!attribute [rw] database_arn
    #   The ARN identifier of the database.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the database is created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the database was modified. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_completed_changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] num_bytes
    #   The total number of bytes in the database.
    #   @return [Integer]
    #
    # @!attribute [rw] num_changesets
    #   The total number of changesets in the database.
    #   @return [Integer]
    #
    # @!attribute [rw] num_files
    #   The total number of files in the database.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxDatabaseResponse AWS API Documentation
    #
    class GetKxDatabaseResponse < Struct.new(
      :database_name,
      :database_arn,
      :environment_id,
      :description,
      :created_timestamp,
      :last_modified_timestamp,
      :last_completed_changeset_id,
      :num_bytes,
      :num_changesets,
      :num_files)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, from where you want to
    #   retrieve the dataview details.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database where you created the dataview.
    #   @return [String]
    #
    # @!attribute [rw] dataview_name
    #   A unique identifier for the dataview.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxDataviewRequest AWS API Documentation
    #
    class GetKxDataviewRequest < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the database where you created the dataview.
    #   @return [String]
    #
    # @!attribute [rw] dataview_name
    #   A unique identifier for the dataview.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier of the changeset that you want to use to ingest
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] segment_configurations
    #   The configuration that contains the database path of the data that
    #   you want to place on each selected volume. Each segment must have a
    #   unique database path for each volume. If you do not explicitly
    #   specify any database path for a volume, they are accessible from the
    #   cluster through the default S3/object store segment.
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    #
    # @!attribute [rw] active_versions
    #   The current active changeset versions of the database on the given
    #   dataview.
    #   @return [Array<Types::KxDataviewActiveVersion>]
    #
    # @!attribute [rw] description
    #   A description of the dataview.
    #   @return [String]
    #
    # @!attribute [rw] auto_update
    #   The option to specify whether you want to apply all the future
    #   additions and corrections automatically to the dataview when new
    #   changesets are ingested. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_write
    #   Returns True if the dataview is created as writeable and False
    #   otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, from where you want to
    #   retrieve the dataview details.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the dataview was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the dataview was updated in FinSpace. The value
    #   is determined as epoch time in milliseconds. For example, the value
    #   for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of dataview creation.
    #
    #   * `CREATING` – The dataview creation is in progress.
    #
    #   * `UPDATING` – The dataview is in the process of being updated.
    #
    #   * `ACTIVE` – The dataview is active.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxDataviewResponse AWS API Documentation
    #
    class GetKxDataviewResponse < Struct.new(
      :database_name,
      :dataview_name,
      :az_mode,
      :availability_zone_id,
      :changeset_id,
      :segment_configurations,
      :active_versions,
      :description,
      :auto_update,
      :read_write,
      :environment_id,
      :created_timestamp,
      :last_modified_timestamp,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxEnvironmentRequest AWS API Documentation
    #
    class GetKxEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The unique identifier of the AWS account that is used to create the
    #   kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] tgw_status
    #   The status of the network configuration.
    #   @return [String]
    #
    # @!attribute [rw] dns_status
    #   The status of DNS configuration.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that appears if a flow fails.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID to encrypt your data in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_service_account_id
    #   A unique identifier for the AWS environment infrastructure account.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_configuration
    #   The structure of the transit gateway and network configuration that
    #   is used to connect the kdb environment to an internal network.
    #   @return [Types::TransitGatewayConfiguration]
    #
    # @!attribute [rw] custom_dns_configuration
    #   A list of DNS server name and server IP. This is used to set up
    #   Route-53 outbound resolvers.
    #   @return [Array<Types::CustomDNSServer>]
    #
    # @!attribute [rw] creation_timestamp
    #   The timestamp at which the kdb environment was created in FinSpace.
    #   @return [Time]
    #
    # @!attribute [rw] update_timestamp
    #   The timestamp at which the kdb environment was updated.
    #   @return [Time]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones where subnets for the
    #   environment are created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the certificate authority of the
    #   kdb environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxEnvironmentResponse AWS API Documentation
    #
    class GetKxEnvironmentResponse < Struct.new(
      :name,
      :environment_id,
      :aws_account_id,
      :status,
      :tgw_status,
      :dns_status,
      :error_message,
      :description,
      :environment_arn,
      :kms_key_id,
      :dedicated_service_account_id,
      :transit_gateway_configuration,
      :custom_dns_configuration,
      :creation_timestamp,
      :update_timestamp,
      :availability_zone_ids,
      :certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxScalingGroupRequest AWS API Documentation
    #
    class GetKxScalingGroupRequest < Struct.new(
      :environment_id,
      :scaling_group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #   @return [String]
    #
    # @!attribute [rw] scaling_group_arn
    #   The ARN identifier for the scaling group.
    #   @return [String]
    #
    # @!attribute [rw] host_type
    #   The memory and CPU capabilities of the scaling group host on which
    #   FinSpace Managed kdb clusters will be placed.
    #
    #   It can have one of the following values:
    #
    #   * `kx.sg.large` – The host type with a configuration of 16 GiB
    #     memory and 2 vCPUs.
    #
    #   * `kx.sg.xlarge` – The host type with a configuration of 32 GiB
    #     memory and 4 vCPUs.
    #
    #   * `kx.sg.2xlarge` – The host type with a configuration of 64 GiB
    #     memory and 8 vCPUs.
    #
    #   * `kx.sg.4xlarge` – The host type with a configuration of 108 GiB
    #     memory and 16 vCPUs.
    #
    #   * `kx.sg.8xlarge` – The host type with a configuration of 216 GiB
    #     memory and 32 vCPUs.
    #
    #   * `kx.sg.16xlarge` – The host type with a configuration of 432 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.sg.32xlarge` – The host type with a configuration of 864 GiB
    #     memory and 128 vCPUs.
    #
    #   * `kx.sg1.16xlarge` – The host type with a configuration of 1949 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.sg1.24xlarge` – The host type with a configuration of 2948 GiB
    #     memory and 96 vCPUs.
    #   @return [String]
    #
    # @!attribute [rw] clusters
    #   The list of Managed kdb clusters that are currently active in the
    #   given scaling group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of scaling group.
    #
    #   * CREATING – The scaling group creation is in progress.
    #
    #   * CREATE\_FAILED – The scaling group creation has failed.
    #
    #   * ACTIVE – The scaling group is active.
    #
    #   * UPDATING – The scaling group is in the process of being updated.
    #
    #   * UPDATE\_FAILED – The update action failed.
    #
    #   * DELETING – The scaling group is in the process of being deleted.
    #
    #   * DELETE\_FAILED – The system failed to delete the scaling group.
    #
    #   * DELETED – The scaling group is successfully deleted.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the scaling group was updated in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the scaling group was created in FinSpace.
    #   The value is determined as epoch time in milliseconds. For example,
    #   the value for Monday, November 1, 2021 12:00:00 PM UTC is specified
    #   as 1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxScalingGroupResponse AWS API Documentation
    #
    class GetKxScalingGroupResponse < Struct.new(
      :scaling_group_name,
      :scaling_group_arn,
      :host_type,
      :clusters,
      :availability_zone_id,
      :status,
      :status_reason,
      :last_modified_timestamp,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   A unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxUserRequest AWS API Documentation
    #
    class GetKxUserRequest < Struct.new(
      :user_name,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   A unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The IAM role ARN that is associated with the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxUserResponse AWS API Documentation
    #
    class GetKxUserResponse < Struct.new(
      :user_name,
      :user_arn,
      :environment_id,
      :iam_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, whose clusters can
    #   attach to the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_name
    #   A unique identifier for the volume.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxVolumeRequest AWS API Documentation
    #
    class GetKxVolumeRequest < Struct.new(
      :environment_id,
      :volume_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, whose clusters can
    #   attach to the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_name
    #   A unique identifier for the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type.
    #   @return [String]
    #
    # @!attribute [rw] volume_arn
    #   The ARN identifier of the volume.
    #   @return [String]
    #
    # @!attribute [rw] nas1_configuration
    #   Specifies the configuration for the Network attached storage
    #   (NAS\_1) file system volume.
    #   @return [Types::KxNAS1Configuration]
    #
    # @!attribute [rw] status
    #   The status of volume creation.
    #
    #   * CREATING – The volume creation is in progress.
    #
    #   * CREATE\_FAILED – The volume creation has failed.
    #
    #   * ACTIVE – The volume is active.
    #
    #   * UPDATING – The volume is in the process of being updated.
    #
    #   * UPDATE\_FAILED – The update action failed.
    #
    #   * UPDATED – The volume is successfully updated.
    #
    #   * DELETING – The volume is in the process of being deleted.
    #
    #   * DELETE\_FAILED – The system failed to delete the volume.
    #
    #   * DELETED – The volume is successfully deleted.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the volume was created in FinSpace. The value
    #   is determined as epoch time in milliseconds. For example, the value
    #   for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the volume.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the volume was updated in FinSpace. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] attached_clusters
    #   A list of cluster identifiers that a volume is attached to.
    #   @return [Array<Types::KxAttachedCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/GetKxVolumeResponse AWS API Documentation
    #
    class GetKxVolumeResponse < Struct.new(
      :environment_id,
      :volume_name,
      :volume_type,
      :volume_arn,
      :nas1_configuration,
      :status,
      :status_reason,
      :created_timestamp,
      :description,
      :az_mode,
      :availability_zone_ids,
      :last_modified_timestamp,
      :attached_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the ICMP protocol that consists of the ICMP type and code.
    #
    # @!attribute [rw] type
    #   The ICMP type. A value of *-1* means all types.
    #   @return [Integer]
    #
    # @!attribute [rw] code
    #   The ICMP code. A value of *-1* means all codes for the specified
    #   ICMP type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/IcmpTypeCode AWS API Documentation
    #
    class IcmpTypeCode < Struct.new(
      :type,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing has failed because of an unknown error,
    # exception or failure.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid. Something is wrong with the input to the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure containing the metadata of the attached clusters.
    #
    # @!attribute [rw] cluster_name
    #   A unique name for the attached cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   Specifies the type of cluster. The volume for TP and RDB cluster
    #   types will be used for TP logs.
    #   @return [String]
    #
    # @!attribute [rw] cluster_status
    #   The status of the attached cluster.
    #
    #   * PENDING – The cluster is pending creation.
    #
    #   * CREATING – The cluster creation process is in progress.
    #
    #   * CREATE\_FAILED – The cluster creation process has failed.
    #
    #   * RUNNING – The cluster creation process is running.
    #
    #   * UPDATING – The cluster is in the process of being updated.
    #
    #   * DELETING – The cluster is in the process of being deleted.
    #
    #   * DELETED – The cluster has been deleted.
    #
    #   * DELETE\_FAILED – The cluster failed to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxAttachedCluster AWS API Documentation
    #
    class KxAttachedCluster < Struct.new(
      :cluster_name,
      :cluster_type,
      :cluster_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for read only disk cache associated with a cluster.
    #
    # @!attribute [rw] type
    #   The type of cache storage. The valid values are:
    #
    #   * CACHE\_1000 – This type provides at least 1000 MB/s disk access
    #     throughput.
    #
    #   * CACHE\_250 – This type provides at least 250 MB/s disk access
    #     throughput.
    #
    #   * CACHE\_12 – This type provides at least 12 MB/s disk access
    #     throughput.
    #
    #   For cache type `CACHE_1000` and `CACHE_250` you can select cache
    #   size as 1200 GB or increments of 2400 GB. For cache type `CACHE_12`
    #   you can select the cache size in increments of 6000 GB.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of cache in Gigabytes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxCacheStorageConfiguration AWS API Documentation
    #
    class KxCacheStorageConfiguration < Struct.new(
      :type,
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of changeset.
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the changeset was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] active_from_timestamp
    #   Beginning time from which the changeset is active. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The timestamp at which the changeset was modified. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of the changeset.
    #
    #   * Pending – Changeset creation is pending.
    #
    #   * Processing – Changeset creation is running.
    #
    #   * Failed – Changeset creation has failed.
    #
    #   * Complete – Changeset creation has succeeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxChangesetListEntry AWS API Documentation
    #
    class KxChangesetListEntry < Struct.new(
      :changeset_id,
      :created_timestamp,
      :active_from_timestamp,
      :last_modified_timestamp,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a kdb cluster.
    #
    # @!attribute [rw] status
    #   The status of a cluster.
    #
    #   * PENDING – The cluster is pending creation.
    #
    #   * CREATING –The cluster creation process is in progress.
    #
    #   * CREATE\_FAILED– The cluster creation process has failed.
    #
    #   * RUNNING – The cluster creation process is running.
    #
    #   * UPDATING – The cluster is in the process of being updated.
    #
    #   * DELETING – The cluster is in the process of being deleted.
    #
    #   * DELETED – The cluster has been deleted.
    #
    #   * DELETE\_FAILED – The cluster failed to delete.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A unique name for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb
    #     databases mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads
    #     the HDB. This cluster type requires local storage for temporary
    #     storage of data during the savedown process. If you specify this
    #     field in your request, you must provide the
    #     `savedownStorageConfiguration` parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type
    #     of cluster does not require a writable local storage.
    #
    #   * GP – A general purpose cluster allows you to quickly iterate on
    #     code during development by granting greater access to system
    #     commands and enabling a fast reload of custom code. This cluster
    #     type can optionally mount databases including cache and savedown
    #     storage. For this cluster type, the node count is fixed at 1. It
    #     does not support autoscaling and supports only `SINGLE` AZ mode.
    #
    #   * Tickerplant – A tickerplant cluster allows you to subscribe to
    #     feed handlers based on IAM permissions. It can publish to RDBs,
    #     other Tickerplants, and real-time subscribers (RTS). Tickerplants
    #     can persist messages to log, which is readable by any RDB
    #     environment. It supports only single-node that is only one kdb
    #     process.
    #   @return [String]
    #
    # @!attribute [rw] cluster_description
    #   A description of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   A version of the FinSpace managed kdb to run.
    #   @return [String]
    #
    # @!attribute [rw] volumes
    #   A list of volumes attached to the cluster.
    #   @return [Array<Types::Volume>]
    #
    # @!attribute [rw] initialization_script
    #   Specifies a Q program that will be run at launch of a cluster. It is
    #   a relative path within *.zip* file that contains the custom code,
    #   which will be loaded on the cluster. It must include the file name
    #   itself. For example, `somedir/init.q`.
    #   @return [String]
    #
    # @!attribute [rw] execution_role
    #   An IAM role that defines a set of permissions associated with a
    #   cluster. These permissions are assumed when a cluster attempts to
    #   access another cluster.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones assigned per cluster. This can be
    #   one of the following:
    #
    #   * `SINGLE` – Assigns one availability zone per cluster.
    #
    #   * `MULTI` – Assigns all the availability zones per cluster.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The availability zone identifiers for the requested regions.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the cluster was modified. The value is determined
    #   as epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the cluster was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxCluster AWS API Documentation
    #
    class KxCluster < Struct.new(
      :status,
      :status_reason,
      :cluster_name,
      :cluster_type,
      :cluster_description,
      :release_label,
      :volumes,
      :initialization_script,
      :execution_role,
      :az_mode,
      :availability_zone_id,
      :last_modified_timestamp,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that allows you to choose how you want to update
    # code on a cluster. Depending on the option you choose, you can reduce
    # the time it takes to update the cluster.
    #
    # @!attribute [rw] deployment_strategy
    #   The type of deployment that you want on a cluster.
    #
    #   * ROLLING – This options updates the cluster by stopping the exiting
    #     q process and starting a new q process with updated configuration.
    #
    #   * NO\_RESTART – This option updates the cluster without stopping the
    #     running q process. It is only available for `GP` type cluster.
    #     This option is quicker as it reduces the turn around time to
    #     update configuration on a cluster.
    #
    #     With this deployment mode, you cannot update the
    #     `initializationScript` and `commandLineArguments` parameters.
    #
    #   * FORCE – This option updates the cluster by immediately stopping
    #     all the running processes before starting up new ones with the
    #     updated configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxClusterCodeDeploymentConfiguration AWS API Documentation
    #
    class KxClusterCodeDeploymentConfiguration < Struct.new(
      :deployment_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the key-value pairs to make them available inside the cluster.
    #
    # @!attribute [rw] key
    #   The name of the key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxCommandLineArgument AWS API Documentation
    #
    class KxCommandLineArgument < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of database cache configuration that is used for mapping
    # database paths to cache types in clusters.
    #
    # @!attribute [rw] cache_type
    #   The type of disk cache. This parameter is used to map the database
    #   path to cache storage. The valid values are:
    #
    #   * CACHE\_1000 – This type provides at least 1000 MB/s disk access
    #     throughput.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] db_paths
    #   Specifies the portions of database that will be loaded into the
    #   cache for access.
    #   @return [Array<String>]
    #
    # @!attribute [rw] dataview_name
    #   The name of the dataview to be used for caching historical data on
    #   disk.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxDatabaseCacheConfiguration AWS API Documentation
    #
    class KxDatabaseCacheConfiguration < Struct.new(
      :cache_type,
      :db_paths,
      :dataview_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of data that is available for querying from this
    # database.
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database. When this parameter is specified in
    #   the structure, S3 with the whole database is included by default.
    #   @return [String]
    #
    # @!attribute [rw] cache_configurations
    #   Configuration details for the disk cache used to increase
    #   performance reading from a kdb database mounted to the cluster.
    #   @return [Array<Types::KxDatabaseCacheConfiguration>]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier of the changeset that is associated with the
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] dataview_name
    #   The name of the dataview to be used for caching historical data on
    #   disk.
    #   @return [String]
    #
    # @!attribute [rw] dataview_configuration
    #   The configuration of the dataview to be used with specified cluster.
    #   @return [Types::KxDataviewConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxDatabaseConfiguration AWS API Documentation
    #
    class KxDatabaseConfiguration < Struct.new(
      :database_name,
      :cache_configurations,
      :changeset_id,
      :dataview_name,
      :dataview_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a FinSpace managed kdb database
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the database was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the database was modified. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxDatabaseListEntry AWS API Documentation
    #
    class KxDatabaseListEntry < Struct.new(
      :database_name,
      :created_timestamp,
      :last_modified_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The active version of the dataview that is currently in use by this
    # cluster.
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] segment_configurations
    #   The configuration that contains the database path of the data that
    #   you want to place on each selected volume. Each segment must have a
    #   unique database path for each volume. If you do not explicitly
    #   specify any database path for a volume, they are accessible from the
    #   cluster through the default S3/object store segment.
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    #
    # @!attribute [rw] attached_clusters
    #   The list of clusters that are currently using this dataview.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the dataview version was active. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] version_id
    #   A unique identifier of the active version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxDataviewActiveVersion AWS API Documentation
    #
    class KxDataviewActiveVersion < Struct.new(
      :changeset_id,
      :segment_configurations,
      :attached_clusters,
      :created_timestamp,
      :version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that stores the configuration details of a dataview.
    #
    # @!attribute [rw] dataview_name
    #   The unique identifier of the dataview.
    #   @return [String]
    #
    # @!attribute [rw] dataview_version_id
    #   The version of the dataview corresponding to a given changeset.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] segment_configurations
    #   The db path and volume configuration for the segmented database.
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxDataviewConfiguration AWS API Documentation
    #
    class KxDataviewConfiguration < Struct.new(
      :dataview_name,
      :dataview_version_id,
      :changeset_id,
      :segment_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of kdb dataview entries.
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   A unique identifier of the database.
    #   @return [String]
    #
    # @!attribute [rw] dataview_name
    #   A unique identifier of the dataview.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] segment_configurations
    #   The configuration that contains the database path of the data that
    #   you want to place on each selected volume. Each segment must have a
    #   unique database path for each volume. If you do not explicitly
    #   specify any database path for a volume, they are accessible from the
    #   cluster through the default S3/object store segment.
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    #
    # @!attribute [rw] active_versions
    #   The active changeset versions for the given dataview entry.
    #   @return [Array<Types::KxDataviewActiveVersion>]
    #
    # @!attribute [rw] status
    #   The status of a given dataview entry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the dataview list entry.
    #   @return [String]
    #
    # @!attribute [rw] auto_update
    #   The option to specify whether you want to apply all the future
    #   additions and corrections automatically to the dataview when you
    #   ingest new changesets. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_write
    #   Returns True if the dataview is created as writeable and False
    #   otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the dataview list entry was created in
    #   FinSpace. The value is determined as epoch time in milliseconds. For
    #   example, the value for Monday, November 1, 2021 12:00:00 PM UTC is
    #   specified as 1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the dataview list was updated in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxDataviewListEntry AWS API Documentation
    #
    class KxDataviewListEntry < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name,
      :az_mode,
      :availability_zone_id,
      :changeset_id,
      :segment_configurations,
      :active_versions,
      :status,
      :description,
      :auto_update,
      :read_write,
      :created_timestamp,
      :last_modified_timestamp,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that contains the database path of the data that you
    # want to place on each selected volume. Each segment must have a unique
    # database path for each volume. If you do not explicitly specify any
    # database path for a volume, they are accessible from the cluster
    # through the default S3/object store segment.
    #
    # @!attribute [rw] db_paths
    #   The database path of the data that you want to place on each
    #   selected volume for the segment. Each segment must have a unique
    #   database path for each volume.
    #   @return [Array<String>]
    #
    # @!attribute [rw] volume_name
    #   The name of the volume where you want to add data.
    #   @return [String]
    #
    # @!attribute [rw] on_demand
    #   Enables on-demand caching on the selected database path when a
    #   particular file or a column of the database is accessed. When on
    #   demand caching is **True**, dataviews perform minimal loading of
    #   files on the filesystem as needed. When it is set to **False**,
    #   everything is cached. The default value is **False**.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxDataviewSegmentConfiguration AWS API Documentation
    #
    class KxDataviewSegmentConfiguration < Struct.new(
      :db_paths,
      :volume_name,
      :on_demand)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration that allows you to choose how you want to update the
    # databases on a cluster. Depending on the option you choose, you can
    # reduce the time it takes to update the cluster.
    #
    # @!attribute [rw] deployment_strategy
    #   The type of deployment that you want on a cluster.
    #
    #   * ROLLING – This options updates the cluster by stopping the exiting
    #     q process and starting a new q process with updated configuration.
    #
    #   * NO\_RESTART – This option updates the cluster without stopping the
    #     running q process. It is only available for `HDB` type cluster.
    #     This option is quicker as it reduces the turn around time to
    #     update configuration on a cluster.
    #
    #     With this deployment mode, you cannot update the
    #     `initializationScript` and `commandLineArguments` parameters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxDeploymentConfiguration AWS API Documentation
    #
    class KxDeploymentConfiguration < Struct.new(
      :deployment_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a kdb environment.
    #
    # @!attribute [rw] name
    #   The name of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The unique identifier of the AWS account in which you create the kdb
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the environment creation.
    #
    #   * CREATE\_REQUESTED – Environment creation has been requested.
    #
    #   * CREATING – Environment is in the process of being created.
    #
    #   * FAILED\_CREATION – Environment creation has failed.
    #
    #   * CREATED – Environment is successfully created and is currently
    #     active.
    #
    #   * DELETE REQUESTED – Environment deletion has been requested.
    #
    #   * DELETING – Environment is in the process of being deleted.
    #
    #   * RETRY\_DELETION – Initial environment deletion failed, system is
    #     reattempting delete.
    #
    #   * DELETED – Environment has been deleted.
    #
    #   * FAILED\_DELETION – Environment deletion has failed.
    #   @return [String]
    #
    # @!attribute [rw] tgw_status
    #   The status of the network configuration.
    #   @return [String]
    #
    # @!attribute [rw] dns_status
    #   The status of DNS configuration.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that appears if a flow fails.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) of your kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The unique identifier of the KMS key.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_service_account_id
    #   A unique identifier for the AWS environment infrastructure account.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_configuration
    #   Specifies the transit gateway and network configuration to connect
    #   the kdb environment to an internal network.
    #   @return [Types::TransitGatewayConfiguration]
    #
    # @!attribute [rw] custom_dns_configuration
    #   A list of DNS server name and server IP. This is used to set up
    #   Route-53 outbound resolvers.
    #   @return [Array<Types::CustomDNSServer>]
    #
    # @!attribute [rw] creation_timestamp
    #   The timestamp at which the kdb environment was created in FinSpace.
    #   The value is determined as epoch time in milliseconds. For example,
    #   the value for Monday, November 1, 2021 12:00:00 PM UTC is specified
    #   as 1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] update_timestamp
    #   The timestamp at which the kdb environment was modified in FinSpace.
    #   The value is determined as epoch time in milliseconds. For example,
    #   the value for Monday, November 1, 2021 12:00:00 PM UTC is specified
    #   as 1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones where subnets for the
    #   environment are created.
    #   @return [Array<String>]
    #
    # @!attribute [rw] certificate_authority_arn
    #   The Amazon Resource Name (ARN) of the certificate authority:
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxEnvironment AWS API Documentation
    #
    class KxEnvironment < Struct.new(
      :name,
      :environment_id,
      :aws_account_id,
      :status,
      :tgw_status,
      :dns_status,
      :error_message,
      :description,
      :environment_arn,
      :kms_key_id,
      :dedicated_service_account_id,
      :transit_gateway_configuration,
      :custom_dns_configuration,
      :creation_timestamp,
      :update_timestamp,
      :availability_zone_ids,
      :certificate_authority_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure containing the size and type of the network attached
    # storage (NAS\_1) file system volume.
    #
    # @!attribute [rw] type
    #   The type of the network attached storage.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the network attached storage. For storage type
    #   `SSD_1000` and `SSD_250` you can select the minimum size as 1200 GB
    #   or increments of 2400 GB. For storage type `HDD_12` you can select
    #   the minimum size as 6000 GB or increments of 6000 GB.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxNAS1Configuration AWS API Documentation
    #
    class KxNAS1Configuration < Struct.new(
      :type,
      :size)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that stores metadata for a kdb node.
    #
    # @!attribute [rw] node_id
    #   A unique identifier for the node.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones where subnets for the
    #   environment are created.
    #   @return [String]
    #
    # @!attribute [rw] launch_time
    #   The time when a particular node is started. The value is determined
    #   as epoch time in milliseconds. For example, the value for Monday,
    #   November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Specifies the status of the cluster nodes.
    #
    #   * `RUNNING` – The node is actively serving.
    #
    #   * `PROVISIONING` – The node is being prepared.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxNode AWS API Documentation
    #
    class KxNode < Struct.new(
      :node_id,
      :availability_zone_id,
      :launch_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The size and type of temporary storage that is used to hold data
    # during the savedown process. All the data written to this storage
    # space is lost when the cluster node is restarted.
    #
    # @!attribute [rw] type
    #   The type of writeable storage space for temporarily storing your
    #   savedown data. The valid values are:
    #
    #   * SDS01 – This type represents 3000 IOPS and io2 ebs volume type.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of temporary storage in gibibytes.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_name
    #   The name of the kdb volume that you want to use as writeable
    #   save-down storage for clusters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxSavedownStorageConfiguration AWS API Documentation
    #
    class KxSavedownStorageConfiguration < Struct.new(
      :type,
      :size,
      :volume_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for storing metadata of scaling group.
    #
    # @!attribute [rw] scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #   @return [String]
    #
    # @!attribute [rw] host_type
    #   The memory and CPU capabilities of the scaling group host on which
    #   FinSpace Managed kdb clusters will be placed.
    #
    #   You can add one of the following values:
    #
    #   * `kx.sg.large` – The host type with a configuration of 16 GiB
    #     memory and 2 vCPUs.
    #
    #   * `kx.sg.xlarge` – The host type with a configuration of 32 GiB
    #     memory and 4 vCPUs.
    #
    #   * `kx.sg.2xlarge` – The host type with a configuration of 64 GiB
    #     memory and 8 vCPUs.
    #
    #   * `kx.sg.4xlarge` – The host type with a configuration of 108 GiB
    #     memory and 16 vCPUs.
    #
    #   * `kx.sg.8xlarge` – The host type with a configuration of 216 GiB
    #     memory and 32 vCPUs.
    #
    #   * `kx.sg.16xlarge` – The host type with a configuration of 432 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.sg.32xlarge` – The host type with a configuration of 864 GiB
    #     memory and 128 vCPUs.
    #
    #   * `kx.sg1.16xlarge` – The host type with a configuration of 1949 GiB
    #     memory and 64 vCPUs.
    #
    #   * `kx.sg1.24xlarge` – The host type with a configuration of 2948 GiB
    #     memory and 96 vCPUs.
    #   @return [String]
    #
    # @!attribute [rw] clusters
    #   The list of clusters currently active in a given scaling group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of scaling groups.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the scaling group was updated in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the scaling group was created in FinSpace.
    #   The value is determined as epoch time in milliseconds. For example,
    #   the value for Monday, November 1, 2021 12:00:00 PM UTC is specified
    #   as 1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxScalingGroup AWS API Documentation
    #
    class KxScalingGroup < Struct.new(
      :scaling_group_name,
      :host_type,
      :clusters,
      :availability_zone_id,
      :status,
      :status_reason,
      :last_modified_timestamp,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that stores the capacity configuration details of a
    # scaling group.
    #
    # @!attribute [rw] scaling_group_name
    #   A unique identifier for the kdb scaling group.
    #   @return [String]
    #
    # @!attribute [rw] memory_limit
    #   An optional hard limit on the amount of memory a kdb cluster can
    #   use.
    #   @return [Integer]
    #
    # @!attribute [rw] memory_reservation
    #   A reservation of the minimum amount of memory that should be
    #   available on the scaling group for a kdb cluster to be successfully
    #   placed in a scaling group.
    #   @return [Integer]
    #
    # @!attribute [rw] node_count
    #   The number of kdb cluster nodes.
    #   @return [Integer]
    #
    # @!attribute [rw] cpu
    #   The number of vCPUs that you want to reserve for each node of this
    #   kdb cluster on the scaling group host.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxScalingGroupConfiguration AWS API Documentation
    #
    class KxScalingGroupConfiguration < Struct.new(
      :scaling_group_name,
      :memory_limit,
      :memory_reservation,
      :node_count,
      :cpu)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that stores metadata for a kdb user.
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The IAM role ARN that is associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] create_timestamp
    #   The timestamp at which the kdb user was created.
    #   @return [Time]
    #
    # @!attribute [rw] update_timestamp
    #   The timestamp at which the kdb user was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxUser AWS API Documentation
    #
    class KxUser < Struct.new(
      :user_arn,
      :user_name,
      :iam_role,
      :create_timestamp,
      :update_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that contains the metadata of the volume.
    #
    # @!attribute [rw] volume_name
    #   A unique identifier for the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of volume.
    #
    #   * CREATING – The volume creation is in progress.
    #
    #   * CREATE\_FAILED – The volume creation has failed.
    #
    #   * ACTIVE – The volume is active.
    #
    #   * UPDATING – The volume is in the process of being updated.
    #
    #   * UPDATE\_FAILED – The update action failed.
    #
    #   * UPDATED – The volume is successfully updated.
    #
    #   * DELETING – The volume is in the process of being deleted.
    #
    #   * DELETE\_FAILED – The system failed to delete the volume.
    #
    #   * DELETED – The volume is successfully deleted.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the volume.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the volume was created in FinSpace. The value
    #   is determined as epoch time in milliseconds. For example, the value
    #   for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the volume was updated in FinSpace. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/KxVolume AWS API Documentation
    #
    class KxVolume < Struct.new(
      :volume_name,
      :volume_type,
      :status,
      :description,
      :status_reason,
      :az_mode,
      :availability_zone_ids,
      :created_timestamp,
      :last_modified_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A service limit or quota is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token generated by FinSpace that specifies where to continue
    #   pagination if a previous request was truncated. To get the next set
    #   of pages, pass in the `nextToken`nextToken value from the response
    #   object of the previous page call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   A list of all of your FinSpace environments.
    #   @return [Array<Types::Environment>]
    #
    # @!attribute [rw] next_token
    #   A token that you can use in a subsequent call to retrieve the next
    #   set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListEnvironmentsResponse AWS API Documentation
    #
    class ListEnvironmentsResponse < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxChangesetsRequest AWS API Documentation
    #
    class ListKxChangesetsRequest < Struct.new(
      :environment_id,
      :database_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kx_changesets
    #   A list of changesets for a database.
    #   @return [Array<Types::KxChangesetListEntry>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxChangesetsResponse AWS API Documentation
    #
    class ListKxChangesetsResponse < Struct.new(
      :kx_changesets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A unique name for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxClusterNodesRequest AWS API Documentation
    #
    class ListKxClusterNodesRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] nodes
    #   A list of nodes associated with the cluster.
    #   @return [Array<Types::KxNode>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxClusterNodesResponse AWS API Documentation
    #
    class ListKxClusterNodesResponse < Struct.new(
      :nodes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   Specifies the type of KDB database that is being created. The
    #   following types are available:
    #
    #   * HDB – A Historical Database. The data is only accessible with
    #     read-only permissions from one of the FinSpace managed kdb
    #     databases mounted to the cluster.
    #
    #   * RDB – A Realtime Database. This type of database captures all the
    #     data from a ticker plant and stores it in memory until the end of
    #     day, after which it writes all of its data to a disk and reloads
    #     the HDB. This cluster type requires local storage for temporary
    #     storage of data during the savedown process. If you specify this
    #     field in your request, you must provide the
    #     `savedownStorageConfiguration` parameter.
    #
    #   * GATEWAY – A gateway cluster allows you to access data across
    #     processes in kdb systems. It allows you to create your own routing
    #     logic using the initialization scripts and custom code. This type
    #     of cluster does not require a writable local storage.
    #
    #   * GP – A general purpose cluster allows you to quickly iterate on
    #     code during development by granting greater access to system
    #     commands and enabling a fast reload of custom code. This cluster
    #     type can optionally mount databases including cache and savedown
    #     storage. For this cluster type, the node count is fixed at 1. It
    #     does not support autoscaling and supports only `SINGLE` AZ mode.
    #
    #   * Tickerplant – A tickerplant cluster allows you to subscribe to
    #     feed handlers based on IAM permissions. It can publish to RDBs,
    #     other Tickerplants, and real-time subscribers (RTS). Tickerplants
    #     can persist messages to log, which is readable by any RDB
    #     environment. It supports only single-node that is only one kdb
    #     process.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxClustersRequest AWS API Documentation
    #
    class ListKxClustersRequest < Struct.new(
      :environment_id,
      :cluster_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kx_cluster_summaries
    #   Lists the cluster details.
    #   @return [Array<Types::KxCluster>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxClustersResponse AWS API Documentation
    #
    class ListKxClustersResponse < Struct.new(
      :kx_cluster_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxDatabasesRequest AWS API Documentation
    #
    class ListKxDatabasesRequest < Struct.new(
      :environment_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kx_databases
    #   A list of databases in the kdb environment.
    #   @return [Array<Types::KxDatabaseListEntry>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxDatabasesResponse AWS API Documentation
    #
    class ListKxDatabasesResponse < Struct.new(
      :kx_databases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, for which you want to
    #   retrieve a list of dataviews.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database where the dataviews were created.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxDataviewsRequest AWS API Documentation
    #
    class ListKxDataviewsRequest < Struct.new(
      :environment_id,
      :database_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kx_dataviews
    #   The list of kdb dataviews that are currently active for the given
    #   database.
    #   @return [Array<Types::KxDataviewListEntry>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxDataviewsResponse AWS API Documentation
    #
    class ListKxDataviewsResponse < Struct.new(
      :kx_dataviews,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxEnvironmentsRequest AWS API Documentation
    #
    class ListKxEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   A list of environments in an account.
    #   @return [Array<Types::KxEnvironment>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxEnvironmentsResponse AWS API Documentation
    #
    class ListKxEnvironmentsResponse < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, for which you want to
    #   retrieve a list of scaling groups.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxScalingGroupsRequest AWS API Documentation
    #
    class ListKxScalingGroupsRequest < Struct.new(
      :environment_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scaling_groups
    #   A list of scaling groups available in a kdb environment.
    #   @return [Array<Types::KxScalingGroup>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxScalingGroupsResponse AWS API Documentation
    #
    class ListKxScalingGroupsResponse < Struct.new(
      :scaling_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxUsersRequest AWS API Documentation
    #
    class ListKxUsersRequest < Struct.new(
      :environment_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   A list of users in a kdb environment.
    #   @return [Array<Types::KxUser>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxUsersResponse AWS API Documentation
    #
    class ListKxUsersResponse < Struct.new(
      :users,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, whose clusters can
    #   attach to the volume.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in this request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxVolumesRequest AWS API Documentation
    #
    class ListKxVolumesRequest < Struct.new(
      :environment_id,
      :max_results,
      :next_token,
      :volume_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] kx_volume_summaries
    #   A summary of volumes.
    #   @return [Array<Types::KxVolume>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates where a results page should begin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListKxVolumesResponse AWS API Documentation
    #
    class ListKxVolumesResponse < Struct.new(
      :kx_volume_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of all tags for a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network access control list (ACL) is an optional layer of security
    # for your VPC that acts as a firewall for controlling traffic in and
    # out of one or more subnets. The entry is a set of numbered ingress and
    # egress rules that determine whether a packet should be allowed in or
    # out of a subnet associated with the ACL. We process the entries in the
    # ACL according to the rule numbers, in ascending order.
    #
    # @!attribute [rw] rule_number
    #   The rule number for the entry. For example *100*. All the network
    #   ACL entries are processed in ascending order by rule number.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol number. A value of *-1* means all the protocols.
    #   @return [String]
    #
    # @!attribute [rw] rule_action
    #   Indicates whether to allow or deny the traffic that matches the
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] port_range
    #   The range of ports the rule applies to.
    #   @return [Types::PortRange]
    #
    # @!attribute [rw] icmp_type_code
    #   Defines the ICMP protocol that consists of the ICMP type and code.
    #   @return [Types::IcmpTypeCode]
    #
    # @!attribute [rw] cidr_block
    #   The IPv4 network range to allow or deny, in CIDR notation. For
    #   example, `172.16.0.0/24`. We modify the specified CIDR block to its
    #   canonical form. For example, if you specify `100.68.0.18/18`, we
    #   modify it to `100.68.0.0/18`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/NetworkACLEntry AWS API Documentation
    #
    class NetworkACLEntry < Struct.new(
      :rule_number,
      :protocol,
      :rule_action,
      :port_range,
      :icmp_type_code,
      :cidr_block)
      SENSITIVE = []
      include Aws::Structure
    end

    # The range of ports the rule applies to.
    #
    # @!attribute [rw] from
    #   The first port in the range.
    #   @return [Integer]
    #
    # @!attribute [rw] to
    #   The last port in the range.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :from,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource group already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more resources can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or use Service Quotas to
    # request a service quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the superuser.
    #
    # @!attribute [rw] email_address
    #   The email address of the superuser.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The first name of the superuser.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The last name of the superuser.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/SuperuserParameters AWS API Documentation
    #
    class SuperuserParameters < Struct.new(
      :email_address,
      :first_name,
      :last_name)
      SENSITIVE = [:email_address]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) for the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration to store the Tickerplant logs. It consists of a list
    # of volumes that will be mounted to your cluster. For the cluster type
    # `Tickerplant`, the location of the TP volume on the cluster will be
    # available by using the global variable `.aws.tp_log_path`.
    #
    # @!attribute [rw] tickerplant_log_volumes
    #   The name of the volumes for tickerplant logs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TickerplantLogConfiguration AWS API Documentation
    #
    class TickerplantLogConfiguration < Struct.new(
      :tickerplant_log_volumes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of the transit gateway and network configuration that is
    # used to connect the kdb environment to an internal network.
    #
    # @!attribute [rw] transit_gateway_id
    #   The identifier of the transit gateway created by the customer to
    #   connect outbound traffics from kdb network to your internal network.
    #   @return [String]
    #
    # @!attribute [rw] routable_cidr_space
    #   The routing CIDR on behalf of kdb environment. It could be any "/26
    #   range in the 100.64.0.0 CIDR space. After providing, it will be
    #   added to the customer's transit gateway routing table so that the
    #   traffics could be routed to kdb network.
    #   @return [String]
    #
    # @!attribute [rw] attachment_network_acl_configuration
    #   The rules that define how you manage the outbound traffic from kdb
    #   network to your internal network.
    #   @return [Array<Types::NetworkACLEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/TransitGatewayConfiguration AWS API Documentation
    #
    class TransitGatewayConfiguration < Struct.new(
      :transit_gateway_id,
      :routable_cidr_space,
      :attachment_network_acl_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   A FinSpace resource from which you want to remove a tag or tags. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys (names) of one or more tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   The identifier of the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_mode
    #   Authentication mode for the environment.
    #
    #   * `FEDERATED` - Users access FinSpace through Single Sign On (SSO)
    #     via your Identity provider.
    #
    #   * `LOCAL` - Users access FinSpace via email and password managed
    #     within the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] federation_parameters
    #   Configuration information when authentication mode is FEDERATED.
    #   @return [Types::FederationParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateEnvironmentRequest AWS API Documentation
    #
    class UpdateEnvironmentRequest < Struct.new(
      :environment_id,
      :name,
      :description,
      :federation_mode,
      :federation_parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   Returns the FinSpace environment object.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateEnvironmentResponse AWS API Documentation
    #
    class UpdateEnvironmentResponse < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   The name of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The structure of the customer code available within the running
    #   cluster.
    #   @return [Types::CodeConfiguration]
    #
    # @!attribute [rw] initialization_script
    #   Specifies a Q program that will be run at launch of a cluster. It is
    #   a relative path within *.zip* file that contains the custom code,
    #   which will be loaded on the cluster. It must include the file name
    #   itself. For example, `somedir/init.q`.
    #
    #   You cannot update this parameter for a `NO_RESTART` deployment.
    #   @return [String]
    #
    # @!attribute [rw] command_line_arguments
    #   Specifies the key-value pairs to make them available inside the
    #   cluster.
    #
    #   You cannot update this parameter for a `NO_RESTART` deployment.
    #   @return [Array<Types::KxCommandLineArgument>]
    #
    # @!attribute [rw] deployment_configuration
    #   The configuration that allows you to choose how you want to update
    #   the code on a cluster.
    #   @return [Types::KxClusterCodeDeploymentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxClusterCodeConfigurationRequest AWS API Documentation
    #
    class UpdateKxClusterCodeConfigurationRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :client_token,
      :code,
      :initialization_script,
      :command_line_arguments,
      :deployment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxClusterCodeConfigurationResponse AWS API Documentation
    #
    class UpdateKxClusterCodeConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   The unique identifier of a kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] cluster_name
    #   A unique name for the cluster that you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] databases
    #   The structure of databases mounted on the cluster.
    #   @return [Array<Types::KxDatabaseConfiguration>]
    #
    # @!attribute [rw] deployment_configuration
    #   The configuration that allows you to choose how you want to update
    #   the databases on a cluster.
    #   @return [Types::KxDeploymentConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxClusterDatabasesRequest AWS API Documentation
    #
    class UpdateKxClusterDatabasesRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :client_token,
      :databases,
      :deployment_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxClusterDatabasesResponse AWS API Documentation
    #
    class UpdateKxClusterDatabasesResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxDatabaseRequest AWS API Documentation
    #
    class UpdateKxDatabaseRequest < Struct.new(
      :environment_id,
      :database_name,
      :description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_name
    #   The name of the kdb database.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the database.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the database was modified. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxDatabaseResponse AWS API Documentation
    #
    class UpdateKxDatabaseResponse < Struct.new(
      :database_name,
      :environment_id,
      :description,
      :last_modified_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, where you want to
    #   update the dataview.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] dataview_name
    #   The name of the dataview that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for a dataview.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] segment_configurations
    #   The configuration that contains the database path of the data that
    #   you want to place on each selected volume. Each segment must have a
    #   unique database path for each volume. If you do not explicitly
    #   specify any database path for a volume, they are accessible from the
    #   cluster through the default S3/object store segment.
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxDataviewRequest AWS API Documentation
    #
    class UpdateKxDataviewRequest < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name,
      :description,
      :changeset_id,
      :segment_configurations,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment, where you want to
    #   update the dataview.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of the database.
    #   @return [String]
    #
    # @!attribute [rw] dataview_name
    #   The name of the database under which the dataview was created.
    #   @return [String]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_id
    #   The identifier of the availability zones.
    #   @return [String]
    #
    # @!attribute [rw] changeset_id
    #   A unique identifier for the changeset.
    #   @return [String]
    #
    # @!attribute [rw] segment_configurations
    #   The configuration that contains the database path of the data that
    #   you want to place on each selected volume. Each segment must have a
    #   unique database path for each volume. If you do not explicitly
    #   specify any database path for a volume, they are accessible from the
    #   cluster through the default S3/object store segment.
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    #
    # @!attribute [rw] active_versions
    #   The current active changeset versions of the database on the given
    #   dataview.
    #   @return [Array<Types::KxDataviewActiveVersion>]
    #
    # @!attribute [rw] status
    #   The status of dataview creation.
    #
    #   * `CREATING` – The dataview creation is in progress.
    #
    #   * `UPDATING` – The dataview is in the process of being updated.
    #
    #   * `ACTIVE` – The dataview is active.
    #   @return [String]
    #
    # @!attribute [rw] auto_update
    #   The option to specify whether you want to apply all the future
    #   additions and corrections automatically to the dataview when new
    #   changesets are ingested. The default value is false.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_write
    #   Returns True if the dataview is created as writeable and False
    #   otherwise.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A description of the dataview.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the dataview was created in FinSpace. The
    #   value is determined as epoch time in milliseconds. For example, the
    #   value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the dataview was updated in FinSpace. The value
    #   is determined as epoch time in milliseconds. For example, the value
    #   for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxDataviewResponse AWS API Documentation
    #
    class UpdateKxDataviewResponse < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name,
      :az_mode,
      :availability_zone_id,
      :changeset_id,
      :segment_configurations,
      :active_versions,
      :status,
      :auto_update,
      :read_write,
      :description,
      :created_timestamp,
      :last_modified_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_configuration
    #   Specifies the transit gateway and network configuration to connect
    #   the kdb environment to an internal network.
    #   @return [Types::TransitGatewayConfiguration]
    #
    # @!attribute [rw] custom_dns_configuration
    #   A list of DNS server name and server IP. This is used to set up
    #   Route-53 outbound resolvers.
    #   @return [Array<Types::CustomDNSServer>]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxEnvironmentNetworkRequest AWS API Documentation
    #
    class UpdateKxEnvironmentNetworkRequest < Struct.new(
      :environment_id,
      :transit_gateway_configuration,
      :custom_dns_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The unique identifier of the AWS account that is used to create the
    #   kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] tgw_status
    #   The status of the network configuration.
    #   @return [String]
    #
    # @!attribute [rw] dns_status
    #   The status of DNS configuration.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that appears if a flow fails.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID to encrypt your data in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_service_account_id
    #   A unique identifier for the AWS environment infrastructure account.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_configuration
    #   The structure of the transit gateway and network configuration that
    #   is used to connect the kdb environment to an internal network.
    #   @return [Types::TransitGatewayConfiguration]
    #
    # @!attribute [rw] custom_dns_configuration
    #   A list of DNS server name and server IP. This is used to set up
    #   Route-53 outbound resolvers.
    #   @return [Array<Types::CustomDNSServer>]
    #
    # @!attribute [rw] creation_timestamp
    #   The timestamp at which the kdb environment was created in FinSpace.
    #   @return [Time]
    #
    # @!attribute [rw] update_timestamp
    #   The timestamp at which the kdb environment was updated.
    #   @return [Time]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones where subnets for the
    #   environment are created.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxEnvironmentNetworkResponse AWS API Documentation
    #
    class UpdateKxEnvironmentNetworkResponse < Struct.new(
      :name,
      :environment_id,
      :aws_account_id,
      :status,
      :tgw_status,
      :dns_status,
      :error_message,
      :description,
      :environment_arn,
      :kms_key_id,
      :dedicated_service_account_id,
      :transit_gateway_configuration,
      :custom_dns_configuration,
      :creation_timestamp,
      :update_timestamp,
      :availability_zone_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxEnvironmentRequest AWS API Documentation
    #
    class UpdateKxEnvironmentRequest < Struct.new(
      :environment_id,
      :name,
      :description,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The unique identifier of the AWS account that is used to create the
    #   kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] tgw_status
    #   The status of the network configuration.
    #   @return [String]
    #
    # @!attribute [rw] dns_status
    #   The status of DNS configuration.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Specifies the error message that appears if a flow fails.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The ARN identifier of the environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID to encrypt your data in the FinSpace environment.
    #   @return [String]
    #
    # @!attribute [rw] dedicated_service_account_id
    #   A unique identifier for the AWS environment infrastructure account.
    #   @return [String]
    #
    # @!attribute [rw] transit_gateway_configuration
    #   The structure of the transit gateway and network configuration that
    #   is used to connect the kdb environment to an internal network.
    #   @return [Types::TransitGatewayConfiguration]
    #
    # @!attribute [rw] custom_dns_configuration
    #   A list of DNS server name and server IP. This is used to set up
    #   Route-53 outbound resolvers.
    #   @return [Array<Types::CustomDNSServer>]
    #
    # @!attribute [rw] creation_timestamp
    #   The timestamp at which the kdb environment was created in FinSpace.
    #   @return [Time]
    #
    # @!attribute [rw] update_timestamp
    #   The timestamp at which the kdb environment was updated.
    #   @return [Time]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones where subnets for the
    #   environment are created.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxEnvironmentResponse AWS API Documentation
    #
    class UpdateKxEnvironmentResponse < Struct.new(
      :name,
      :environment_id,
      :aws_account_id,
      :status,
      :tgw_status,
      :dns_status,
      :error_message,
      :description,
      :environment_arn,
      :kms_key_id,
      :dedicated_service_account_id,
      :transit_gateway_configuration,
      :custom_dns_configuration,
      :creation_timestamp,
      :update_timestamp,
      :availability_zone_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   A unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The IAM role ARN that is associated with the user.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxUserRequest AWS API Documentation
    #
    class UpdateKxUserRequest < Struct.new(
      :environment_id,
      :user_name,
      :iam_role,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_name
    #   A unique identifier for the user.
    #   @return [String]
    #
    # @!attribute [rw] user_arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment.
    #   @return [String]
    #
    # @!attribute [rw] iam_role
    #   The IAM role ARN that is associated with the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxUserResponse AWS API Documentation
    #
    class UpdateKxUserResponse < Struct.new(
      :user_name,
      :user_arn,
      :environment_id,
      :iam_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment where you created the
    #   storage volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_name
    #   A unique identifier for the volume.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the volume.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that ensures idempotency. This token expires in 10 minutes.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] nas1_configuration
    #   Specifies the configuration for the Network attached storage
    #   (NAS\_1) file system volume.
    #   @return [Types::KxNAS1Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxVolumeRequest AWS API Documentation
    #
    class UpdateKxVolumeRequest < Struct.new(
      :environment_id,
      :volume_name,
      :description,
      :client_token,
      :nas1_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   A unique identifier for the kdb environment where you want to update
    #   the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_name
    #   A unique identifier for the volume that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type.
    #   @return [String]
    #
    # @!attribute [rw] volume_arn
    #   The ARN identifier of the volume.
    #   @return [String]
    #
    # @!attribute [rw] nas1_configuration
    #   Specifies the configuration for the Network attached storage
    #   (NAS\_1) file system volume.
    #   @return [Types::KxNAS1Configuration]
    #
    # @!attribute [rw] status
    #   The status of the volume.
    #
    #   * CREATING – The volume creation is in progress.
    #
    #   * CREATE\_FAILED – The volume creation has failed.
    #
    #   * ACTIVE – The volume is active.
    #
    #   * UPDATING – The volume is in the process of being updated.
    #
    #   * UPDATE\_FAILED – The update action failed.
    #
    #   * UPDATED – The volume is successfully updated.
    #
    #   * DELETING – The volume is in the process of being deleted.
    #
    #   * DELETE\_FAILED – The system failed to delete the volume.
    #
    #   * DELETED – The volume is successfully deleted.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the volume.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The error message when a failed state occurs.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp at which the volume was created in FinSpace. The value
    #   is determined as epoch time in milliseconds. For example, the value
    #   for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] az_mode
    #   The number of availability zones you want to assign per volume.
    #   Currently, FinSpace only supports `SINGLE` for volumes. This places
    #   dataview in a single AZ.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone_ids
    #   The identifier of the availability zones.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The last time that the volume was updated in FinSpace. The value is
    #   determined as epoch time in milliseconds. For example, the value for
    #   Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #   1635768000000.
    #   @return [Time]
    #
    # @!attribute [rw] attached_clusters
    #   Specifies the clusters that a volume is attached to.
    #   @return [Array<Types::KxAttachedCluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/UpdateKxVolumeResponse AWS API Documentation
    #
    class UpdateKxVolumeResponse < Struct.new(
      :environment_id,
      :volume_name,
      :volume_type,
      :volume_arn,
      :nas1_configuration,
      :status,
      :description,
      :status_reason,
      :created_timestamp,
      :az_mode,
      :availability_zone_ids,
      :last_modified_timestamp,
      :attached_clusters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure that consists of name and type of volume.
    #
    # @!attribute [rw] volume_name
    #   A unique identifier for the volume.
    #   @return [String]
    #
    # @!attribute [rw] volume_type
    #   The type of file system volume. Currently, FinSpace only supports
    #   `NAS_1` volume type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/Volume AWS API Documentation
    #
    class Volume < Struct.new(
      :volume_name,
      :volume_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration details about the network where the Privatelink endpoint
    # of the cluster resides.
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC endpoint.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifier of the VPC security group applied to the VPC
    #   endpoint ENI for the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   The identifier of the subnet that the Privatelink VPC endpoint uses
    #   to connect to the cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type for cluster network configuration parameters.
    #   The following type is available:
    #
    #   * IP\_V4 – IP address version 4
    #
    #   ^
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/finspace-2021-03-12/VpcConfiguration AWS API Documentation
    #
    class VpcConfiguration < Struct.new(
      :vpc_id,
      :security_group_ids,
      :subnet_ids,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

