# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS

  class DBSnapshot

    extend Aws::Deprecations

    # @overload def initialize(instance_id, snapshot_id, options = {})
    #   @param [String] instance_id
    #   @param [String] snapshot_id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :instance_id
    #   @option options [required, String] :snapshot_id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @instance_id = extract_instance_id(args, options)
      @snapshot_id = extract_snapshot_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def instance_id
      @instance_id
    end
    alias :db_instance_identifier :instance_id

    # @return [String]
    def snapshot_id
      @snapshot_id
    end
    alias :db_snapshot_identifier :snapshot_id

    # Specifies when the snapshot was taken in Coordinated Universal Time
    # (UTC). Changes for the copy when the snapshot is copied.
    # @return [Time]
    def snapshot_create_time
      data[:snapshot_create_time]
    end

    # Specifies the name of the database engine.
    # @return [String]
    def engine
      data[:engine]
    end

    # Specifies the allocated storage size in gibibytes (GiB).
    # @return [Integer]
    def allocated_storage
      data[:allocated_storage]
    end

    # Specifies the status of this DB snapshot.
    # @return [String]
    def status
      data[:status]
    end

    # Specifies the port that the database engine was listening on at the
    # time of the snapshot.
    # @return [Integer]
    def port
      data[:port]
    end

    # Specifies the name of the Availability Zone the DB instance was
    # located in at the time of the DB snapshot.
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # Provides the VPC ID associated with the DB snapshot.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # Specifies the time in Coordinated Universal Time (UTC) when the DB
    # instance, from which the snapshot was taken, was created.
    # @return [Time]
    def instance_create_time
      data[:instance_create_time]
    end

    # Provides the master username for the DB snapshot.
    # @return [String]
    def master_username
      data[:master_username]
    end

    # Specifies the version of the database engine.
    # @return [String]
    def engine_version
      data[:engine_version]
    end

    # License model information for the restored DB instance.
    # @return [String]
    def license_model
      data[:license_model]
    end

    # Provides the type of the DB snapshot.
    # @return [String]
    def snapshot_type
      data[:snapshot_type]
    end

    # Specifies the Provisioned IOPS (I/O operations per second) value of
    # the DB instance at the time of the snapshot.
    # @return [Integer]
    def iops
      data[:iops]
    end

    # Provides the option group name for the DB snapshot.
    # @return [String]
    def option_group_name
      data[:option_group_name]
    end

    # The percentage of the estimated data that has been transferred.
    # @return [Integer]
    def percent_progress
      data[:percent_progress]
    end

    # The Amazon Web Services Region that the DB snapshot was created in or
    # copied from.
    # @return [String]
    def source_region
      data[:source_region]
    end

    # The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was
    # copied from. It only has a value in the case of a cross-account or
    # cross-Region copy.
    # @return [String]
    def source_db_snapshot_identifier
      data[:source_db_snapshot_identifier]
    end

    # Specifies the storage type associated with DB snapshot.
    # @return [String]
    def storage_type
      data[:storage_type]
    end

    # The ARN from the key store with which to associate the instance for
    # TDE encryption.
    # @return [String]
    def tde_credential_arn
      data[:tde_credential_arn]
    end

    # Specifies whether the DB snapshot is encrypted.
    # @return [Boolean]
    def encrypted
      data[:encrypted]
    end

    # If `Encrypted` is true, the Amazon Web Services KMS key identifier for
    # the encrypted DB snapshot.
    #
    # The Amazon Web Services KMS key identifier is the key ARN, key ID,
    # alias ARN, or alias name for the KMS key.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The Amazon Resource Name (ARN) for the DB snapshot.
    # @return [String]
    def db_snapshot_arn
      data[:db_snapshot_arn]
    end

    # The time zone of the DB snapshot. In most cases, the `Timezone`
    # element is empty. `Timezone` content appears only for snapshots taken
    # from Microsoft SQL Server DB instances that were created with a time
    # zone specified.
    # @return [String]
    def timezone
      data[:timezone]
    end

    # True if mapping of Amazon Web Services Identity and Access Management
    # (IAM) accounts to database accounts is enabled, and otherwise false.
    # @return [Boolean]
    def iam_database_authentication_enabled
      data[:iam_database_authentication_enabled]
    end

    # The number of CPU cores and the number of threads per core for the DB
    # instance class of the DB instance when the DB snapshot was created.
    # @return [Array<Types::ProcessorFeature>]
    def processor_features
      data[:processor_features]
    end

    # The identifier for the source DB instance, which can't be changed and
    # which is unique to an Amazon Web Services Region.
    # @return [String]
    def dbi_resource_id
      data[:dbi_resource_id]
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

    # Specifies the time of the CreateDBSnapshot operation in Coordinated
    # Universal Time (UTC). Doesn't change when the snapshot is copied.
    # @return [Time]
    def original_snapshot_create_time
      data[:original_snapshot_create_time]
    end

    # The timestamp of the most recent transaction applied to the database
    # that you're backing up. Thus, if you restore a snapshot,
    # SnapshotDatabaseTime is the most recent transaction in the restored DB
    # instance. In contrast, originalSnapshotCreateTime specifies the system
    # time that the snapshot completed.
    #
    # If you back up a read replica, you can determine the replica lag by
    # comparing SnapshotDatabaseTime with originalSnapshotCreateTime. For
    # example, if originalSnapshotCreateTime is two hours later than
    # SnapshotDatabaseTime, then the replica lag is two hours.
    # @return [Time]
    def snapshot_database_time
      data[:snapshot_database_time]
    end

    # Specifies where manual snapshots are stored: Amazon Web Services
    # Outposts or the Amazon Web Services Region.
    # @return [String]
    def snapshot_target
      data[:snapshot_target]
    end

    # Specifies the storage throughput for the DB snapshot.
    # @return [Integer]
    def storage_throughput
      data[:storage_throughput]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBSnapshot}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_snapshot.reload.data
    #
    # @return [self]
    def load
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.describe_db_snapshots(db_snapshot_identifier: @snapshot_id)
      end
      @data = resp.db_snapshots[0]
      self
    end
    alias :reload :load

    # @return [Types::DBSnapshot]
    #   Returns the data for this {DBSnapshot}. Calls
    #   {Client#describe_db_snapshots} if {#data_loaded?} is `false`.
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
    #   dbsnapshot = db_snapshot.create({
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBSnapshot]
    def create(options = {})
      options = options.merge(
        db_instance_identifier: @instance_id,
        db_snapshot_identifier: @snapshot_id
      )
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.create_db_snapshot(options)
      end
      DBSnapshot.new(
        instance_id: resp.data.db_snapshot.db_instance_identifier,
        snapshot_id: resp.data.db_snapshot.db_snapshot_identifier,
        data: resp.data.db_snapshot,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbsnapshot = db_snapshot.copy({
    #     target_db_snapshot_identifier: "String", # required
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     copy_tags: false,
    #     pre_signed_url: "String",
    #     option_group_name: "String",
    #     target_custom_availability_zone: "String",
    #     copy_option_group: false,
    #     source_region: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :target_db_snapshot_identifier
    #   The identifier for the copy of the snapshot.
    #
    #   Constraints:
    #
    #   * Can't be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-db-snapshot`
    # @option options [String] :kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   snapshot. The Amazon Web Services KMS key identifier is the key ARN,
    #   key ID, alias ARN, or alias name for the KMS key.
    #
    #   If you copy an encrypted DB snapshot from your Amazon Web Services
    #   account, you can specify a value for this parameter to encrypt the
    #   copy with a new KMS key. If you don't specify a value for this
    #   parameter, then the copy of the DB snapshot is encrypted with the same
    #   Amazon Web Services KMS key as the source DB snapshot.
    #
    #   If you copy an encrypted DB snapshot that is shared from another
    #   Amazon Web Services account, then you must specify a value for this
    #   parameter.
    #
    #   If you specify this parameter when you copy an unencrypted snapshot,
    #   the copy is encrypted.
    #
    #   If you copy an encrypted snapshot to a different Amazon Web Services
    #   Region, then you must specify an Amazon Web Services KMS key
    #   identifier for the destination Amazon Web Services Region. KMS keys
    #   are specific to the Amazon Web Services Region that they are created
    #   in, and you can't use KMS keys from one Amazon Web Services Region in
    #   another Amazon Web Services Region.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [Boolean] :copy_tags
    #   A value that indicates whether to copy all tags from the source DB
    #   snapshot to the target DB snapshot. By default, tags aren't copied.
    # @option options [String] :pre_signed_url
    #   When you are copying a snapshot from one Amazon Web Services GovCloud
    #   (US) Region to another, the URL that contains a Signature Version 4
    #   signed request for the `CopyDBSnapshot` API operation in the source
    #   Amazon Web Services Region that contains the source DB snapshot to
    #   copy.
    #
    #   This setting applies only to Amazon Web Services GovCloud (US)
    #   Regions. It's ignored in other Amazon Web Services Regions.
    #
    #   You must specify this parameter when you copy an encrypted DB snapshot
    #   from another Amazon Web Services Region by using the Amazon RDS API.
    #   Don't specify `PreSignedUrl` when you are copying an encrypted DB
    #   snapshot in the same Amazon Web Services Region.
    #
    #   The presigned URL must be a valid request for the
    #   `CopyDBClusterSnapshot` API operation that can run in the source
    #   Amazon Web Services Region that contains the encrypted DB cluster
    #   snapshot to copy. The presigned URL request must contain the following
    #   parameter values:
    #
    #   * `DestinationRegion` - The Amazon Web Services Region that the
    #     encrypted DB snapshot is copied to. This Amazon Web Services Region
    #     is the same one where the `CopyDBSnapshot` operation is called that
    #     contains this presigned URL.
    #
    #     For example, if you copy an encrypted DB snapshot from the us-west-2
    #     Amazon Web Services Region to the us-east-1 Amazon Web Services
    #     Region, then you call the `CopyDBSnapshot` operation in the
    #     us-east-1 Amazon Web Services Region and provide a presigned URL
    #     that contains a call to the `CopyDBSnapshot` operation in the
    #     us-west-2 Amazon Web Services Region. For this example, the
    #     `DestinationRegion` in the presigned URL must be set to the
    #     us-east-1 Amazon Web Services Region.
    #
    #   * `KmsKeyId` - The KMS key identifier for the KMS key to use to
    #     encrypt the copy of the DB snapshot in the destination Amazon Web
    #     Services Region. This is the same identifier for both the
    #     `CopyDBSnapshot` operation that is called in the destination Amazon
    #     Web Services Region, and the operation contained in the presigned
    #     URL.
    #
    #   * `SourceDBSnapshotIdentifier` - The DB snapshot identifier for the
    #     encrypted snapshot to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source Amazon Web Services
    #     Region. For example, if you are copying an encrypted DB snapshot
    #     from the us-west-2 Amazon Web Services Region, then your
    #     `SourceDBSnapshotIdentifier` looks like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (Amazon Web Services
    #   Signature Version 4)][1] and [Signature Version 4 Signing Process][2].
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
    # @option options [String] :option_group_name
    #   The name of an option group to associate with the copy of the
    #   snapshot.
    #
    #   Specify this option if you are copying a snapshot from one Amazon Web
    #   Services Region to another, and your DB instance uses a nondefault
    #   option group. If your source DB instance uses Transparent Data
    #   Encryption for Oracle or Microsoft SQL Server, you must specify this
    #   option when copying across Amazon Web Services Regions. For more
    #   information, see [Option group considerations][1] in the *Amazon RDS
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options
    # @option options [String] :target_custom_availability_zone
    #   The external custom Availability Zone (CAZ) identifier for the target
    #   CAZ.
    #
    #   Example: `rds-caz-aiqhTgQv`.
    # @option options [Boolean] :copy_option_group
    #   A value that indicates whether to copy the DB option group associated
    #   with the source DB snapshot to the target Amazon Web Services account
    #   and associate with the target DB snapshot. The associated option group
    #   can be copied only with cross-account snapshot copy calls.
    # @option options [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    # @return [DBSnapshot]
    def copy(options = {})
      options = options.merge(source_db_snapshot_identifier: @snapshot_id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.copy_db_snapshot(options)
      end
      DBSnapshot.new(
        instance_id: resp.data.db_snapshot.db_instance_identifier,
        snapshot_id: resp.data.db_snapshot.db_snapshot_identifier,
        data: resp.data.db_snapshot,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_snapshot.delete()
    # @param [Hash] options ({})
    # @return [DBSnapshot]
    def delete(options = {})
      options = options.merge(db_snapshot_identifier: @snapshot_id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.delete_db_snapshot(options)
      end
      DBSnapshot.new(
        instance_id: resp.data.db_snapshot.db_instance_identifier,
        snapshot_id: resp.data.db_snapshot.db_snapshot_identifier,
        data: resp.data.db_snapshot,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_snapshot.restore({
    #     db_instance_identifier: "String", # required
    #     db_instance_class: "String",
    #     port: 1,
    #     availability_zone: "String",
    #     db_subnet_group_name: "String",
    #     multi_az: false,
    #     publicly_accessible: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     db_name: "String",
    #     engine: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     vpc_security_group_ids: ["String"],
    #     domain: "String",
    #     domain_fqdn: "String",
    #     domain_ou: "String",
    #     domain_auth_secret_arn: "String",
    #     domain_dns_ips: ["String"],
    #     copy_tags_to_snapshot: false,
    #     domain_iam_role_name: "String",
    #     enable_iam_database_authentication: false,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
    #     db_parameter_group_name: "String",
    #     deletion_protection: false,
    #     enable_customer_owned_ip: false,
    #     custom_iam_instance_profile: "String",
    #     backup_target: "String",
    #     network_type: "String",
    #     storage_throughput: 1,
    #     db_cluster_snapshot_identifier: "String",
    #     allocated_storage: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_instance_identifier
    #   Name of the DB instance to create from the DB snapshot. This parameter
    #   isn't case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 numbers, letters, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    # @option options [String] :db_instance_class
    #   The compute and memory capacity of the Amazon RDS DB instance, for
    #   example db.m4.large. Not all DB instance classes are available in all
    #   Amazon Web Services Regions, or for all database engines. For the full
    #   list of DB instance classes, and availability for your engine, see [DB
    #   Instance Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: The same DBInstanceClass as the original DB instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   Default: The same port as the original DB instance
    #
    #   Constraints: Value must be `1150-65535`
    # @option options [String] :availability_zone
    #   The Availability Zone (AZ) where the DB instance will be created.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the `AvailabilityZone` parameter if the
    #   DB instance is a Multi-AZ deployment.
    #
    #   Example: `us-east-1a`
    # @option options [String] :db_subnet_group_name
    #   The DB subnet group name to use for the new instance.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mydbsubnetgroup`
    # @option options [Boolean] :multi_az
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraint: You can't specify the `AvailabilityZone` parameter if the
    #   DB instance is a Multi-AZ deployment.
    # @option options [Boolean] :publicly_accessible
    #   A value that indicates whether the DB instance is publicly accessible.
    #
    #   When the DB instance is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   instance's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB instance's VPC. Access to the DB
    #   instance is ultimately controlled by the security group it uses. That
    #   public access is not permitted if the security group assigned to the
    #   DB instance doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal DB
    #   instance with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBInstance.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   A value that indicates whether minor version upgrades are applied
    #   automatically to the DB instance during the maintenance window.
    #
    #   If you restore an RDS Custom DB instance, you must disable this
    #   parameter.
    # @option options [String] :license_model
    #   License model information for the restored DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: Same as source.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    # @option options [String] :db_name
    #   The database name for the restored DB instance.
    #
    #   This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB
    #   engines. It also doesn't apply to RDS Custom DB instances.
    # @option options [String] :engine
    #   The database engine to use for the new instance.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source. For
    #   example, you can restore a MariaDB 10.1 DB instance from a MySQL 5.6
    #   snapshot.
    #
    #   Valid Values:
    #
    #   * `mariadb`
    #
    #   * `mysql`
    #
    #   * `oracle-ee`
    #
    #   * `oracle-ee-cdb`
    #
    #   * `oracle-se2`
    #
    #   * `oracle-se2-cdb`
    #
    #   * `postgres`
    #
    #   * `sqlserver-ee`
    #
    #   * `sqlserver-se`
    #
    #   * `sqlserver-ex`
    #
    #   * `sqlserver-web`
    # @option options [Integer] :iops
    #   Specifies the amount of provisioned IOPS for the DB instance,
    #   expressed in I/O operations per second. If this parameter isn't
    #   specified, the IOPS value is taken from the backup. If this parameter
    #   is set to 0, the new instance is converted to a non-PIOPS instance.
    #   The conversion takes additional time, though your DB instance is
    #   available for connections before the conversion starts.
    #
    #   The provisioned IOPS value must follow the requirements for your
    #   database engine. For more information, see [Amazon RDS Provisioned
    #   IOPS storage][1] in the *Amazon RDS User Guide.*
    #
    #   Constraints: Must be an integer greater than 1000.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    # @option options [String] :option_group_name
    #   The name of the option group to be used for the restored DB instance.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance after it is associated with a DB
    #   instance.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `gp2 | gp3 | io1 | standard`
    #
    #   If you specify `io1` or `gp3`, you must also include a value for the
    #   `Iops` parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
    # @option options [String] :tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of EC2 VPC security groups to associate with this DB instance.
    #
    #   Default: The default EC2 VPC security group for the DB subnet group's
    #   VPC.
    # @option options [String] :domain
    #   Specify the Active Directory directory ID to restore the DB instance
    #   in. The domain/ must be created prior to this operation. Currently,
    #   you can create only MySQL, Microsoft SQL Server, Oracle, and
    #   PostgreSQL DB instances in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the *Amazon
    #   RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    # @option options [String] :domain_fqdn
    #   The fully qualified domain name (FQDN) of an Active Directory domain.
    #
    #   Constraints:
    #
    #   * Can't be longer than 64 characters.
    #
    #   ^
    #
    #   Example: `mymanagedADtest.mymanagedAD.mydomain`
    # @option options [String] :domain_ou
    #   The Active Directory organizational unit for your DB instance to join.
    #
    #   Constraints:
    #
    #   * Must be in the distinguished name format.
    #
    #   * Can't be longer than 64 characters.
    #
    #   Example:
    #   `OU=mymanagedADtestOU,DC=mymanagedADtest,DC=mymanagedAD,DC=mydomain`
    # @option options [String] :domain_auth_secret_arn
    #   The ARN for the Secrets Manager secret with the credentials for the
    #   user joining the domain.
    #
    #   Constraints:
    #
    #   Example:
    #   `arn:aws:secretsmanager:region:account-number:secret:myselfmanagedADtestsecret-123456`
    # @option options [Array<String>] :domain_dns_ips
    #   The IPv4 DNS IP addresses of your primary and secondary Active
    #   Directory domain controllers.
    #
    #   Constraints:
    #
    #   * Two IP addresses must be provided. If there isn't a secondary
    #     domain controller, use the IP address of the primary domain
    #     controller for both entries in the list.
    #
    #   ^
    #
    #   Example: `123.124.125.126,234.235.236.237`
    # @option options [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   instance to snapshots of the DB instance.
    #
    #   In most cases, tags aren't copied by default. However, when you
    #   restore a DB instance from a DB snapshot, RDS checks whether you
    #   specify new tags. If yes, the new tags are added to the restored DB
    #   instance. If there are no new tags, RDS looks for the tags from the
    #   source DB instance for the DB snapshot, and then adds those tags to
    #   the restored DB instance.
    #
    #   For more information, see [ Copying tags to DB instance snapshots][1]
    #   in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html#USER_Tagging.CopyTags
    # @option options [String] :domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the Directory
    #   Service.
    #
    #   This setting doesn't apply to RDS Custom DB instances.
    # @option options [Boolean] :enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping is disabled.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Boolean] :use_default_processor_features
    #   A value that indicates whether the DB instance class of the DB
    #   instance uses its default processor features.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB instance.
    #
    #   If you don't specify a value for `DBParameterGroupName`, then RDS
    #   uses the default `DBParameterGroup` for the specified DB engine.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraints:
    #
    #   * If supplied, must match the name of an existing DBParameterGroup.
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    # @option options [Boolean] :deletion_protection
    #   A value that indicates whether the DB instance has deletion protection
    #   enabled. The database can't be deleted when deletion protection is
    #   enabled. By default, deletion protection isn't enabled. For more
    #   information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    # @option options [Boolean] :enable_customer_owned_ip
    #   A value that indicates whether to enable a customer-owned IP address
    #   (CoIP) for an RDS on Outposts DB instance.
    #
    #   A *CoIP* provides local or external connectivity to resources in your
    #   Outpost subnets through your on-premises network. For some use cases,
    #   a CoIP can provide lower latency for connections to the DB instance
    #   from outside of its virtual private cloud (VPC) on your local network.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   For more information about RDS on Outposts, see [Working with Amazon
    #   RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For more information about CoIPs, see [Customer-owned IP addresses][2]
    #   in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/routing.html#ip-addressing
    # @option options [String] :custom_iam_instance_profile
    #   The instance profile associated with the underlying Amazon EC2
    #   instance of an RDS Custom DB instance. The instance profile must meet
    #   the following requirements:
    #
    #   * The profile must exist in your account.
    #
    #   * The profile must have an IAM role that Amazon EC2 has permissions to
    #     assume.
    #
    #   * The instance profile name and the associated IAM role name must
    #     start with the prefix `AWSRDSCustom`.
    #
    #   For the list of permissions required for the IAM role, see [ Configure
    #   IAM and your VPC][1] in the *Amazon RDS User Guide*.
    #
    #   This setting is required for RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    # @option options [String] :backup_target
    #   Specifies where automated backups and manual snapshots are stored for
    #   the restored DB instance.
    #
    #   Possible values are `outposts` (Amazon Web Services Outposts) and
    #   `region` (Amazon Web Services Region). The default is `region`.
    #
    #   For more information, see [Working with Amazon RDS on Amazon Web
    #   Services Outposts][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    # @option options [String] :network_type
    #   The network type of the DB instance.
    #
    #   Valid values:
    #
    #   * `IPV4`
    #
    #   * `DUAL`
    #
    #   The network type is determined by the `DBSubnetGroup` specified for
    #   the DB instance. A `DBSubnetGroup` can support only the IPv4 protocol
    #   or the IPv4 and the IPv6 protocols (`DUAL`).
    #
    #   For more information, see [ Working with a DB instance in a VPC][1] in
    #   the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html
    # @option options [Integer] :storage_throughput
    #   Specifies the storage throughput value for the DB instance.
    #
    #   This setting doesn't apply to RDS Custom or Amazon Aurora.
    # @option options [String] :db_cluster_snapshot_identifier
    #   The identifier for the RDS for MySQL Multi-AZ DB cluster snapshot to
    #   restore from.
    #
    #   For more information on Multi-AZ DB clusters, see [ Multi-AZ DB
    #   cluster deployments][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints:
    #
    #   * Must match the identifier of an existing Multi-AZ DB cluster
    #     snapshot.
    #
    #   * Can't be specified when `DBSnapshotIdentifier` is specified.
    #
    #   * Must be specified when `DBSnapshotIdentifier` isn't specified.
    #
    #   * If you are restoring from a shared manual Multi-AZ DB cluster
    #     snapshot, the `DBClusterSnapshotIdentifier` must be the ARN of the
    #     shared snapshot.
    #
    #   * Can't be the identifier of an Aurora DB cluster snapshot.
    #
    #   * Can't be the identifier of an RDS for PostgreSQL Multi-AZ DB
    #     cluster snapshot.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts.html
    # @option options [Integer] :allocated_storage
    #   The amount of storage (in gibibytes) to allocate initially for the DB
    #   instance. Follow the allocation rules specified in CreateDBInstance.
    #
    #   <note markdown="1"> Be sure to allocate enough storage for your new DB instance so that
    #   the restore operation can succeed. You can also allocate additional
    #   storage for future growth.
    #
    #    </note>
    # @return [DBInstance]
    def restore(options = {})
      options = options.merge(db_snapshot_identifier: @snapshot_id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.restore_db_instance_from_db_snapshot(options)
      end
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_snapshot.subscribe_to({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to add a
    #   source identifier to.
    # @return [EventSubscription]
    def subscribe_to(options = {})
      options = options.merge(source_identifier: @snapshot_id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.add_source_identifier_to_subscription(options)
      end
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_snapshot.unsubscribe_from({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to remove
    #   a source identifier from.
    # @return [EventSubscription]
    def unsubscribe_from(options = {})
      options = options.merge(source_identifier: @snapshot_id)
      resp = Aws::Plugins::UserAgent.feature('resource') do
        @client.remove_source_identifier_from_subscription(options)
      end
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   db_snapshot.attributes()
    # @param [Hash] options ({})
    # @return [DBSnapshotAttribute::Collection]
    def attributes(options = {})
      batches = Enumerator.new do |y|
        batch = []
        options = options.merge(db_snapshot_identifier: @snapshot_id)
        resp = Aws::Plugins::UserAgent.feature('resource') do
          @client.describe_db_snapshot_attributes(options)
        end
        resp.data.db_snapshot_attributes_result.db_snapshot_attributes.each do |d|
          batch << DBSnapshotAttribute.new(
            snapshot_id: @snapshot_id,
            name: d.attribute_name,
            data: d,
            client: @client
          )
        end
        y.yield(batch)
      end
      DBSnapshotAttribute::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   events = db_snapshot.events({
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
          source_type: "db-snapshot",
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

    # @return [DBInstance]
    def instance
      DBInstance.new(
        id: @instance_id,
        client: @client
      )
    end

    # @return [OptionGroup, nil]
    def option_group
      if data[:db_snapshot][:option_group_name]
        OptionGroup.new(
          name: data[:db_snapshot][:option_group_name],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      {
        instance_id: @instance_id,
        snapshot_id: @snapshot_id
      }
    end
    deprecated(:identifiers)

    private

    def extract_instance_id(args, options)
      value = args[0] || options.delete(:instance_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :instance_id"
      else
        msg = "expected :instance_id to be a String, got #{value.class}"
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
