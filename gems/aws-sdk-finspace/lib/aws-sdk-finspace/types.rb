# frozen_string_literal: true

# This is generated code!

module Aws::Finspace
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration based on which FinSpace will scale in or scale out nodes in your cluster. </p>
    # @!attribute min_node_count
    #   <p>The lowest number of nodes to scale. This value must be at least 1 and less than the <code>maxNodeCount</code>. If the nodes in a cluster belong to multiple availability zones, then <code>minNodeCount</code> must be at least 3.</p>
    #   @return [Integer]
    # @!attribute max_node_count
    #   <p>The highest number of nodes to scale. This value cannot be greater than 5.</p>
    #   @return [Integer]
    # @!attribute auto_scaling_metric
    #   <p> The metric your cluster will track in order to scale in and out. For example, <code>CPU_UTILIZATION_PERCENTAGE</code> is the average CPU usage across all the nodes in a cluster.</p>
    #   @return [String]
    # @!attribute metric_target
    #   <p>The desired value of the chosen <code>autoScalingMetric</code>. When the metric drops below this value, the cluster will scale in. When the metric goes above this value, the cluster will scale out. You can set the target value between 1 and 100 percent.</p>
    #   @return [Float]
    # @!attribute scale_in_cooldown_seconds
    #   <p>The duration in seconds that FinSpace will wait after a scale in event before initiating another scaling event.</p>
    #   @return [Float]
    # @!attribute scale_out_cooldown_seconds
    #   <p>The duration in seconds that FinSpace will wait after a scale out event before initiating another scaling event.</p>
    #   @return [Float]
    class AutoScalingConfiguration < Struct.new(
      :min_node_count,
      :max_node_count,
      :auto_scaling_metric,
      :metric_target,
      :scale_in_cooldown_seconds,
      :scale_out_cooldown_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutoScalingMetric
      CPU_UTILIZATION_PERCENTAGE = 'CPU_UTILIZATION_PERCENTAGE'
    end

    # <p>A structure for the metadata of a cluster. It includes information like the CPUs needed, memory of instances, and number of instances.</p>
    # @!attribute node_type
    #   <p>The type that determines the hardware of the host computer used for your cluster instance. Each node type offers different memory and storage capabilities. Choose a node type based on the requirements of the application or software that you plan to run on your instance.</p>
    #            <p>You can only specify one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>kx.s.large</code> – The node type with a configuration of 12 GiB memory and 2 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.s.xlarge</code> – The node type with a configuration of 27 GiB memory and 4 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.s.2xlarge</code> – The node type with a configuration of 54 GiB memory and 8 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.s.4xlarge</code> – The node type with a configuration of 108 GiB memory and 16 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.s.8xlarge</code> – The node type with a configuration of 216 GiB memory and 32 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.s.16xlarge</code> – The node type with a configuration of 432 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.s.32xlarge</code> – The node type with a configuration of 864 GiB memory and 128 vCPUs.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute node_count
    #   <p>The number of instances running in a cluster.</p>
    #   @return [Integer]
    class CapacityConfiguration < Struct.new(
      :node_type,
      :node_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of change request objects.</p>
    # @!attribute change_type
    #   <p>Defines the type of change request. A <code>changeType</code> can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>PUT – Adds or updates files in a database.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE – Deletes files in a database.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_path
    #   <p>Defines the S3 path of the source file that is required to add or update files in a database.</p>
    #   @return [String]
    # @!attribute db_path
    #   <p>Defines the path within the database directory. </p>
    #   @return [String]
    class ChangeRequest < Struct.new(
      :change_type,
      :s3_path,
      :db_path,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ChangeType
      PUT = 'PUT'
      DELETE = 'DELETE'
    end

    module ChangesetStatus
      PENDING = 'PENDING'
      PROCESSING = 'PROCESSING'
      FAILED = 'FAILED'
      COMPLETED = 'COMPLETED'
    end

    # <p>The structure of the customer code available within the running cluster.</p>
    # @!attribute s3_bucket
    #   <p>A unique name for the S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_key
    #   <p>The full S3 path (excluding bucket) to the .zip file. This file contains the code that is loaded onto the cluster when it's started.</p>
    #   @return [String]
    # @!attribute s3_object_version
    #   <p>The version of an S3 object.</p>
    #   @return [String]
    class CodeConfiguration < Struct.new(
      :s3_bucket,
      :s3_key,
      :s3_object_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There was a conflict with this action, and it could not be completed.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the conflict exception.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the FinSpace environment to be created.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the FinSpace environment to be created.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key id to encrypt your data in the FinSpace environment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Add tags to your FinSpace environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute federation_mode
    #   <p>Authentication mode for the environment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FEDERATED</code> - Users access FinSpace through Single Sign On (SSO) via your Identity provider.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCAL</code> - Users access FinSpace via email and password managed within the FinSpace environment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute federation_parameters
    #   <p>Configuration information when authentication mode is FEDERATED.</p>
    #   @return [Types::FederationParameters]
    # @!attribute superuser_parameters
    #   <p>Configuration information for the superuser.</p>
    #   @return [Types::SuperuserParameters]
    # @!attribute data_bundles
    #   <p>The list of Amazon Resource Names (ARN) of the data bundles to install. Currently supported data bundle ARNs:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:finspace:${Region}::data-bundle/capital-markets-sample</code> - Contains sample Capital Markets datasets, categories and controlled vocabularies.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>arn:aws:finspace:${Region}::data-bundle/taq</code> (default) - Contains trades and quotes data in addition to sample Capital Markets data.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class CreateEnvironmentRequest < Struct.new(
      :name,
      :description,
      :kms_key_id,
      :tags,
      :federation_mode,
      :federation_parameters,
      :superuser_parameters,
      :data_bundles,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier for FinSpace environment that you created.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of the FinSpace environment that you created.</p>
    #   @return [String]
    # @!attribute environment_url
    #   <p>The sign-in URL for the web application of the FinSpace environment you created.</p>
    #   @return [String]
    class CreateEnvironmentResponse < Struct.new(
      :environment_id,
      :environment_arn,
      :environment_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier of the kdb environment.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute change_requests
    #   <p>A list of change request objects that are run in order. A change request object consists of <code>changeType</code> , <code>s3Path</code>, and <code>dbPath</code>. 
    #         A changeType can have the following values: </p>
    #            <ul>
    #               <li>
    #                  <p>PUT – Adds or updates files in a database.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE – Deletes files in a database.</p>
    #               </li>
    #            </ul>
    #            <p>All the change requests require a mandatory <code>dbPath</code> attribute that defines the
    #            path within the database directory. All database paths must start with a leading / and end
    #            with a trailing /. The <code>s3Path</code> attribute defines the s3 source file path and is
    #            required for a PUT change type. The <code>s3path</code> must end with a trailing / if it is
    #            a directory and must end without a trailing / if it is a file. </p>
    #            <p>Here are few examples of how you can use the change request object:</p>
    #            <ol>
    #               <li>
    #                  <p>This request adds a single sym file at database root location.   </p>
    #                  <p>
    #                     <code>{ "changeType": "PUT", "s3Path":"s3://bucket/db/sym",
    #                  "dbPath":"/"}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>This request adds files in the given <code>s3Path</code> under the 2020.01.02
    #                  partition of the database.</p>
    #                  <p>
    #                     <code>{ "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/",
    #                  "dbPath":"/2020.01.02/"}</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>This request adds files in the given <code>s3Path</code> under the
    #                     <i>taq</i> table partition of the database.</p>
    #                  <p>
    #                     <code>[ { "changeType": "PUT", "s3Path":"s3://bucket/db/2020.01.02/taq/",
    #                     "dbPath":"/2020.01.02/taq/"}]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>This request deletes the 2020.01.02 partition of the database.</p>
    #                  <p>
    #                     <code>[{ "changeType": "DELETE", "dbPath": "/2020.01.02/"} ]</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The <i>DELETE</i> request allows you to delete the existing files under the
    #                  2020.01.02 partition of the database, and the <i>PUT</i> request adds a
    #                  new taq table under it.</p>
    #                  <p>
    #                     <code>[ {"changeType": "DELETE", "dbPath":"/2020.01.02/"}, {"changeType": "PUT",
    #                     "s3Path":"s3://bucket/db/2020.01.02/taq/",
    #                  "dbPath":"/2020.01.02/taq/"}]</code>
    #                  </p>
    #               </li>
    #            </ol>
    #   @return [Array<Types::ChangeRequest>]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class CreateKxChangesetRequest < Struct.new(
      :environment_id,
      :database_name,
      :change_requests,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute change_requests
    #   <p>A list of change requests.</p>
    #   @return [Array<Types::ChangeRequest>]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The timestamp at which the changeset was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status of the changeset creation process.</p>
    #            <ul>
    #               <li>
    #                  <p>Pending – Changeset creation is pending.</p>
    #               </li>
    #               <li>
    #                  <p>Processing – Changeset creation is running.</p>
    #               </li>
    #               <li>
    #                  <p>Failed – Changeset creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>Complete – Changeset creation has succeeded.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_info
    #   <p>The details of the error that you receive when creating a changeset. It consists of the type of error and the error message.</p>
    #   @return [Types::ErrorInfo]
    class CreateKxChangesetResponse < Struct.new(
      :changeset_id,
      :database_name,
      :environment_id,
      :change_requests,
      :created_timestamp,
      :last_modified_timestamp,
      :status,
      :error_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>A unique name for the cluster that you want to create.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Specifies the type of KDB database that is being created. The following types are available: </p>
    #            <ul>
    #               <li>
    #                  <p>HDB – A Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed kdb databases mounted to the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>RDB – A Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the <code>savedownStorageConfiguration</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>GATEWAY – A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.</p>
    #               </li>
    #               <li>
    #                  <p>GP – A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only <code>SINGLE</code> AZ mode.</p>
    #               </li>
    #               <li>
    #                  <p>Tickerplant – A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tickerplant_log_configuration
    #   <p>
    #   A configuration to store Tickerplant logs. It consists of
    #   a list of volumes that will be mounted to your cluster. For the cluster type <code>Tickerplant</code>, the location of the TP volume on the cluster will be available by using the global variable <code>.aws.tp_log_path</code>. 
    #   </p>
    #   @return [Types::TickerplantLogConfiguration]
    # @!attribute databases
    #   <p>A list of databases that will be available for querying.</p>
    #   @return [Array<Types::KxDatabaseConfiguration>]
    # @!attribute cache_storage_configurations
    #   <p>The configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. </p>
    #   @return [Array<Types::KxCacheStorageConfiguration>]
    # @!attribute auto_scaling_configuration
    #   <p>The configuration based on which FinSpace will scale in or scale out nodes in your cluster.</p>
    #   @return [Types::AutoScalingConfiguration]
    # @!attribute cluster_description
    #   <p>A description of the cluster.</p>
    #   @return [String]
    # @!attribute capacity_configuration
    #   <p>A structure for the metadata of a cluster. It includes information like the CPUs needed, memory of instances, and number of instances.</p>
    #   @return [Types::CapacityConfiguration]
    # @!attribute release_label
    #   <p>The version of FinSpace managed kdb to run.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>Configuration details about the network where the Privatelink endpoint of the cluster resides.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute initialization_script
    #   <p>Specifies a Q program that will be run at launch of a cluster. It is a relative path within
    #               <i>.zip</i> file that contains the custom code, which will be loaded on
    #            the cluster. It must include the file name itself. For example,
    #            <code>somedir/init.q</code>.</p>
    #   @return [String]
    # @!attribute command_line_arguments
    #   <p>Defines the key-value pairs to make them available inside the cluster.</p>
    #   @return [Array<Types::KxCommandLineArgument>]
    # @!attribute code
    #   <p>The details of the custom code that you want to use inside a cluster when analyzing a data. It consists of the S3 source bucket, location, S3 object version, and the relative path from where the custom code is loaded into the cluster. </p>
    #   @return [Types::CodeConfiguration]
    # @!attribute execution_role
    #   <p>An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.</p>
    #   @return [String]
    # @!attribute savedown_storage_configuration
    #   <p>The size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose <code>clusterType</code> as RDB. All the data written to this storage space is lost when the cluster node is restarted.</p>
    #   @return [Types::KxSavedownStorageConfiguration]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per cluster. This can be one of the following </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> – Assigns one availability zone per cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI</code> – Assigns all the availability zones per cluster.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The availability zone identifiers for the requested regions.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs to label the cluster. You can add up to 50 tags to a cluster.</p>
    #   @return [Hash<String, String>]
    # @!attribute scaling_group_configuration
    #   <p>The structure that stores the configuration details of a scaling group.</p>
    #   @return [Types::KxScalingGroupConfiguration]
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
      :scaling_group_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of cluster creation.</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING – The cluster is pending creation.</p>
    #               </li>
    #               <li>
    #                  <p>CREATING – The cluster creation process is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The cluster creation process has failed.</p>
    #               </li>
    #               <li>
    #                  <p>RUNNING – The cluster creation process is running.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The cluster is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The cluster is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The cluster has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The cluster failed to delete.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The error message when a failed state occurs. </p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>A unique name for the cluster.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Specifies the type of KDB database that is being created. The following types are available: </p>
    #            <ul>
    #               <li>
    #                  <p>HDB – A Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed kdb databases mounted to the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>RDB – A Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the <code>savedownStorageConfiguration</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>GATEWAY – A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.</p>
    #               </li>
    #               <li>
    #                  <p>GP – A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only <code>SINGLE</code> AZ mode.</p>
    #               </li>
    #               <li>
    #                  <p>Tickerplant – A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tickerplant_log_configuration
    #   <p>
    #   A configuration to store the Tickerplant logs. It consists of
    #   a list of volumes that will be mounted to your cluster. For the cluster type <code>Tickerplant</code>, the location of the TP volume on the cluster will be available by using the global variable <code>.aws.tp_log_path</code>. 
    #   </p>
    #   @return [Types::TickerplantLogConfiguration]
    # @!attribute volumes
    #   <p>
    #   A list of volumes mounted on the cluster.
    #   </p>
    #   @return [Array<Types::Volume>]
    # @!attribute databases
    #   <p>A list of databases that will be available for querying.</p>
    #   @return [Array<Types::KxDatabaseConfiguration>]
    # @!attribute cache_storage_configurations
    #   <p>The configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. </p>
    #   @return [Array<Types::KxCacheStorageConfiguration>]
    # @!attribute auto_scaling_configuration
    #   <p>The configuration based on which FinSpace will scale in or scale out nodes in your cluster.</p>
    #   @return [Types::AutoScalingConfiguration]
    # @!attribute cluster_description
    #   <p>A description of the cluster.</p>
    #   @return [String]
    # @!attribute capacity_configuration
    #   <p>A structure for the metadata of a cluster. It includes information like the CPUs needed, memory of instances, and number of instances.</p>
    #   @return [Types::CapacityConfiguration]
    # @!attribute release_label
    #   <p>A version of the FinSpace managed kdb to run.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>Configuration details about the network where the Privatelink endpoint of the cluster resides.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute initialization_script
    #   <p>Specifies a Q program that will be run at launch of a cluster. It is a relative path within
    #         <i>.zip</i> file that contains the custom code, which will be loaded on
    #         the cluster. It must include the file name itself. For example,
    #         <code>somedir/init.q</code>.</p>
    #   @return [String]
    # @!attribute command_line_arguments
    #   <p>Defines the key-value pairs to make them available inside the cluster.</p>
    #   @return [Array<Types::KxCommandLineArgument>]
    # @!attribute code
    #   <p>The details of the custom code that you want to use inside a cluster when analyzing a data. It consists of the S3 source bucket, location, S3 object version, and the relative path from where the custom code is loaded into the cluster. </p>
    #   @return [Types::CodeConfiguration]
    # @!attribute execution_role
    #   <p>
    #               An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
    #            </p>
    #   @return [String]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the cluster was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute savedown_storage_configuration
    #   <p>The size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose <code>clusterType</code> as RDB. All the data written to this storage space is lost when the cluster node is restarted.</p>
    #   @return [Types::KxSavedownStorageConfiguration]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per cluster. This can be one of the following </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> – Assigns one availability zone per cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI</code> – Assigns all the availability zones per cluster.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #               The availability zone identifiers for the requested regions.
    #            </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the cluster was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute scaling_group_configuration
    #   <p>The structure that stores the configuration details of a scaling group.</p>
    #   @return [Types::KxScalingGroupConfiguration]
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
      :scaling_group_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the database.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs to label the kdb database. You can add up to 50 tags to your kdb database</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class CreateKxDatabaseRequest < Struct.new(
      :environment_id,
      :database_name,
      :description,
      :tags,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute database_arn
    #   <p>The ARN identifier of the database.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the database.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the database is created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the database was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    class CreateKxDatabaseResponse < Struct.new(
      :database_name,
      :database_arn,
      :environment_id,
      :description,
      :created_timestamp,
      :last_modified_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, where you want to create the dataview. </p>
    #   @return [String]
    # @!attribute database_name
    #   <p>
    #   The name of the database where you want to create a dataview.
    #   </p>
    #   @return [String]
    # @!attribute dataview_name
    #   <p>A unique identifier for the dataview.</p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #            The identifier of the availability zones.
    #         </p>
    #   @return [String]
    # @!attribute changeset_id
    #   <p>
    #   A unique identifier of the changeset that you want to use to ingest data. </p>
    #   @return [String]
    # @!attribute segment_configurations
    #   <p>
    #      The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    # @!attribute auto_update
    #   <p>The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute read_write
    #   <p>
    #            The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.  </p>
    #            <ul>
    #               <li>
    #                  <p>You cannot create partial writable dataviews. When you create writeable dataviews you must
    #                  provide the entire database path.</p>
    #               </li>
    #               <li>
    #                  <p>You cannot perform updates on a writeable dataview. Hence, <code>autoUpdate</code> must be set
    #               as <b>False</b> if <code>readWrite</code> is <b>True</b> for a dataview.</p>
    #               </li>
    #               <li>
    #                  <p>You must also use a unique volume for creating a writeable dataview. So, if you choose a
    #                  volume that is already in use by another dataview, the dataview creation
    #                  fails.</p>
    #               </li>
    #               <li>
    #                  <p>Once you create a dataview as writeable, you cannot change it to read-only. So, you cannot
    #                  update the <code>readWrite</code> parameter later.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the dataview.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #   A list of key-value pairs to label the dataview. You can add up to 50 tags to a dataview.
    #   </p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
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
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataview_name
    #   <p>A unique identifier for the dataview.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database where you want to create a dataview.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, where you want to create the dataview. </p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #            The identifier of the availability zones.
    #         </p>
    #   @return [String]
    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute segment_configurations
    #   <p>
    #         The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    # @!attribute description
    #   <p>A description of the dataview.</p>
    #   @return [String]
    # @!attribute auto_update
    #   <p>The option to select whether you want to apply all the future additions and corrections automatically to the dataview when you ingest new changesets. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute read_write
    #   <p>Returns True if the dataview is created as writeable and False otherwise. </p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>
    #   The timestamp at which the dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>
    #   The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>
    #   The status of dataview creation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> – The dataview creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> – The dataview is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> – The dataview is active.</p>
    #               </li>
    #            </ul>
    #   @return [String]
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
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_update] = false unless options.key?(:auto_update)
        options[:read_write] = false unless options.key?(:read_write)
        super
      end
    end

    # @!attribute name
    #   <p>The name of the kdb environment that you want to create.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the kdb environment.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key ID to encrypt your data in the FinSpace environment.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs to label the kdb environment. You can add up to 50 tags to your kdb environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class CreateKxEnvironmentRequest < Struct.new(
      :name,
      :description,
      :kms_key_id,
      :tags,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the kdb environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the kdb environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the kdb environment.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The ARN identifier of the environment.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key ID to encrypt your data in the FinSpace environment.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The timestamp at which the kdb environment was created in FinSpace.</p>
    #   @return [Time]
    class CreateKxEnvironmentResponse < Struct.new(
      :name,
      :status,
      :environment_id,
      :description,
      :environment_arn,
      :kms_key_id,
      :creation_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, where you want to create the scaling group. </p>
    #   @return [String]
    # @!attribute scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    #   @return [String]
    # @!attribute host_type
    #   <p>
    #      The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.</p>
    #            <p>You can add one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.large</code> – The host type with a configuration of 16 GiB
    #               memory and 2 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.xlarge</code> – The host type with a configuration of 32 GiB
    #                  memory and 4 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.2xlarge</code> – The host type with a configuration of 64 GiB
    #                  memory and 8 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.4xlarge</code> – The host type with a configuration of 108 GiB memory and 16 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.8xlarge</code> – The host type with a configuration of 216 GiB memory and 32 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.16xlarge</code> – The host type with a configuration of 432 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.32xlarge</code> – The host type with a configuration of 864 GiB memory and 128 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg1.16xlarge</code> – The host type with a configuration of 1949 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg1.24xlarge</code> – The host type with a configuration of 2948 GiB memory and 96 vCPUs.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The identifier of the availability zones.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #   A list of key-value pairs to label the scaling group. You can add up to 50 tags to a scaling group.
    #   </p>
    #   @return [Hash<String, String>]
    class CreateKxScalingGroupRequest < Struct.new(
      :client_token,
      :environment_id,
      :scaling_group_name,
      :host_type,
      :availability_zone_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, where you create the scaling group. </p>
    #   @return [String]
    # @!attribute scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    #   @return [String]
    # @!attribute host_type
    #   <p>
    #      The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.
    #      
    #   </p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The identifier of the availability zones.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of scaling group.</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING – The scaling group creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The scaling group creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE – The scaling group is active.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The scaling group is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATE_FAILED – The update action failed.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The scaling group is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The system failed to delete the scaling group.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The scaling group is successfully deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_modified_timestamp
    #   <p>
    #   The last time that the scaling group was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000. </p>
    #   @return [Time]
    # @!attribute created_timestamp
    #   <p>
    #      The timestamp at which the scaling group was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    class CreateKxScalingGroupResponse < Struct.new(
      :environment_id,
      :scaling_group_name,
      :host_type,
      :availability_zone_id,
      :status,
      :last_modified_timestamp,
      :created_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment where you want to create a user.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>A unique identifier for the user.</p>
    #   @return [String]
    # @!attribute iam_role
    #   <p>The IAM role ARN that will be associated with the user.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs to label the user. You can add up to 50 tags to a user.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class CreateKxUserRequest < Struct.new(
      :environment_id,
      :user_name,
      :iam_role,
      :tags,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>A unique identifier for the user.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and
    #         how to use ARNs in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the
    #         <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute iam_role
    #   <p>The IAM role ARN that will be associated with the user.</p>
    #   @return [String]
    class CreateKxUserResponse < Struct.new(
      :user_name,
      :user_arn,
      :environment_id,
      :iam_role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>
    #      The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type. When you select <code>NAS_1</code> volume type, you must also provide <code>nas1Configuration</code>.
    #   </p>
    #   @return [String]
    # @!attribute volume_name
    #   <p>A unique identifier for the volume.</p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #   A description of the volume.
    #   </p>
    #   @return [String]
    # @!attribute nas1_configuration
    #   <p> Specifies the configuration for the Network attached storage (NAS_1) file system volume. This
    #            parameter is required when you choose <code>volumeType</code> as
    #            <i>NAS_1</i>.</p>
    #   @return [Types::KxNAS1Configuration]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>
    #   A list of key-value pairs to label the volume. You can add up to 50 tags to a volume.
    #   </p>
    #   @return [Hash<String, String>]
    class CreateKxVolumeRequest < Struct.new(
      :client_token,
      :environment_id,
      :volume_type,
      :volume_name,
      :description,
      :nas1_configuration,
      :az_mode,
      :availability_zone_ids,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    #   @return [String]
    # @!attribute volume_name
    #   <p>A unique identifier for the volume.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>
    #         The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type.
    #      </p>
    #   @return [String]
    # @!attribute volume_arn
    #   <p>
    #   The ARN identifier of the volume.
    #   </p>
    #   @return [String]
    # @!attribute nas1_configuration
    #   <p> Specifies the configuration for the Network attached storage (NAS_1) file system volume.</p>
    #   @return [Types::KxNAS1Configuration]
    # @!attribute status
    #   <p>The status of volume creation.</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING – The volume creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The volume creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE – The volume is active.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The volume is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATE_FAILED – The update action failed.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATED – The volume is successfully updated.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The volume is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The system failed to delete the volume.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The volume is successfully deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The error message when a failed state occurs. </p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #   A description of the volume.
    #   </p>
    #   @return [String]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones.</p>
    #   @return [Array<String>]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the volume was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
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
      :created_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of DNS server name and server IP.  This is used to set up Route-53 outbound resolvers.</p>
    # @!attribute custom_dns_server_name
    #   <p>The name of the DNS server.</p>
    #   @return [String]
    # @!attribute custom_dns_server_ip
    #   <p>The IP address of the DNS server.</p>
    #   @return [String]
    class CustomDNSServer < Struct.new(
      :custom_dns_server_name,
      :custom_dns_server_ip,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The identifier for the FinSpace environment.</p>
    #   @return [String]
    class DeleteEnvironmentRequest < Struct.new(
      :environment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteEnvironmentResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the cluster, for which you want to delete the nodes.</p>
    #   @return [String]
    # @!attribute node_id
    #   <p>A unique identifier for the node that you want to delete.</p>
    #   @return [String]
    class DeleteKxClusterNodeRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :node_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteKxClusterNodeResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the cluster that you want to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class DeleteKxClusterRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteKxClusterResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database that you want to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class DeleteKxDatabaseRequest < Struct.new(
      :environment_id,
      :database_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteKxDatabaseResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, from where you want to delete the dataview. </p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the database whose dataview you want to delete.</p>
    #   @return [String]
    # @!attribute dataview_name
    #   <p>The name of the dataview that you want to delete.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class DeleteKxDataviewRequest < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteKxDataviewResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class DeleteKxEnvironmentRequest < Struct.new(
      :environment_id,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteKxEnvironmentResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, from where you want to delete the dataview. </p>
    #   @return [String]
    # @!attribute scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class DeleteKxScalingGroupRequest < Struct.new(
      :environment_id,
      :scaling_group_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteKxScalingGroupResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>A unique identifier for the user that you want to delete.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class DeleteKxUserRequest < Struct.new(
      :user_name,
      :environment_id,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteKxUserResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    #   @return [String]
    # @!attribute volume_name
    #   <p>
    #   The name of the volume that you want to delete.
    #   </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class DeleteKxVolumeRequest < Struct.new(
      :environment_id,
      :volume_name,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteKxVolumeResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an FinSpace environment.</p>
    # @!attribute name
    #   <p>The name of the FinSpace environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The identifier of the FinSpace environment.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The ID of the AWS account in which the FinSpace environment is created.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of creation of the FinSpace environment.</p>
    #   @return [String]
    # @!attribute environment_url
    #   <p>The sign-in URL for the web application of your FinSpace environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the FinSpace environment.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of your FinSpace environment.</p>
    #   @return [String]
    # @!attribute sage_maker_studio_domain_url
    #   <p>The URL of the integrated FinSpace notebook environment in your web application.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key id used to encrypt in the FinSpace environment.</p>
    #   @return [String]
    # @!attribute dedicated_service_account_id
    #   <p>The AWS account ID of the dedicated service account associated with your FinSpace
    #            environment.</p>
    #   @return [String]
    # @!attribute federation_mode
    #   <p>The authentication mode for the environment.</p>
    #   @return [String]
    # @!attribute federation_parameters
    #   <p>Configuration information when authentication mode is FEDERATED.</p>
    #   @return [Types::FederationParameters]
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
      :federation_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EnvironmentStatus
      CREATE_REQUESTED = 'CREATE_REQUESTED'
      CREATING = 'CREATING'
      CREATED = 'CREATED'
      DELETE_REQUESTED = 'DELETE_REQUESTED'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      FAILED_CREATION = 'FAILED_CREATION'
      RETRY_DELETION = 'RETRY_DELETION'
      FAILED_DELETION = 'FAILED_DELETION'
      UPDATE_NETWORK_REQUESTED = 'UPDATE_NETWORK_REQUESTED'
      UPDATING_NETWORK = 'UPDATING_NETWORK'
      FAILED_UPDATING_NETWORK = 'FAILED_UPDATING_NETWORK'
      SUSPENDED = 'SUSPENDED'
    end

    module ErrorDetails
      VALIDATION = 'The inputs to this request are invalid.'
      SERVICE_QUOTA_EXCEEDED = 'Service limits have been exceeded.'
      ACCESS_DENIED = 'Missing required permission to perform this request.'
      RESOURCE_NOT_FOUND = 'One or more inputs to this request were not found.'
      THROTTLING = 'The system temporarily lacks sufficient resources to process the request.'
      INTERNAL_SERVICE_EXCEPTION = 'An internal error has occurred.'
      CANCELLED = 'Cancelled'
      USER_RECOVERABLE = 'A user recoverable error has occurred'
    end

    # <p>Provides details in the event of a failed flow, including the error type and the related error message.</p>
    # @!attribute error_message
    #   <p>Specifies the error message that appears if a flow fails. </p>
    #   @return [String]
    # @!attribute error_type
    #   <p>Specifies the type of error.</p>
    #   @return [String]
    class ErrorInfo < Struct.new(
      :error_message,
      :error_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FederationMode
      FEDERATED = 'FEDERATED'
      LOCAL = 'LOCAL'
    end

    # <p>Configuration information when authentication mode is FEDERATED.</p>
    # @!attribute saml_metadata_document
    #   <p>SAML 2.0 Metadata document from identity provider (IdP).</p>
    #   @return [String]
    # @!attribute saml_metadata_url
    #   <p>Provide the metadata URL from your SAML 2.0 compliant identity provider (IdP).</p>
    #   @return [String]
    # @!attribute application_call_back_url
    #   <p>The redirect or sign-in URL that should be entered into the SAML 2.0 compliant identity provider configuration
    #          (IdP).</p>
    #   @return [String]
    # @!attribute federation_urn
    #   <p>The Uniform Resource Name (URN). Also referred as Service Provider URN or Audience URI or Service Provider Entity ID.</p>
    #   @return [String]
    # @!attribute federation_provider_name
    #   <p>Name of the identity provider (IdP).</p>
    #   @return [String]
    # @!attribute attribute_map
    #   <p>SAML attribute name and value. The name must always be <code>Email</code> and the value should be set to
    #            the attribute definition in which user email is set. For example, name would be <code>Email</code> and
    #            value <code>http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress</code>.
    #            Please check your SAML 2.0 compliant identity provider (IdP) documentation for details.</p>
    #   @return [Hash<String, String>]
    class FederationParameters < Struct.new(
      :saml_metadata_document,
      :saml_metadata_url,
      :application_call_back_url,
      :federation_urn,
      :federation_provider_name,
      :attribute_map,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The identifier of the FinSpace environment.</p>
    #   @return [String]
    class GetEnvironmentRequest < Struct.new(
      :environment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>The name of the FinSpace environment.</p>
    #   @return [Types::Environment]
    class GetEnvironmentResponse < Struct.new(
      :environment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute changeset_id
    #   <p>A unique identifier of the changeset for which you want to retrieve data.</p>
    #   @return [String]
    class GetKxChangesetRequest < Struct.new(
      :environment_id,
      :database_name,
      :changeset_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute change_requests
    #   <p>A list of change request objects that are run in order.</p>
    #   @return [Array<Types::ChangeRequest>]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute active_from_timestamp
    #   <p>Beginning time from which the changeset is active. The value is determined as epoch time in
    #         milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #         1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The timestamp at which the changeset was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status of the changeset creation process.</p>
    #            <ul>
    #               <li>
    #                  <p>Pending – Changeset creation is pending.</p>
    #               </li>
    #               <li>
    #                  <p>Processing – Changeset creation is running.</p>
    #               </li>
    #               <li>
    #                  <p>Failed – Changeset creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>Complete – Changeset creation has succeeded.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_info
    #   <p>Provides details in the event of a failed flow, including the error type and the related error message.</p>
    #   @return [Types::ErrorInfo]
    class GetKxChangesetResponse < Struct.new(
      :changeset_id,
      :database_name,
      :environment_id,
      :change_requests,
      :created_timestamp,
      :active_from_timestamp,
      :last_modified_timestamp,
      :status,
      :error_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the cluster that you want to retrieve.</p>
    #   @return [String]
    class GetKxClusterRequest < Struct.new(
      :environment_id,
      :cluster_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The status of cluster creation.</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING – The cluster is pending creation.</p>
    #               </li>
    #               <li>
    #                  <p>CREATING – The cluster creation process is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The cluster creation process has failed.</p>
    #               </li>
    #               <li>
    #                  <p>RUNNING – The cluster creation process is running.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The cluster is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The cluster is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The cluster has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The cluster failed to delete.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The error message when a failed state occurs. </p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>A unique name for the cluster.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Specifies the type of KDB database that is being created. The following types are available: </p>
    #            <ul>
    #               <li>
    #                  <p>HDB – A Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed kdb databases mounted to the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>RDB – A Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the <code>savedownStorageConfiguration</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>GATEWAY – A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.</p>
    #               </li>
    #               <li>
    #                  <p>GP – A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only <code>SINGLE</code> AZ mode.</p>
    #               </li>
    #               <li>
    #                  <p>Tickerplant – A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tickerplant_log_configuration
    #   <p>
    #   A configuration to store the Tickerplant logs. It consists of
    #   a list of volumes that will be mounted to your cluster. For the cluster type <code>Tickerplant</code>, the location of the TP volume on the cluster will be available by using the global variable <code>.aws.tp_log_path</code>. 
    #   </p>
    #   @return [Types::TickerplantLogConfiguration]
    # @!attribute volumes
    #   <p>
    #   A list of volumes attached to the cluster.
    #   </p>
    #   @return [Array<Types::Volume>]
    # @!attribute databases
    #   <p> A list of databases mounted on the cluster.</p>
    #   @return [Array<Types::KxDatabaseConfiguration>]
    # @!attribute cache_storage_configurations
    #   <p>The configurations for a read only cache storage associated with a cluster. This cache will be stored as an FSx Lustre that reads from the S3 store. </p>
    #   @return [Array<Types::KxCacheStorageConfiguration>]
    # @!attribute auto_scaling_configuration
    #   <p>The configuration based on which FinSpace will scale in or scale out nodes in your cluster.</p>
    #   @return [Types::AutoScalingConfiguration]
    # @!attribute cluster_description
    #   <p>A description of the cluster.</p>
    #   @return [String]
    # @!attribute capacity_configuration
    #   <p>A structure for the metadata of a cluster. It includes information like the CPUs needed, memory of instances, and number of instances.</p>
    #   @return [Types::CapacityConfiguration]
    # @!attribute release_label
    #   <p>The version of FinSpace managed kdb to run.</p>
    #   @return [String]
    # @!attribute vpc_configuration
    #   <p>Configuration details about the network where the Privatelink endpoint of the cluster resides.</p>
    #   @return [Types::VpcConfiguration]
    # @!attribute initialization_script
    #   <p>Specifies a Q program that will be run at launch of a cluster. It is a relative path within
    #         <i>.zip</i> file that contains the custom code, which will be loaded on
    #         the cluster. It must include the file name itself. For example,
    #         <code>somedir/init.q</code>.</p>
    #   @return [String]
    # @!attribute command_line_arguments
    #   <p>Defines key-value pairs to make them available inside the cluster.</p>
    #   @return [Array<Types::KxCommandLineArgument>]
    # @!attribute code
    #   <p>The details of the custom code that you want to use inside a cluster when analyzing a data. It consists of the S3 source bucket, location, S3 object version, and the relative path from where the custom code is loaded into the cluster. </p>
    #   @return [Types::CodeConfiguration]
    # @!attribute execution_role
    #   <p>
    #               An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
    #            </p>
    #   @return [String]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the cluster was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute savedown_storage_configuration
    #   <p>The size and type of the temporary storage that is used to hold data during the savedown process. This parameter is required when you choose <code>clusterType</code> as RDB. All the data written to this storage space is lost when the cluster node is restarted.</p>
    #   @return [Types::KxSavedownStorageConfiguration]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per cluster. This can be one of the following </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> – Assigns one availability zone per cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI</code> – Assigns all the availability zones per cluster.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #               The availability zone identifiers for the requested regions.
    #            </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the cluster was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute scaling_group_configuration
    #   <p>The structure that stores the capacity configuration details of a scaling group.</p>
    #   @return [Types::KxScalingGroupConfiguration]
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
      :scaling_group_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and
    #         how to use ARNs in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the
    #         <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>A name of the kdb cluster.</p>
    #   @return [String]
    class GetKxConnectionStringRequest < Struct.new(
      :user_arn,
      :environment_id,
      :cluster_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute signed_connection_string
    #   <p>The signed connection string that you can use to connect to clusters.</p>
    #   @return [String]
    class GetKxConnectionStringResponse < Struct.new(
      :signed_connection_string,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    class GetKxDatabaseRequest < Struct.new(
      :environment_id,
      :database_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the kdb database for which the information is retrieved.</p>
    #   @return [String]
    # @!attribute database_arn
    #   <p>The ARN identifier of the database.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the database.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the database is created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the database was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_completed_changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute num_bytes
    #   <p>The total number of bytes in the database.</p>
    #   @return [Integer]
    # @!attribute num_changesets
    #   <p>The total number of changesets in the database.</p>
    #   @return [Integer]
    # @!attribute num_files
    #   <p>The total number of files in the database.</p>
    #   @return [Integer]
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
      :num_files,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:num_bytes] = 0 unless options.key?(:num_bytes)
        options[:num_changesets] = 0 unless options.key?(:num_changesets)
        options[:num_files] = 0 unless options.key?(:num_files)
        super
      end
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, from where you want to retrieve the dataview details.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>
    #   The name of the database where you created the dataview.</p>
    #   @return [String]
    # @!attribute dataview_name
    #   <p>A unique identifier for the dataview.</p>
    #   @return [String]
    class GetKxDataviewRequest < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>
    #   The name of the database where you created the dataview.</p>
    #   @return [String]
    # @!attribute dataview_name
    #   <p>A unique identifier for the dataview.</p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #            The identifier of the availability zones.
    #         </p>
    #   @return [String]
    # @!attribute changeset_id
    #   <p>
    #   A unique identifier of the changeset that you want to use to ingest data. </p>
    #   @return [String]
    # @!attribute segment_configurations
    #   <p>
    #         The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    # @!attribute active_versions
    #   <p>
    #      The current active changeset versions of the database on the given dataview. 
    #      
    #   </p>
    #   @return [Array<Types::KxDataviewActiveVersion>]
    # @!attribute description
    #   <p>A description of the dataview.</p>
    #   @return [String]
    # @!attribute auto_update
    #   <p>The option to specify whether you want to apply all the future additions and corrections automatically to the dataview when new changesets are ingested. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute read_write
    #   <p>Returns True if the dataview is created as writeable and False otherwise. </p>
    #   @return [Boolean]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, from where you want to retrieve the dataview details.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>
    #      The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   </p>
    #   @return [Time]
    # @!attribute status
    #   <p>
    #         The status of dataview creation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> – The dataview creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> – The dataview is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> – The dataview is active.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>
    #   The error message when a failed state occurs. 
    #   </p>
    #   @return [String]
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
      :status_reason,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_update] = false unless options.key?(:auto_update)
        options[:read_write] = false unless options.key?(:read_write)
        super
      end
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    class GetKxEnvironmentRequest < Struct.new(
      :environment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the kdb environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The unique identifier of the AWS account that is used to create the kdb environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the kdb environment.</p>
    #   @return [String]
    # @!attribute tgw_status
    #   <p>The status of the network configuration.</p>
    #   @return [String]
    # @!attribute dns_status
    #   <p>The status of DNS configuration.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Specifies the error message that appears if a flow fails.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the kdb environment.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The ARN identifier of the environment.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key ID to encrypt your data in the FinSpace environment.</p>
    #   @return [String]
    # @!attribute dedicated_service_account_id
    #   <p>A unique identifier for the AWS environment infrastructure account.</p>
    #   @return [String]
    # @!attribute transit_gateway_configuration
    #   <p>The structure of the transit gateway and network configuration that is used to connect the kdb environment to an internal network.</p>
    #   @return [Types::TransitGatewayConfiguration]
    # @!attribute custom_dns_configuration
    #   <p>A list of DNS server name and server IP. This is used to set up Route-53 outbound resolvers.</p>
    #   @return [Array<Types::CustomDNSServer>]
    # @!attribute creation_timestamp
    #   <p>The timestamp at which the kdb environment was created in FinSpace. </p>
    #   @return [Time]
    # @!attribute update_timestamp
    #   <p>The timestamp at which the kdb environment was updated. </p>
    #   @return [Time]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones where subnets for the environment are created.</p>
    #   @return [Array<String>]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate authority of the 
    #            kdb environment.</p>
    #   @return [String]
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
      :certificate_authority_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment. </p>
    #   @return [String]
    # @!attribute scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    #   @return [String]
    class GetKxScalingGroupRequest < Struct.new(
      :environment_id,
      :scaling_group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    #   @return [String]
    # @!attribute scaling_group_arn
    #   <p>
    #           The ARN identifier for the scaling group.
    #         </p>
    #   @return [String]
    # @!attribute host_type
    #   <p>
    #         The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.</p>
    #            <p>It can have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.large</code> – The host type with a configuration of 16 GiB
    #               memory and 2 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.xlarge</code> – The host type with a configuration of 32 GiB
    #                  memory and 4 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.2xlarge</code> – The host type with a configuration of 64 GiB
    #                  memory and 8 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.4xlarge</code> – The host type with a configuration of 108 GiB memory and 16 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.8xlarge</code> – The host type with a configuration of 216 GiB memory and 32 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.16xlarge</code> – The host type with a configuration of 432 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.32xlarge</code> – The host type with a configuration of 864 GiB memory and 128 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg1.16xlarge</code> – The host type with a configuration of 1949 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg1.24xlarge</code> – The host type with a configuration of 2948 GiB memory and 96 vCPUs.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute clusters
    #   <p>
    #      The list of Managed kdb clusters that are currently active in the given scaling group.
    #      
    #   </p>
    #   @return [Array<String>]
    # @!attribute availability_zone_id
    #   <p>The identifier of the availability zones.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of scaling group.</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING – The scaling group creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The scaling group creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE – The scaling group is active.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The scaling group is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATE_FAILED – The update action failed.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The scaling group is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The system failed to delete the scaling group.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The scaling group is successfully deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>
    #   The error message when a failed state occurs. 
    #   </p>
    #   @return [String]
    # @!attribute last_modified_timestamp
    #   <p>
    #      The last time that the scaling group was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   </p>
    #   @return [Time]
    # @!attribute created_timestamp
    #   <p>
    #      The timestamp at which the scaling group was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    class GetKxScalingGroupResponse < Struct.new(
      :scaling_group_name,
      :scaling_group_arn,
      :host_type,
      :clusters,
      :availability_zone_id,
      :status,
      :status_reason,
      :last_modified_timestamp,
      :created_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>A unique identifier for the user.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    class GetKxUserRequest < Struct.new(
      :user_name,
      :environment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>A unique identifier for the user.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and
    #         how to use ARNs in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the
    #         <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute iam_role
    #   <p>The IAM role ARN that is associated with the user.</p>
    #   @return [String]
    class GetKxUserResponse < Struct.new(
      :user_name,
      :user_arn,
      :environment_id,
      :iam_role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    #   @return [String]
    # @!attribute volume_name
    #   <p>A unique identifier for the volume.</p>
    #   @return [String]
    class GetKxVolumeRequest < Struct.new(
      :environment_id,
      :volume_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    #   @return [String]
    # @!attribute volume_name
    #   <p>
    #   A unique identifier for the volume.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>
    #         The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type.
    #      </p>
    #   @return [String]
    # @!attribute volume_arn
    #   <p>
    #   The ARN identifier of the volume.
    #   </p>
    #   @return [String]
    # @!attribute nas1_configuration
    #   <p> Specifies the configuration for the Network attached storage (NAS_1) file system volume.</p>
    #   @return [Types::KxNAS1Configuration]
    # @!attribute status
    #   <p>The status of volume creation.</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING – The volume creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The volume creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE – The volume is active.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The volume is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATE_FAILED – The update action failed.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATED – The volume is successfully updated.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The volume is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The system failed to delete the volume.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The volume is successfully deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The error message when a failed state occurs. </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>
    #   The timestamp at which the volume was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   </p>
    #   @return [Time]
    # @!attribute description
    #   <p>
    #   A description of the volume.
    #   </p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones.</p>
    #   @return [Array<String>]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the volume was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute attached_clusters
    #   <p>
    #   A list of cluster identifiers that a volume is attached to. 
    #   </p>
    #   @return [Array<Types::KxAttachedCluster>]
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
      :attached_clusters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IPAddressType
      IP_V4 = 'IP_V4'
    end

    # <p>
    #          Defines the ICMP protocol that consists of the ICMP type and code.
    #       </p>
    # @!attribute type
    #   <p>The ICMP type. A value of <i>-1</i> means all types.
    #         </p>
    #   @return [Integer]
    # @!attribute code
    #   <p>
    #            The ICMP code. A value of <i>-1</i> means all codes for the specified ICMP type.
    #         </p>
    #   @return [Integer]
    class IcmpTypeCode < Struct.new(
      :type,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 0 unless options.key?(:type)
        options[:code] = 0 unless options.key?(:code)
        super
      end
    end

    # <p>The request processing has failed because of an unknown error, exception or
    #          failure.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request is invalid. Something is wrong with the input to the request.</p>
    # @!attribute message
    #   @return [String]
    class InvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure containing the metadata of the attached clusters.</p>
    # @!attribute cluster_name
    #   <p>A unique name for the attached cluster.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Specifies the type of cluster. The volume for TP and RDB cluster types will be used for TP logs.</p>
    #   @return [String]
    # @!attribute cluster_status
    #   <p>The status of the attached cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING – The cluster is pending creation.</p>
    #               </li>
    #               <li>
    #                  <p>CREATING – The cluster creation process is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The cluster creation process has failed.</p>
    #               </li>
    #               <li>
    #                  <p>RUNNING – The cluster creation process is running.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The cluster is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The cluster is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The cluster has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The cluster failed to delete.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class KxAttachedCluster < Struct.new(
      :cluster_name,
      :cluster_type,
      :cluster_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KxAzMode
      SINGLE = 'SINGLE'
      MULTI = 'MULTI'
    end

    # <p>The configuration for read only disk cache associated with a cluster.</p>
    # @!attribute type
    #   <p>The type of cache storage. The valid values are: </p>
    #            <ul>
    #               <li>
    #                  <p>CACHE_1000 – This type provides at least 1000 MB/s disk access throughput. </p>
    #               </li>
    #               <li>
    #                  <p>CACHE_250 – This type provides at least 250 MB/s disk access throughput. </p>
    #               </li>
    #               <li>
    #                  <p>CACHE_12 – This type provides at least 12 MB/s disk access throughput. </p>
    #               </li>
    #            </ul>
    #            <p>For cache type <code>CACHE_1000</code> and <code>CACHE_250</code> you can select cache size as 1200 GB or increments of 2400 GB. For cache type <code>CACHE_12</code> you can select the cache size in increments of 6000 GB.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The size of cache in Gigabytes.</p>
    #   @return [Integer]
    class KxCacheStorageConfiguration < Struct.new(
      :type,
      :size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details of changeset.</p>
    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the changeset was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute active_from_timestamp
    #   <p>Beginning time from which the changeset is active. The value is determined as epoch time in
    #         milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #         1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The timestamp at which the changeset was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as
    #         1635768000000.</p>
    #   @return [Time]
    # @!attribute status
    #   <p> Status of the changeset.</p>
    #            <ul>
    #               <li>
    #                  <p>Pending – Changeset creation is pending.</p>
    #               </li>
    #               <li>
    #                  <p>Processing – Changeset creation is running.</p>
    #               </li>
    #               <li>
    #                  <p>Failed – Changeset creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>Complete – Changeset creation has succeeded.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class KxChangesetListEntry < Struct.new(
      :changeset_id,
      :created_timestamp,
      :active_from_timestamp,
      :last_modified_timestamp,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a kdb cluster.</p>
    # @!attribute status
    #   <p>The status of a cluster.</p>
    #            <ul>
    #               <li>
    #                  <p>PENDING – The cluster is pending creation.</p>
    #               </li>
    #               <li>
    #                  <p>CREATING –The cluster creation process is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED– The cluster creation process has failed.</p>
    #               </li>
    #               <li>
    #                  <p>RUNNING – The cluster creation process is running.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The cluster is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p> DELETING – The cluster is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The cluster has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The cluster failed to delete.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The error message when a failed state occurs. </p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>A unique name for the cluster.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Specifies the type of KDB database that is being created. The following types are available: </p>
    #            <ul>
    #               <li>
    #                  <p>HDB – A Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed kdb databases mounted to the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>RDB – A Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the <code>savedownStorageConfiguration</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>GATEWAY – A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.</p>
    #               </li>
    #               <li>
    #                  <p>GP – A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only <code>SINGLE</code> AZ mode.</p>
    #               </li>
    #               <li>
    #                  <p>Tickerplant – A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute cluster_description
    #   <p>A description of the cluster.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>A version of the FinSpace managed kdb to run.</p>
    #   @return [String]
    # @!attribute volumes
    #   <p>
    #   A list of volumes attached to the cluster.
    #   </p>
    #   @return [Array<Types::Volume>]
    # @!attribute initialization_script
    #   <p>Specifies a Q program that will be run at launch of a cluster. It is a relative path within
    #         <i>.zip</i> file that contains the custom code, which will be loaded on
    #         the cluster. It must include the file name itself. For example,
    #         <code>somedir/init.q</code>.</p>
    #   @return [String]
    # @!attribute execution_role
    #   <p>
    #               An IAM role that defines a set of permissions associated with a cluster. These permissions are assumed when a cluster attempts to access another cluster.
    #            </p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones assigned per cluster. This can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SINGLE</code> – Assigns one availability zone per cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MULTI</code> – Assigns all the availability zones per cluster.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #               The availability zone identifiers for the requested regions.
    #            </p>
    #   @return [String]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the cluster was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the cluster was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
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
      :created_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          The configuration that allows you to choose how you want to update code on a cluster. Depending on the option you choose, you can reduce the time it takes to update the cluster.
    #       </p>
    # @!attribute deployment_strategy
    #   <p>
    #           The type of deployment that you want on a cluster.
    #           
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>ROLLING – This options updates the cluster by stopping the exiting q process and starting a new q process with updated configuration.</p>
    #               </li>
    #               <li>
    #                  <p>NO_RESTART – This option updates the cluster without stopping the running q process. It is only available for <code>GP</code> type cluster. This option is quicker as it reduces the turn around time to update configuration on a cluster. </p>
    #                  <p>With this deployment mode, you cannot update the <code>initializationScript</code> and <code>commandLineArguments</code> parameters.</p>
    #               </li>
    #               <li>
    #                  <p>FORCE – This option updates the cluster by immediately stopping all the running processes before starting up new ones with the updated configuration. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class KxClusterCodeDeploymentConfiguration < Struct.new(
      :deployment_strategy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KxClusterCodeDeploymentStrategy
      NO_RESTART = 'NO_RESTART'
      ROLLING = 'ROLLING'
      FORCE = 'FORCE'
    end

    module KxClusterStatus
      PENDING = 'PENDING'
      CREATING = 'CREATING'
      CREATE_FAILED = 'CREATE_FAILED'
      RUNNING = 'RUNNING'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      DELETE_FAILED = 'DELETE_FAILED'
    end

    module KxClusterType
      HDB = 'HDB'
      RDB = 'RDB'
      GATEWAY = 'GATEWAY'
      GP = 'GP'
      TICKERPLANT = 'TICKERPLANT'
    end

    # <p>Defines the key-value pairs to make them available inside the cluster.</p>
    # @!attribute key
    #   <p>The name of the key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the key.</p>
    #   @return [String]
    class KxCommandLineArgument < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure of database cache configuration that is used for mapping database paths to cache types in clusters.</p>
    # @!attribute cache_type
    #   <p>The type of disk cache. This parameter is used to map the database path to cache storage. The valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>CACHE_1000 – This type provides at least 1000 MB/s disk access throughput. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute db_paths
    #   <p>Specifies the portions of database that will be loaded into the cache for access.</p>
    #   @return [Array<String>]
    # @!attribute dataview_name
    #   <p>
    #      The name of the dataview to be used for caching historical data on disk.
    #      
    #   </p>
    #   @return [String]
    class KxDatabaseCacheConfiguration < Struct.new(
      :cache_type,
      :db_paths,
      :dataview_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration of data that is available for querying from this database.</p>
    # @!attribute database_name
    #   <p>The name of the kdb database. When this parameter is specified in the structure, S3 with the whole database is included by default.</p>
    #   @return [String]
    # @!attribute cache_configurations
    #   <p>Configuration details for the disk cache used to increase performance reading from a kdb database mounted to the cluster.</p>
    #   @return [Array<Types::KxDatabaseCacheConfiguration>]
    # @!attribute changeset_id
    #   <p>A unique identifier of the changeset that is associated with the cluster.</p>
    #   @return [String]
    # @!attribute dataview_name
    #   <p>
    #      The name of the dataview to be used for caching historical data on disk.
    #      
    #   </p>
    #   @return [String]
    # @!attribute dataview_configuration
    #   <p>
    #      The configuration of the dataview to be used with specified cluster.
    #      
    #   </p>
    #   @return [Types::KxDataviewConfiguration]
    class KxDatabaseConfiguration < Struct.new(
      :database_name,
      :cache_configurations,
      :changeset_id,
      :dataview_name,
      :dataview_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about a FinSpace managed kdb database</p>
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp at which the database was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the database was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    class KxDatabaseListEntry < Struct.new(
      :database_name,
      :created_timestamp,
      :last_modified_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #    The active version of the dataview that is currently in use by this cluster.
    #       
    # </p>
    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute segment_configurations
    #   <p>
    #         The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    # @!attribute attached_clusters
    #   <p>
    #      The list of clusters that are currently using this dataview.
    #      
    #   </p>
    #   @return [Array<String>]
    # @!attribute created_timestamp
    #   <p>
    #   The timestamp at which the dataview version was active. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute version_id
    #   <p>
    #   A unique identifier of the active version.</p>
    #   @return [String]
    class KxDataviewActiveVersion < Struct.new(
      :changeset_id,
      :segment_configurations,
      :attached_clusters,
      :created_timestamp,
      :version_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # The structure that stores the configuration details of a dataview.</p>
    # @!attribute dataview_name
    #   <p>
    #   The unique identifier of the dataview.</p>
    #   @return [String]
    # @!attribute dataview_version_id
    #   <p>
    #      The version of the dataview corresponding to a given changeset.
    #      
    #   </p>
    #   @return [String]
    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute segment_configurations
    #   <p>
    #   The db path and volume configuration for the segmented database.</p>
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    class KxDataviewConfiguration < Struct.new(
      :dataview_name,
      :dataview_version_id,
      :changeset_id,
      :segment_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #    A collection of kdb dataview entries.
    #    
    # </p>
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>
    #   A unique identifier of the database.</p>
    #   @return [String]
    # @!attribute dataview_name
    #   <p>
    #   A unique identifier of the dataview.</p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #            The identifier of the availability zones.
    #         </p>
    #   @return [String]
    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute segment_configurations
    #   <p>
    #         The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    # @!attribute active_versions
    #   <p>
    #      The active changeset versions for the given dataview entry.
    #         
    #   </p>
    #   @return [Array<Types::KxDataviewActiveVersion>]
    # @!attribute status
    #   <p>
    #      The status of a given dataview entry.
    #      
    #   </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #   A description for the dataview list entry.</p>
    #   @return [String]
    # @!attribute auto_update
    #   <p>
    #      The option to specify whether you want to apply all the future additions and corrections automatically to the dataview when you ingest new changesets. The default value is false.
    #   </p>
    #   @return [Boolean]
    # @!attribute read_write
    #   <p> Returns True if the dataview is created as writeable and False otherwise.  </p>
    #   @return [Boolean]
    # @!attribute created_timestamp
    #   <p>
    #   The timestamp at which the dataview list entry was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the dataview list was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>
    #   The error message when a failed state occurs. 
    #   </p>
    #   @return [String]
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
      :status_reason,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_update] = false unless options.key?(:auto_update)
        options[:read_write] = false unless options.key?(:read_write)
        super
      end
    end

    # <p>
    #       The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    # @!attribute db_paths
    #   <p>
    #   The database path of the data that you want to place on each selected volume for the segment. Each segment must have a unique database path for each volume.</p>
    #   @return [Array<String>]
    # @!attribute volume_name
    #   <p>
    #   The name of the volume where you want to add data. </p>
    #   @return [String]
    # @!attribute on_demand
    #   <p>Enables on-demand caching on the selected database path when a particular file or a
    #            column of the database is accessed. When on demand caching is <b>True</b>, dataviews perform minimal loading of files on the filesystem as
    #            needed. When it is set to <b>False</b>, everything is cached. The
    #            default value is <b>False</b>. </p>
    #   @return [Boolean]
    class KxDataviewSegmentConfiguration < Struct.new(
      :db_paths,
      :volume_name,
      :on_demand,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:on_demand] = false unless options.key?(:on_demand)
        super
      end
    end

    module KxDataviewStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      UPDATING = 'UPDATING'
      FAILED = 'FAILED'
      DELETING = 'DELETING'
    end

    # <p>
    #          The configuration that allows you to choose how you want to update the databases on a cluster. Depending on the option you choose, you can reduce the time it takes to update the cluster.
    #       </p>
    # @!attribute deployment_strategy
    #   <p>
    #            The type of deployment that you want on a cluster.
    #            
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>ROLLING – This options updates the cluster by stopping the exiting q process and starting a new q process with updated configuration.</p>
    #               </li>
    #               <li>
    #                  <p>NO_RESTART – This option updates the cluster without stopping the running q process. It is only available for <code>HDB</code> type cluster. This option is quicker as it reduces the turn around time to update configuration on a cluster. </p>
    #                  <p>With this deployment mode, you cannot update the <code>initializationScript</code> and <code>commandLineArguments</code> parameters.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class KxDeploymentConfiguration < Struct.new(
      :deployment_strategy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KxDeploymentStrategy
      NO_RESTART = 'NO_RESTART'
      ROLLING = 'ROLLING'
    end

    # <p>The details of a kdb environment.</p>
    # @!attribute name
    #   <p>The name of the kdb environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The unique identifier of the AWS account in which you create the kdb environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the environment creation. </p>
    #            <ul>
    #               <li>
    #                  <p>CREATE_REQUESTED – Environment creation has been requested.</p>
    #               </li>
    #               <li>
    #                  <p>CREATING – Environment is in the process of being created.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED_CREATION – Environment creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>CREATED – Environment is successfully created and is currently active.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE REQUESTED – Environment deletion has been requested.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – Environment is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>RETRY_DELETION – Initial environment deletion failed, system is reattempting delete.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – Environment has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED_DELETION – Environment deletion has failed.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute tgw_status
    #   <p>The status of the network configuration.</p>
    #   @return [String]
    # @!attribute dns_status
    #   <p>The status of DNS configuration.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Specifies the error message that appears if a flow fails. </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the kdb environment.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of your kdb environment.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The unique identifier of the KMS key.</p>
    #   @return [String]
    # @!attribute dedicated_service_account_id
    #   <p>A unique identifier for the AWS environment infrastructure account.</p>
    #   @return [String]
    # @!attribute transit_gateway_configuration
    #   <p>Specifies the transit gateway and network configuration to connect the kdb environment to an internal network.</p>
    #   @return [Types::TransitGatewayConfiguration]
    # @!attribute custom_dns_configuration
    #   <p>A list of DNS server name and server IP. This is used to set up Route-53 outbound resolvers.</p>
    #   @return [Array<Types::CustomDNSServer>]
    # @!attribute creation_timestamp
    #   <p>The timestamp at which the kdb environment was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute update_timestamp
    #   <p>The timestamp at which the kdb environment was modified in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones where subnets for the environment are created.</p>
    #   @return [Array<String>]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate authority:</p>
    #   @return [String]
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
      :certificate_authority_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #    The structure containing the size and type of the network attached storage (NAS_1) file system volume.
    # </p>
    # @!attribute type
    #   <p>
    #   The type of the network attached storage.
    #   </p>
    #   @return [String]
    # @!attribute size
    #   <p>
    #      The size of the network attached storage. For storage type
    #      <code>SSD_1000</code> and <code>SSD_250</code> you can select the
    #      minimum size as 1200 GB or increments of 2400 GB. For storage type
    #      <code>HDD_12</code> you can select the minimum size as 6000 GB or increments
    #      of 6000 GB.</p>
    #   @return [Integer]
    class KxNAS1Configuration < Struct.new(
      :type,
      :size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KxNAS1Type
      SSD_1000 = 'SSD_1000'
      SSD_250 = 'SSD_250'
      HDD_12 = 'HDD_12'
    end

    # <p>A structure that stores metadata for a kdb node.</p>
    # @!attribute node_id
    #   <p>A unique identifier for the node.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>The identifier of the availability zones where subnets for the environment are created.</p>
    #   @return [String]
    # @!attribute launch_time
    #   <p>The time when a particular node is started.  The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>
    #            Specifies the status of the cluster nodes.   </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> – The node is actively serving.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PROVISIONING</code> – The node is being prepared.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class KxNode < Struct.new(
      :node_id,
      :availability_zone_id,
      :launch_time,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KxNodeStatus
      RUNNING = 'RUNNING'
      PROVISIONING = 'PROVISIONING'
    end

    # <p>The size and type of temporary storage that is used to hold data during the savedown process. All the data written to this storage space is lost when the cluster node is restarted.</p>
    # @!attribute type
    #   <p>The type of writeable storage space for temporarily storing your savedown data. The valid values are:</p>
    #            <ul>
    #               <li>
    #                  <p>SDS01 – This type represents 3000 IOPS and io2 ebs volume type.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute size
    #   <p>The size of temporary storage in gibibytes.</p>
    #   @return [Integer]
    # @!attribute volume_name
    #   <p>
    #      The name of the kdb volume that you want to use as writeable save-down storage for clusters.
    #      
    #   </p>
    #   @return [String]
    class KxSavedownStorageConfiguration < Struct.new(
      :type,
      :size,
      :volume_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KxSavedownStorageType
      SDS01 = 'SDS01'
    end

    # <p>
    # A structure for storing metadata of scaling group.</p>
    # @!attribute scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    #   @return [String]
    # @!attribute host_type
    #   <p>
    #      The memory and CPU capabilities of the scaling group host on which FinSpace Managed kdb clusters will be placed.</p>
    #            <p>You can add one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.large</code> – The host type with a configuration of 16 GiB
    #               memory and 2 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.xlarge</code> – The host type with a configuration of 32 GiB
    #                  memory and 4 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.2xlarge</code> – The host type with a configuration of 64 GiB
    #                  memory and 8 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.4xlarge</code> – The host type with a configuration of 108 GiB memory and 16 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.8xlarge</code> – The host type with a configuration of 216 GiB memory and 32 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.16xlarge</code> – The host type with a configuration of 432 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg.32xlarge</code> – The host type with a configuration of 864 GiB memory and 128 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg1.16xlarge</code> – The host type with a configuration of 1949 GiB memory and 64 vCPUs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kx.sg1.24xlarge</code> – The host type with a configuration of 2948 GiB memory and 96 vCPUs.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute clusters
    #   <p>
    #      The list of clusters currently active in a given scaling group.
    #      
    #   </p>
    #   @return [Array<String>]
    # @!attribute availability_zone_id
    #   <p>The identifier of the availability zones.</p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #   The status of scaling groups.
    #   </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>
    #   The error message when a failed state occurs. 
    #   </p>
    #   @return [String]
    # @!attribute last_modified_timestamp
    #   <p>
    #      The last time that the scaling group was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   </p>
    #   @return [Time]
    # @!attribute created_timestamp
    #   <p>
    #      The timestamp at which the scaling group was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   </p>
    #   @return [Time]
    class KxScalingGroup < Struct.new(
      :scaling_group_name,
      :host_type,
      :clusters,
      :availability_zone_id,
      :status,
      :status_reason,
      :last_modified_timestamp,
      :created_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure that stores the capacity configuration details of a scaling group.</p>
    # @!attribute scaling_group_name
    #   <p>A unique identifier for the kdb scaling group. </p>
    #   @return [String]
    # @!attribute memory_limit
    #   <p>
    #      An optional hard limit on the amount of memory a kdb cluster can use.
    #      
    #   </p>
    #   @return [Integer]
    # @!attribute memory_reservation
    #   <p>
    #      A reservation of the minimum amount of memory that should be available on the scaling group for a kdb cluster to be successfully placed in a scaling group. 
    #      
    #   </p>
    #   @return [Integer]
    # @!attribute node_count
    #   <p>
    #      The number of kdb cluster nodes.
    #      
    #   </p>
    #   @return [Integer]
    # @!attribute cpu
    #   <p>
    #      The number of vCPUs that you want to reserve for each node of this kdb cluster on the scaling group host.
    #      
    #   </p>
    #   @return [Float]
    class KxScalingGroupConfiguration < Struct.new(
      :scaling_group_name,
      :memory_limit,
      :memory_reservation,
      :node_count,
      :cpu,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KxScalingGroupStatus
      CREATING = 'CREATING'
      CREATE_FAILED = 'CREATE_FAILED'
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      DELETE_FAILED = 'DELETE_FAILED'
    end

    # <p>A structure that stores metadata for a kdb user.</p>
    # @!attribute user_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and
    #            how to use ARNs in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the
    #               <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute user_name
    #   <p>A unique identifier for the user.</p>
    #   @return [String]
    # @!attribute iam_role
    #   <p>The IAM role ARN that is associated with the user.</p>
    #   @return [String]
    # @!attribute create_timestamp
    #   <p>The timestamp at which the kdb user was created. </p>
    #   @return [Time]
    # @!attribute update_timestamp
    #   <p>The timestamp at which the kdb user was updated. </p>
    #   @return [Time]
    class KxUser < Struct.new(
      :user_arn,
      :user_name,
      :iam_role,
      :create_timestamp,
      :update_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # The structure that contains the metadata of the volume.
    # </p>
    # @!attribute volume_name
    #   <p>A unique identifier for the volume.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>
    #         The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type.
    #      </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of volume.</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING – The volume creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The volume creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE – The volume is active.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The volume is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATE_FAILED – The update action failed.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATED – The volume is successfully updated.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The volume is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The system failed to delete the volume.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The volume is successfully deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>
    #   A description of the volume.
    #   </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The error message when a failed state occurs. </p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones.</p>
    #   @return [Array<String>]
    # @!attribute created_timestamp
    #   <p>
    #   The timestamp at which the volume was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the volume was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    class KxVolume < Struct.new(
      :volume_name,
      :volume_type,
      :status,
      :description,
      :status_reason,
      :az_mode,
      :availability_zone_ids,
      :created_timestamp,
      :last_modified_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KxVolumeStatus
      CREATING = 'CREATING'
      CREATE_FAILED = 'CREATE_FAILED'
      ACTIVE = 'ACTIVE'
      UPDATING = 'UPDATING'
      UPDATED = 'UPDATED'
      UPDATE_FAILED = 'UPDATE_FAILED'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      DELETE_FAILED = 'DELETE_FAILED'
    end

    module KxVolumeType
      NAS_1 = 'NAS_1'
    end

    # <p>A service limit or quota is exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token generated by FinSpace that specifies where to continue pagination if a previous
    #            request was truncated. To get the next set of pages, pass in the <code>nextToken</code>nextToken value from the
    #            response object of the previous page call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    class ListEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environments
    #   <p>A list of all of your FinSpace environments.</p>
    #   @return [Array<Types::Environment>]
    # @!attribute next_token
    #   <p>A token that you can use in a subsequent call to retrieve the next set of
    #            results.</p>
    #   @return [String]
    class ListEnvironmentsResponse < Struct.new(
      :environments,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    class ListKxChangesetsRequest < Struct.new(
      :environment_id,
      :database_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute kx_changesets
    #   <p>A list of changesets for a database.</p>
    #   @return [Array<Types::KxChangesetListEntry>]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    class ListKxChangesetsResponse < Struct.new(
      :kx_changesets,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>A unique name for the cluster.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    class ListKxClusterNodesRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute nodes
    #   <p>A list of nodes associated with the cluster.</p>
    #   @return [Array<Types::KxNode>]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    class ListKxClusterNodesResponse < Struct.new(
      :nodes,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute cluster_type
    #   <p>Specifies the type of KDB database that is being created. The following types are available: </p>
    #            <ul>
    #               <li>
    #                  <p>HDB – A Historical Database. The data is only accessible with read-only permissions from one of the FinSpace managed kdb databases mounted to the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>RDB – A Realtime Database. This type of database captures all the data from a ticker plant and stores it in memory until the end of day, after which it writes all of its data to a disk and reloads the HDB. This cluster type requires local storage for temporary storage of data during the savedown process. If you specify this field in your request, you must provide the <code>savedownStorageConfiguration</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>GATEWAY – A gateway cluster allows you to access data across processes in kdb systems. It allows you to create your own routing logic using the initialization scripts and custom code. This type of cluster does not require a  writable local storage.</p>
    #               </li>
    #               <li>
    #                  <p>GP – A general purpose cluster allows you to quickly iterate on code during development by granting greater access to system commands and enabling a fast reload of custom code. This cluster type can optionally mount databases including cache and savedown storage. For this cluster type, the node count is fixed at 1. It does not support autoscaling and supports only <code>SINGLE</code> AZ mode.</p>
    #               </li>
    #               <li>
    #                  <p>Tickerplant – A tickerplant cluster allows you to subscribe to feed handlers based on IAM permissions. It can publish to RDBs, other Tickerplants, and real-time subscribers (RTS). Tickerplants can persist messages to log, which is readable by any RDB environment. It supports only single-node that is only one kdb process.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    class ListKxClustersRequest < Struct.new(
      :environment_id,
      :cluster_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute kx_cluster_summaries
    #   <p>Lists the cluster details.</p>
    #   @return [Array<Types::KxCluster>]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    class ListKxClustersResponse < Struct.new(
      :kx_cluster_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    class ListKxDatabasesRequest < Struct.new(
      :environment_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute kx_databases
    #   <p>A list of databases in the kdb environment.</p>
    #   @return [Array<Types::KxDatabaseListEntry>]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    class ListKxDatabasesResponse < Struct.new(
      :kx_databases,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, for which you want to retrieve a list of dataviews.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>
    #   The name of the database where the dataviews were created.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #   A token that indicates where a results page should begin.
    #   </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    class ListKxDataviewsRequest < Struct.new(
      :environment_id,
      :database_name,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute kx_dataviews
    #   <p>
    #      The list of kdb dataviews that are currently active for the given database.
    #   </p>
    #   @return [Array<Types::KxDataviewListEntry>]
    # @!attribute next_token
    #   <p>
    #   A token that indicates where a results page should begin. </p>
    #   @return [String]
    class ListKxDataviewsResponse < Struct.new(
      :kx_dataviews,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    class ListKxEnvironmentsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environments
    #   <p>A list of environments in an account.</p>
    #   @return [Array<Types::KxEnvironment>]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    class ListKxEnvironmentsResponse < Struct.new(
      :environments,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, for which you want to retrieve a list of scaling groups.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #   A token that indicates where a results page should begin. </p>
    #   @return [String]
    class ListKxScalingGroupsRequest < Struct.new(
      :environment_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute scaling_groups
    #   <p>
    #   A list of scaling groups available in a kdb environment.</p>
    #   @return [Array<Types::KxScalingGroup>]
    # @!attribute next_token
    #   <p>
    #   A token that indicates where a results page should begin. </p>
    #   @return [String]
    class ListKxScalingGroupsResponse < Struct.new(
      :scaling_groups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    class ListKxUsersRequest < Struct.new(
      :environment_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>A list of users in a kdb environment.</p>
    #   @return [Array<Types::KxUser>]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    class ListKxUsersResponse < Struct.new(
      :users,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, whose clusters can attach to the volume. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in this request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>
    #         The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type.
    #      </p>
    #   @return [String]
    class ListKxVolumesRequest < Struct.new(
      :environment_id,
      :max_results,
      :next_token,
      :volume_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute kx_volume_summaries
    #   <p>
    #   A summary of volumes.
    #   </p>
    #   @return [Array<Types::KxVolume>]
    # @!attribute next_token
    #   <p>A token that indicates where a results page should begin.</p>
    #   @return [String]
    class ListKxVolumesResponse < Struct.new(
      :kx_volume_summaries,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of all tags for a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #        The network access control list (ACL) is an optional layer of security for your VPC that acts as a firewall for controlling traffic in and out of one or more subnets. The entry is a set of numbered ingress and egress rules that determine whether a packet should be allowed in or out of a subnet associated with the ACL. We process the entries in the ACL according to the rule numbers, in ascending order.
    #       </p>
    # @!attribute rule_number
    #   <p>
    #            The rule number for the entry. For example <i>100</i>. All the network ACL entries are processed in ascending order by rule number.
    #            
    #         </p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>
    #            The protocol number. A value of <i>-1</i> means all the protocols.
    #         </p>
    #   @return [String]
    # @!attribute rule_action
    #   <p>
    #            Indicates whether to allow or deny the traffic that matches the rule.
    #         </p>
    #   @return [String]
    # @!attribute port_range
    #   <p>
    #            The range of ports the rule applies to.
    #         </p>
    #   @return [Types::PortRange]
    # @!attribute icmp_type_code
    #   <p>
    #            Defines the ICMP protocol that consists of the ICMP type and code.
    #         </p>
    #   @return [Types::IcmpTypeCode]
    # @!attribute cidr_block
    #   <p>
    #            The IPv4 network range to allow or deny, in CIDR notation. For example, <code>172.16.0.0/24</code>. We modify the specified CIDR block to its canonical form. For example, if you specify <code>100.68.0.18/18</code>, we modify it to <code>100.68.0.0/18</code>.
    #         </p>
    #   @return [String]
    class NetworkACLEntry < Struct.new(
      :rule_number,
      :protocol,
      :rule_action,
      :port_range,
      :icmp_type_code,
      :cidr_block,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #          The range of ports the rule applies to.
    #       </p>
    # @!attribute from
    #   <p>
    #            The first port in the range.
    #         </p>
    #   @return [Integer]
    # @!attribute to
    #   <p>
    #            The last port in the range.
    #         </p>
    #   @return [Integer]
    class PortRange < Struct.new(
      :from,
      :to,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:from] = 0 unless options.key?(:from)
        options[:to] = 0 unless options.key?(:to)
        super
      end
    end

    # <p>The specified resource group already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One or more resources can't be found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RuleAction
      ALLOW = 'allow'
      DENY = 'deny'
    end

    # <p> You have exceeded your service quota. To perform the requested action, 
    #          remove some of the relevant resources, or use Service Quotas to request a service quota increase.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information for the superuser.</p>
    # @!attribute email_address
    #   <p>The email address of the superuser.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The first name of the superuser.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The last name of the superuser.</p>
    #   @return [String]
    class SuperuserParameters < Struct.new(
      :email_address,
      :first_name,
      :last_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) for the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # A configuration to store the Tickerplant logs. It consists of
    # a list of volumes that will be mounted to your cluster. For the cluster type <code>Tickerplant</code>, the location of the TP volume on the cluster will be available by using the global variable <code>.aws.tp_log_path</code>. 
    # </p>
    # @!attribute tickerplant_log_volumes
    #   <p>
    #   The name of the volumes for tickerplant logs.
    #   </p>
    #   @return [Array<String>]
    class TickerplantLogConfiguration < Struct.new(
      :tickerplant_log_volumes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The structure of the transit gateway and network configuration that is used to connect the kdb environment to an internal network.</p>
    # @!attribute transit_gateway_id
    #   <p>The identifier of the transit gateway created by the customer to connect outbound traffics from kdb network to your internal network.</p>
    #   @return [String]
    # @!attribute routable_cidr_space
    #   <p>The routing CIDR on behalf of kdb environment. It could be any "/26 range in the 100.64.0.0 CIDR space. After providing, it will be added to the customer's transit gateway routing table so that the traffics could be routed to kdb network.</p>
    #   @return [String]
    # @!attribute attachment_network_acl_configuration
    #   <p>
    #            The rules that define how you manage the outbound traffic from kdb network to your internal network.
    #            
    #         </p>
    #   @return [Array<Types::NetworkACLEntry>]
    class TransitGatewayConfiguration < Struct.new(
      :transit_gateway_id,
      :routable_cidr_space,
      :attachment_network_acl_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>A FinSpace resource from which you want to remove a tag or tags. The value for this
    #            parameter is an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys (names) of one or more tags to be removed.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The identifier of the FinSpace environment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute federation_mode
    #   <p>Authentication mode for the environment.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FEDERATED</code> - Users access FinSpace through Single Sign On (SSO) via your Identity provider.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LOCAL</code> - Users access FinSpace via email and password managed within the FinSpace environment.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute federation_parameters
    #   <p>Configuration information when authentication mode is FEDERATED.</p>
    #   @return [Types::FederationParameters]
    class UpdateEnvironmentRequest < Struct.new(
      :environment_id,
      :name,
      :description,
      :federation_mode,
      :federation_parameters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>Returns the FinSpace environment object.</p>
    #   @return [Types::Environment]
    class UpdateEnvironmentResponse < Struct.new(
      :environment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>
    #            A unique identifier of the kdb environment.
    #         </p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>The name of the cluster.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The structure of the customer code available within the running cluster.</p>
    #   @return [Types::CodeConfiguration]
    # @!attribute initialization_script
    #   <p>Specifies a Q program that will be run at launch of a cluster. It is a relative path within
    #            <i>.zip</i> file that contains the custom code, which will be loaded on
    #            the cluster. It must include the file name itself. For example,
    #            <code>somedir/init.q</code>.</p>
    #            <p>You cannot update this parameter for a <code>NO_RESTART</code> deployment.</p>
    #   @return [String]
    # @!attribute command_line_arguments
    #   <p>Specifies the key-value pairs to make them available inside the cluster.</p>
    #            <p>You cannot update this parameter for a <code>NO_RESTART</code> deployment.</p>
    #   @return [Array<Types::KxCommandLineArgument>]
    # @!attribute deployment_configuration
    #   <p>
    #            The configuration that allows you to choose how you want to update the code on a cluster.
    #         </p>
    #   @return [Types::KxClusterCodeDeploymentConfiguration]
    class UpdateKxClusterCodeConfigurationRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :client_token,
      :code,
      :initialization_script,
      :command_line_arguments,
      :deployment_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateKxClusterCodeConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier of a kdb environment.</p>
    #   @return [String]
    # @!attribute cluster_name
    #   <p>A unique name for the cluster that you want to modify.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    # @!attribute databases
    #   <p> The structure of databases mounted on the cluster.</p>
    #   @return [Array<Types::KxDatabaseConfiguration>]
    # @!attribute deployment_configuration
    #   <p>
    #            The configuration that allows you to choose how you want to update the databases on a cluster.
    #         </p>
    #   @return [Types::KxDeploymentConfiguration]
    class UpdateKxClusterDatabasesRequest < Struct.new(
      :environment_id,
      :cluster_name,
      :client_token,
      :databases,
      :deployment_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateKxClusterDatabasesResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the database.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class UpdateKxDatabaseRequest < Struct.new(
      :environment_id,
      :database_name,
      :description,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute database_name
    #   <p>The name of the kdb database.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the database.</p>
    #   @return [String]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the database was modified. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    class UpdateKxDatabaseResponse < Struct.new(
      :database_name,
      :environment_id,
      :description,
      :last_modified_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, where you want to update the dataview.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>
    #   The name of the database.</p>
    #   @return [String]
    # @!attribute dataview_name
    #   <p>The name of the dataview that you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #          The description for a dataview.
    #         </p>
    #   @return [String]
    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute segment_configurations
    #   <p>
    #         The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class UpdateKxDataviewRequest < Struct.new(
      :environment_id,
      :database_name,
      :dataview_name,
      :description,
      :changeset_id,
      :segment_configurations,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment, where you want to update the dataview.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>
    #   The name of the database.
    #   </p>
    #   @return [String]
    # @!attribute dataview_name
    #   <p>
    #      The name of the database under which the dataview was created.
    #      
    #   </p>
    #   @return [String]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_id
    #   <p>
    #            The identifier of the availability zones.
    #         </p>
    #   @return [String]
    # @!attribute changeset_id
    #   <p>A unique identifier for the changeset.</p>
    #   @return [String]
    # @!attribute segment_configurations
    #   <p>
    #         The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. </p>
    #   @return [Array<Types::KxDataviewSegmentConfiguration>]
    # @!attribute active_versions
    #   <p>
    #      The current active changeset versions of the database on the given dataview. 
    #      
    #   </p>
    #   @return [Array<Types::KxDataviewActiveVersion>]
    # @!attribute status
    #   <p>
    #         The status of dataview creation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> – The dataview creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> – The dataview is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVE</code> – The dataview is active.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute auto_update
    #   <p>The option to specify whether you want to apply all the future additions and corrections automatically to the dataview when new changesets are ingested. The default value is false.</p>
    #   @return [Boolean]
    # @!attribute read_write
    #   <p>Returns True if the dataview is created as writeable and False otherwise. </p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of the dataview.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>
    #      The timestamp at which the dataview was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   </p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>
    #      The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
    #   </p>
    #   @return [Time]
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
      :last_modified_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_update] = false unless options.key?(:auto_update)
        options[:read_write] = false unless options.key?(:read_write)
        super
      end
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute transit_gateway_configuration
    #   <p>Specifies the transit gateway and network configuration to connect the kdb environment to an internal network.</p>
    #   @return [Types::TransitGatewayConfiguration]
    # @!attribute custom_dns_configuration
    #   <p>A list of DNS server name and server IP. This is used to set up Route-53 outbound resolvers.</p>
    #   @return [Array<Types::CustomDNSServer>]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class UpdateKxEnvironmentNetworkRequest < Struct.new(
      :environment_id,
      :transit_gateway_configuration,
      :custom_dns_configuration,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the kdb environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The unique identifier of the AWS account that is used to create the kdb environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the kdb environment.</p>
    #   @return [String]
    # @!attribute tgw_status
    #   <p>The status of the network configuration.</p>
    #   @return [String]
    # @!attribute dns_status
    #   <p>The status of DNS configuration.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Specifies the error message that appears if a flow fails.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The ARN identifier of the environment.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key ID to encrypt your data in the FinSpace environment.</p>
    #   @return [String]
    # @!attribute dedicated_service_account_id
    #   <p>A unique identifier for the AWS environment infrastructure account.</p>
    #   @return [String]
    # @!attribute transit_gateway_configuration
    #   <p>The structure of the transit gateway and network configuration that is used to connect the kdb environment to an internal network.</p>
    #   @return [Types::TransitGatewayConfiguration]
    # @!attribute custom_dns_configuration
    #   <p>A list of DNS server name and server IP. This is used to set up Route-53 outbound resolvers.</p>
    #   @return [Array<Types::CustomDNSServer>]
    # @!attribute creation_timestamp
    #   <p>The timestamp at which the kdb environment was created in FinSpace. </p>
    #   @return [Time]
    # @!attribute update_timestamp
    #   <p>The timestamp at which the kdb environment was updated. </p>
    #   @return [Time]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones where subnets for the environment are created.</p>
    #   @return [Array<String>]
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
      :availability_zone_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the kdb environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the kdb environment.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class UpdateKxEnvironmentRequest < Struct.new(
      :environment_id,
      :name,
      :description,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the kdb environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute aws_account_id
    #   <p>The unique identifier of the AWS account that is used to create the kdb environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the kdb environment.</p>
    #   @return [String]
    # @!attribute tgw_status
    #   <p>The status of the network configuration.</p>
    #   @return [String]
    # @!attribute dns_status
    #   <p>The status of DNS configuration.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Specifies the error message that appears if a flow fails.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the environment.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The ARN identifier of the environment.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key ID to encrypt your data in the FinSpace environment.</p>
    #   @return [String]
    # @!attribute dedicated_service_account_id
    #   <p>A unique identifier for the AWS environment infrastructure account.</p>
    #   @return [String]
    # @!attribute transit_gateway_configuration
    #   <p>The structure of the transit gateway and network configuration that is used to connect the kdb environment to an internal network.</p>
    #   @return [Types::TransitGatewayConfiguration]
    # @!attribute custom_dns_configuration
    #   <p>A list of DNS server name and server IP. This is used to set up Route-53 outbound resolvers.</p>
    #   @return [Array<Types::CustomDNSServer>]
    # @!attribute creation_timestamp
    #   <p>The timestamp at which the kdb environment was created in FinSpace. </p>
    #   @return [Time]
    # @!attribute update_timestamp
    #   <p>The timestamp at which the kdb environment was updated. </p>
    #   @return [Time]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones where subnets for the environment are created.</p>
    #   @return [Array<String>]
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
      :availability_zone_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>A unique identifier for the user.</p>
    #   @return [String]
    # @!attribute iam_role
    #   <p>The IAM role ARN that is associated with the user.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    class UpdateKxUserRequest < Struct.new(
      :environment_id,
      :user_name,
      :iam_role,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_name
    #   <p>A unique identifier for the user.</p>
    #   @return [String]
    # @!attribute user_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the user. For more information about ARNs and
    #         how to use ARNs in policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM Identifiers</a> in the
    #         <i>IAM User Guide</i>. </p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment.</p>
    #   @return [String]
    # @!attribute iam_role
    #   <p>The IAM role ARN that is associated with the user.</p>
    #   @return [String]
    class UpdateKxUserResponse < Struct.new(
      :user_name,
      :user_arn,
      :environment_id,
      :iam_role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment where you created the storage volume. </p>
    #   @return [String]
    # @!attribute volume_name
    #   <p>
    #   A unique identifier for the volume.</p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #   A description of the volume.
    #   </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that ensures idempotency. This token expires in 10 minutes.</p>
    #   @return [String]
    # @!attribute nas1_configuration
    #   <p> Specifies the configuration for the Network attached storage (NAS_1) file system volume.</p>
    #   @return [Types::KxNAS1Configuration]
    class UpdateKxVolumeRequest < Struct.new(
      :environment_id,
      :volume_name,
      :description,
      :client_token,
      :nas1_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>A unique identifier for the kdb environment where you want to update the volume. </p>
    #   @return [String]
    # @!attribute volume_name
    #   <p>A unique identifier for the volume that you want to update.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>
    #         The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type.
    #      </p>
    #   @return [String]
    # @!attribute volume_arn
    #   <p>
    #   The ARN identifier of the volume.
    #   </p>
    #   @return [String]
    # @!attribute nas1_configuration
    #   <p> Specifies the configuration for the Network attached storage (NAS_1) file system volume.</p>
    #   @return [Types::KxNAS1Configuration]
    # @!attribute status
    #   <p>The status of the volume.</p>
    #            <ul>
    #               <li>
    #                  <p>CREATING – The volume creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>CREATE_FAILED – The volume creation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>ACTIVE – The volume is active.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATING – The volume is in the process of being updated.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATE_FAILED – The update action failed.</p>
    #               </li>
    #               <li>
    #                  <p>UPDATED – The volume is successfully updated.</p>
    #               </li>
    #               <li>
    #                  <p>DELETING – The volume is in the process of being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>DELETE_FAILED – The system failed to delete the volume.</p>
    #               </li>
    #               <li>
    #                  <p>DELETED – The volume is successfully deleted.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute description
    #   <p>
    #   The description for the volume.
    #   </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The error message when a failed state occurs. </p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>
    #   The timestamp at which the volume was created in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute az_mode
    #   <p>The number of availability zones you want to assign per volume. Currently, FinSpace only supports <code>SINGLE</code> for volumes. This places dataview in a single AZ.</p>
    #   @return [String]
    # @!attribute availability_zone_ids
    #   <p>The identifier of the availability zones.</p>
    #   @return [Array<String>]
    # @!attribute last_modified_timestamp
    #   <p>The last time that the volume was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.</p>
    #   @return [Time]
    # @!attribute attached_clusters
    #   <p>
    #   Specifies the clusters that a volume is attached to.
    #   </p>
    #   @return [Array<Types::KxAttachedCluster>]
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
      :attached_clusters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    # The structure that consists of name and type of volume.</p>
    # @!attribute volume_name
    #   <p>A unique identifier for the volume.</p>
    #   @return [String]
    # @!attribute volume_type
    #   <p>
    #         The type of file system volume. Currently, FinSpace only supports <code>NAS_1</code> volume type.
    #      </p>
    #   @return [String]
    class Volume < Struct.new(
      :volume_name,
      :volume_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VolumeType
      NAS_1 = 'NAS_1'
    end

    # <p>Configuration details about the network where the Privatelink endpoint of the cluster resides.</p>
    # @!attribute vpc_id
    #   <p>The identifier of the VPC endpoint.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>The  unique identifier of the VPC security group applied to the VPC endpoint ENI for the cluster.</p>
    #   @return [Array<String>]
    # @!attribute subnet_ids
    #   <p>The identifier of the subnet that the Privatelink VPC endpoint uses to connect to the cluster.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_type
    #   <p>The IP address type for cluster network configuration parameters. The following type is available:</p>
    #            <ul>
    #               <li>
    #                  <p>IP_V4 – IP address version 4</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class VpcConfiguration < Struct.new(
      :vpc_id,
      :security_group_ids,
      :subnet_ids,
      :ip_address_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DnsStatus
      NONE = 'NONE'
      UPDATE_REQUESTED = 'UPDATE_REQUESTED'
      UPDATING = 'UPDATING'
      FAILED_UPDATE = 'FAILED_UPDATE'
      SUCCESSFULLY_UPDATED = 'SUCCESSFULLY_UPDATED'
    end

    module TgwStatus
      NONE = 'NONE'
      UPDATE_REQUESTED = 'UPDATE_REQUESTED'
      UPDATING = 'UPDATING'
      FAILED_UPDATE = 'FAILED_UPDATE'
      SUCCESSFULLY_UPDATED = 'SUCCESSFULLY_UPDATED'
    end

  end
end
