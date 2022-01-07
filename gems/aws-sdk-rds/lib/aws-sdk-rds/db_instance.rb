# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS

  class DBInstance

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
      @waiter_block_warned = false
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :db_instance_identifier :id

    # Contains the name of the compute and memory capacity class of the DB
    # instance.
    # @return [String]
    def db_instance_class
      data[:db_instance_class]
    end

    # The name of the database engine to be used for this DB instance.
    # @return [String]
    def engine
      data[:engine]
    end

    # Specifies the current state of this database.
    #
    # For information about DB instance statuses, see [Viewing DB instance
    # status][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/accessing-monitoring.html#Overview.DBInstance.Status
    # @return [String]
    def db_instance_status
      data[:db_instance_status]
    end

    # The time when a stopped DB instance is restarted automatically.
    # @return [Time]
    def automatic_restart_time
      data[:automatic_restart_time]
    end

    # Contains the master username for the DB instance.
    # @return [String]
    def master_username
      data[:master_username]
    end

    # The meaning of this parameter differs according to the database engine
    # you use.
    #
    # **MySQL, MariaDB, SQL Server, PostgreSQL**
    #
    # Contains the name of the initial database of this instance that was
    # provided at create time, if one was specified when the DB instance was
    # created. This same name is returned for the life of the DB instance.
    #
    # Type: String
    #
    # **Oracle**
    #
    # Contains the Oracle System ID (SID) of the created DB instance. Not
    # shown when the returned parameters do not apply to an Oracle DB
    # instance.
    # @return [String]
    def db_name
      data[:db_name]
    end

    # Specifies the connection endpoint.
    #
    # <note markdown="1"> The endpoint might not be shown for instances whose status is
    # `creating`.
    #
    #  </note>
    # @return [Types::Endpoint]
    def endpoint
      data[:endpoint]
    end

    # Specifies the allocated storage size specified in gibibytes (GiB).
    # @return [Integer]
    def allocated_storage
      data[:allocated_storage]
    end

    # Provides the date and time the DB instance was created.
    # @return [Time]
    def instance_create_time
      data[:instance_create_time]
    end

    # Specifies the daily time range during which automated backups are
    # created if automated backups are enabled, as determined by the
    # `BackupRetentionPeriod`.
    # @return [String]
    def preferred_backup_window
      data[:preferred_backup_window]
    end

    # Specifies the number of days for which automatic DB snapshots are
    # retained.
    # @return [Integer]
    def backup_retention_period
      data[:backup_retention_period]
    end

    # A list of DB security group elements containing `DBSecurityGroup.Name`
    # and `DBSecurityGroup.Status` subelements.
    # @return [Array<Types::DBSecurityGroupMembership>]
    def db_security_groups
      data[:db_security_groups]
    end

    # Provides a list of VPC security group elements that the DB instance
    # belongs to.
    # @return [Array<Types::VpcSecurityGroupMembership>]
    def vpc_security_groups
      data[:vpc_security_groups]
    end

    # Provides the list of DB parameter groups applied to this DB instance.
    # @return [Array<Types::DBParameterGroupStatus>]
    def db_parameter_groups
      data[:db_parameter_groups]
    end

    # Specifies the name of the Availability Zone the DB instance is located
    # in.
    # @return [String]
    def availability_zone
      data[:availability_zone]
    end

    # Specifies information on the subnet group associated with the DB
    # instance, including the name, description, and subnets in the subnet
    # group.
    # @return [Types::DBSubnetGroup]
    def db_subnet_group
      data[:db_subnet_group]
    end

    # Specifies the weekly time range during which system maintenance can
    # occur, in Universal Coordinated Time (UTC).
    # @return [String]
    def preferred_maintenance_window
      data[:preferred_maintenance_window]
    end

    # A value that specifies that changes to the DB instance are pending.
    # This element is only included when changes are pending. Specific
    # changes are identified by subelements.
    # @return [Types::PendingModifiedValues]
    def pending_modified_values
      data[:pending_modified_values]
    end

    # Specifies the latest time to which a database can be restored with
    # point-in-time restore.
    # @return [Time]
    def latest_restorable_time
      data[:latest_restorable_time]
    end

    # Specifies if the DB instance is a Multi-AZ deployment. This setting
    # doesn't apply to RDS Custom.
    # @return [Boolean]
    def multi_az
      data[:multi_az]
    end

    # Indicates the database engine version.
    # @return [String]
    def engine_version
      data[:engine_version]
    end

    # A value that indicates that minor version patches are applied
    # automatically.
    # @return [Boolean]
    def auto_minor_version_upgrade
      data[:auto_minor_version_upgrade]
    end

    # Contains the identifier of the source DB instance if this DB instance
    # is a read replica.
    # @return [String]
    def read_replica_source_db_instance_identifier
      data[:read_replica_source_db_instance_identifier]
    end

    # Contains one or more identifiers of the read replicas associated with
    # this DB instance.
    # @return [Array<String>]
    def read_replica_db_instance_identifiers
      data[:read_replica_db_instance_identifiers]
    end

    # Contains one or more identifiers of Aurora DB clusters to which the
    # RDS DB instance is replicated as a read replica. For example, when you
    # create an Aurora read replica of an RDS for MySQL DB instance, the
    # Aurora MySQL DB cluster for the Aurora read replica is shown. This
    # output doesn't contain information about cross-Region Aurora read
    # replicas.
    #
    # <note markdown="1"> Currently, each RDS DB instance can have only one Aurora read replica.
    #
    #  </note>
    # @return [Array<String>]
    def read_replica_db_cluster_identifiers
      data[:read_replica_db_cluster_identifiers]
    end

    # The open mode of an Oracle read replica. The default is
    # `open-read-only`. For more information, see [Working with Oracle Read
    # Replicas for Amazon RDS][1] in the *Amazon RDS User Guide*.
    #
    # <note markdown="1"> This attribute is only supported in RDS for Oracle.
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html
    # @return [String]
    def replica_mode
      data[:replica_mode]
    end

    # License model information for this DB instance. This setting doesn't
    # apply to RDS Custom.
    # @return [String]
    def license_model
      data[:license_model]
    end

    # Specifies the Provisioned IOPS (I/O operations per second) value.
    # @return [Integer]
    def iops
      data[:iops]
    end

    # Provides the list of option group memberships for this DB instance.
    # @return [Array<Types::OptionGroupMembership>]
    def option_group_memberships
      data[:option_group_memberships]
    end

    # If present, specifies the name of the character set that this instance
    # is associated with.
    # @return [String]
    def character_set_name
      data[:character_set_name]
    end

    # The name of the NCHAR character set for the Oracle DB instance. This
    # character set specifies the Unicode encoding for data stored in table
    # columns of type NCHAR, NCLOB, or NVARCHAR2.
    # @return [String]
    def nchar_character_set_name
      data[:nchar_character_set_name]
    end

    # If present, specifies the name of the secondary Availability Zone for
    # a DB instance with multi-AZ support.
    # @return [String]
    def secondary_availability_zone
      data[:secondary_availability_zone]
    end

    # Specifies the accessibility options for the DB instance.
    #
    # When the DB cluster is publicly accessible, its Domain Name System
    # (DNS) endpoint resolves to the private IP address from within the DB
    # cluster's virtual private cloud (VPC). It resolves to the public IP
    # address from outside of the DB cluster's VPC. Access to the DB
    # cluster is ultimately controlled by the security group it uses. That
    # public access isn't permitted if the security group assigned to the
    # DB cluster doesn't permit it.
    #
    # When the DB instance isn't publicly accessible, it is an internal DB
    # instance with a DNS name that resolves to a private IP address.
    #
    # For more information, see CreateDBInstance.
    # @return [Boolean]
    def publicly_accessible
      data[:publicly_accessible]
    end

    # The status of a read replica. If the instance isn't a read replica,
    # this is blank.
    # @return [Array<Types::DBInstanceStatusInfo>]
    def status_infos
      data[:status_infos]
    end

    # Specifies the storage type associated with DB instance.
    # @return [String]
    def storage_type
      data[:storage_type]
    end

    # The ARN from the key store with which the instance is associated for
    # TDE encryption.
    # @return [String]
    def tde_credential_arn
      data[:tde_credential_arn]
    end

    # Specifies the port that the DB instance listens on. If the DB instance
    # is part of a DB cluster, this can be a different port than the DB
    # cluster port.
    # @return [Integer]
    def db_instance_port
      data[:db_instance_port]
    end

    # If the DB instance is a member of a DB cluster, contains the name of
    # the DB cluster that the DB instance is a member of.
    # @return [String]
    def db_cluster_identifier
      data[:db_cluster_identifier]
    end

    # Specifies whether the DB instance is encrypted.
    # @return [Boolean]
    def storage_encrypted
      data[:storage_encrypted]
    end

    # If `StorageEncrypted` is true, the Amazon Web Services KMS key
    # identifier for the encrypted DB instance.
    #
    # The Amazon Web Services KMS key identifier is the key ARN, key ID,
    # alias ARN, or alias name for the KMS key.
    # @return [String]
    def kms_key_id
      data[:kms_key_id]
    end

    # The Amazon Web Services Region-unique, immutable identifier for the DB
    # instance. This identifier is found in Amazon Web Services CloudTrail
    # log entries whenever the Amazon Web Services KMS key for the DB
    # instance is accessed.
    # @return [String]
    def dbi_resource_id
      data[:dbi_resource_id]
    end

    # The identifier of the CA certificate for this DB instance.
    # @return [String]
    def ca_certificate_identifier
      data[:ca_certificate_identifier]
    end

    # The Active Directory Domain membership records associated with the DB
    # instance.
    # @return [Array<Types::DomainMembership>]
    def domain_memberships
      data[:domain_memberships]
    end

    # Specifies whether tags are copied from the DB instance to snapshots of
    # the DB instance.
    #
    # **Amazon Aurora**
    #
    # Not applicable. Copying tags to snapshots is managed by the DB
    # cluster. Setting this value for an Aurora DB instance has no effect on
    # the DB cluster setting. For more information, see `DBCluster`.
    # @return [Boolean]
    def copy_tags_to_snapshot
      data[:copy_tags_to_snapshot]
    end

    # The interval, in seconds, between points when Enhanced Monitoring
    # metrics are collected for the DB instance.
    # @return [Integer]
    def monitoring_interval
      data[:monitoring_interval]
    end

    # The Amazon Resource Name (ARN) of the Amazon CloudWatch Logs log
    # stream that receives the Enhanced Monitoring metrics data for the DB
    # instance.
    # @return [String]
    def enhanced_monitoring_resource_arn
      data[:enhanced_monitoring_resource_arn]
    end

    # The ARN for the IAM role that permits RDS to send Enhanced Monitoring
    # metrics to Amazon CloudWatch Logs.
    # @return [String]
    def monitoring_role_arn
      data[:monitoring_role_arn]
    end

    # A value that specifies the order in which an Aurora Replica is
    # promoted to the primary instance after a failure of the existing
    # primary instance. For more information, see [ Fault Tolerance for an
    # Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    # @return [Integer]
    def promotion_tier
      data[:promotion_tier]
    end

    # The Amazon Resource Name (ARN) for the DB instance.
    # @return [String]
    def db_instance_arn
      data[:db_instance_arn]
    end

    # The time zone of the DB instance. In most cases, the `Timezone`
    # element is empty. `Timezone` content appears only for Microsoft SQL
    # Server DB instances that were created with a time zone specified.
    # @return [String]
    def timezone
      data[:timezone]
    end

    # True if mapping of Amazon Web Services Identity and Access Management
    # (IAM) accounts to database accounts is enabled, and otherwise false.
    #
    # IAM database authentication can be enabled for the following database
    # engines
    #
    # * For MySQL 5.6, minor version 5.6.34 or higher
    #
    # * For MySQL 5.7, minor version 5.7.16 or higher
    #
    # * Aurora 5.6 or higher. To enable IAM database authentication for
    #   Aurora, see DBCluster Type.
    # @return [Boolean]
    def iam_database_authentication_enabled
      data[:iam_database_authentication_enabled]
    end

    # True if Performance Insights is enabled for the DB instance, and
    # otherwise false.
    # @return [Boolean]
    def performance_insights_enabled
      data[:performance_insights_enabled]
    end

    # The Amazon Web Services KMS key identifier for encryption of
    # Performance Insights data.
    #
    # The Amazon Web Services KMS key identifier is the key ARN, key ID,
    # alias ARN, or alias name for the KMS key.
    # @return [String]
    def performance_insights_kms_key_id
      data[:performance_insights_kms_key_id]
    end

    # The amount of time, in days, to retain Performance Insights data.
    # Valid values are 7 or 731 (2 years).
    # @return [Integer]
    def performance_insights_retention_period
      data[:performance_insights_retention_period]
    end

    # A list of log types that this DB instance is configured to export to
    # CloudWatch Logs.
    #
    # Log types vary by DB engine. For information about the log types for
    # each DB engine, see [Amazon RDS Database Log Files][1] in the *Amazon
    # RDS User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html
    # @return [Array<String>]
    def enabled_cloudwatch_logs_exports
      data[:enabled_cloudwatch_logs_exports]
    end

    # The number of CPU cores and the number of threads per core for the DB
    # instance class of the DB instance.
    # @return [Array<Types::ProcessorFeature>]
    def processor_features
      data[:processor_features]
    end

    # Indicates if the DB instance has deletion protection enabled. The
    # database can't be deleted when deletion protection is enabled. For
    # more information, see [ Deleting a DB Instance][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    # @return [Boolean]
    def deletion_protection
      data[:deletion_protection]
    end

    # The Amazon Web Services Identity and Access Management (IAM) roles
    # associated with the DB instance.
    # @return [Array<Types::DBInstanceRole>]
    def associated_roles
      data[:associated_roles]
    end

    # Specifies the listener connection endpoint for SQL Server Always On.
    # @return [Types::Endpoint]
    def listener_endpoint
      data[:listener_endpoint]
    end

    # The upper limit in gibibytes (GiB) to which Amazon RDS can
    # automatically scale the storage of the DB instance.
    # @return [Integer]
    def max_allocated_storage
      data[:max_allocated_storage]
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

    # The list of replicated automated backups associated with the DB
    # instance.
    # @return [Array<Types::DBInstanceAutomatedBackupsReplication>]
    def db_instance_automated_backups_replications
      data[:db_instance_automated_backups_replications]
    end

    # Specifies whether a customer-owned IP address (CoIP) is enabled for an
    # RDS on Outposts DB instance.
    #
    # A <i>CoIP </i>provides local or external connectivity to resources in
    # your Outpost subnets through your on-premises network. For some use
    # cases, a CoIP can provide lower latency for connections to the DB
    # instance from outside of its virtual private cloud (VPC) on your local
    # network.
    #
    # For more information about RDS on Outposts, see [Working with Amazon
    # RDS on Amazon Web Services Outposts][1] in the *Amazon RDS User
    # Guide*.
    #
    # For more information about CoIPs, see [Customer-owned IP addresses][2]
    # in the *Amazon Web Services Outposts User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-on-outposts.html
    # [2]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing
    # @return [Boolean]
    def customer_owned_ip_enabled
      data[:customer_owned_ip_enabled]
    end

    # The Amazon Resource Name (ARN) of the recovery point in Amazon Web
    # Services Backup.
    # @return [String]
    def aws_backup_recovery_point_arn
      data[:aws_backup_recovery_point_arn]
    end

    # The status of the database activity stream.
    # @return [String]
    def activity_stream_status
      data[:activity_stream_status]
    end

    # The Amazon Web Services KMS key identifier used for encrypting
    # messages in the database activity stream. The Amazon Web Services KMS
    # key identifier is the key ARN, key ID, alias ARN, or alias name for
    # the KMS key.
    # @return [String]
    def activity_stream_kms_key_id
      data[:activity_stream_kms_key_id]
    end

    # The name of the Amazon Kinesis data stream used for the database
    # activity stream.
    # @return [String]
    def activity_stream_kinesis_stream_name
      data[:activity_stream_kinesis_stream_name]
    end

    # The mode of the database activity stream. Database events such as a
    # change or access generate an activity stream event. RDS for Oracle
    # always handles these events asynchronously.
    # @return [String]
    def activity_stream_mode
      data[:activity_stream_mode]
    end

    # Indicates whether engine-native audit fields are included in the
    # database activity stream.
    # @return [Boolean]
    def activity_stream_engine_native_audit_fields_included
      data[:activity_stream_engine_native_audit_fields_included]
    end

    # The automation mode of the RDS Custom DB instance: `full` or `all
    # paused`. If `full`, the DB instance automates monitoring and instance
    # recovery. If `all paused`, the instance pauses automation for the
    # duration set by `--resume-full-automation-mode-minutes`.
    # @return [String]
    def automation_mode
      data[:automation_mode]
    end

    # The number of minutes to pause the automation. When the time period
    # ends, RDS Custom resumes full automation. The minimum value is 60
    # (default). The maximum value is 1,440.
    # @return [Time]
    def resume_full_automation_mode_time
      data[:resume_full_automation_mode_time]
    end

    # The instance profile associated with the underlying Amazon EC2
    # instance of an RDS Custom DB instance. The instance profile must meet
    # the following requirements:
    #
    # * The profile must exist in your account.
    #
    # * The profile must have an IAM role that Amazon EC2 has permissions to
    #   assume.
    #
    # * The instance profile name and the associated IAM role name must
    #   start with the prefix `AWSRDSCustom`.
    #
    # For the list of permissions required for the IAM role, see [ Configure
    # IAM and your VPC][1] in the *Amazon Relational Database Service User
    # Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    # @return [String]
    def custom_iam_instance_profile
      data[:custom_iam_instance_profile]
    end

    # Specifies where automated backups and manual snapshots are stored:
    # Amazon Web Services Outposts or the Amazon Web Services Region.
    # @return [String]
    def backup_target
      data[:backup_target]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBInstance}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_instance.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_db_instances(db_instance_identifier: @id)
      @data = resp.db_instances[0]
      self
    end
    alias :reload :load

    # @return [Types::DBInstance]
    #   Returns the data for this {DBInstance}. Calls
    #   {Client#describe_db_instances} if {#data_loaded?} is `false`.
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
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.create({
    #     db_name: "String",
    #     allocated_storage: 1,
    #     db_instance_class: "String", # required
    #     engine: "String", # required
    #     master_username: "String",
    #     master_user_password: "String",
    #     db_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     availability_zone: "String",
    #     db_subnet_group_name: "String",
    #     preferred_maintenance_window: "String",
    #     db_parameter_group_name: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     port: 1,
    #     multi_az: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     character_set_name: "String",
    #     nchar_character_set_name: "String",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     db_cluster_identifier: "String",
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     storage_encrypted: false,
    #     kms_key_id: "String",
    #     domain: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     timezone: "String",
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     deletion_protection: false,
    #     max_allocated_storage: 1,
    #     enable_customer_owned_ip: false,
    #     custom_iam_instance_profile: "String",
    #     backup_target: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_name
    #   The meaning of this parameter differs according to the database engine
    #   you use.
    #
    #   **MySQL**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter isn't specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Must begin with a letter. Subsequent characters can be letters,
    #     underscores, or digits (0-9).
    #
    #   * Can't be a word reserved by the specified database engine
    #
    #   **MariaDB**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter isn't specified, no database is created in the DB
    #   instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 letters or numbers.
    #
    #   * Must begin with a letter. Subsequent characters can be letters,
    #     underscores, or digits (0-9).
    #
    #   * Can't be a word reserved by the specified database engine
    #
    #   **PostgreSQL**
    #
    #   The name of the database to create when the DB instance is created. If
    #   this parameter isn't specified, a database named `postgres` is
    #   created in the DB instance.
    #
    #   Constraints:
    #
    #   * Must contain 1 to 63 letters, numbers, or underscores.
    #
    #   * Must begin with a letter. Subsequent characters can be letters,
    #     underscores, or digits (0-9).
    #
    #   * Can't be a word reserved by the specified database engine
    #
    #   **Oracle**
    #
    #   The Oracle System ID (SID) of the created DB instance. If you specify
    #   `null`, the default value `ORCL` is used. You can't specify the
    #   string NULL, or any other reserved word, for `DBName`.
    #
    #   Default: `ORCL`
    #
    #   Constraints:
    #
    #   * Can't be longer than 8 characters
    #
    #   ^
    #
    #   **Amazon RDS Custom for Oracle**
    #
    #   The Oracle System ID (SID) of the created RDS Custom DB instance. If
    #   you don't specify a value, the default value is `ORCL`.
    #
    #   Default: `ORCL`
    #
    #   Constraints:
    #
    #   * It must contain 1 to 8 alphanumeric characters.
    #
    #   * It must contain a letter.
    #
    #   * It can't be a word reserved by the database engine.
    #
    #   **Amazon RDS Custom for SQL Server**
    #
    #   Not applicable. Must be null.
    #
    #   **SQL Server**
    #
    #   Not applicable. Must be null.
    #
    #   **Amazon Aurora MySQL**
    #
    #   The name of the database to create when the primary DB instance of the
    #   Aurora MySQL DB cluster is created. If this parameter isn't specified
    #   for an Aurora MySQL DB cluster, no database is created in the DB
    #   cluster.
    #
    #   Constraints:
    #
    #   * It must contain 1 to 64 alphanumeric characters.
    #
    #   * It can't be a word reserved by the database engine.
    #
    #   **Amazon Aurora PostgreSQL**
    #
    #   The name of the database to create when the primary DB instance of the
    #   Aurora PostgreSQL DB cluster is created. If this parameter isn't
    #   specified for an Aurora PostgreSQL DB cluster, a database named
    #   `postgres` is created in the DB cluster.
    #
    #   Constraints:
    #
    #   * It must contain 1 to 63 alphanumeric characters.
    #
    #   * It must begin with a letter or an underscore. Subsequent characters
    #     can be letters, underscores, or digits (0 to 9).
    #
    #   * It can't be a word reserved by the database engine.
    # @option options [Integer] :allocated_storage
    #   The amount of storage in gibibytes (GiB) to allocate for the DB
    #   instance.
    #
    #   Type: Integer
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Aurora cluster volumes automatically grow as the
    #   amount of data in your database increases, though you are only charged
    #   for the space that you use in an Aurora cluster volume.
    #
    #   **Amazon RDS Custom**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 40 to
    #     65536 for RDS Custom for Oracle, 16384 for RDS Custom for SQL
    #     Server.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 40 to 65536
    #     for RDS Custom for Oracle, 16384 for RDS Custom for SQL Server.
    #
    #   **MySQL**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     65536.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     65536.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **MariaDB**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     65536.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     65536.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **PostgreSQL**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     65536.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     65536.
    #
    #   * Magnetic storage (standard): Must be an integer from 5 to 3072.
    #
    #   **Oracle**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2): Must be an integer from 20 to
    #     65536.
    #
    #   * Provisioned IOPS storage (io1): Must be an integer from 100 to
    #     65536.
    #
    #   * Magnetic storage (standard): Must be an integer from 10 to 3072.
    #
    #   **SQL Server**
    #
    #   Constraints to the amount of storage for each storage type are the
    #   following:
    #
    #   * General Purpose (SSD) storage (gp2):
    #
    #     * Enterprise and Standard editions: Must be an integer from 20 to
    #       16384.
    #
    #     * Web and Express editions: Must be an integer from 20 to 16384.
    #
    #   * Provisioned IOPS storage (io1):
    #
    #     * Enterprise and Standard editions: Must be an integer from 100 to
    #       16384.
    #
    #     * Web and Express editions: Must be an integer from 100 to 16384.
    #
    #   * Magnetic storage (standard):
    #
    #     * Enterprise and Standard editions: Must be an integer from 20 to
    #       1024.
    #
    #     * Web and Express editions: Must be an integer from 20 to 1024.
    # @option options [required, String] :db_instance_class
    #   The compute and memory capacity of the DB instance, for example
    #   db.m4.large. Not all DB instance classes are available in all Amazon
    #   Web Services Regions, or for all database engines. For the full list
    #   of DB instance classes, and availability for your engine, see [DB
    #   Instance Class][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [required, String] :engine
    #   The name of the database engine to be used for this instance.
    #
    #   Not every database engine is available for every Amazon Web Services
    #   Region.
    #
    #   Valid Values:
    #
    #   * `aurora` (for MySQL 5.6-compatible Aurora)
    #
    #   * `aurora-mysql` (for MySQL 5.7-compatible and MySQL 8.0-compatible
    #     Aurora)
    #
    #   * `aurora-postgresql`
    #
    #   * `custom-oracle-ee (for RDS Custom for Oracle instances)`
    #
    #   * `custom-sqlserver-ee (for RDS Custom for SQL Server instances)`
    #
    #   * `custom-sqlserver-se (for RDS Custom for SQL Server instances)`
    #
    #   * `custom-sqlserver-web (for RDS Custom for SQL Server instances)`
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
    # @option options [String] :master_username
    #   The name for the master user.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The name for the master user is managed by the DB
    #   cluster.
    #
    #   **Amazon RDS**
    #
    #   Constraints:
    #
    #   * Required.
    #
    #   * Must be 1 to 16 letters, numbers, or underscores.
    #
    #   * First character must be a letter.
    #
    #   * Can't be a reserved word for the chosen database engine.
    # @option options [String] :master_user_password
    #   The password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the DB
    #   cluster.
    #
    #   **MariaDB**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   **MySQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Oracle**
    #
    #   Constraints: Must contain from 8 to 30 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    # @option options [Array<String>] :db_security_groups
    #   A list of DB security groups to associate with this DB instance.
    #
    #   Default: The default DB security group for the database engine.
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of Amazon EC2 VPC security groups to associate with this DB
    #   instance.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster.
    #
    #   Default: The default EC2 VPC security group for the DB subnet group's
    #   VPC.
    # @option options [String] :availability_zone
    #   The Availability Zone (AZ) where the database will be created. For
    #   information on Amazon Web Services Regions and Availability Zones, see
    #   [Regions and Availability Zones][1].
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Availability Zones are managed by the DB cluster.
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   Amazon Web Services Region.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The `AvailabilityZone` parameter can't be specified if
    #   the DB instance is a Multi-AZ deployment. The specified Availability
    #   Zone must be in the same Amazon Web Services Region as the current
    #   endpoint.
    #
    #   <note markdown="1"> If you're creating a DB instance in an RDS on VMware environment,
    #   specify the identifier of the custom Availability Zone to create the
    #   DB instance in.
    #
    #    For more information about RDS on VMware, see the [ RDS on VMware User
    #   Guide.][2]
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/RDSonVMwareUserGuide/rds-on-vmware.html
    # @option options [String] :db_subnet_group_name
    #   A DB subnet group to associate with this DB instance.
    #
    #   If there is no DB subnet group, then it is a non-VPC DB instance.
    # @option options [String] :preferred_maintenance_window
    #   The time range each week during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC). For more information, see [Amazon
    #   RDS Maintenance Window][1].
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region, occurring on a
    #   random day of the week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun.
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    # @option options [String] :db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB instance.
    #   If you do not specify a value, then the default DB parameter group for
    #   the specified DB engine and version is used.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The retention period for automated backups is managed
    #   by the DB cluster.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35
    #
    #   * Can't be set to 0 if the DB instance is a source to read replicas
    #
    #   * Can't be set to 0 or 35 for an RDS Custom for Oracle DB instance
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter. The default is a 30-minute window selected at random from
    #   an 8-hour block of time for each Amazon Web Services Region. For more
    #   information, see [Backup window][1] in the *Amazon RDS User Guide*.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The daily time range for creating automated backups is
    #   managed by the DB cluster.
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    # @option options [Integer] :port
    #   The port number on which the database accepts connections.
    #
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid values: `1150-65535` except `1234`, `1434`, `3260`, `3343`,
    #   `3389`, `47001`, and `49152-49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    # @option options [Boolean] :multi_az
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment. You can't set the `AvailabilityZone` parameter if the DB
    #   instance is a Multi-AZ deployment.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :engine_version
    #   The version number of the database engine to use.
    #
    #   For a list of valid engine versions, use the
    #   `DescribeDBEngineVersions` action.
    #
    #   The following are the database engines and links to information about
    #   the major and minor versions that are available with Amazon RDS. Not
    #   every database engine is available for every Amazon Web Services
    #   Region.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The version number of the database engine to be used
    #   by the DB instance is managed by the DB cluster.
    #
    #   **Amazon RDS Custom for Oracle**
    #
    #   A custom engine version (CEV) that you have previously created. This
    #   setting is required for RDS Custom for Oracle. The CEV name has the
    #   following format: `19.customized_string `. An example identifier is
    #   `19.my_cev1`. For more information, see [ Creating an RDS Custom for
    #   Oracle DB instance][1] in the *Amazon RDS User Guide.*.
    #
    #   **Amazon RDS Custom for SQL Server**
    #
    #   See [RDS Custom for SQL Server general requirements][2] in the *Amazon
    #   RDS User Guide.*
    #
    #   **MariaDB**
    #
    #   For information, see [MariaDB on Amazon RDS Versions][3] in the
    #   *Amazon RDS User Guide.*
    #
    #   **Microsoft SQL Server**
    #
    #   For information, see [Microsoft SQL Server Versions on Amazon RDS][4]
    #   in the *Amazon RDS User Guide.*
    #
    #   **MySQL**
    #
    #   For information, see [MySQL on Amazon RDS Versions][5] in the *Amazon
    #   RDS User Guide.*
    #
    #   **Oracle**
    #
    #   For information, see [Oracle Database Engine Release Notes][6] in the
    #   *Amazon RDS User Guide.*
    #
    #   **PostgreSQL**
    #
    #   For information, see [Amazon RDS for PostgreSQL versions and
    #   extensions][7] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-creating.html#custom-creating.create
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-reqs-limits.html#custom-reqs-limits.reqsMS
    #   [3]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MariaDB.html#MariaDB.Concepts.VersionMgmt
    #   [4]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.VersionSupport
    #   [5]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_MySQL.html#MySQL.Concepts.VersionMgmt
    #   [6]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Appendix.Oracle.PatchComposition.html
    #   [7]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_PostgreSQL.html#PostgreSQL.Concepts
    # @option options [Boolean] :auto_minor_version_upgrade
    #   A value that indicates whether minor engine upgrades are applied
    #   automatically to the DB instance during the maintenance window. By
    #   default, minor engine upgrades are applied automatically.
    #
    #   If you create an RDS Custom DB instance, you must set
    #   `AutoMinorVersionUpgrade` to `false`.
    # @option options [String] :license_model
    #   License model information for this DB instance.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance. For information about
    #   valid `Iops` values, see [Amazon RDS Provisioned IOPS storage to
    #   improve performance][1] in the *Amazon RDS User Guide*.
    #
    #   Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL DB instances,
    #   must be a multiple between .5 and 50 of the storage amount for the DB
    #   instance. For SQL Server DB instances, must be a multiple between 1
    #   and 50 of the storage amount for the DB instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html#USER_PIOPS
    # @option options [String] :option_group_name
    #   A value that indicates that the DB instance should be associated with
    #   the specified option group.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group. Also, that option group
    #   can't be removed from a DB instance after it is associated with a DB
    #   instance.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :character_set_name
    #   For supported engines, this value indicates that the DB instance
    #   should be associated with the specified `CharacterSet`.
    #
    #   This setting doesn't apply to RDS Custom. However, if you need to
    #   change the character set, you can change it on the database itself.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The character set is managed by the DB cluster. For
    #   more information, see `CreateDBCluster`.
    # @option options [String] :nchar_character_set_name
    #   The name of the NCHAR character set for the Oracle DB instance.
    #
    #   This parameter doesn't apply to RDS Custom.
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
    #   Default: The default behavior varies depending on whether
    #   `DBSubnetGroupName` is specified.
    #
    #   If `DBSubnetGroupName` isn't specified, and `PubliclyAccessible`
    #   isn't specified, the following applies:
    #
    #   * If the default VPC in the target Region doesn’t have an internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the default VPC in the target Region has an internet gateway
    #     attached to it, the DB instance is public.
    #
    #   If `DBSubnetGroupName` is specified, and `PubliclyAccessible` isn't
    #   specified, the following applies:
    #
    #   * If the subnets are part of a VPC that doesn’t have an internet
    #     gateway attached to it, the DB instance is private.
    #
    #   * If the subnets are part of a VPC that has an internet gateway
    #     attached to it, the DB instance is public.
    # @option options [Array<Types::Tag>] :tags
    #   Tags to assign to the DB instance.
    # @option options [String] :db_cluster_identifier
    #   The identifier of the DB cluster that the instance will belong to.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
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
    # @option options [Boolean] :storage_encrypted
    #   A value that indicates whether the DB instance is encrypted. By
    #   default, it isn't encrypted.
    #
    #   For RDS Custom instances, either set this parameter to `true` or leave
    #   it unset. If you set this parameter to `false`, RDS reports an error.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The encryption for DB instances is managed by the DB
    #   cluster.
    # @option options [String] :kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted DB
    #   instance.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key. To use a KMS key in a
    #   different Amazon Web Services account, specify the key ARN or alias
    #   ARN.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The Amazon Web Services KMS key identifier is managed
    #   by the DB cluster. For more information, see `CreateDBCluster`.
    #
    #   If `StorageEncrypted` is enabled, and you do not specify a value for
    #   the `KmsKeyId` parameter, then Amazon RDS uses your default KMS key.
    #   There is a default KMS key for your Amazon Web Services account. Your
    #   Amazon Web Services account has a different default KMS key for each
    #   Amazon Web Services Region.
    #
    #   **Amazon RDS Custom**
    #
    #   A KMS key is required for RDS Custom instances. For most RDS engines,
    #   if you leave this parameter empty while enabling `StorageEncrypted`,
    #   the engine uses the default KMS key. However, RDS Custom doesn't use
    #   the default key when this parameter is empty. You must explicitly
    #   specify a key.
    # @option options [String] :domain
    #   The Active Directory directory ID to create the DB instance in.
    #   Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
    #   instances can be created in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the *Amazon
    #   RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    # @option options [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy tags from the DB instance to
    #   snapshots of the DB instance. By default, tags are not copied.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Copying tags to snapshots is managed by the DB
    #   cluster. Setting this value for an Aurora DB instance has no effect on
    #   the DB cluster setting.
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collection of
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    # @option options [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, see [Setting Up and Enabling Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.Enabling
    # @option options [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Integer] :promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    # @option options [String] :timezone
    #   The time zone of the DB instance. The time zone parameter is currently
    #   supported only by [Microsoft SQL Server][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.TimeZone
    # @option options [Boolean] :enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   This setting doesn't apply to RDS Custom or Amazon Aurora. In Aurora,
    #   mapping Amazon Web Services IAM accounts to database accounts is
    #   managed by the DB cluster.
    #
    #   For more information, see [ IAM Database Authentication for MySQL and
    #   PostgreSQL][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html
    # @option options [Boolean] :enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for the
    #   DB instance. For more information, see [Using Amazon Performance
    #   Insights][1] in the *Amazon Relational Database Service User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    # @option options [String] :performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`, then
    #   Amazon RDS uses your default KMS key. There is a default KMS key for
    #   your Amazon Web Services account. Your Amazon Web Services account has
    #   a different default KMS key for each Amazon Web Services Region.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of log types that need to be enabled for exporting to
    #   CloudWatch Logs. The values in the list depend on the DB engine. For
    #   more information, see [Publishing Database Logs to Amazon CloudWatch
    #   Logs][1] in the *Amazon Relational Database Service User Guide*.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. CloudWatch Logs exports are managed by the DB cluster.
    #
    #   **RDS Custom**
    #
    #   Not applicable.
    #
    #   **MariaDB**
    #
    #   Possible values are `audit`, `error`, `general`, and `slowquery`.
    #
    #   **Microsoft SQL Server**
    #
    #   Possible values are `agent` and `error`.
    #
    #   **MySQL**
    #
    #   Possible values are `audit`, `error`, `general`, and `slowquery`.
    #
    #   **Oracle**
    #
    #   Possible values are `alert`, `audit`, `listener`, `trace`, and
    #   `oemagent`.
    #
    #   **PostgreSQL**
    #
    #   Possible values are `postgresql` and `upgrade`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_LogAccess.html#USER_LogAccess.Procedural.UploadtoCloudWatch
    # @option options [Array<Types::ProcessorFeature>] :processor_features
    #   The number of CPU cores and the number of threads per core for the DB
    #   instance class of the DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Boolean] :deletion_protection
    #   A value that indicates whether the DB instance has deletion protection
    #   enabled. The database can't be deleted when deletion protection is
    #   enabled. By default, deletion protection isn't enabled. For more
    #   information, see [ Deleting a DB Instance][1].
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. You can enable or disable deletion protection for the
    #   DB cluster. For more information, see `CreateDBCluster`. DB instances
    #   in a DB cluster can be deleted even when deletion protection is
    #   enabled for the DB cluster.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    # @option options [Integer] :max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    # @option options [Boolean] :enable_customer_owned_ip
    #   A value that indicates whether to enable a customer-owned IP address
    #   (CoIP) for an RDS on Outposts DB instance.
    #
    #   A *CoIP* provides local or external connectivity to resources in your
    #   Outpost subnets through your on-premises network. For some use cases,
    #   a CoIP can provide lower latency for connections to the DB instance
    #   from outside of its virtual private cloud (VPC) on your local network.
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
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing
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
    #   IAM and your VPC][1] in the *Amazon Relational Database Service User
    #   Guide*.
    #
    #   This setting is required for RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    # @option options [String] :backup_target
    #   Specifies where automated backups and manual snapshots are stored.
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
    # @return [DBInstance]
    def create(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.create_db_instance(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.create_read_replica({
    #     db_instance_identifier: "String", # required
    #     db_instance_class: "String",
    #     availability_zone: "String",
    #     port: 1,
    #     multi_az: false,
    #     auto_minor_version_upgrade: false,
    #     iops: 1,
    #     option_group_name: "String",
    #     db_parameter_group_name: "String",
    #     publicly_accessible: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     db_subnet_group_name: "String",
    #     vpc_security_group_ids: ["String"],
    #     storage_type: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     monitoring_role_arn: "String",
    #     kms_key_id: "String",
    #     pre_signed_url: "String",
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     enable_cloudwatch_logs_exports: ["String"],
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
    #     deletion_protection: false,
    #     domain: "String",
    #     domain_iam_role_name: "String",
    #     replica_mode: "open-read-only", # accepts open-read-only, mounted
    #     max_allocated_storage: 1,
    #     custom_iam_instance_profile: "String",
    #     source_region: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_instance_identifier
    #   The DB instance identifier of the read replica. This identifier is the
    #   unique key that identifies a DB instance. This parameter is stored as
    #   a lowercase string.
    # @option options [String] :db_instance_class
    #   The compute and memory capacity of the read replica, for example
    #   db.m4.large. Not all DB instance classes are available in all Amazon
    #   Web Services Regions, or for all database engines. For the full list
    #   of DB instance classes, and availability for your engine, see [DB
    #   Instance Class][1] in the *Amazon RDS User Guide.*
    #
    #   Default: Inherits from the source DB instance.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [String] :availability_zone
    #   The Availability Zone (AZ) where the read replica will be created.
    #
    #   Default: A random, system-chosen Availability Zone in the endpoint's
    #   Amazon Web Services Region.
    #
    #   Example: `us-east-1d`
    # @option options [Integer] :port
    #   The port number that the DB instance uses for connections.
    #
    #   Default: Inherits from the source DB instance
    #
    #   Valid Values: `1150-65535`
    # @option options [Boolean] :multi_az
    #   A value that indicates whether the read replica is in a Multi-AZ
    #   deployment.
    #
    #   You can create a read replica as a Multi-AZ DB instance. RDS creates a
    #   standby of your replica in another Availability Zone for failover
    #   support for the replica. Creating your read replica as a Multi-AZ DB
    #   instance is independent of whether the source database is a Multi-AZ
    #   DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   A value that indicates whether minor engine upgrades are applied
    #   automatically to the read replica during the maintenance window.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: Inherits from the source DB instance
    # @option options [Integer] :iops
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance.
    # @option options [String] :option_group_name
    #   The option group the DB instance is associated with. If omitted, the
    #   option group associated with the source instance is used.
    #
    #   <note markdown="1"> For SQL Server, you must use the option group associated with the
    #   source instance.
    #
    #    </note>
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :db_parameter_group_name
    #   The name of the DB parameter group to associate with this DB instance.
    #
    #   If you do not specify a value for `DBParameterGroupName`, then Amazon
    #   RDS uses the `DBParameterGroup` of source DB instance for a same
    #   Region read replica, or the default `DBParameterGroup` for the
    #   specified DB engine for a cross-Region read replica.
    #
    #   Specifying a parameter group for this operation is only supported for
    #   Oracle DB instances. It isn't supported for RDS Custom.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters, numbers, or hyphens.
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    # @option options [Boolean] :publicly_accessible
    #   A value that indicates whether the DB instance is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal DB
    #   instance with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBInstance.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @option options [String] :db_subnet_group_name
    #   Specifies a DB subnet group for the DB instance. The new DB instance
    #   is created in the VPC associated with the DB subnet group. If no DB
    #   subnet group is specified, then the new DB instance isn't created in
    #   a VPC.
    #
    #   Constraints:
    #
    #   * Can only be specified if the source DB instance identifier specifies
    #     a DB instance in another Amazon Web Services Region.
    #
    #   * If supplied, must match the name of an existing DBSubnetGroup.
    #
    #   * The specified DB subnet group must be in the same Amazon Web
    #     Services Region in which the operation is running.
    #
    #   * All read replicas in one Amazon Web Services Region that are created
    #     from the same source DB instance must either:&gt;
    #
    #     * Specify DB subnet groups from the same VPC. All these read
    #       replicas are created in the same VPC.
    #
    #     * Not specify a DB subnet group. All these read replicas are created
    #       outside of any VPC.
    #
    #   Example: `mySubnetgroup`
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of Amazon EC2 VPC security groups to associate with the read
    #   replica.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: The default EC2 VPC security group for the DB subnet group's
    #   VPC.
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the read replica.
    #
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
    #
    #   Default: `io1` if the `Iops` parameter is specified, otherwise `gp2`
    # @option options [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the read replica
    #   to snapshots of the read replica. By default, tags are not copied.
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the read replica. To disable collecting
    #   Enhanced Monitoring metrics, specify 0. The default is 0.
    #
    #   If `MonitoringRoleArn` is specified, then you must also set
    #   `MonitoringInterval` to a value other than 0.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    # @option options [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, go to [To create an IAM role for Amazon RDS
    #   Enhanced Monitoring][1] in the *Amazon RDS User Guide*.
    #
    #   If `MonitoringInterval` is set to a value other than 0, then you must
    #   supply a `MonitoringRoleArn` value.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    # @option options [String] :kms_key_id
    #   The Amazon Web Services KMS key identifier for an encrypted read
    #   replica.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you create an encrypted read replica in the same Amazon Web
    #   Services Region as the source DB instance, then do not specify a value
    #   for this parameter. A read replica in the same Amazon Web Services
    #   Region is always encrypted with the same KMS key as the source DB
    #   instance.
    #
    #   If you create an encrypted read replica in a different Amazon Web
    #   Services Region, then you must specify a KMS key identifier for the
    #   destination Amazon Web Services Region. KMS keys are specific to the
    #   Amazon Web Services Region that they are created in, and you can't
    #   use KMS keys from one Amazon Web Services Region in another Amazon Web
    #   Services Region.
    #
    #   You can't create an encrypted read replica from an unencrypted DB
    #   instance.
    #
    #   This setting doesn't apply to RDS Custom, which uses the same KMS key
    #   as the primary replica.
    # @option options [String] :pre_signed_url
    #   The URL that contains a Signature Version 4 signed request for the
    #   `CreateDBInstanceReadReplica` API action in the source Amazon Web
    #   Services Region that contains the source DB instance.
    #
    #   You must specify this parameter when you create an encrypted read
    #   replica from another Amazon Web Services Region by using the Amazon
    #   RDS API. Don't specify `PreSignedUrl` when you are creating an
    #   encrypted read replica in the same Amazon Web Services Region.
    #
    #   The presigned URL must be a valid request for the
    #   `CreateDBInstanceReadReplica` API action that can be executed in the
    #   source Amazon Web Services Region that contains the encrypted source
    #   DB instance. The presigned URL request must contain the following
    #   parameter values:
    #
    #   * `DestinationRegion` - The Amazon Web Services Region that the
    #     encrypted read replica is created in. This Amazon Web Services
    #     Region is the same one where the `CreateDBInstanceReadReplica`
    #     action is called that contains this presigned URL.
    #
    #     For example, if you create an encrypted DB instance in the us-west-1
    #     Amazon Web Services Region, from a source DB instance in the
    #     us-east-2 Amazon Web Services Region, then you call the
    #     `CreateDBInstanceReadReplica` action in the us-east-1 Amazon Web
    #     Services Region and provide a presigned URL that contains a call to
    #     the `CreateDBInstanceReadReplica` action in the us-west-2 Amazon Web
    #     Services Region. For this example, the `DestinationRegion` in the
    #     presigned URL must be set to the us-east-1 Amazon Web Services
    #     Region.
    #
    #   * `KmsKeyId` - The Amazon Web Services KMS key identifier for the key
    #     to use to encrypt the read replica in the destination Amazon Web
    #     Services Region. This is the same identifier for both the
    #     `CreateDBInstanceReadReplica` action that is called in the
    #     destination Amazon Web Services Region, and the action contained in
    #     the presigned URL.
    #
    #   * `SourceDBInstanceIdentifier` - The DB instance identifier for the
    #     encrypted DB instance to be replicated. This identifier must be in
    #     the Amazon Resource Name (ARN) format for the source Amazon Web
    #     Services Region. For example, if you are creating an encrypted read
    #     replica from a DB instance in the us-west-2 Amazon Web Services
    #     Region, then your `SourceDBInstanceIdentifier` looks like the
    #     following example:
    #     `arn:aws:rds:us-west-2:123456789012:instance:mysql-instance1-20161115`.
    #
    #   To learn how to generate a Signature Version 4 signed request, see
    #   [Authenticating Requests: Using Query Parameters (Amazon Web Services
    #   Signature Version 4)][1] and [Signature Version 4 Signing Process][2].
    #
    #   <note markdown="1"> If you are using an Amazon Web Services SDK tool or the CLI, you can
    #   specify `SourceRegion` (or `--source-region` for the CLI) instead of
    #   specifying `PreSignedUrl` manually. Specifying `SourceRegion`
    #   autogenerates a presigned URL that is a valid request for the
    #   operation that can be executed in the source Amazon Web Services
    #   Region.
    #
    #    `SourceRegion` isn't supported for SQL Server, because SQL Server on
    #   Amazon RDS doesn't support cross-Region read replicas.
    #
    #    </note>
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html
    # @option options [Boolean] :enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
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
    # @option options [Boolean] :enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for the
    #   read replica.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    # @option options [String] :performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`, then
    #   Amazon RDS uses your default KMS key. There is a default KMS key for
    #   your Amazon Web Services account. Your Amazon Web Services account has
    #   a different default KMS key for each Amazon Web Services Region.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Array<String>] :enable_cloudwatch_logs_exports
    #   The list of logs that the new DB instance is to export to CloudWatch
    #   Logs. The values in the list depend on the DB engine being used. For
    #   more information, see [Publishing Database Logs to Amazon CloudWatch
    #   Logs ][1] in the *Amazon RDS User Guide*.
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
    # @option options [Boolean] :deletion_protection
    #   A value that indicates whether the DB instance has deletion protection
    #   enabled. The database can't be deleted when deletion protection is
    #   enabled. By default, deletion protection isn't enabled. For more
    #   information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    # @option options [String] :domain
    #   The Active Directory directory ID to create the DB instance in.
    #   Currently, only MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
    #   instances can be created in an Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the *Amazon
    #   RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    # @option options [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :replica_mode
    #   The open mode of the replica database: mounted or read-only.
    #
    #   <note markdown="1"> This parameter is only supported for Oracle DB instances.
    #
    #    </note>
    #
    #   Mounted DB replicas are included in Oracle Database Enterprise
    #   Edition. The main use case for mounted replicas is cross-Region
    #   disaster recovery. The primary database doesn't use Active Data Guard
    #   to transmit information to the mounted replica. Because it doesn't
    #   accept user connections, a mounted replica can't serve a read-only
    #   workload.
    #
    #   You can create a combination of mounted and read-only DB replicas for
    #   the same primary DB instance. For more information, see [Working with
    #   Oracle Read Replicas for Amazon RDS][1] in the *Amazon RDS User
    #   Guide*.
    #
    #   For RDS Custom, you must specify this parameter and set it to
    #   `mounted`. The value won't be set by default. After replica creation,
    #   you can manage the open mode manually.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html
    # @option options [Integer] :max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
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
    #   IAM and your VPC][1] in the *Amazon Relational Database Service User
    #   Guide*.
    #
    #   This setting is required for RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/custom-setup-orcl.html#custom-setup-orcl.iam-vpc
    # @option options [String] :source_region
    #   The source region of the snapshot. This is only needed when the
    #   shapshot is encrypted and in a different region.
    # @return [DBInstance]
    def create_read_replica(options = {})
      options = options.merge(source_db_instance_identifier: @id)
      resp = @client.create_db_instance_read_replica(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbsnapshot = db_instance.create_snapshot({
    #     db_snapshot_identifier: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_snapshot_identifier
    #   The identifier for the DB snapshot.
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
    #   Example: `my-snapshot-id`
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBSnapshot]
    def create_snapshot(options = {})
      options = options.merge(db_instance_identifier: @id)
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
    #   dbinstance = db_instance.delete({
    #     skip_final_snapshot: false,
    #     final_db_snapshot_identifier: "String",
    #     delete_automated_backups: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :skip_final_snapshot
    #   A value that indicates whether to skip the creation of a final DB
    #   snapshot before deleting the instance. If you enable this parameter,
    #   RDS doesn't create a DB snapshot. If you don't enable this
    #   parameter, RDS creates a DB snapshot before the DB instance is
    #   deleted. By default, skip isn't enabled, and the DB snapshot is
    #   created.
    #
    #   <note markdown="1"> If you don't enable this parameter, you must specify the
    #   `FinalDBSnapshotIdentifier` parameter.
    #
    #    </note>
    #
    #   When a DB instance is in a failure state and has a status of `failed`,
    #   `incompatible-restore`, or `incompatible-network`, RDS can delete the
    #   instance only if you enable this parameter.
    #
    #   If you delete a read replica or an RDS Custom instance, you must
    #   enable this setting.
    #
    #   This setting is required for RDS Custom.
    # @option options [String] :final_db_snapshot_identifier
    #   The `DBSnapshotIdentifier` of the new `DBSnapshot` created when the
    #   `SkipFinalSnapshot` parameter is disabled.
    #
    #   <note markdown="1"> If you enable this parameter and also enable SkipFinalShapshot, the
    #   command results in an error.
    #
    #    </note>
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 letters or numbers.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   * Can't be specified when deleting a read replica.
    # @option options [Boolean] :delete_automated_backups
    #   A value that indicates whether to remove automated backups immediately
    #   after the DB instance is deleted. This parameter isn't
    #   case-sensitive. The default is to remove automated backups immediately
    #   after the DB instance is deleted.
    # @return [DBInstance]
    def delete(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.delete_db_instance(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.modify({
    #     allocated_storage: 1,
    #     db_instance_class: "String",
    #     db_subnet_group_name: "String",
    #     db_security_groups: ["String"],
    #     vpc_security_group_ids: ["String"],
    #     apply_immediately: false,
    #     master_user_password: "String",
    #     db_parameter_group_name: "String",
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #     preferred_maintenance_window: "String",
    #     multi_az: false,
    #     engine_version: "String",
    #     allow_major_version_upgrade: false,
    #     auto_minor_version_upgrade: false,
    #     license_model: "String",
    #     iops: 1,
    #     option_group_name: "String",
    #     new_db_instance_identifier: "String",
    #     storage_type: "String",
    #     tde_credential_arn: "String",
    #     tde_credential_password: "String",
    #     ca_certificate_identifier: "String",
    #     domain: "String",
    #     copy_tags_to_snapshot: false,
    #     monitoring_interval: 1,
    #     db_port_number: 1,
    #     publicly_accessible: false,
    #     monitoring_role_arn: "String",
    #     domain_iam_role_name: "String",
    #     promotion_tier: 1,
    #     enable_iam_database_authentication: false,
    #     enable_performance_insights: false,
    #     performance_insights_kms_key_id: "String",
    #     performance_insights_retention_period: 1,
    #     cloudwatch_logs_export_configuration: {
    #       enable_log_types: ["String"],
    #       disable_log_types: ["String"],
    #     },
    #     processor_features: [
    #       {
    #         name: "String",
    #         value: "String",
    #       },
    #     ],
    #     use_default_processor_features: false,
    #     deletion_protection: false,
    #     max_allocated_storage: 1,
    #     certificate_rotation_restart: false,
    #     replica_mode: "open-read-only", # accepts open-read-only, mounted
    #     enable_customer_owned_ip: false,
    #     aws_backup_recovery_point_arn: "AwsBackupRecoveryPointArn",
    #     automation_mode: "full", # accepts full, all-paused
    #     resume_full_automation_mode_minutes: 1,
    #   })
    # @param [Hash] options ({})
    # @option options [Integer] :allocated_storage
    #   The new amount of storage in gibibytes (GiB) to allocate for the DB
    #   instance.
    #
    #   For MariaDB, MySQL, Oracle, and PostgreSQL, the value supplied must be
    #   at least 10% greater than the current value. Values that are not at
    #   least 10% greater than the existing value are rounded up so that they
    #   are 10% greater than the current value.
    #
    #   For the valid values for allocated storage for each engine, see
    #   `CreateDBInstance`.
    # @option options [String] :db_instance_class
    #   The new compute and memory capacity of the DB instance, for example
    #   db.m4.large. Not all DB instance classes are available in all Amazon
    #   Web Services Regions, or for all database engines. For the full list
    #   of DB instance classes, and availability for your engine, see [DB
    #   Instance Class][1] in the *Amazon RDS User Guide*.
    #
    #   If you modify the DB instance class, an outage occurs during the
    #   change. The change is applied during the next maintenance window,
    #   unless `ApplyImmediately` is enabled for this request.
    #
    #   This setting doesn't apply to RDS Custom for Oracle.
    #
    #   Default: Uses existing setting
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.DBInstanceClass.html
    # @option options [String] :db_subnet_group_name
    #   The new DB subnet group for the DB instance. You can use this
    #   parameter to move your DB instance to a different VPC. If your DB
    #   instance isn't in a VPC, you can also use this parameter to move your
    #   DB instance into a VPC. For more information, see [Working with a DB
    #   instance in a VPC][1] in the *Amazon RDS User Guide*.
    #
    #   Changing the subnet group causes an outage during the change. The
    #   change is applied during the next maintenance window, unless you
    #   enable `ApplyImmediately`.
    #
    #   This parameter doesn't apply to RDS Custom.
    #
    #   Constraints: If supplied, must match the name of an existing
    #   DBSubnetGroup.
    #
    #   Example: `mySubnetGroup`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.WorkingWithRDSInstanceinaVPC.html#USER_VPC.Non-VPC2VPC
    # @option options [Array<String>] :db_security_groups
    #   A list of DB security groups to authorize on this DB instance.
    #   Changing this setting doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing DBSecurityGroups.
    #
    #   ^
    # @option options [Array<String>] :vpc_security_group_ids
    #   A list of Amazon EC2 VPC security groups to authorize on this DB
    #   instance. This change is asynchronously applied as soon as possible.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The associated list of EC2 VPC security groups is
    #   managed by the DB cluster. For more information, see
    #   `ModifyDBCluster`.
    #
    #   Constraints:
    #
    #   * If supplied, must match existing VpcSecurityGroupIds.
    #
    #   ^
    # @option options [Boolean] :apply_immediately
    #   A value that indicates whether the modifications in this request and
    #   any pending modifications are asynchronously applied as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the DB instance. By default, this parameter is disabled.
    #
    #   If this parameter is disabled, changes to the DB instance are applied
    #   during the next maintenance window. Some parameter changes can cause
    #   an outage and are applied on the next call to RebootDBInstance, or the
    #   next failure reboot. Review the table of parameters in [Modifying a DB
    #   Instance][1] in the *Amazon RDS User Guide* to see the impact of
    #   enabling or disabling `ApplyImmediately` for each modified parameter
    #   and to determine when the changes are applied.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.DBInstance.Modifying.html
    # @option options [String] :master_user_password
    #   The new password for the master user. The password can include any
    #   printable ASCII character except "/", """, or "@".
    #
    #   Changing this parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible. Between the time of the
    #   request and the completion of the request, the `MasterUserPassword`
    #   element exists in the `PendingModifiedValues` element of the operation
    #   response.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The password for the master user is managed by the DB
    #   cluster. For more information, see `ModifyDBCluster`.
    #
    #   Default: Uses existing setting
    #
    #   **MariaDB**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Microsoft SQL Server**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   **MySQL**
    #
    #   Constraints: Must contain from 8 to 41 characters.
    #
    #   **Oracle**
    #
    #   Constraints: Must contain from 8 to 30 characters.
    #
    #   **PostgreSQL**
    #
    #   Constraints: Must contain from 8 to 128 characters.
    #
    #   <note markdown="1"> Amazon RDS API actions never return the password, so this action
    #   provides a way to regain access to a primary instance user if the
    #   password is lost. This includes restoring privileges that might have
    #   been accidentally revoked.
    #
    #    </note>
    # @option options [String] :db_parameter_group_name
    #   The name of the DB parameter group to apply to the DB instance.
    #
    #   Changing this setting doesn't result in an outage. The parameter
    #   group name itself is changed immediately, but the actual parameter
    #   changes are not applied until you reboot the instance without
    #   failover. In this case, the DB instance isn't rebooted automatically,
    #   and the parameter changes aren't applied during the next maintenance
    #   window. However, if you modify dynamic parameters in the newly
    #   associated DB parameter group, these changes are applied immediately
    #   without a reboot.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: Uses existing setting
    #
    #   Constraints: The DB parameter group must be in the same DB parameter
    #   group family as the DB instance.
    # @option options [Integer] :backup_retention_period
    #   The number of days to retain automated backups. Setting this parameter
    #   to a positive number enables backups. Setting this parameter to 0
    #   disables automated backups.
    #
    #   <note markdown="1"> Enabling and disabling backups can result in a brief I/O suspension
    #   that lasts from a few seconds to a few minutes, depending on the size
    #   and class of your DB instance.
    #
    #    </note>
    #
    #   These changes are applied during the next maintenance window unless
    #   the `ApplyImmediately` parameter is enabled for this request. If you
    #   change the parameter from one non-zero value to another non-zero
    #   value, the change is asynchronously applied as soon as possible.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The retention period for automated backups is managed
    #   by the DB cluster. For more information, see `ModifyDBCluster`.
    #
    #   Default: Uses existing setting
    #
    #   Constraints:
    #
    #   * It must be a value from 0 to 35. It can't be set to 0 if the DB
    #     instance is a source to read replicas. It can't be set to 0 or 35
    #     for an RDS Custom for Oracle DB instance.
    #
    #   * It can be specified for a MySQL read replica only if the source is
    #     running MySQL 5.6 or later.
    #
    #   * It can be specified for a PostgreSQL read replica only if the source
    #     is running PostgreSQL 9.3.5.
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, as determined by the
    #   `BackupRetentionPeriod` parameter. Changing this parameter doesn't
    #   result in an outage and the change is asynchronously applied as soon
    #   as possible. The default is a 30-minute window selected at random from
    #   an 8-hour block of time for each Amazon Web Services Region. For more
    #   information, see [Backup window][1] in the *Amazon RDS User Guide.*
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. The daily time range for creating automated backups is
    #   managed by the DB cluster. For more information, see
    #   `ModifyDBCluster`.
    #
    #   Constraints:
    #
    #   * Must be in the format hh24:mi-hh24:mi
    #
    #   * Must be in Universal Time Coordinated (UTC)
    #
    #   * Must not conflict with the preferred maintenance window
    #
    #   * Must be at least 30 minutes
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_WorkingWithAutomatedBackups.html#USER_WorkingWithAutomatedBackups.BackupWindow
    # @option options [String] :preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter
    #   doesn't result in an outage, except in the following situation, and
    #   the change is asynchronously applied as soon as possible. If there are
    #   pending actions that cause a reboot, and the maintenance window is
    #   changed to include the current time, then changing this parameter will
    #   cause a reboot of the DB instance. If moving this window to the
    #   current time, there must be at least 30 minutes between the current
    #   time and end of the window to ensure pending changes are applied.
    #
    #   For more information, see [Amazon RDS Maintenance Window][1] in the
    #   *Amazon RDS User Guide.*
    #
    #   Default: Uses existing setting
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html#Concepts.DBMaintenance
    # @option options [Boolean] :multi_az
    #   A value that indicates whether the DB instance is a Multi-AZ
    #   deployment. Changing this parameter doesn't result in an outage. The
    #   change is applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is enabled for this request.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :engine_version
    #   The version number of the database engine to upgrade to. Changing this
    #   parameter results in an outage and the change is applied during the
    #   next maintenance window unless the `ApplyImmediately` parameter is
    #   enabled for this request.
    #
    #   For major version upgrades, if a nondefault DB parameter group is
    #   currently in use, a new DB parameter group in the DB parameter group
    #   family for the new engine version must be specified. The new DB
    #   parameter group can be the default for that DB parameter group family.
    #
    #   If you specify only a major version, Amazon RDS will update the DB
    #   instance to the default minor version if the current minor version is
    #   lower. For information about valid engine versions, see
    #   `CreateDBInstance`, or call `DescribeDBEngineVersions`.
    #
    #   In RDS Custom for Oracle, this parameter is supported for read
    #   replicas only if they are in the `PATCH_DB_FAILURE` lifecycle.
    # @option options [Boolean] :allow_major_version_upgrade
    #   A value that indicates whether major version upgrades are allowed.
    #   Changing this parameter doesn't result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraints: Major version upgrades must be allowed when specifying a
    #   value for the EngineVersion parameter that is a different major
    #   version than the DB instance's current version.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   A value that indicates whether minor version upgrades are applied
    #   automatically to the DB instance during the maintenance window. An
    #   outage occurs when all the following conditions are met:
    #
    #   * The automatic upgrade is enabled for the maintenance window.
    #
    #   * A newer minor version is available.
    #
    #   * RDS has enabled automatic patching for the engine version.
    #
    #   If any of the preceding conditions isn't met, RDS applies the change
    #   as soon as possible and doesn't cause an outage.
    #
    #   For an RDS Custom DB instance, set `AutoMinorVersionUpgrade` to
    #   `false`. Otherwise, the operation returns an error.
    # @option options [String] :license_model
    #   The license model for the DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Valid values: `license-included` \| `bring-your-own-license` \|
    #   `general-public-license`
    # @option options [Integer] :iops
    #   The new Provisioned IOPS (I/O operations per second) value for the RDS
    #   instance.
    #
    #   Changing this setting doesn't result in an outage and the change is
    #   applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is enabled for this request. If you are
    #   migrating from Provisioned IOPS to standard storage, set this value to
    #   0. The DB instance will require a reboot for the change in storage
    #   type to take effect.
    #
    #   If you choose to migrate your DB instance from using standard storage
    #   to using Provisioned IOPS, or from using Provisioned IOPS to using
    #   standard storage, the process can take time. The duration of the
    #   migration depends on several factors such as database load, storage
    #   size, storage type (standard or Provisioned IOPS), amount of IOPS
    #   provisioned (if any), and the number of prior scale storage
    #   operations. Typical migration times are under 24 hours, but the
    #   process can take up to several days in some cases. During the
    #   migration, the DB instance is available for use, but might experience
    #   performance degradation. While the migration takes place, nightly
    #   backups for the instance are suspended. No other Amazon RDS operations
    #   can take place for the instance, including modifying the instance,
    #   rebooting the instance, deleting the instance, creating a read replica
    #   for the instance, and creating a DB snapshot of the instance.
    #
    #   Constraints: For MariaDB, MySQL, Oracle, and PostgreSQL, the value
    #   supplied must be at least 10% greater than the current value. Values
    #   that are not at least 10% greater than the existing value are rounded
    #   up so that they are 10% greater than the current value.
    #
    #   Default: Uses existing setting
    # @option options [String] :option_group_name
    #   A value that indicates the DB instance should be associated with the
    #   specified option group.
    #
    #   Changing this parameter doesn't result in an outage, with one
    #   exception. If the parameter change results in an option group that
    #   enables OEM, it can cause a brief period, lasting less than a second,
    #   during which new connections are rejected but existing connections
    #   aren't interrupted.
    #
    #   The change is applied during the next maintenance window unless the
    #   `ApplyImmediately` parameter is enabled for this request.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance after it is associated with a DB
    #   instance.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :new_db_instance_identifier
    #   The new DB instance identifier for the DB instance when renaming a DB
    #   instance. When you change the DB instance identifier, an instance
    #   reboot occurs immediately if you enable `ApplyImmediately`, or will
    #   occur during the next maintenance window if you disable Apply
    #   Immediately. This value is stored as a lowercase string.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `mydbinstance`
    # @option options [String] :storage_type
    #   Specifies the storage type to be associated with the DB instance.
    #
    #   If you specify Provisioned IOPS (`io1`), you must also include a value
    #   for the `Iops` parameter.
    #
    #   If you choose to migrate your DB instance from using standard storage
    #   to using Provisioned IOPS, or from using Provisioned IOPS to using
    #   standard storage, the process can take time. The duration of the
    #   migration depends on several factors such as database load, storage
    #   size, storage type (standard or Provisioned IOPS), amount of IOPS
    #   provisioned (if any), and the number of prior scale storage
    #   operations. Typical migration times are under 24 hours, but the
    #   process can take up to several days in some cases. During the
    #   migration, the DB instance is available for use, but might experience
    #   performance degradation. While the migration takes place, nightly
    #   backups for the instance are suspended. No other Amazon RDS operations
    #   can take place for the instance, including modifying the instance,
    #   rebooting the instance, deleting the instance, creating a read replica
    #   for the instance, and creating a DB snapshot of the instance.
    #
    #   Valid values: `standard | gp2 | io1`
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
    # @option options [String] :ca_certificate_identifier
    #   Specifies the certificate to associate with the DB instance.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :domain
    #   The Active Directory directory ID to move the DB instance to. Specify
    #   `none` to remove the instance from its current domain. You must create
    #   the domain before this operation. Currently, you can create only
    #   MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB instances in an
    #   Active Directory Domain.
    #
    #   For more information, see [ Kerberos Authentication][1] in the *Amazon
    #   RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    # @option options [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the DB instance
    #   to snapshots of the DB instance. By default, tags are not copied.
    #
    #   **Amazon Aurora**
    #
    #   Not applicable. Copying tags to snapshots is managed by the DB
    #   cluster. Setting this value for an Aurora DB instance has no effect on
    #   the DB cluster setting. For more information, see `ModifyDBCluster`.
    # @option options [Integer] :monitoring_interval
    #   The interval, in seconds, between points when Enhanced Monitoring
    #   metrics are collected for the DB instance. To disable collecting
    #   Enhanced Monitoring metrics, specify 0, which is the default.
    #
    #   If `MonitoringRoleArn` is specified, set `MonitoringInterval` to a
    #   value other than 0.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Valid Values: `0, 1, 5, 10, 15, 30, 60`
    # @option options [Integer] :db_port_number
    #   The port number on which the database accepts connections.
    #
    #   The value of the `DBPortNumber` parameter must not match any of the
    #   port values specified for options in the option group for the DB
    #   instance.
    #
    #   If you change the `DBPortNumber` value, your database restarts
    #   regardless of the value of the `ApplyImmediately` parameter.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   **MySQL**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   **MariaDB**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    #
    #   **PostgreSQL**
    #
    #   Default: `5432`
    #
    #   Valid values: `1150-65535`
    #
    #   Type: Integer
    #
    #   **Oracle**
    #
    #   Default: `1521`
    #
    #   Valid values: `1150-65535`
    #
    #   **SQL Server**
    #
    #   Default: `1433`
    #
    #   Valid values: `1150-65535` except `1234`, `1434`, `3260`, `3343`,
    #   `3389`, `47001`, and `49152-49156`.
    #
    #   **Amazon Aurora**
    #
    #   Default: `3306`
    #
    #   Valid values: `1150-65535`
    # @option options [Boolean] :publicly_accessible
    #   A value that indicates whether the DB instance is publicly accessible.
    #
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal DB
    #   instance with a DNS name that resolves to a private IP address.
    #
    #   `PubliclyAccessible` only applies to DB instances in a VPC. The DB
    #   instance must be part of a public subnet and `PubliclyAccessible` must
    #   be enabled for it to be publicly accessible.
    #
    #   Changes to the `PubliclyAccessible` parameter are applied immediately
    #   regardless of the value of the `ApplyImmediately` parameter.
    # @option options [String] :monitoring_role_arn
    #   The ARN for the IAM role that permits RDS to send enhanced monitoring
    #   metrics to Amazon CloudWatch Logs. For example,
    #   `arn:aws:iam:123456789012:role/emaccess`. For information on creating
    #   a monitoring role, see [To create an IAM role for Amazon RDS Enhanced
    #   Monitoring][1] in the *Amazon RDS User Guide.*
    #
    #   If `MonitoringInterval` is set to a value other than 0, supply a
    #   `MonitoringRoleArn` value.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.html#USER_Monitoring.OS.IAMRole
    # @option options [String] :domain_iam_role_name
    #   The name of the IAM role to use when making API calls to the Directory
    #   Service.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Integer] :promotion_tier
    #   A value that specifies the order in which an Aurora Replica is
    #   promoted to the primary instance after a failure of the existing
    #   primary instance. For more information, see [ Fault Tolerance for an
    #   Aurora DB Cluster][1] in the *Amazon Aurora User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: 1
    #
    #   Valid Values: 0 - 15
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Managing.Backups.html#Aurora.Managing.FaultTolerance
    # @option options [Boolean] :enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   This setting doesn't apply to Amazon Aurora. Mapping Amazon Web
    #   Services IAM accounts to database accounts is managed by the DB
    #   cluster.
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
    # @option options [Boolean] :enable_performance_insights
    #   A value that indicates whether to enable Performance Insights for the
    #   DB instance.
    #
    #   For more information, see [Using Amazon Performance Insights][1] in
    #   the *Amazon Relational Database Service User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html
    # @option options [String] :performance_insights_kms_key_id
    #   The Amazon Web Services KMS key identifier for encryption of
    #   Performance Insights data.
    #
    #   The Amazon Web Services KMS key identifier is the key ARN, key ID,
    #   alias ARN, or alias name for the KMS key.
    #
    #   If you do not specify a value for `PerformanceInsightsKMSKeyId`, then
    #   Amazon RDS uses your default KMS key. There is a default KMS key for
    #   your Amazon Web Services account. Your Amazon Web Services account has
    #   a different default KMS key for each Amazon Web Services Region.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Integer] :performance_insights_retention_period
    #   The amount of time, in days, to retain Performance Insights data.
    #   Valid values are 7 or 731 (2 years).
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Types::CloudwatchLogsExportConfiguration] :cloudwatch_logs_export_configuration
    #   The configuration setting for the log types to be enabled for export
    #   to CloudWatch Logs for a specific DB instance.
    #
    #   A change to the `CloudwatchLogsExportConfiguration` parameter is
    #   always applied to the DB instance immediately. Therefore, the
    #   `ApplyImmediately` parameter has no effect.
    #
    #   This setting doesn't apply to RDS Custom.
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
    # @option options [Boolean] :deletion_protection
    #   A value that indicates whether the DB instance has deletion protection
    #   enabled. The database can't be deleted when deletion protection is
    #   enabled. By default, deletion protection isn't enabled. For more
    #   information, see [ Deleting a DB Instance][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_DeleteInstance.html
    # @option options [Integer] :max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    # @option options [Boolean] :certificate_rotation_restart
    #   A value that indicates whether the DB instance is restarted when you
    #   rotate your SSL/TLS certificate.
    #
    #   By default, the DB instance is restarted when you rotate your SSL/TLS
    #   certificate. The certificate is not updated until the DB instance is
    #   restarted.
    #
    #   Set this parameter only if you are *not* using SSL/TLS to connect to
    #   the DB instance.
    #
    #   If you are using SSL/TLS to connect to the DB instance, follow the
    #   appropriate instructions for your DB engine to rotate your SSL/TLS
    #   certificate:
    #
    #   * For more information about rotating your SSL/TLS certificate for RDS
    #     DB engines, see [ Rotating Your SSL/TLS Certificate.][1] in the
    #     *Amazon RDS User Guide.*
    #
    #   * For more information about rotating your SSL/TLS certificate for
    #     Aurora DB engines, see [ Rotating Your SSL/TLS Certificate][2] in
    #     the *Amazon Aurora User Guide.*
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html
    # @option options [String] :replica_mode
    #   A value that sets the open mode of a replica database to either
    #   mounted or read-only.
    #
    #   <note markdown="1"> Currently, this parameter is only supported for Oracle DB instances.
    #
    #    </note>
    #
    #   Mounted DB replicas are included in Oracle Enterprise Edition. The
    #   main use case for mounted replicas is cross-Region disaster recovery.
    #   The primary database doesn't use Active Data Guard to transmit
    #   information to the mounted replica. Because it doesn't accept user
    #   connections, a mounted replica can't serve a read-only workload. For
    #   more information, see [Working with Oracle Read Replicas for Amazon
    #   RDS][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/oracle-read-replicas.html
    # @option options [Boolean] :enable_customer_owned_ip
    #   A value that indicates whether to enable a customer-owned IP address
    #   (CoIP) for an RDS on Outposts DB instance.
    #
    #   A *CoIP* provides local or external connectivity to resources in your
    #   Outpost subnets through your on-premises network. For some use cases,
    #   a CoIP can provide lower latency for connections to the DB instance
    #   from outside of its virtual private cloud (VPC) on your local network.
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
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing
    # @option options [String] :aws_backup_recovery_point_arn
    #   The Amazon Resource Name (ARN) of the recovery point in Amazon Web
    #   Services Backup.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :automation_mode
    #   The automation mode of the RDS Custom DB instance: `full` or `all
    #   paused`. If `full`, the DB instance automates monitoring and instance
    #   recovery. If `all paused`, the instance pauses automation for the
    #   duration set by `ResumeFullAutomationModeMinutes`.
    # @option options [Integer] :resume_full_automation_mode_minutes
    #   The number of minutes to pause the automation. When the time period
    #   ends, RDS Custom resumes full automation. The minimum value is `60`
    #   (default). The maximum value is `1,440`.
    # @return [DBInstance]
    def modify(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.modify_db_instance(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.promote({
    #     backup_retention_period: 1,
    #     preferred_backup_window: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [Integer] :backup_retention_period
    #   The number of days for which automated backups are retained. Setting
    #   this parameter to a positive number enables backups. Setting this
    #   parameter to 0 disables automated backups.
    #
    #   Default: 1
    #
    #   Constraints:
    #
    #   * Must be a value from 0 to 35.
    #
    #   * Can't be set to 0 if the DB instance is a source to read replicas.
    # @option options [String] :preferred_backup_window
    #   The daily time range during which automated backups are created if
    #   automated backups are enabled, using the `BackupRetentionPeriod`
    #   parameter.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time for each Amazon Web Services Region. To see the time
    #   blocks available, see [ Adjusting the Preferred Maintenance Window][1]
    #   in the *Amazon RDS User Guide.*
    #
    #   Constraints:
    #
    #   * Must be in the format `hh24:mi-hh24:mi`.
    #
    #   * Must be in Universal Coordinated Time (UTC).
    #
    #   * Must not conflict with the preferred maintenance window.
    #
    #   * Must be at least 30 minutes.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/AdjustingTheMaintenanceWindow.html
    # @return [DBInstance]
    def promote(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.promote_read_replica(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.reboot({
    #     force_failover: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Boolean] :force_failover
    #   A value that indicates whether the reboot is conducted through a
    #   Multi-AZ failover.
    #
    #   Constraint: You can't enable force failover if the instance isn't
    #   configured for Multi-AZ.
    # @return [DBInstance]
    def reboot(options = {})
      options = options.merge(db_instance_identifier: @id)
      resp = @client.reboot_db_instance(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbinstance = db_instance.restore({
    #     target_db_instance_identifier: "String", # required
    #     restore_time: Time.now,
    #     use_latest_restorable_time: false,
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
    #     copy_tags_to_snapshot: false,
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
    #     source_dbi_resource_id: "String",
    #     max_allocated_storage: 1,
    #     source_db_instance_automated_backups_arn: "String",
    #     enable_customer_owned_ip: false,
    #     custom_iam_instance_profile: "String",
    #     backup_target: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :target_db_instance_identifier
    #   The name of the new DB instance to be created.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 letters, numbers, or hyphens
    #
    #   * First character must be a letter
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens
    # @option options [Time,DateTime,Date,Integer,String] :restore_time
    #   The date and time to restore from.
    #
    #   Valid Values: Value must be a time in Universal Coordinated Time (UTC)
    #   format
    #
    #   Constraints:
    #
    #   * Must be before the latest restorable time for the DB instance
    #
    #   * Can't be specified if the `UseLatestRestorableTime` parameter is
    #     enabled
    #
    #   Example: `2009-09-07T23:45:00Z`
    # @option options [Boolean] :use_latest_restorable_time
    #   A value that indicates whether the DB instance is restored from the
    #   latest backup time. By default, the DB instance isn't restored from
    #   the latest backup time.
    #
    #   Constraints: Can't be specified if the `RestoreTime` parameter is
    #   provided.
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
    #   Constraints: Value must be `1150-65535`
    #
    #   Default: The same port as the original DB instance.
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
    #   Example: `mySubnetgroup`
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
    #   When the DB cluster is publicly accessible, its Domain Name System
    #   (DNS) endpoint resolves to the private IP address from within the DB
    #   cluster's virtual private cloud (VPC). It resolves to the public IP
    #   address from outside of the DB cluster's VPC. Access to the DB
    #   cluster is ultimately controlled by the security group it uses. That
    #   public access isn't permitted if the security group assigned to the
    #   DB cluster doesn't permit it.
    #
    #   When the DB instance isn't publicly accessible, it is an internal DB
    #   instance with a DNS name that resolves to a private IP address.
    #
    #   For more information, see CreateDBInstance.
    # @option options [Boolean] :auto_minor_version_upgrade
    #   A value that indicates whether minor version upgrades are applied
    #   automatically to the DB instance during the maintenance window.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   <note markdown="1"> This parameter isn't supported for the MySQL or MariaDB engines. It
    #   also doesn't apply to RDS Custom.
    #
    #    </note>
    # @option options [String] :engine
    #   The database engine to use for the new instance.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   Default: The same as source
    #
    #   Constraint: Must be compatible with the engine of the source
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
    #   The amount of Provisioned IOPS (input/output operations per second) to
    #   be initially allocated for the DB instance.
    #
    #   Constraints: Must be an integer greater than 1000.
    #
    #   **SQL Server**
    #
    #   Setting the IOPS value for the SQL Server database engine isn't
    #   supported.
    # @option options [String] :option_group_name
    #   The name of the option group to be used for the restored DB instance.
    #
    #   Permanent options, such as the TDE option for Oracle Advanced Security
    #   TDE, can't be removed from an option group, and that option group
    #   can't be removed from a DB instance after it is associated with a DB
    #   instance
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Boolean] :copy_tags_to_snapshot
    #   A value that indicates whether to copy all tags from the restored DB
    #   instance to snapshots of the DB instance. By default, tags are not
    #   copied.
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
    #   Valid values: `standard | gp2 | io1`
    #
    #   If you specify `io1`, you must also include a value for the `Iops`
    #   parameter.
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
    #   in. Create the domain before running this command. Currently, you can
    #   create only the MySQL, Microsoft SQL Server, Oracle, and PostgreSQL DB
    #   instances in an Active Directory Domain.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   For more information, see [ Kerberos Authentication][1] in the *Amazon
    #   RDS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/kerberos-authentication.html
    # @option options [String] :domain_iam_role_name
    #   Specify the name of the IAM role to be used when making API calls to
    #   the Directory Service.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Boolean] :enable_iam_database_authentication
    #   A value that indicates whether to enable mapping of Amazon Web
    #   Services Identity and Access Management (IAM) accounts to database
    #   accounts. By default, mapping isn't enabled.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #   For more information about IAM database authentication, see [ IAM
    #   Database Authentication for MySQL and PostgreSQL][1] in the *Amazon
    #   RDS User Guide.*
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
    #   If you do not specify a value for `DBParameterGroupName`, then the
    #   default `DBParameterGroup` for the specified DB engine is used.
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
    # @option options [String] :source_dbi_resource_id
    #   The resource ID of the source DB instance from which to restore.
    # @option options [Integer] :max_allocated_storage
    #   The upper limit in gibibytes (GiB) to which Amazon RDS can
    #   automatically scale the storage of the DB instance.
    #
    #   For more information about this setting, including limitations that
    #   apply to it, see [ Managing capacity automatically with Amazon RDS
    #   storage autoscaling][1] in the *Amazon RDS User Guide*.
    #
    #   This setting doesn't apply to RDS Custom.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.Autoscaling
    # @option options [String] :source_db_instance_automated_backups_arn
    #   The Amazon Resource Name (ARN) of the replicated automated backups
    #   from which to restore, for example,
    #   `arn:aws:rds:useast-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE`.
    #
    #   This setting doesn't apply to RDS Custom.
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
    #   [2]: https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#ip-addressing
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
    #   IAM and your VPC][1] in the *Amazon Relational Database Service User
    #   Guide*.
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
    # @return [DBInstance]
    def restore(options = {})
      options = options.merge(source_db_instance_identifier: @id)
      resp = @client.restore_db_instance_to_point_in_time(options)
      DBInstance.new(
        id: resp.data.db_instance.db_instance_identifier,
        data: resp.data.db_instance,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_instance.subscribe_to({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to add a
    #   source identifier to.
    # @return [EventSubscription]
    def subscribe_to(options = {})
      options = options.merge(source_identifier: @id)
      resp = @client.add_source_identifier_to_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_instance.unsubscribe_from({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to remove
    #   a source identifier from.
    # @return [EventSubscription]
    def unsubscribe_from(options = {})
      options = options.merge(source_identifier: @id)
      resp = @client.remove_source_identifier_from_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @!group Associations

    # @return [Certificate, nil]
    def certificate
      if data[:ca_certificate_identifier]
        Certificate.new(
          id: data[:ca_certificate_identifier],
          client: @client
        )
      else
        nil
      end
    end

    # @return [DBCluster, nil]
    def cluster
      if data[:db_cluster_identifier]
        DBCluster.new(
          id: data[:db_cluster_identifier],
          client: @client
        )
      else
        nil
      end
    end

    # @example Request syntax with placeholder values
    #
    #   events = db_instance.events({
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
          source_type: "db-instance",
          source_identifier: @id
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

    # @example Request syntax with placeholder values
    #
    #   log_files = db_instance.log_files({
    #     filename_contains: "String",
    #     file_last_written: 1,
    #     file_size: 1,
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :filename_contains
    #   Filters the available log files for log file names that contain the
    #   specified string.
    # @option options [Integer] :file_last_written
    #   Filters the available log files for files written since the specified
    #   date, in POSIX timestamp format with milliseconds.
    # @option options [Integer] :file_size
    #   Filters the available log files for files larger than the specified
    #   size.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter isn't currently supported.
    # @return [DBLogFile::Collection]
    def log_files(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(db_instance_identifier: @id)
        resp = @client.describe_db_log_files(options)
        resp.each_page do |page|
          batch = []
          page.data.describe_db_log_files.each do |d|
            batch << DBLogFile.new(
              instance_id: @id,
              name: d.log_file_name,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBLogFile::Collection.new(batches)
    end

    # @return [OptionGroup::Collection]
    def option_groups
      batch = []
      data[:option_group_memberships].each do |d|
        batch << OptionGroup.new(
          name: d[:option_group_name],
          client: @client
        )
      end
      OptionGroup::Collection.new([batch], size: batch.size)
    end

    # @return [DBParameterGroup::Collection]
    def parameter_groups
      batch = []
      data[:db_parameter_groups].each do |d|
        batch << DBParameterGroup.new(
          name: d[:db_parameter_group_name],
          client: @client
        )
      end
      DBParameterGroup::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   pending_maintenance_actions = db_instance.pending_maintenance_actions({
    #     resource_identifier: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [String] :resource_identifier
    #   The ARN of a resource to return pending maintenance actions for.
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more resources to return pending
    #   maintenance actions for.
    #
    #   Supported filters:
    #
    #   * `db-cluster-id` - Accepts DB cluster identifiers and DB cluster
    #     Amazon Resource Names (ARNs). The results list will only include
    #     pending maintenance actions for the DB clusters identified by these
    #     ARNs.
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     ARNs. The results list will only include pending maintenance actions
    #     for the DB instances identified by these ARNs.
    # @return [PendingMaintenanceAction::Collection]
    def pending_maintenance_actions(options = {})
      batches = Enumerator.new do |y|
        options = Aws::Util.deep_merge(options, filters: [{
          name: "db-instance-id",
          values: [@id]
        }])
        resp = @client.describe_pending_maintenance_actions(options)
        resp.each_page do |page|
          batch = []
          page.data.pending_maintenance_actions_0.pending_maintenance_action_details.each do |p|
            batch << PendingMaintenanceAction.new(
              target_arn: resp.data.pending_maintenance_actions[0].resource_identifier,
              name: p.action,
              data: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      PendingMaintenanceAction::Collection.new(batches)
    end

    # @return [DBInstance::Collection]
    def read_replicas
      batch = []
      data[:read_replica_db_instance_identifiers].each do |d|
        batch << DBInstance.new(
          id: d,
          client: @client
        )
      end
      DBInstance::Collection.new([batch], size: batch.size)
    end

    # @return [DBSecurityGroup::Collection]
    def security_groups
      batch = []
      data[:db_security_groups].each do |d|
        batch << DBSecurityGroup.new(
          name: d[:db_security_group_name],
          client: @client
        )
      end
      DBSecurityGroup::Collection.new([batch], size: batch.size)
    end

    # @example Request syntax with placeholder values
    #
    #   snapshots = db_instance.snapshots({
    #     db_snapshot_identifier: "String",
    #     snapshot_type: "String",
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #     include_shared: false,
    #     include_public: false,
    #     dbi_resource_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :db_snapshot_identifier
    #   A specific DB snapshot identifier to describe. This parameter can't
    #   be used in conjunction with `DBInstanceIdentifier`. This value is
    #   stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * If supplied, must match the identifier of an existing DBSnapshot.
    #
    #   * If this identifier is for an automated snapshot, the `SnapshotType`
    #     parameter must also be specified.
    # @option options [String] :snapshot_type
    #   The type of snapshots to be returned. You can specify one of the
    #   following values:
    #
    #   * `automated` - Return all DB snapshots that have been automatically
    #     taken by Amazon RDS for my Amazon Web Services account.
    #
    #   * `manual` - Return all DB snapshots that have been taken by my Amazon
    #     Web Services account.
    #
    #   * `shared` - Return all manual DB snapshots that have been shared to
    #     my Amazon Web Services account.
    #
    #   * `public` - Return all DB snapshots that have been marked as public.
    #
    #   * `awsbackup` - Return the DB snapshots managed by the Amazon Web
    #     Services Backup service.
    #
    #     For information about Amazon Web Services Backup, see the [ *Amazon
    #     Web Services Backup Developer Guide.* ][1]
    #
    #     The `awsbackup` type does not apply to Aurora.
    #
    #   If you don't specify a `SnapshotType` value, then both automated and
    #   manual snapshots are returned. Shared and public DB snapshots are not
    #   included in the returned results by default. You can include shared
    #   snapshots with these results by enabling the `IncludeShared`
    #   parameter. You can include public snapshots with these results by
    #   enabling the `IncludePublic` parameter.
    #
    #   The `IncludeShared` and `IncludePublic` parameters don't apply for
    #   `SnapshotType` values of `manual` or `automated`. The `IncludePublic`
    #   parameter doesn't apply when `SnapshotType` is set to `shared`. The
    #   `IncludeShared` parameter doesn't apply when `SnapshotType` is set to
    #   `public`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html
    # @option options [Array<Types::Filter>] :filters
    #   A filter that specifies one or more DB snapshots to describe.
    #
    #   Supported filters:
    #
    #   * `db-instance-id` - Accepts DB instance identifiers and DB instance
    #     Amazon Resource Names (ARNs).
    #
    #   * `db-snapshot-id` - Accepts DB snapshot identifiers.
    #
    #   * `dbi-resource-id` - Accepts identifiers of source DB instances.
    #
    #   * `snapshot-type` - Accepts types of DB snapshots.
    #
    #   * `engine` - Accepts names of database engines.
    # @option options [Boolean] :include_shared
    #   A value that indicates whether to include shared manual DB cluster
    #   snapshots from other Amazon Web Services accounts that this Amazon Web
    #   Services account has been given permission to copy or restore. By
    #   default, these snapshots are not included.
    #
    #   You can give an Amazon Web Services account permission to restore a
    #   manual DB snapshot from another Amazon Web Services account by using
    #   the `ModifyDBSnapshotAttribute` API action.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [Boolean] :include_public
    #   A value that indicates whether to include manual DB cluster snapshots
    #   that are public and can be copied or restored by any Amazon Web
    #   Services account. By default, the public snapshots are not included.
    #
    #   You can share a manual DB snapshot as public by using the
    #   ModifyDBSnapshotAttribute API.
    #
    #   This setting doesn't apply to RDS Custom.
    # @option options [String] :dbi_resource_id
    #   A specific DB resource ID to describe.
    # @return [DBSnapshot::Collection]
    def snapshots(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(db_instance_identifier: @id)
        resp = @client.describe_db_snapshots(options)
        resp.each_page do |page|
          batch = []
          page.data.db_snapshots.each do |d|
            batch << DBSnapshot.new(
              instance_id: options[:db_instance_identifier],
              snapshot_id: d.db_snapshot_identifier,
              data: d,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      DBSnapshot::Collection.new(batches)
    end

    # @return [DBInstance, nil]
    def source
      if data[:read_replica_source_db_instance_identifier]
        DBInstance.new(
          id: data[:read_replica_source_db_instance_identifier],
          client: @client
        )
      else
        nil
      end
    end

    # @return [DBSubnetGroup, nil]
    def subnet_group
      if data[:db_subnet_group][:db_subnet_group_name]
        DBSubnetGroup.new(
          name: data[:db_subnet_group][:db_subnet_group_name],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
