# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS

  class DBClusterSnapshot

    extend Aws::Deprecations

    # @overload def initialize(cluster_id, snapshot_id, options = {})
    #   @param [String] cluster_id
    #   @param [String] snapshot_id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :cluster_id
    #   @option options [required, String] :snapshot_id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @cluster_id = extract_cluster_id(args, options)
      @snapshot_id = extract_snapshot_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def cluster_id
      @cluster_id
    end
    alias :db_cluster_identifier :cluster_id

    # @return [String]
    def snapshot_id
      @snapshot_id
    end
    alias :db_cluster_snapshot_identifier :snapshot_id

    # Provides the list of Availability Zones (AZs) where instances in the
    # DB cluster snapshot can be restored.
    # @return [Array<String>]
    def availability_zones
      data[:availability_zones]
    end

    # Provides the time when the snapshot was taken, in Universal
    # Coordinated Time (UTC).
    # @return [Time]
    def snapshot_create_time
      data[:snapshot_create_time]
    end

    # Specifies the name of the database engine for this DB cluster
    # snapshot.
    # @return [String]
    def engine
      data[:engine]
    end

    # Provides the engine mode of the database engine for this DB cluster
    # snapshot.
    # @return [String]
    def engine_mode
      data[:engine_mode]
    end

    # Specifies the allocated storage size in gibibytes (GiB).
    # @return [Integer]
    def allocated_storage
      data[:allocated_storage]
    end

    # Specifies the status of this DB cluster snapshot. Valid statuses are
    # the following:
    #
    # * `available`
    #
    # * `copying`
    #
    # * `creating`
    # @return [String]
    def status
      data[:status]
    end

    # Specifies the port that the DB cluster was listening on at the time of
    # the snapshot.
    # @return [Integer]
    def port
      data[:port]
    end

    # Provides the VPC ID associated with the DB cluster snapshot.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # Specifies the time when the DB cluster was created, in Universal
    # Coordinated Time (UTC).
    # @return [Time]
    def cluster_create_time
      data[:cluster_create_time]
    end

    # Provides the master username for this DB cluster snapshot.
    # @return [String]
    def master_username
      data[:master_username]
    end

    # Provides the version of the database engine for this DB cluster
    # snapshot.
    # @return [String]
    def engine_version
      data[:engine_version]
    end

    # Provides the license model information for this DB cluster snapshot.
    # @return [String]
    def license_model
      data[:license_model]
    end

    # Provides the type of the DB cluster snapshot.
    # @return [String]
    def snapshot_type
      data[:snapshot_type]
    end

    # Specifies the percentage of the estimated data that has been
    # transferred.
    # @return [Integer]
    def percent_progress
      data[:percent_progress]
    end

    # Specifies whether the DB cluster snapshot is encrypted.
    # @return [Boolean]
    def storage_encrypted
      data[:storage_encrypted]
    end

    # If `StorageEncrypted` is true, the Amazon Web Services KMS key
    # identifier for the encrypted DB cluster snapshot.
    #
    # The Amazon Web Services KMS key identifier is the key ARN, key ID,
    # alias ARN, or alias name for the KMS key.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The Amazon Resource Name (ARN) for the DB cluster snapshot.
    # @return [String]
    def db_cluster_snapshot_arn
      data[:db_cluster_snapshot_arn]
    end

    # If the DB cluster snapshot was copied from a source DB cluster
    # snapshot, the Amazon Resource Name (ARN) for the source DB cluster
    # snapshot, otherwise, a null value.
    # @return [String]
    def source_db_cluster_snapshot_arn
      data[:source_db_cluster_snapshot_arn]
    end

    # True if mapping of Amazon Web Services Identity and Access Management
    # (IAM) accounts to database accounts is enabled, and otherwise false.
    # @return [Boolean]
    def iam_database_authentication_enabled
      data[:iam_database_authentication_enabled]
    end

    # A list of tags. For more information, see [Tagging Amazon RDS
    # Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [Array<Types::Tag>]
    def tag_list
      data[:tag_list]
    end

    # Reserved for future use.
    # @return [String]
    def db_system_id
      data[:db_system_id]
    end

    # The storage type associated with the DB cluster snapshot.
    #
    # This setting is only for Aurora DB clusters.
    # @return [String]
    def storage_type
      data[:storage_type]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBClusterSnapshot}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_cluster_snapshot.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_db_cluster_snapshots(db_cluster_snapshot_identifier: @snapshot_id)
      end
      @data = resp.db_cluster_snapshots[0]
      self
    end
    alias :reload :load

    # @return [Types::DBClusterSnapshot]
    #   Returns the data for this {DBClusterSnapshot}. Calls
    #   {Client#describe_db_cluster_snapshots} if {#data_loaded?} is `false`.
    def data
      load unless @data
      @data
    end

    # @return [Boolean]
    #   Returns `true` if this resource is loaded.  Accessing attributes or
    #   {#data} on an unloaded resource will trigger a call to {#load}.
    def data_loaded?
      !!@data
    end

    # @deprecated Use [Aws::RDS::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource
    #   remains unchanged.
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) do |instance|
    #       instance.state.name == 'running'
    #     end
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is
    # set by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @yieldparam [Resource] resource to be used in the waiting condition.
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter
    #   terminates because the waiter has entered a state that it will not
    #   transition out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is
    #   encountered while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Plugins::UserAgent.feature('resource') do
        Aws::Waiters::Waiter.new(options).wait({})
      end
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   dbclustersnapshot = db_cluster_snapshot.create({
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Tag>] :tags
    #   The tags to be assigned to the DB cluster snapshot.
    # @return [DBClusterSnapshot]
    def create(options = {})
      options = options.merge(
        db_cluster_identifier: @cluster_id,
        db_cluster_snapshot_identifier: @snapshot_id
      )
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_cluster_snapshot(options)
      end
      DBClusterSnapshot.new(
        cluster_id: resp.data.db_cluster_snapshot.db_cluster_identifier,
        snapshot_id: resp.data.db_cluster_snapshot.db_cluster_snapshot_identifier,
        data: resp.data.db_cluster_snapshot,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbclustersnapshot = db_cluster_snapshot.copy({
    #     target_db_cluster_snapshot_identifier: "String", # required
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     copy_tags: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     source_region: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :target_db_cluster_snapshot_identifier
    #   The identifier of the new DB cluster snapshot to create from the
    #   source DB cluster snapshot. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot2`
    # @option options [String] :kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted DB cluster
    #   snapshot. The Amazon Web Services KMS key identifier is the key ARN,
    #   key ID, alias ARN, or alias name for the Amazon Web Services KMS key.
    #
    #   If you copy an encrypted DB cluster snapshot from your Amazon Web
    #   Services account, you can specify a value for `KmsKeyId` to encrypt
    #   the copy with a new KMS key. If you don't specify a value for
    #   `KmsKeyId`, then the copy of the DB cluster snapshot is encrypted with
    #   the same KMS key as the source DB cluster snapshot.
    #
    #   If you copy an encrypted DB cluster snapshot that is shared from
    #   another Amazon Web Services account, then you must specify a value for
    #   `KmsKeyId`.
    #
    #   To copy an encrypted DB cluster snapshot to another Amazon Web
    #   Services Region, you must set `KmsKeyId` to the Amazon Web Services
    #   KMS key identifier you want to use to encrypt the copy of the DB
    #   cluster snapshot in the destination Amazon Web Services Region. KMS
    #   keys are specific to the Amazon Web Services Region that they are
    #   created in, and you can't use KMS keys from one Amazon Web Services
    #   Region in another Amazon Web Services Region.
    #
    #   If you copy an unencrypted DB cluster snapshot and specify a value for
    #   the `KmsKeyId` parameter, an error is returned.
    # @option options [String] :pre_signed_url
    #   When you are copying a DB cluster snapshot from one Amazon Web
    #   Services GovCloud (US) Region to another, the URL that contains a
    #   Signature Version 4 signed request for the `CopyDBClusterSnapshot` API
    #   operation in the Amazon Web Services Region that contains the source
    #   DB cluster snapshot to copy. Use the `PreSignedUrl` parameter when
    #   copying an encrypted DB cluster snapshot from another Amazon Web
    #   Services Region. Don't specify `PreSignedUrl` when copying an
    #   encrypted DB cluster snapshot in the same Amazon Web Services Region.
    #
    #   This setting applies only to Amazon Web Services GovCloud (US)
    #   Regions. It's ignored in other Amazon Web Services Regions.
    #
    #   The presigned URL must be a valid request for the
    #   `CopyDBClusterSnapshot` API operation that can run in the source
    #   Amazon Web Services Region that contains the encrypted DB cluster
    #   snapshot to copy. The presigned URL request must contain the following
    #   parameter values:
    #
    #   * `KmsKeyId` - The KMS key identifier for the KMS key to use to
    #     encrypt the copy of the DB cluster snapshot in the destination
    #     Amazon Web Services Region. This is the same identifier for both the
    #     `CopyDBClusterSnapshot` operation that is called in the destination
    #     Amazon Web Services Region, and the operation contained in the
    #     presigned URL.
    #
    #   * `DestinationRegion` - The name of the Amazon Web Services Region
    #     that the DB cluster snapshot is to be created in.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    #     identifier for the encrypted DB cluster snapshot to be copied. This
    #     identifier must be in the Amazon Resource Name (ARN) format for the
    #     source Amazon Web Services Region. For example, if you are copying
    #     an encrypted DB cluster snapshot from the us-west-2 Amazon Web
    #     Services Region, then your `SourceDBClusterSnapshotIdentifier` looks
    #     like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (Amazon Web Services
    #   Signature Version 4)][1] and [ Signature Version 4 Signing
    #   Process][2].
    #
    #   <note markdown="1"> If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can run in the source Amazon Web Services Region.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # @option options [Boolean] :copy_tags
    #   A value that indicates whether to copy all tags from the source DB
    #   cluster snapshot to the target DB cluster snapshot. By default, tags
    #   are not copied.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    # @return [DBClusterSnapshot]
    def copy(options = {})
      options = options.merge(source_db_cluster_snapshot_identifier: @snapshot_id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.copy_db_cluster_snapshot(options)
      end
      DBClusterSnapshot.new(
        cluster_id: resp.data.db_cluster_snapshot.db_cluster_identifier,
        snapshot_id: resp.data.db_cluster_snapshot.db_cluster_snapshot_identifier,
        data: resp.data.db_cluster_snapshot,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_cluster_snapshot.delete()
    # @param [Hash] options ({})
    # @return [DBClusterSnapshot]
    def delete(options = {})
      options = options.merge(db_cluster_snapshot_identifier: @snapshot_id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.delete_db_cluster_snapshot(options)
      end
      DBClusterSnapshot.new(
        cluster_id: resp.data.db_cluster_snapshot.db_cluster_identifier,
        snapshot_id: resp.data.db_cluster_snapshot.db_cluster_snapshot_identifier,
        data: resp.data.db_cluster_snapshot,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbcluster = db_cluster_snapshot.restore({
    #     availability_zones: ["String"],
    #     db_cluster_identifier: "String", # required
    #     engine: "String", # required
    #     engine_version: "String",
    #     port: 1,
    #     db_subnet_group_name: "String",
    #     database_name: "String",
    #     option_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     kms_key_id: "String",
    #     enable_iam_database_authentication: false,
    #     backtrack_window: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     engine_mode: "String",
    #     scaling_configuration: {
    #       min_capacity: 1,
    #       max_capacity: 1,
    #       auto_pause: false,
    #       seconds_until_auto_pause: 1,
    #       timeout_action: "String",
    #       seconds_before_timeout: 1,
    #     },
    #     db_cluster_parameter_group_name: "String",
    #     deletion_protection: false,
    #     copy_tags_to_snapshot: false,
    #     domain: "String",
    #     domain_iam_role_name: "String",
    #     db_cluster_instance_class: "String",
    #     storage_type: "String",
    #     iops: 1,
    #     publicly_accessible: false,
    #     serverless_v2_scaling_configuration: {
    #       min_capacity: 1.0,
    #       max_capacity: 1.0,
    #     },
    #     network_type: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :availability_zones
    #   Provides the list of Availability Zones (AZs) where instances in the
    #   restored DB cluster can be created.
    #
    #   Valid for: Aurora DB clusters only
    # @option options [required, String] :db_cluster_identifier
    #   The name of the DB cluster to create from the DB snapshot or DB
    #   cluster snapshot. This parameter isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [required, String] :engine
    #   The database engine to use for the new DB cluster.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :engine_version
    #   The version of the database engine to use for the new DB cluster. If
    #   you don't specify an engine version, the default version for the
    #   database engine in the Amazon Web Services Region is used.
    #
    #   To list all of the available engine versions for Aurora MySQL, use the
    #   following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for Aurora PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine aurora-postgresql
    #   --query "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for MySQL, use
    #   the following command:
    #
    #   `aws rds describe-db-engine-versions --engine mysql --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   To list all of the available engine versions for RDS for PostgreSQL,
    #   use the following command:
    #
    #   `aws rds describe-db-engine-versions --engine postgres --query
    #   "DBEngineVersions[].EngineVersion"`
    #
    #   **Aurora MySQL**
    #
    #   See [Database engine updates for Amazon Aurora MySQL][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   **Aurora PostgreSQL**
    #
    #   See [Amazon Aurora PostgreSQL releases and engine versions][2] in the
    #   *Amazon Aurora User Guide*.
    #
    #   **MySQL**
    #
    #   See [Amazon RDS for MySQL][3] in the *Amazon RDS User Guide.*
    #
    #   **PostgreSQL**
    #
    #   See [Amazon RDS for PostgreSQL versions and extensions][4] in the
    #   *Amazon RDS User Guide.*
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Updates.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraPostgreSQL.Updates.20180305.html
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts
    # @option options [Integer] :port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: This value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :db_subnet_group_name
    #   The name of the DB subnet group to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing DB subnet
    #   group.
    #
    #   Example: `mydbsubnetgroup`
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :database_name
    #   The database name for the restored DB cluster.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :option_group_name
    #   The name of the option group to use for the restored DB cluster.
    #
    #   DB clusters are associated with a default option group that can't be
    #   modified.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster will belong to.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Array<Types::Tag>] :tags
    #   The tags to be assigned to the restored DB cluster.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :kms_key_id
    #   The Amazon Web Services KMS key identifier to use when restoring an
    #   encrypted DB cluster from a DB snapshot or DB cluster snapshot.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   When you don't specify a value for the `KmsKeyId` parameter, then the
    #   following occurs:
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is
    #     encrypted, then the restored DB cluster is encrypted using the KMS
    #     key that was used to encrypt the DB snapshot or DB cluster snapshot.
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier`
    #     isn't encrypted, then the restored DB cluster isn't encrypted.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   For more information, see [ IAM Database Authentication][1] in the
    #   *Amazon Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.IAMDBAuth.html
    # @option options [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to 0.
    #
    #   <note markdown="1"> Currently, Backtrack is only supported for Aurora MySQL DB clusters.
    #
    #    </note>
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    #
    #   Valid for: Aurora DB clusters only
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to Amazon
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used.
    #
    #   **RDS for MySQL**
    #
    #   Possible values are `error`, `general`, and `slowquery`.
    #
    #   **RDS for PostgreSQL**
    #
    #   Possible values are `postgresql` and `upgrade`.
    #
    #   **Aurora MySQL**
    #
    #   Possible values are `audit`, `error`, `general`, and `slowquery`.
    #
    #   **Aurora PostgreSQL**
    #
    #   Possible value is `postgresql`.
    #
    #   For more information about exporting CloudWatch Logs for Amazon RDS,
    #   see [Publishing Database Logs to Amazon CloudWatch Logs][1] in the
    #   *Amazon RDS User Guide*.
    #
    #   For more information about exporting CloudWatch Logs for Amazon
    #   Aurora, see [Publishing Database Logs to Amazon CloudWatch Logs][2] in
    #   the *Amazon Aurora User Guide*.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [String] :engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned` or
    #   `serverless`.
    #
    #   For more information, see [ CreateDBCluster][1].
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBCluster.html
    # @option options [Types::ScalingConfiguration] :scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling properties
    #   of the DB cluster.
    #
    #   Valid for: Aurora DB clusters only
    # @option options [String] :db_cluster_parameter_group_name
    #   The name of the DB cluster parameter group to associate with this DB
    #   cluster. If this argument is omitted, the default DB cluster parameter
    #   group for the specified engine is used.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing default DB cluster
    #     parameter group.
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :deletion_protection
    #   A value that indicates whether the DB cluster has deletion protection
    #   enabled. The database can't be deleted when deletion protection is
    #   enabled. By default, deletion protection isn't enabled.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   cluster to snapshots of the restored DB cluster. The default is not to
    #   copy them.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [String] :domain
    #   Specify the Active Directory directory ID to restore the DB cluster
    #   in. The domain must be created prior to this operation. Currently,
    #   only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances
    #   can be created in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the *Amazon
    #   RDS User Guide*.
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    # @option options [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    #   Valid for: Aurora DB clusters only
    # @option options [String] :db_cluster_instance_class
    #   The compute and memory capacity of the each DB instance in the
    #   Multi-AZ DB cluster, for example db.m6gd.xlarge. Not all DB instance
    #   classes are available in all Amazon Web Services Regions, or for all
    #   database engines.
    #
    #   For the full list of DB instance classes, and availability for your
    #   engine, see [DB Instance Class][1] in the *Amazon RDS User Guide.*
    #
    #   Valid for: Multi-AZ DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB cluster.
    #
    #   When specified for a Multi-AZ DB cluster, a value for the `Iops`
    #   parameter is required.
    #
    #   Valid values: `aurora`, `aurora-iopt1` (Aurora DB clusters); `io1`
    #   (Multi-AZ DB clusters)
    #
    #   Default: `aurora` (Aurora DB clusters); `io1` (Multi-AZ DB clusters)
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for each DB instance in the Multi-AZ DB
    #   cluster.
    #
    #   For information about valid IOPS values, see [Amazon RDS Provisioned
    #   IOPS storage][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: Must be a multiple between .5 and 50 of the storage
    #   amount for the DB instance.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    # @option options [Boolean] :publicly_accessible
    #   A value that indicates whether the DB cluster is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access is not permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB cluster isn't publicly accessible, it is an internal DB
    #   cluster with a DNS name that resolves to a private IP address.
    #
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB cluster is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB cluster is public.
    #
    #   Valid for: Aurora DB clusters and Multi-AZ DB clusters
    # @option options [Types::ServerlessV2ScalingConfiguration] :serverless_v2_scaling_configuration
    #   Contains the scaling configuration of an Aurora Serverless v2 DB
    #   cluster.
    #
    #   For more information, see [Using Amazon Aurora Serverless v2][1] in
    #   the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html
    # @option options [String] :network_type
    #   The network type of the DB cluster.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB cluster. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1] in
    #   the *Amazon Aurora User Guide.*
    #
    #   Valid for: Aurora DB clusters only
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    # @return [DBCluster]
    def restore(options = {})
      options = options.merge(snapshot_identifier: @snapshot_id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.restore_db_cluster_from_snapshot(options)
      end
      DBCluster.new(
        id: resp.data.db_cluster.db_cluster_identifier,
        data: resp.data.db_cluster,
        client: @client
      )
    end

    # @!group Associations

    # @return [DBCluster]
    def cluster
      DBCluster.new(
        id: @cluster_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   events = db_cluster_snapshot.events({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    # @option options [Integer] :duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    # @option options [Array<String>] :event_categories
    #   A list of event categories that trigger notifications for a event
    #   notification subscription.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          source_type: "db-cluster-snapshot",
          source_identifier: @snapshot_id
        )
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_events(options)
        end
        resp.each_page do |page|
          batch = []
          page.data.events.each do |e|
            batch << Event.new(
              source_id: e.source_identifier,
              date: e.date,
              data: e,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Event::Collection.new(batches)
    end

    # @deprecated
    # @api private
    def identifiers
      {
        cluster_id: @cluster_id,
        snapshot_id: @snapshot_id
      }
    end
    deprecated(:identifiers)

    private

    def extract_cluster_id(args, options)
      value = args[0] || options.delete(:cluster_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :cluster_id"
      else
        msg = "expected :cluster_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_snapshot_id(args, options)
      value = args[1] || options.delete(:snapshot_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :snapshot_id"
      else
        msg = "expected :snapshot_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
