# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # Provides the list of EC2 Availability Zones that instances in the DB
    # cluster snapshot can be restored in.
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

    # Specifies the status of this DB cluster snapshot.
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

    # Provides the master username for the DB cluster snapshot.
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

    # If `StorageEncrypted` is true, the AWS KMS key identifier for the
    # encrypted DB cluster snapshot.
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

    # True if mapping of AWS Identity and Access Management (IAM) accounts
    # to database accounts is enabled, and otherwise false.
    # @return [Boolean]
    def iam_database_authentication_enabled
      data[:iam_database_authentication_enabled]
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
      resp = @client.describe_db_cluster_snapshots(db_cluster_snapshot_identifier: @snapshot_id)
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
      resp = @client.create_db_cluster_snapshot(options)
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
    #   source DB cluster snapshot. This parameter is not case-sensitive.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `my-cluster-snapshot2`
    # @option options [String] :kms_key_id
    #   The AWS AWS KMS key ID for an encrypted DB cluster snapshot. The KMS
    #   key ID is the Amazon Resource Name (ARN), KMS key identifier, or the
    #   KMS key alias for the KMS encryption key.
    #
    #   If you copy an encrypted DB cluster snapshot from your AWS account,
    #   you can specify a value for `KmsKeyId` to encrypt the copy with a new
    #   KMS encryption key. If you don't specify a value for `KmsKeyId`, then
    #   the copy of the DB cluster snapshot is encrypted with the same KMS key
    #   as the source DB cluster snapshot.
    #
    #   If you copy an encrypted DB cluster snapshot that is shared from
    #   another AWS account, then you must specify a value for `KmsKeyId`.
    #
    #   To copy an encrypted DB cluster snapshot to another AWS Region, you
    #   must set `KmsKeyId` to the KMS key ID you want to use to encrypt the
    #   copy of the DB cluster snapshot in the destination AWS Region. KMS
    #   encryption keys are specific to the AWS Region that they are created
    #   in, and you can't use encryption keys from one AWS Region in another
    #   AWS Region.
    #
    #   If you copy an unencrypted DB cluster snapshot and specify a value for
    #   the `KmsKeyId` parameter, an error is returned.
    # @option options [String] :pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CopyDBClusterSnapshot` API action in the AWS Region that contains the
    #   source DB cluster snapshot to copy. The `PreSignedUrl` parameter must
    #   be used when copying an encrypted DB cluster snapshot from another AWS
    #   Region.
    #
    #   The pre-signed URL must be a valid request for the
    #   `CopyDBSClusterSnapshot` API action that can be executed in the source
    #   AWS Region that contains the encrypted DB cluster snapshot to be
    #   copied. The pre-signed URL request must contain the following
    #   parameter values:
    #
    #   * `KmsKeyId` - The AWS KMS key identifier for the key to use to
    #     encrypt the copy of the DB cluster snapshot in the destination AWS
    #     Region. This is the same identifier for both the
    #     `CopyDBClusterSnapshot` action that is called in the destination AWS
    #     Region, and the action contained in the pre-signed URL.
    #
    #   * `DestinationRegion` - The name of the AWS Region that the DB cluster
    #     snapshot will be created in.
    #
    #   * `SourceDBClusterSnapshotIdentifier` - The DB cluster snapshot
    #     identifier for the encrypted DB cluster snapshot to be copied. This
    #     identifier must be in the Amazon Resource Name (ARN) format for the
    #     source AWS Region. For example, if you are copying an encrypted DB
    #     cluster snapshot from the us-west-2 AWS Region, then your
    #     `SourceDBClusterSnapshotIdentifier` looks like the following
    #     example:
    #     `arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see [
    #   Authenticating Requests: Using Query Parameters (AWS Signature Version
    #   4)][1] and [ Signature Version 4 Signing Process][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # @option options [Boolean] :copy_tags
    #   True to copy all tags from the source DB cluster snapshot to the
    #   target DB cluster snapshot, and otherwise false. The default is false.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [String] :destination_region
    # @option options [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    # @return [DBClusterSnapshot]
    def copy(options = {})
      options = options.merge(source_db_cluster_snapshot_identifier: @snapshot_id)
      resp = @client.copy_db_cluster_snapshot(options)
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
      resp = @client.delete_db_cluster_snapshot(options)
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
    #     },
    #   })
    # @param [Hash] options ({})
    # @option options [Array<String>] :availability_zones
    #   Provides the list of EC2 Availability Zones that instances in the
    #   restored DB cluster can be created in.
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
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    #   Example: `my-snapshot-id`
    # @option options [required, String] :engine
    #   The database engine to use for the new DB cluster.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
    # @option options [String] :engine_version
    #   The version of the database engine to use for the new DB cluster.
    # @option options [Integer] :port
    #   The port number on which the new DB cluster accepts connections.
    #
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB cluster.
    # @option options [String] :db_subnet_group_name
    #   The name of the DB subnet group to use for the new DB cluster.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetgroup`
    # @option options [String] :database_name
    #   The database name for the restored DB cluster.
    # @option options [String] :option_group_name
    #   The name of the option group to use for the restored DB cluster.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of VPC security groups that the new DB cluster will belong to.
    # @option options [Array<Types::Tag>] :tags
    #   The tags to be assigned to the restored DB cluster.
    # @option options [String] :kms_key_id
    #   The AWS KMS key identifier to use when restoring an encrypted DB
    #   cluster from a DB snapshot or DB cluster snapshot.
    #
    #   The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
    #   encryption key. If you are restoring a DB cluster with the same AWS
    #   account that owns the KMS encryption key used to encrypt the new DB
    #   cluster, then you can use the KMS key alias instead of the ARN for the
    #   KMS encryption key.
    #
    #   If you do not specify a value for the `KmsKeyId` parameter, then the
    #   following will occur:
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is
    #     encrypted, then the restored DB cluster is encrypted using the KMS
    #     key that was used to encrypt the DB snapshot or DB cluster snapshot.
    #
    #   * If the DB snapshot or DB cluster snapshot in `SnapshotIdentifier` is
    #     not encrypted, then the restored DB cluster is not encrypted.
    # @option options [Boolean] :enable_iam_database_authentication
    #   True to enable mapping of AWS Identity and Access Management (IAM)
    #   accounts to database accounts, and otherwise false.
    #
    #   Default: `false`
    # @option options [Integer] :backtrack_window
    #   The target backtrack window, in seconds. To disable backtracking, set
    #   this value to 0.
    #
    #   Default: 0
    #
    #   Constraints:
    #
    #   * If specified, this value must be set to a number from 0 to 259,200
    #     (72 hours).
    #
    #   ^
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the restored DB cluster is to export to
    #   CloudWatch Logs. The values in the list depend on the DB engine being
    #   used. For more information, see [Publishing Database Logs to Amazon
    #   CloudWatch Logs ][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [String] :engine_mode
    #   The DB engine mode of the DB cluster, either `provisioned`,
    #   `serverless`, or `parallelquery`.
    # @option options [Types::ScalingConfiguration] :scaling_configuration
    #   For DB clusters in `serverless` DB engine mode, the scaling properties
    #   of the DB cluster.
    # @return [DBCluster]
    def restore(options = {})
      options = options.merge(snapshot_identifier: @snapshot_id)
      resp = @client.restore_db_cluster_from_snapshot(options)
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
    #   This parameter is not currently supported.
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          source_type: "db-cluster-snapshot",
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
