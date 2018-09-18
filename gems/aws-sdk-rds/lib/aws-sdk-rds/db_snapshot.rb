# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # Provides the time when the snapshot was taken, in Universal
    # Coordinated Time (UTC).
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

    # Specifies the time when the snapshot was taken, in Universal
    # Coordinated Time (UTC).
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

    # The AWS Region that the DB snapshot was created in or copied from.
    # @return [String]
    def source_region
      data[:source_region]
    end

    # The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was
    # copied from. It only has value in case of cross-customer or
    # cross-region copy.
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

    # If `Encrypted` is true, the AWS KMS key identifier for the encrypted
    # DB snapshot.
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

    # True if mapping of AWS Identity and Access Management (IAM) accounts
    # to database accounts is enabled, and otherwise false.
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
      resp = @client.describe_db_snapshots(db_snapshot_identifier: @snapshot_id)
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
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
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
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
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
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
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
      Aws::Waiters::Waiter.new(options).wait({})
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
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBSnapshot]
    def create(options = {})
      options = options.merge(
        db_instance_identifier: @instance_id,
        db_snapshot_identifier: @snapshot_id
      )
      resp = @client.create_db_snapshot(options)
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
    #     source_region: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :target_db_snapshot_identifier
    #   The identifier for the copy of the snapshot.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank
    #
    #   * Must contain from 1 to 255 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-db-snapshot`
    # @option options [String] :kms_key_id
    #   The AWS KMS key ID for an encrypted DB snapshot. The KMS key ID is the
    #   Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias
    #   for the KMS encryption key.
    #
    #   If you copy an encrypted DB snapshot from your AWS account, you can
    #   specify a value for this parameter to encrypt the copy with a new KMS
    #   encryption key. If you don't specify a value for this parameter, then
    #   the copy of the DB snapshot is encrypted with the same KMS key as the
    #   source DB snapshot.
    #
    #   If you copy an encrypted DB snapshot that is shared from another AWS
    #   account, then you must specify a value for this parameter.
    #
    #   If you specify this parameter when you copy an unencrypted snapshot,
    #   the copy is encrypted.
    #
    #   If you copy an encrypted snapshot to a different AWS Region, then you
    #   must specify a KMS key for the destination AWS Region. KMS encryption
    #   keys are specific to the AWS Region that they are created in, and you
    #   can't use encryption keys from one AWS Region in another AWS Region.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [Boolean] :copy_tags
    #   True to copy all tags from the source DB snapshot to the target DB
    #   snapshot, and otherwise false. The default is false.
    # @option options [String] :pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBSnapshot` API action in the source AWS Region that contains the
    #   source DB snapshot to copy.
    #
    #   You must specify this parameter when you copy an encrypted DB snapshot
    #   from another AWS Region by using the Amazon RDS API. You can specify
    #   the `--source-region` option instead of this parameter when you copy
    #   an encrypted DB snapshot from another AWS Region by using the AWS CLI.
    #
    #   The presigned URL must be a valid request for the `CopyDBSnapshot` API
    #   action that can be executed in the source AWS Region that contains the
    #   encrypted DB snapshot to be copied. The presigned URL request must
    #   contain the following parameter values:
    #
    #   * `DestinationRegion` - The AWS Region that the encrypted DB snapshot
    #     is copied to. This AWS Region is the same one where the
    #     `CopyDBSnapshot` action is called that contains this presigned URL.
    #
    #     For example, if you copy an encrypted DB snapshot from the us-west-2
    #     AWS Region to the us-east-1 AWS Region, then you call the
    #     `CopyDBSnapshot` action in the us-east-1 AWS Region and provide a
    #     presigned URL that contains a call to the `CopyDBSnapshot` action in
    #     the us-west-2 AWS Region. For this example, the `DestinationRegion`
    #     in the presigned URL must be set to the us-east-1 AWS Region.
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB snapshot in the destination AWS Region.
    #     This is the same identifier for both the `CopyDBSnapshot` action
    #     that is called in the destination AWS Region, and the action
    #     contained in the presigned URL.
    #
    #   * `SourceDBSnapshotIdentifier` - The DB snapshot identifier for the
    #     encrypted snapshot to be copied. This identifier must be in the
    #     Amazon Resource Name (ARN) format for the source AWS Region. For
    #     example, if you are copying an encrypted DB snapshot from the
    #     us-west-2 AWS Region, then your `SourceDBSnapshotIdentifier` looks
    #     like the following example:
    #     `arn:aws:rds:us-west-2:123456789012:snapshot:mysql-instance1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (AWS Signature
    #   Version 4)][1] and [Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # @option options [String] :option_group_name
    #   The name of an option group to associate with the copy of the
    #   snapshot.
    #
    #   Specify this option if you are copying a snapshot from one AWS Region
    #   to another, and your DB instance uses a nondefault option group. If
    #   your source DB instance uses Transparent Data Encryption for Oracle or
    #   Microsoft SQL Server, you must specify this option when copying across
    #   AWS Regions. For more information, see [Option Group
    #   Considerations][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CopySnapshot.html#USER_CopySnapshot.Options
    # @option options [String] :destination_region
    # @option options [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    # @return [DBSnapshot]
    def copy(options = {})
      options = options.merge(source_db_snapshot_identifier: @snapshot_id)
      resp = @client.copy_db_snapshot(options)
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
      resp = @client.delete_db_snapshot(options)
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
    #     domain: "String",
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
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    # @option options [String] :db_instance_class
    #   The compute and memory capacity of the Amazon RDS DB instance, for
    #   example, `db.m4.large`. Not all DB instance classes are available in
    #   all AWS Regions, or for all database engines. For the full list of DB
    #   instance classes, and availability for your engine, see [DB Instance
    #   Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: The same DBInstanceClass as the original DB instance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   Default: The same port as the original DB instance
    #
    #   Constraints: Value must be `1150-65535`
    # @option options [String] :availability_zone
    #   The EC2 Availability Zone that the DB instance is created in.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    #
    #   Example: `us-east-1a`
    # @option options [String] :db_subnet_group_name
    #   The DB subnet group name to use for the new instance.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    # @option options [Boolean] :multi_az
    #   Specifies if the DB instance is a Multi-AZ deployment.
    #
    #   Constraint: You can't specify the AvailabilityZone parameter if the
    #   MultiAZ parameter is set to `true`.
    # @option options [Boolean] :publicly_accessible
    #   Specifies the accessibility options for the DB instance. A value of
    #   true specifies an Internet-facing instance with a publicly resolvable
    #   DNS name, which resolves to a public IP address. A value of false
    #   specifies an internal instance with a DNS name that resolves to a
    #   private IP address. For more information, see CreateDBInstance.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   Indicates that minor version upgrades are applied automatically to the
    #   DB instance during the maintenance window.
    # @option options [String] :license_model
    #   License model information for the restored DB instance.
    #
    #   Default: Same as source.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    # @option options [String] :db_name
    #   The database name for the restored DB instance.
    #
    #   <note markdown="1"> This parameter doesn't apply to the MySQL, PostgreSQL, or MariaDB
    #   engines.
    #
    #    </note>
    # @option options [String] :engine
    #   The database engine to use for the new instance.
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
    #   * `oracle-se2`
    #
    #   * `oracle-se1`
    #
    #   * `oracle-se`
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
    #   expressed in I/O operations per second. If this parameter is not
    #   specified, the IOPS value is taken from the backup. If this parameter
    #   is set to 0, the new instance is converted to a non-PIOPS instance.
    #   The conversion takes additional time, though your DB instance is
    #   available for connections before the conversion starts.
    #
    #   The provisioned IOPS value must follow the requirements for your
    #   database engine. For more information, see [Amazon RDS Provisioned
    #   IOPS Storage to Improve Performance][1] in the *Amazon RDS User
    #   Guide.*
    #
    #   Constraints: Must be an integer greater than 1000.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    # @option options [String] :option_group_name
    #   The name of the option group to be used for the restored DB instance.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance once it is associated with a DB
    #   instance
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise
    #   `standard`
    # @option options [String] :tde_credential_arn
    #   The ARN from the key store with which to associate the instance for
    #   TDE encryption.
    # @option options [String] :tde_credential_password
    #   The password for the given ARN from the key store in order to access
    #   the device.
    # @option options [String] :domain
    #   Specify the Active Directory Domain to restore the instance in.
    # @option options [Boolean] :copy_tags_to_snapshot
    #   True to copy all tags from the restored DB instance to snapshots of
    #   the DB instance, and otherwise false. The default is false.
    # @option options [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    # @option options [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   You can enable IAM database authentication for the following database
    #   engines
    #
    #   * For MySQL 5.6, minor version 5.6.34 or higher
    #
    #   * For MySQL 5.7, minor version 5.7.16 or higher
    #
    #   Default: `false`
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB instance is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    # @option options [Boolean] :use_default_processor_features
    #   A value that specifies that the DB instance class of the DB instance
    #   uses its default processor features.
    # @return [DBInstance]
    def restore(options = {})
      options = options.merge(db_snapshot_identifier: @snapshot_id)
      resp = @client.restore_db_instance_from_db_snapshot(options)
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
      resp = @client.add_source_identifier_to_subscription(options)
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
      resp = @client.remove_source_identifier_from_subscription(options)
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
        resp = @client.describe_db_snapshot_attributes(options)
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
    #   This parameter is not currently supported.
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          source_type: "db-snapshot",
          source_identifier: @snapshot_id
        )
        resp = @client.describe_events(options)
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
