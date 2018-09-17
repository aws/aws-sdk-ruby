# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:elasticache)

module Aws::ElastiCache
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :elasticache

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::Query)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Adds up to 50 cost allocation tags to the named resource. A cost
    # allocation tag is a key-value pair where the key and value are
    # case-sensitive. You can use cost allocation tags to categorize and
    # track your AWS costs.
    #
    # When you apply tags to your ElastiCache resources, AWS generates a
    # cost allocation report as a comma-separated value (CSV) file with your
    # usage and costs aggregated by your tags. You can apply tags that
    # represent business categories (such as cost centers, application
    # names, or owners) to organize your costs across multiple services. For
    # more information, see [Using Cost Allocation Tags in Amazon
    # ElastiCache][1] in the *ElastiCache User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html
    #
    # @option params [required, String] :resource_name
    #   The Amazon Resource Name (ARN) of the resource to which the tags are
    #   to be added, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #   ElastiCache resources are *cluster* and *snapshot*.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   A list of cost allocation tags to be added to this resource. A tag is
    #   a key-value pair. A tag key must be accompanied by a tag value.
    #
    # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagListMessage#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: AddTagsToResource
    #
    #   # Adds up to 10 tags, key/value pairs, to a cluster or snapshot resource.
    #
    #   resp = client.add_tags_to_resource({
    #     resource_name: "arn:aws:elasticache:us-east-1:1234567890:cluster:my-mem-cluster", 
    #     tags: [
    #       {
    #         key: "APIVersion", 
    #         value: "20150202", 
    #       }, 
    #       {
    #         key: "Service", 
    #         value: "ElastiCache", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tag_list: [
    #       {
    #         key: "APIVersion", 
    #         value: "20150202", 
    #       }, 
    #       {
    #         key: "Service", 
    #         value: "ElastiCache", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_resource({
    #     resource_name: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AddTagsToResource AWS API Documentation
    #
    # @overload add_tags_to_resource(params = {})
    # @param [Hash] params ({})
    def add_tags_to_resource(params = {}, options = {})
      req = build_request(:add_tags_to_resource, params)
      req.send_request(options)
    end

    # Allows network ingress to a cache security group. Applications using
    # ElastiCache must be running on Amazon EC2, and Amazon EC2 security
    # groups are used as the authorization mechanism.
    #
    # <note markdown="1"> You cannot authorize ingress from an Amazon EC2 security group in one
    # region to an ElastiCache cluster in another region.
    #
    #  </note>
    #
    # @option params [required, String] :cache_security_group_name
    #   The cache security group that allows network ingress.
    #
    # @option params [required, String] :ec2_security_group_name
    #   The Amazon EC2 security group to be authorized for ingress to the
    #   cache security group.
    #
    # @option params [required, String] :ec2_security_group_owner_id
    #   The AWS account number of the Amazon EC2 security group owner. Note
    #   that this is not the same thing as an AWS access key ID - you must
    #   provide a valid AWS account number for this parameter.
    #
    # @return [Types::AuthorizeCacheSecurityGroupIngressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AuthorizeCacheSecurityGroupIngressResult#cache_security_group #cache_security_group} => Types::CacheSecurityGroup
    #
    #
    # @example Example: AuthorizeCacheCacheSecurityGroupIngress
    #
    #   # Allows network ingress to a cache security group. Applications using ElastiCache must be running on Amazon EC2. Amazon
    #   # EC2 security groups are used as the authorization mechanism.
    #
    #   resp = client.authorize_cache_security_group_ingress({
    #     cache_security_group_name: "my-sec-grp", 
    #     ec2_security_group_name: "my-ec2-sec-grp", 
    #     ec2_security_group_owner_id: "1234567890", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.authorize_cache_security_group_ingress({
    #     cache_security_group_name: "String", # required
    #     ec2_security_group_name: "String", # required
    #     ec2_security_group_owner_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_security_group.owner_id #=> String
    #   resp.cache_security_group.cache_security_group_name #=> String
    #   resp.cache_security_group.description #=> String
    #   resp.cache_security_group.ec2_security_groups #=> Array
    #   resp.cache_security_group.ec2_security_groups[0].status #=> String
    #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/AuthorizeCacheSecurityGroupIngress AWS API Documentation
    #
    # @overload authorize_cache_security_group_ingress(params = {})
    # @param [Hash] params ({})
    def authorize_cache_security_group_ingress(params = {}, options = {})
      req = build_request(:authorize_cache_security_group_ingress, params)
      req.send_request(options)
    end

    # Makes a copy of an existing snapshot.
    #
    # <note markdown="1"> This operation is valid for Redis only.
    #
    #  </note>
    #
    # Users or groups that have permissions to use the `CopySnapshot`
    # operation can create their own Amazon S3 buckets and copy snapshots to
    # it. To control access to your snapshots, use an IAM policy to control
    # who has the ability to use the `CopySnapshot` operation. For more
    # information about using IAM to control the use of ElastiCache
    # operations, see [Exporting Snapshots][1] and [Authentication &amp;
    # Access Control][2].
    #
    # You could receive the following error messages.
    #
    # **Error Messages**
    #
    # * **Error Message:** The S3 bucket %s is outside of the region.
    #
    #   **Solution:** Create an Amazon S3 bucket in the same region as your
    #   snapshot. For more information, see [Step 1: Create an Amazon S3
    #   Bucket][3] in the ElastiCache User Guide.
    #
    # * **Error Message:** The S3 bucket %s does not exist.
    #
    #   **Solution:** Create an Amazon S3 bucket in the same region as your
    #   snapshot. For more information, see [Step 1: Create an Amazon S3
    #   Bucket][3] in the ElastiCache User Guide.
    #
    # * **Error Message:** The S3 bucket %s is not owned by the
    #   authenticated user.
    #
    #   **Solution:** Create an Amazon S3 bucket in the same region as your
    #   snapshot. For more information, see [Step 1: Create an Amazon S3
    #   Bucket][3] in the ElastiCache User Guide.
    #
    # * **Error Message:** The authenticated user does not have sufficient
    #   permissions to perform the desired activity.
    #
    #   **Solution:** Contact your system administrator to get the needed
    #   permissions.
    #
    # * **Error Message:** The S3 bucket %s already contains an object with
    #   key %s.
    #
    #   **Solution:** Give the `TargetSnapshotName` a new and unique value.
    #   If exporting a snapshot, you could alternatively create a new Amazon
    #   S3 bucket and use this same value for `TargetSnapshotName`.
    #
    # * <b>Error Message: </b> ElastiCache has not been granted READ
    #   permissions %s on the S3 Bucket.
    #
    #   **Solution:** Add List and Read permissions on the bucket. For more
    #   information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    #   Bucket][4] in the ElastiCache User Guide.
    #
    # * <b>Error Message: </b> ElastiCache has not been granted WRITE
    #   permissions %s on the S3 Bucket.
    #
    #   **Solution:** Add Upload/Delete permissions on the bucket. For more
    #   information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    #   Bucket][4] in the ElastiCache User Guide.
    #
    # * <b>Error Message: </b> ElastiCache has not been granted READ\_ACP
    #   permissions %s on the S3 Bucket.
    #
    #   **Solution:** Add View Permissions on the bucket. For more
    #   information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    #   Bucket][4] in the ElastiCache User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html
    # [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.html
    # [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.CreateBucket
    # [4]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess
    #
    # @option params [required, String] :source_snapshot_name
    #   The name of an existing snapshot from which to make a copy.
    #
    # @option params [required, String] :target_snapshot_name
    #   A name for the snapshot copy. ElastiCache does not permit overwriting
    #   a snapshot, therefore this name must be unique within its context -
    #   ElastiCache or an Amazon S3 bucket if exporting.
    #
    # @option params [String] :target_bucket
    #   The Amazon S3 bucket to which the snapshot is exported. This parameter
    #   is used only when exporting a snapshot for external access.
    #
    #   When using this parameter to export a snapshot, be sure Amazon
    #   ElastiCache has the needed permissions to this S3 bucket. For more
    #   information, see [Step 2: Grant ElastiCache Access to Your Amazon S3
    #   Bucket][1] in the *Amazon ElastiCache User Guide*.
    #
    #   For more information, see [Exporting a Snapshot][2] in the *Amazon
    #   ElastiCache User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html#Snapshots.Exporting.GrantAccess
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Snapshots.Exporting.html
    #
    # @return [Types::CopySnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopySnapshotResult#snapshot #snapshot} => Types::Snapshot
    #
    #
    # @example Example: CopySnapshot
    #
    #   # Copies a snapshot to a specified name.
    #
    #   resp = client.copy_snapshot({
    #     source_snapshot_name: "my-snapshot", 
    #     target_bucket: "", 
    #     target_snapshot_name: "my-snapshot-copy", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshot: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_create_time: Time.parse("2016-12-21T22:24:04.955Z"), 
    #       cache_cluster_id: "my-redis4", 
    #       cache_node_type: "cache.m3.large", 
    #       cache_parameter_group_name: "default.redis3.2", 
    #       cache_subnet_group_name: "default", 
    #       engine: "redis", 
    #       engine_version: "3.2.4", 
    #       node_snapshots: [
    #         {
    #           cache_node_create_time: Time.parse("2016-12-21T22:24:04.955Z"), 
    #           cache_node_id: "0001", 
    #           cache_size: "3 MB", 
    #           snapshot_create_time: Time.parse("2016-12-28T07:00:52Z"), 
    #         }, 
    #       ], 
    #       num_cache_nodes: 1, 
    #       port: 6379, 
    #       preferred_availability_zone: "us-east-1c", 
    #       preferred_maintenance_window: "tue:09:30-tue:10:30", 
    #       snapshot_name: "my-snapshot-copy", 
    #       snapshot_retention_limit: 7, 
    #       snapshot_source: "manual", 
    #       snapshot_status: "creating", 
    #       snapshot_window: "07:00-08:00", 
    #       vpc_id: "vpc-3820329f3", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_snapshot({
    #     source_snapshot_name: "String", # required
    #     target_snapshot_name: "String", # required
    #     target_bucket: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.replication_group_id #=> String
    #   resp.snapshot.replication_group_description #=> String
    #   resp.snapshot.cache_cluster_id #=> String
    #   resp.snapshot.snapshot_status #=> String
    #   resp.snapshot.snapshot_source #=> String
    #   resp.snapshot.cache_node_type #=> String
    #   resp.snapshot.engine #=> String
    #   resp.snapshot.engine_version #=> String
    #   resp.snapshot.num_cache_nodes #=> Integer
    #   resp.snapshot.preferred_availability_zone #=> String
    #   resp.snapshot.cache_cluster_create_time #=> Time
    #   resp.snapshot.preferred_maintenance_window #=> String
    #   resp.snapshot.topic_arn #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.cache_parameter_group_name #=> String
    #   resp.snapshot.cache_subnet_group_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.auto_minor_version_upgrade #=> Boolean
    #   resp.snapshot.snapshot_retention_limit #=> Integer
    #   resp.snapshot.snapshot_window #=> String
    #   resp.snapshot.num_node_groups #=> Integer
    #   resp.snapshot.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.snapshot.node_snapshots #=> Array
    #   resp.snapshot.node_snapshots[0].cache_cluster_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_id #=> String
    #   resp.snapshot.node_snapshots[0].cache_node_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.node_group_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.slots #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_count #=> Integer
    #   resp.snapshot.node_snapshots[0].node_group_configuration.primary_availability_zone #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones #=> Array
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones[0] #=> String
    #   resp.snapshot.node_snapshots[0].cache_size #=> String
    #   resp.snapshot.node_snapshots[0].cache_node_create_time #=> Time
    #   resp.snapshot.node_snapshots[0].snapshot_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CopySnapshot AWS API Documentation
    #
    # @overload copy_snapshot(params = {})
    # @param [Hash] params ({})
    def copy_snapshot(params = {}, options = {})
      req = build_request(:copy_snapshot, params)
      req.send_request(options)
    end

    # Creates a cluster. All nodes in the cluster run the same
    # protocol-compliant cache engine software, either Memcached or Redis.
    #
    # This operation is not supported for Redis (cluster mode enabled)
    # clusters.
    #
    # @option params [required, String] :cache_cluster_id
    #   The node group (shard) identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   **Constraints:**
    #
    #   * A name must contain from 1 to 20 alphanumeric characters or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * A name cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [String] :replication_group_id
    #   The ID of the replication group to which this cluster should belong.
    #   If this parameter is specified, the cluster is added to the specified
    #   replication group as a read replica; otherwise, the cluster is a
    #   standalone primary that is not part of any replication group.
    #
    #   If the specified replication group is Multi-AZ enabled and the
    #   Availability Zone is not specified, the cluster is created in
    #   Availability Zones that provide the best spread of read replicas
    #   across Availability Zones.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    # @option params [String] :az_mode
    #   Specifies whether the nodes in this Memcached cluster are created in a
    #   single Availability Zone or created across multiple Availability Zones
    #   in the cluster's region.
    #
    #   This parameter is only supported for Memcached clusters.
    #
    #   If the `AZMode` and `PreferredAvailabilityZones` are not specified,
    #   ElastiCache assumes `single-az` mode.
    #
    # @option params [String] :preferred_availability_zone
    #   The EC2 Availability Zone in which the cluster is created.
    #
    #   All nodes belonging to this Memcached cluster are placed in the
    #   preferred Availability Zone. If you want to create your nodes across
    #   multiple Availability Zones, use `PreferredAvailabilityZones`.
    #
    #   Default: System chosen Availability Zone.
    #
    # @option params [Array<String>] :preferred_availability_zones
    #   A list of the Availability Zones in which cache nodes are created. The
    #   order of the zones in the list is not important.
    #
    #   This option is only supported on Memcached.
    #
    #   <note markdown="1"> If you are creating your cluster in an Amazon VPC (recommended) you
    #   can only locate nodes in Availability Zones that are associated with
    #   the subnets in the selected subnet group.
    #
    #    The number of Availability Zones listed must equal the value of
    #   `NumCacheNodes`.
    #
    #    </note>
    #
    #   If you want all the nodes in the same Availability Zone, use
    #   `PreferredAvailabilityZone` instead, or repeat the Availability Zone
    #   multiple times in the list.
    #
    #   Default: System chosen Availability Zones.
    #
    # @option params [Integer] :num_cache_nodes
    #   The initial number of cache nodes that the cluster has.
    #
    #   For clusters running Redis, this value must be 1. For clusters running
    #   Memcached, this value must be between 1 and 20.
    #
    #   If you need more than 20 nodes for your Memcached cluster, please fill
    #   out the ElastiCache Limit Increase Request form at
    #   [http://aws.amazon.com/contact-us/elasticache-node-limit-request/][1].
    #
    #
    #
    #   [1]: http://aws.amazon.com/contact-us/elasticache-node-limit-request/
    #
    # @option params [String] :cache_node_type
    #   The compute and memory capacity of the nodes in the node group
    #   (shard).
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not supported
    #     on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on T1
    #     instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for T1
    #     or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #
    # @option params [String] :engine
    #   The name of the cache engine to be used for this cluster.
    #
    #   Valid values for this parameter are: `memcached` \| `redis`
    #
    # @option params [String] :engine_version
    #   The version number of the cache engine to be used for this cluster. To
    #   view the supported cache engine versions, use the
    #   DescribeCacheEngineVersions operation.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing cluster or replication group and
    #   create it anew with the earlier engine version.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #
    # @option params [String] :cache_parameter_group_name
    #   The name of the parameter group to associate with this cluster. If
    #   this argument is omitted, the default parameter group for the
    #   specified engine is used. You cannot use any parameter group which has
    #   `cluster-enabled='yes'` when creating a cluster.
    #
    # @option params [String] :cache_subnet_group_name
    #   The name of the subnet group to be used for the cluster.
    #
    #   Use this parameter only when you are creating a cluster in an Amazon
    #   Virtual Private Cloud (Amazon VPC).
    #
    #   If you're going to launch your cluster in an Amazon VPC, you need to
    #   create a subnet group before you start creating a cluster. For more
    #   information, see [Subnets and Subnet Groups][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html
    #
    # @option params [Array<String>] :cache_security_group_names
    #   A list of security group names to associate with this cluster.
    #
    #   Use this parameter only when you are creating a cluster outside of an
    #   Amazon Virtual Private Cloud (Amazon VPC).
    #
    # @option params [Array<String>] :security_group_ids
    #   One or more VPC security groups associated with the cluster.
    #
    #   Use this parameter only when you are creating a cluster in an Amazon
    #   Virtual Private Cloud (Amazon VPC).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of cost allocation tags to be added to this resource.
    #
    # @option params [Array<String>] :snapshot_arns
    #   A single-element string list containing an Amazon Resource Name (ARN)
    #   that uniquely identifies a Redis RDB snapshot file stored in Amazon
    #   S3. The snapshot file is used to populate the node group (shard). The
    #   Amazon S3 object name in the ARN cannot contain any commas.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    #   Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`
    #
    # @option params [String] :snapshot_name
    #   The name of a Redis snapshot from which to restore data into the new
    #   node group (shard). The snapshot status changes to `restoring` while
    #   the new node group (shard) is being created.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    # @option params [String] :preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period. Valid values for `ddd` are:
    #
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #
    # @option params [Integer] :port
    #   The port number on which each of the cache nodes accepts connections.
    #
    # @option params [String] :notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic to which notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cluster owner.
    #
    #    </note>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #
    # @option params [Integer] :snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic snapshots
    #   before deleting them. For example, if you set `SnapshotRetentionLimit`
    #   to 5, a snapshot taken today is retained for 5 days before being
    #   deleted.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    #   Default: 0 (i.e., automatic backups are disabled for this cache
    #   cluster).
    #
    # @option params [String] :snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking a
    #   daily snapshot of your node group (shard).
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #
    #   <note markdown="1"> This parameter is only valid if the `Engine` parameter is `redis`.
    #
    #    </note>
    #
    # @option params [String] :auth_token
    #   **Reserved parameter.** The password used to access a password
    #   protected server.
    #
    #   Password constraints:
    #
    #   * Must be only printable ASCII characters.
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length.
    #
    #   * Cannot contain any of the following characters: '/', '"', or
    #     '@'.
    #
    #   For more information, see [AUTH password][1] at
    #   http://redis.io/commands/AUTH.
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #
    # @return [Types::CreateCacheClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCacheClusterResult#cache_cluster #cache_cluster} => Types::CacheCluster
    #
    #
    # @example Example: CreateCacheCluster
    #
    #   # Creates a Memcached cluster with 2 nodes. 
    #
    #   resp = client.create_cache_cluster({
    #     az_mode: "cross-az", 
    #     cache_cluster_id: "my-memcached-cluster", 
    #     cache_node_type: "cache.r3.large", 
    #     cache_subnet_group_name: "default", 
    #     engine: "memcached", 
    #     engine_version: "1.4.24", 
    #     num_cache_nodes: 2, 
    #     port: 11211, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_cluster: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_id: "my-memcached-cluster", 
    #       cache_cluster_status: "creating", 
    #       cache_node_type: "cache.r3.large", 
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ], 
    #         cache_parameter_group_name: "default.memcached1.4", 
    #         parameter_apply_status: "in-sync", 
    #       }, 
    #       cache_security_groups: [
    #       ], 
    #       cache_subnet_group_name: "default", 
    #       client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:", 
    #       engine: "memcached", 
    #       engine_version: "1.4.24", 
    #       num_cache_nodes: 2, 
    #       pending_modified_values: {
    #       }, 
    #       preferred_availability_zone: "Multiple", 
    #       preferred_maintenance_window: "wed:09:00-wed:10:00", 
    #     }, 
    #   }
    #
    # @example Example: CreateCacheCluster
    #
    #   # Creates a Redis cluster with 1 node. 
    #
    #   resp = client.create_cache_cluster({
    #     auto_minor_version_upgrade: true, 
    #     cache_cluster_id: "my-redis", 
    #     cache_node_type: "cache.r3.larage", 
    #     cache_subnet_group_name: "default", 
    #     engine: "redis", 
    #     engine_version: "3.2.4", 
    #     num_cache_nodes: 1, 
    #     port: 6379, 
    #     preferred_availability_zone: "us-east-1c", 
    #     snapshot_retention_limit: 7, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_cluster: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_id: "my-redis", 
    #       cache_cluster_status: "creating", 
    #       cache_node_type: "cache.m3.large", 
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ], 
    #         cache_parameter_group_name: "default.redis3.2", 
    #         parameter_apply_status: "in-sync", 
    #       }, 
    #       cache_security_groups: [
    #       ], 
    #       cache_subnet_group_name: "default", 
    #       client_download_landing_page: "https: //console.aws.amazon.com/elasticache/home#client-download: ", 
    #       engine: "redis", 
    #       engine_version: "3.2.4", 
    #       num_cache_nodes: 1, 
    #       pending_modified_values: {
    #       }, 
    #       preferred_availability_zone: "us-east-1c", 
    #       preferred_maintenance_window: "fri: 05: 30-fri: 06: 30", 
    #       snapshot_retention_limit: 7, 
    #       snapshot_window: "10: 00-11: 00", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_cluster({
    #     cache_cluster_id: "String", # required
    #     replication_group_id: "String",
    #     az_mode: "single-az", # accepts single-az, cross-az
    #     preferred_availability_zone: "String",
    #     preferred_availability_zones: ["String"],
    #     num_cache_nodes: 1,
    #     cache_node_type: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     cache_parameter_group_name: "String",
    #     cache_subnet_group_name: "String",
    #     cache_security_group_names: ["String"],
    #     security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     snapshot_arns: ["String"],
    #     snapshot_name: "String",
    #     preferred_maintenance_window: "String",
    #     port: 1,
    #     notification_topic_arn: "String",
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: "String",
    #     auth_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_cluster.cache_cluster_id #=> String
    #   resp.cache_cluster.configuration_endpoint.address #=> String
    #   resp.cache_cluster.configuration_endpoint.port #=> Integer
    #   resp.cache_cluster.client_download_landing_page #=> String
    #   resp.cache_cluster.cache_node_type #=> String
    #   resp.cache_cluster.engine #=> String
    #   resp.cache_cluster.engine_version #=> String
    #   resp.cache_cluster.cache_cluster_status #=> String
    #   resp.cache_cluster.num_cache_nodes #=> Integer
    #   resp.cache_cluster.preferred_availability_zone #=> String
    #   resp.cache_cluster.cache_cluster_create_time #=> Time
    #   resp.cache_cluster.preferred_maintenance_window #=> String
    #   resp.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
    #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array
    #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.cache_cluster.pending_modified_values.engine_version #=> String
    #   resp.cache_cluster.pending_modified_values.cache_node_type #=> String
    #   resp.cache_cluster.notification_configuration.topic_arn #=> String
    #   resp.cache_cluster.notification_configuration.topic_status #=> String
    #   resp.cache_cluster.cache_security_groups #=> Array
    #   resp.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.cache_cluster.cache_security_groups[0].status #=> String
    #   resp.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
    #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array
    #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
    #   resp.cache_cluster.cache_subnet_group_name #=> String
    #   resp.cache_cluster.cache_nodes #=> Array
    #   resp.cache_cluster.cache_nodes[0].cache_node_id #=> String
    #   resp.cache_cluster.cache_nodes[0].cache_node_status #=> String
    #   resp.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
    #   resp.cache_cluster.cache_nodes[0].endpoint.address #=> String
    #   resp.cache_cluster.cache_nodes[0].endpoint.port #=> Integer
    #   resp.cache_cluster.cache_nodes[0].parameter_group_status #=> String
    #   resp.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
    #   resp.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
    #   resp.cache_cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.cache_cluster.security_groups #=> Array
    #   resp.cache_cluster.security_groups[0].security_group_id #=> String
    #   resp.cache_cluster.security_groups[0].status #=> String
    #   resp.cache_cluster.replication_group_id #=> String
    #   resp.cache_cluster.snapshot_retention_limit #=> Integer
    #   resp.cache_cluster.snapshot_window #=> String
    #   resp.cache_cluster.auth_token_enabled #=> Boolean
    #   resp.cache_cluster.transit_encryption_enabled #=> Boolean
    #   resp.cache_cluster.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheCluster AWS API Documentation
    #
    # @overload create_cache_cluster(params = {})
    # @param [Hash] params ({})
    def create_cache_cluster(params = {}, options = {})
      req = build_request(:create_cache_cluster, params)
      req.send_request(options)
    end

    # Creates a new Amazon ElastiCache cache parameter group. An ElastiCache
    # cache parameter group is a collection of parameters and their values
    # that are applied to all of the nodes in any cluster or replication
    # group using the CacheParameterGroup.
    #
    # A newly created CacheParameterGroup is an exact duplicate of the
    # default parameter group for the CacheParameterGroupFamily. To
    # customize the newly created CacheParameterGroup you can change the
    # values of specific parameters. For more information, see:
    #
    # * [ModifyCacheParameterGroup][1] in the ElastiCache API Reference.
    #
    # * [Parameters and Parameter Groups][2] in the ElastiCache User Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyCacheParameterGroup.html
    # [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html
    #
    # @option params [required, String] :cache_parameter_group_name
    #   A user-specified name for the cache parameter group.
    #
    # @option params [required, String] :cache_parameter_group_family
    #   The name of the cache parameter group family that the cache parameter
    #   group can be used with.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #
    # @option params [required, String] :description
    #   A user-specified description for the cache parameter group.
    #
    # @return [Types::CreateCacheParameterGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCacheParameterGroupResult#cache_parameter_group #cache_parameter_group} => Types::CacheParameterGroup
    #
    #
    # @example Example: CreateCacheParameterGroup
    #
    #   # Creates the Amazon ElastiCache parameter group custom-redis2-8.
    #
    #   resp = client.create_cache_parameter_group({
    #     cache_parameter_group_family: "redis2.8", 
    #     cache_parameter_group_name: "custom-redis2-8", 
    #     description: "Custom Redis 2.8 parameter group.", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_parameter_group: {
    #       cache_parameter_group_family: "redis2.8", 
    #       cache_parameter_group_name: "custom-redis2-8", 
    #       description: "Custom Redis 2.8 parameter group.", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_parameter_group({
    #     cache_parameter_group_name: "String", # required
    #     cache_parameter_group_family: "String", # required
    #     description: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.cache_parameter_group.cache_parameter_group_family #=> String
    #   resp.cache_parameter_group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheParameterGroup AWS API Documentation
    #
    # @overload create_cache_parameter_group(params = {})
    # @param [Hash] params ({})
    def create_cache_parameter_group(params = {}, options = {})
      req = build_request(:create_cache_parameter_group, params)
      req.send_request(options)
    end

    # Creates a new cache security group. Use a cache security group to
    # control access to one or more clusters.
    #
    # Cache security groups are only used when you are creating a cluster
    # outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are
    # creating a cluster inside of a VPC, use a cache subnet group instead.
    # For more information, see [CreateCacheSubnetGroup][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheSubnetGroup.html
    #
    # @option params [required, String] :cache_security_group_name
    #   A name for the cache security group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Cannot be the word "Default".
    #
    #   Example: `mysecuritygroup`
    #
    # @option params [required, String] :description
    #   A description for the cache security group.
    #
    # @return [Types::CreateCacheSecurityGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCacheSecurityGroupResult#cache_security_group #cache_security_group} => Types::CacheSecurityGroup
    #
    #
    # @example Example: CreateCacheSecurityGroup
    #
    #   # Creates an ElastiCache security group. ElastiCache security groups are only for clusters not running in an AWS VPC.
    #
    #   resp = client.create_cache_security_group({
    #     cache_security_group_name: "my-cache-sec-grp", 
    #     description: "Example ElastiCache security group.", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_security_group({
    #     cache_security_group_name: "String", # required
    #     description: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_security_group.owner_id #=> String
    #   resp.cache_security_group.cache_security_group_name #=> String
    #   resp.cache_security_group.description #=> String
    #   resp.cache_security_group.ec2_security_groups #=> Array
    #   resp.cache_security_group.ec2_security_groups[0].status #=> String
    #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSecurityGroup AWS API Documentation
    #
    # @overload create_cache_security_group(params = {})
    # @param [Hash] params ({})
    def create_cache_security_group(params = {}, options = {})
      req = build_request(:create_cache_security_group, params)
      req.send_request(options)
    end

    # Creates a new cache subnet group.
    #
    # Use this parameter only when you are creating a cluster in an Amazon
    # Virtual Private Cloud (Amazon VPC).
    #
    # @option params [required, String] :cache_subnet_group_name
    #   A name for the cache subnet group. This value is stored as a lowercase
    #   string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters or
    #   hyphens.
    #
    #   Example: `mysubnetgroup`
    #
    # @option params [required, String] :cache_subnet_group_description
    #   A description for the cache subnet group.
    #
    # @option params [required, Array<String>] :subnet_ids
    #   A list of VPC subnet IDs for the cache subnet group.
    #
    # @return [Types::CreateCacheSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCacheSubnetGroupResult#cache_subnet_group #cache_subnet_group} => Types::CacheSubnetGroup
    #
    #
    # @example Example: CreateCacheSubnet
    #
    #   # Creates a new cache subnet group.
    #
    #   resp = client.create_cache_subnet_group({
    #     cache_subnet_group_description: "Sample subnet group", 
    #     cache_subnet_group_name: "my-sn-grp2", 
    #     subnet_ids: [
    #       "subnet-6f28c982", 
    #       "subnet-bcd382f3", 
    #       "subnet-845b3e7c0", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_subnet_group: {
    #       cache_subnet_group_description: "My subnet group.", 
    #       cache_subnet_group_name: "my-sn-grp", 
    #       subnets: [
    #         {
    #           subnet_availability_zone: {
    #             name: "us-east-1a", 
    #           }, 
    #           subnet_identifier: "subnet-6f28c982", 
    #         }, 
    #         {
    #           subnet_availability_zone: {
    #             name: "us-east-1c", 
    #           }, 
    #           subnet_identifier: "subnet-bcd382f3", 
    #         }, 
    #         {
    #           subnet_availability_zone: {
    #             name: "us-east-1b", 
    #           }, 
    #           subnet_identifier: "subnet-845b3e7c0", 
    #         }, 
    #       ], 
    #       vpc_id: "vpc-91280df6", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cache_subnet_group({
    #     cache_subnet_group_name: "String", # required
    #     cache_subnet_group_description: "String", # required
    #     subnet_ids: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_subnet_group.cache_subnet_group_name #=> String
    #   resp.cache_subnet_group.cache_subnet_group_description #=> String
    #   resp.cache_subnet_group.vpc_id #=> String
    #   resp.cache_subnet_group.subnets #=> Array
    #   resp.cache_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.cache_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateCacheSubnetGroup AWS API Documentation
    #
    # @overload create_cache_subnet_group(params = {})
    # @param [Hash] params ({})
    def create_cache_subnet_group(params = {}, options = {})
      req = build_request(:create_cache_subnet_group, params)
      req.send_request(options)
    end

    # Creates a Redis (cluster mode disabled) or a Redis (cluster mode
    # enabled) replication group.
    #
    # A Redis (cluster mode disabled) replication group is a collection of
    # clusters, where one of the clusters is a read/write primary and the
    # others are read-only replicas. Writes to the primary are
    # asynchronously propagated to the replicas.
    #
    # A Redis (cluster mode enabled) replication group is a collection of 1
    # to 15 node groups (shards). Each node group (shard) has one read/write
    # primary node and up to 5 read-only replica nodes. Writes to the
    # primary are asynchronously propagated to the replicas. Redis (cluster
    # mode enabled) replication groups partition the data across node groups
    # (shards).
    #
    # When a Redis (cluster mode disabled) replication group has been
    # successfully created, you can add one or more read replicas to it, up
    # to a total of 5 read replicas. You cannot alter a Redis (cluster mode
    # enabled) replication group after it has been created. However, if you
    # need to increase or decrease the number of node groups (console:
    # shards), you can avail yourself of ElastiCache for Redis' enhanced
    # backup and restore. For more information, see [Restoring From a Backup
    # with Cluster Resizing][1] in the *ElastiCache User Guide*.
    #
    # <note markdown="1"> This operation is valid for Redis only.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/backups-restoring.html
    #
    # @option params [required, String] :replication_group_id
    #   The replication group identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * A name must contain from 1 to 20 alphanumeric characters or hyphens.
    #
    #   * The first character must be a letter.
    #
    #   * A name cannot end with a hyphen or contain two consecutive hyphens.
    #
    # @option params [required, String] :replication_group_description
    #   A user-created description for the replication group.
    #
    # @option params [String] :primary_cluster_id
    #   The identifier of the cluster that serves as the primary for this
    #   replication group. This cluster must already exist and have a status
    #   of `available`.
    #
    #   This parameter is not required if `NumCacheClusters`, `NumNodeGroups`,
    #   or `ReplicasPerNodeGroup` is specified.
    #
    # @option params [Boolean] :automatic_failover_enabled
    #   Specifies whether a read-only replica is automatically promoted to
    #   read/write primary if the existing primary fails.
    #
    #   If `true`, Multi-AZ is enabled for this replication group. If `false`,
    #   Multi-AZ is disabled for this replication group.
    #
    #   `AutomaticFailoverEnabled` must be enabled for Redis (cluster mode
    #   enabled) replication groups.
    #
    #   Default: false
    #
    #   Amazon ElastiCache for Redis does not support Multi-AZ with automatic
    #   failover on:
    #
    #   * Redis versions earlier than 2.8.6.
    #
    #   * Redis (cluster mode disabled): T1 and T2 cache node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #
    # @option params [Integer] :num_cache_clusters
    #   The number of clusters this replication group initially has.
    #
    #   This parameter is not used if there is more than one node group
    #   (shard). You should use `ReplicasPerNodeGroup` instead.
    #
    #   If `AutomaticFailoverEnabled` is `true`, the value of this parameter
    #   must be at least 2. If `AutomaticFailoverEnabled` is `false` you can
    #   omit this parameter (it will default to 1), or you can explicitly set
    #   it to a value between 2 and 6.
    #
    #   The maximum permitted value for `NumCacheClusters` is 6 (1 primary
    #   plus 5 replicas).
    #
    # @option params [Array<String>] :preferred_cache_cluster_a_zs
    #   A list of EC2 Availability Zones in which the replication group's
    #   clusters are created. The order of the Availability Zones in the list
    #   is the order in which clusters are allocated. The primary cluster is
    #   created in the first AZ in the list.
    #
    #   This parameter is not used if there is more than one node group
    #   (shard). You should use `NodeGroupConfiguration` instead.
    #
    #   <note markdown="1"> If you are creating your replication group in an Amazon VPC
    #   (recommended), you can only locate clusters in Availability Zones
    #   associated with the subnets in the selected subnet group.
    #
    #    The number of Availability Zones listed must equal the value of
    #   `NumCacheClusters`.
    #
    #    </note>
    #
    #   Default: system chosen Availability Zones.
    #
    # @option params [Integer] :num_node_groups
    #   An optional parameter that specifies the number of node groups
    #   (shards) for this Redis (cluster mode enabled) replication group. For
    #   Redis (cluster mode disabled) either omit this parameter or set it to
    #   1.
    #
    #   Default: 1
    #
    # @option params [Integer] :replicas_per_node_group
    #   An optional parameter that specifies the number of replica nodes in
    #   each node group (shard). Valid values are 0 to 5.
    #
    # @option params [Array<Types::NodeGroupConfiguration>] :node_group_configuration
    #   A list of node group (shard) configuration options. Each node group
    #   (shard) configuration has the following members:
    #   `PrimaryAvailabilityZone`, `ReplicaAvailabilityZones`, `ReplicaCount`,
    #   and `Slots`.
    #
    #   If you're creating a Redis (cluster mode disabled) or a Redis
    #   (cluster mode enabled) replication group, you can use this parameter
    #   to individually configure each node group (shard), or you can omit
    #   this parameter. However, when seeding a Redis (cluster mode enabled)
    #   cluster from a S3 rdb file, you must configure each node group (shard)
    #   using this parameter because you must specify the slots for each node
    #   group.
    #
    # @option params [String] :cache_node_type
    #   The compute and memory capacity of the nodes in the node group
    #   (shard).
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not supported
    #     on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on T1
    #     instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for T1
    #     or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #
    # @option params [String] :engine
    #   The name of the cache engine to be used for the clusters in this
    #   replication group.
    #
    # @option params [String] :engine_version
    #   The version number of the cache engine to be used for the clusters in
    #   this replication group. To view the supported cache engine versions,
    #   use the `DescribeCacheEngineVersions` operation.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]) in the *ElastiCache User
    #   Guide*, but you cannot downgrade to an earlier engine version. If you
    #   want to use an earlier engine version, you must delete the existing
    #   cluster or replication group and create it anew with the earlier
    #   engine version.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #
    # @option params [String] :cache_parameter_group_name
    #   The name of the parameter group to associate with this replication
    #   group. If this argument is omitted, the default cache parameter group
    #   for the specified engine is used.
    #
    #   If you are running Redis version 3.2.4 or later, only one node group
    #   (shard), and want to use a default parameter group, we recommend that
    #   you specify the parameter group by name.
    #
    #   * To create a Redis (cluster mode disabled) replication group, use
    #     `CacheParameterGroupName=default.redis3.2`.
    #
    #   * To create a Redis (cluster mode enabled) replication group, use
    #     `CacheParameterGroupName=default.redis3.2.cluster.on`.
    #
    # @option params [String] :cache_subnet_group_name
    #   The name of the cache subnet group to be used for the replication
    #   group.
    #
    #   If you're going to launch your cluster in an Amazon VPC, you need to
    #   create a subnet group before you start creating a cluster. For more
    #   information, see [Subnets and Subnet Groups][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SubnetGroups.html
    #
    # @option params [Array<String>] :cache_security_group_names
    #   A list of cache security group names to associate with this
    #   replication group.
    #
    # @option params [Array<String>] :security_group_ids
    #   One or more Amazon VPC security groups associated with this
    #   replication group.
    #
    #   Use this parameter only when you are creating a replication group in
    #   an Amazon Virtual Private Cloud (Amazon VPC).
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of cost allocation tags to be added to this resource. A tag is
    #   a key-value pair.
    #
    # @option params [Array<String>] :snapshot_arns
    #   A list of Amazon Resource Names (ARN) that uniquely identify the Redis
    #   RDB snapshot files stored in Amazon S3. The snapshot files are used to
    #   populate the new replication group. The Amazon S3 object name in the
    #   ARN cannot contain any commas. The new replication group will have the
    #   number of node groups (console: shards) specified by the parameter
    #   *NumNodeGroups* or the number of node groups configured by
    #   *NodeGroupConfiguration* regardless of the number of ARNs specified
    #   here.
    #
    #   Example of an Amazon S3 ARN: `arn:aws:s3:::my_bucket/snapshot1.rdb`
    #
    # @option params [String] :snapshot_name
    #   The name of a snapshot from which to restore data into the new
    #   replication group. The snapshot status changes to `restoring` while
    #   the new replication group is being created.
    #
    # @option params [String] :preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period. Valid values for `ddd` are:
    #
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #
    # @option params [Integer] :port
    #   The port number on which each member of the replication group accepts
    #   connections.
    #
    # @option params [String] :notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon Simple Notification
    #   Service (SNS) topic to which notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be the same as the cluster owner.
    #
    #    </note>
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #
    # @option params [Integer] :snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic snapshots
    #   before deleting them. For example, if you set `SnapshotRetentionLimit`
    #   to 5, a snapshot that was taken today is retained for 5 days before
    #   being deleted.
    #
    #   Default: 0 (i.e., automatic backups are disabled for this cluster).
    #
    # @option params [String] :snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking a
    #   daily snapshot of your node group (shard).
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #
    # @option params [String] :auth_token
    #   **Reserved parameter.** The password used to access a password
    #   protected server.
    #
    #   `AuthToken` can be specified only on replication groups where
    #   `TransitEncryptionEnabled` is `true`.
    #
    #   For HIPAA compliance, you must specify `TransitEncryptionEnabled` as
    #   `true`, an `AuthToken`, and a `CacheSubnetGroup`.
    #
    #   Password constraints:
    #
    #   * Must be only printable ASCII characters.
    #
    #   * Must be at least 16 characters and no more than 128 characters in
    #     length.
    #
    #   * Cannot contain any of the following characters: '/', '"', or
    #     '@'.
    #
    #   For more information, see [AUTH password][1] at
    #   http://redis.io/commands/AUTH.
    #
    #
    #
    #   [1]: http://redis.io/commands/AUTH
    #
    # @option params [Boolean] :transit_encryption_enabled
    #   A flag that enables in-transit encryption when set to `true`.
    #
    #   You cannot modify the value of `TransitEncryptionEnabled` after the
    #   cluster is created. To enable in-transit encryption on a cluster you
    #   must set `TransitEncryptionEnabled` to `true` when you create a
    #   cluster.
    #
    #   This parameter is valid only if the `Engine` parameter is `redis`, the
    #   `EngineVersion` parameter is `3.2.6` or `4.x`, and the cluster is
    #   being created in an Amazon VPC.
    #
    #   If you enable in-transit encryption, you must also specify a value for
    #   `CacheSubnetGroup`.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6` or `4.x`.
    #
    #   Default: `false`
    #
    #   For HIPAA compliance, you must specify `TransitEncryptionEnabled` as
    #   `true`, an `AuthToken`, and a `CacheSubnetGroup`.
    #
    # @option params [Boolean] :at_rest_encryption_enabled
    #   A flag that enables encryption at rest when set to `true`.
    #
    #   You cannot modify the value of `AtRestEncryptionEnabled` after the
    #   replication group is created. To enable encryption at rest on a
    #   replication group you must set `AtRestEncryptionEnabled` to `true`
    #   when you create the replication group.
    #
    #   **Required:** Only available when creating a replication group in an
    #   Amazon VPC using redis version `3.2.6` or `4.x`.
    #
    #   Default: `false`
    #
    # @return [Types::CreateReplicationGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateReplicationGroupResult#replication_group #replication_group} => Types::ReplicationGroup
    #
    #
    # @example Example: CreateCacheReplicationGroup
    #
    #   # Creates a Redis replication group with 3 nodes.
    #
    #   resp = client.create_replication_group({
    #     automatic_failover_enabled: true, 
    #     cache_node_type: "cache.m3.medium", 
    #     engine: "redis", 
    #     engine_version: "2.8.24", 
    #     num_cache_clusters: 3, 
    #     replication_group_description: "A Redis replication group.", 
    #     replication_group_id: "my-redis-rg", 
    #     snapshot_retention_limit: 30, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_group: {
    #       automatic_failover: "enabling", 
    #       description: "A Redis replication group.", 
    #       member_clusters: [
    #         "my-redis-rg-001", 
    #         "my-redis-rg-002", 
    #         "my-redis-rg-003", 
    #       ], 
    #       pending_modified_values: {
    #       }, 
    #       replication_group_id: "my-redis-rg", 
    #       snapshotting_cluster_id: "my-redis-rg-002", 
    #       status: "creating", 
    #     }, 
    #   }
    #
    # @example Example: CreateReplicationGroup
    #
    #   # Creates a Redis (cluster mode enabled) replication group with two shards. One shard has one read replica node and the
    #   # other shard has two read replicas.
    #
    #   resp = client.create_replication_group({
    #     auto_minor_version_upgrade: true, 
    #     cache_node_type: "cache.m3.medium", 
    #     cache_parameter_group_name: "default.redis3.2.cluster.on", 
    #     engine: "redis", 
    #     engine_version: "3.2.4", 
    #     node_group_configuration: [
    #       {
    #         primary_availability_zone: "us-east-1c", 
    #         replica_availability_zones: [
    #           "us-east-1b", 
    #         ], 
    #         replica_count: 1, 
    #         slots: "0-8999", 
    #       }, 
    #       {
    #         primary_availability_zone: "us-east-1a", 
    #         replica_availability_zones: [
    #           "us-east-1a", 
    #           "us-east-1c", 
    #         ], 
    #         replica_count: 2, 
    #         slots: "9000-16383", 
    #       }, 
    #     ], 
    #     num_node_groups: 2, 
    #     replication_group_description: "A multi-sharded replication group", 
    #     replication_group_id: "clustered-redis-rg", 
    #     snapshot_retention_limit: 8, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_group: {
    #       automatic_failover: "enabled", 
    #       description: "Sharded replication group", 
    #       member_clusters: [
    #         "rc-rg3-0001-001", 
    #         "rc-rg3-0001-002", 
    #         "rc-rg3-0002-001", 
    #         "rc-rg3-0002-002", 
    #         "rc-rg3-0002-003", 
    #       ], 
    #       pending_modified_values: {
    #       }, 
    #       replication_group_id: "clustered-redis-rg", 
    #       snapshot_retention_limit: 8, 
    #       snapshot_window: "05:30-06:30", 
    #       status: "creating", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_replication_group({
    #     replication_group_id: "String", # required
    #     replication_group_description: "String", # required
    #     primary_cluster_id: "String",
    #     automatic_failover_enabled: false,
    #     num_cache_clusters: 1,
    #     preferred_cache_cluster_a_zs: ["String"],
    #     num_node_groups: 1,
    #     replicas_per_node_group: 1,
    #     node_group_configuration: [
    #       {
    #         node_group_id: "AllowedNodeGroupId",
    #         slots: "String",
    #         replica_count: 1,
    #         primary_availability_zone: "String",
    #         replica_availability_zones: ["String"],
    #       },
    #     ],
    #     cache_node_type: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     cache_parameter_group_name: "String",
    #     cache_subnet_group_name: "String",
    #     cache_security_group_names: ["String"],
    #     security_group_ids: ["String"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #     snapshot_arns: ["String"],
    #     snapshot_name: "String",
    #     preferred_maintenance_window: "String",
    #     port: 1,
    #     notification_topic_arn: "String",
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: "String",
    #     auth_token: "String",
    #     transit_encryption_enabled: false,
    #     at_rest_encryption_enabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_group.replication_group_id #=> String
    #   resp.replication_group.description #=> String
    #   resp.replication_group.status #=> String
    #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
    #   resp.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.replication_group.member_clusters #=> Array
    #   resp.replication_group.member_clusters[0] #=> String
    #   resp.replication_group.node_groups #=> Array
    #   resp.replication_group.node_groups[0].node_group_id #=> String
    #   resp.replication_group.node_groups[0].status #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].slots #=> String
    #   resp.replication_group.node_groups[0].node_group_members #=> Array
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.replication_group.snapshotting_cluster_id #=> String
    #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.replication_group.configuration_endpoint.address #=> String
    #   resp.replication_group.configuration_endpoint.port #=> Integer
    #   resp.replication_group.snapshot_retention_limit #=> Integer
    #   resp.replication_group.snapshot_window #=> String
    #   resp.replication_group.cluster_enabled #=> Boolean
    #   resp.replication_group.cache_node_type #=> String
    #   resp.replication_group.auth_token_enabled #=> Boolean
    #   resp.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.replication_group.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateReplicationGroup AWS API Documentation
    #
    # @overload create_replication_group(params = {})
    # @param [Hash] params ({})
    def create_replication_group(params = {}, options = {})
      req = build_request(:create_replication_group, params)
      req.send_request(options)
    end

    # Creates a copy of an entire cluster or replication group at a specific
    # moment in time.
    #
    # <note markdown="1"> This operation is valid for Redis only.
    #
    #  </note>
    #
    # @option params [String] :replication_group_id
    #   The identifier of an existing replication group. The snapshot is
    #   created from this replication group.
    #
    # @option params [String] :cache_cluster_id
    #   The identifier of an existing cluster. The snapshot is created from
    #   this cluster.
    #
    # @option params [required, String] :snapshot_name
    #   A name for the snapshot being created.
    #
    # @return [Types::CreateSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSnapshotResult#snapshot #snapshot} => Types::Snapshot
    #
    #
    # @example Example: CreateSnapshot - NonClustered Redis, no read-replicas
    #
    #   # Creates a snapshot of a non-clustered Redis cluster that has only one node.
    #
    #   resp = client.create_snapshot({
    #     cache_cluster_id: "onenoderedis", 
    #     snapshot_name: "snapshot-1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshot: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_create_time: Time.parse("2017-02-03T15:43:36.278Z"), 
    #       cache_cluster_id: "onenoderedis", 
    #       cache_node_type: "cache.m3.medium", 
    #       cache_parameter_group_name: "default.redis3.2", 
    #       cache_subnet_group_name: "default", 
    #       engine: "redis", 
    #       engine_version: "3.2.4", 
    #       node_snapshots: [
    #         {
    #           cache_node_create_time: Time.parse("2017-02-03T15:43:36.278Z"), 
    #           cache_node_id: "0001", 
    #           cache_size: "", 
    #         }, 
    #       ], 
    #       num_cache_nodes: 1, 
    #       port: 6379, 
    #       preferred_availability_zone: "us-west-2c", 
    #       preferred_maintenance_window: "sat:08:00-sat:09:00", 
    #       snapshot_name: "snapshot-1", 
    #       snapshot_retention_limit: 1, 
    #       snapshot_source: "manual", 
    #       snapshot_status: "creating", 
    #       snapshot_window: "00:00-01:00", 
    #       vpc_id: "vpc-73c3cd17", 
    #     }, 
    #   }
    #
    # @example Example: CreateSnapshot - NonClustered Redis, 2 read-replicas
    #
    #   # Creates a snapshot of a non-clustered Redis cluster that has only three nodes, primary and two read-replicas.
    #   # CacheClusterId must be a specific node in the cluster.
    #
    #   resp = client.create_snapshot({
    #     cache_cluster_id: "threenoderedis-001", 
    #     snapshot_name: "snapshot-2", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshot: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_create_time: Time.parse("2017-02-03T15:43:36.278Z"), 
    #       cache_cluster_id: "threenoderedis-001", 
    #       cache_node_type: "cache.m3.medium", 
    #       cache_parameter_group_name: "default.redis3.2", 
    #       cache_subnet_group_name: "default", 
    #       engine: "redis", 
    #       engine_version: "3.2.4", 
    #       node_snapshots: [
    #         {
    #           cache_node_create_time: Time.parse("2017-02-03T15:43:36.278Z"), 
    #           cache_node_id: "0001", 
    #           cache_size: "", 
    #         }, 
    #       ], 
    #       num_cache_nodes: 1, 
    #       port: 6379, 
    #       preferred_availability_zone: "us-west-2c", 
    #       preferred_maintenance_window: "sat:08:00-sat:09:00", 
    #       snapshot_name: "snapshot-2", 
    #       snapshot_retention_limit: 1, 
    #       snapshot_source: "manual", 
    #       snapshot_status: "creating", 
    #       snapshot_window: "00:00-01:00", 
    #       vpc_id: "vpc-73c3cd17", 
    #     }, 
    #   }
    #
    # @example Example: CreateSnapshot-clustered Redis
    #
    #   # Creates a snapshot of a clustered Redis cluster that has 2 shards, each with a primary and 4 read-replicas.
    #
    #   resp = client.create_snapshot({
    #     replication_group_id: "clusteredredis", 
    #     snapshot_name: "snapshot-2x5", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshot: {
    #       auto_minor_version_upgrade: true, 
    #       automatic_failover: "enabled", 
    #       cache_node_type: "cache.m3.medium", 
    #       cache_parameter_group_name: "default.redis3.2.cluster.on", 
    #       cache_subnet_group_name: "default", 
    #       engine: "redis", 
    #       engine_version: "3.2.4", 
    #       node_snapshots: [
    #         {
    #           cache_size: "", 
    #           node_group_id: "0001", 
    #         }, 
    #         {
    #           cache_size: "", 
    #           node_group_id: "0002", 
    #         }, 
    #       ], 
    #       num_node_groups: 2, 
    #       port: 6379, 
    #       preferred_maintenance_window: "mon:09:30-mon:10:30", 
    #       replication_group_description: "Redis cluster with 2 shards.", 
    #       replication_group_id: "clusteredredis", 
    #       snapshot_name: "snapshot-2x5", 
    #       snapshot_retention_limit: 1, 
    #       snapshot_source: "manual", 
    #       snapshot_status: "creating", 
    #       snapshot_window: "12:00-13:00", 
    #       vpc_id: "vpc-73c3cd17", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_snapshot({
    #     replication_group_id: "String",
    #     cache_cluster_id: "String",
    #     snapshot_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.replication_group_id #=> String
    #   resp.snapshot.replication_group_description #=> String
    #   resp.snapshot.cache_cluster_id #=> String
    #   resp.snapshot.snapshot_status #=> String
    #   resp.snapshot.snapshot_source #=> String
    #   resp.snapshot.cache_node_type #=> String
    #   resp.snapshot.engine #=> String
    #   resp.snapshot.engine_version #=> String
    #   resp.snapshot.num_cache_nodes #=> Integer
    #   resp.snapshot.preferred_availability_zone #=> String
    #   resp.snapshot.cache_cluster_create_time #=> Time
    #   resp.snapshot.preferred_maintenance_window #=> String
    #   resp.snapshot.topic_arn #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.cache_parameter_group_name #=> String
    #   resp.snapshot.cache_subnet_group_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.auto_minor_version_upgrade #=> Boolean
    #   resp.snapshot.snapshot_retention_limit #=> Integer
    #   resp.snapshot.snapshot_window #=> String
    #   resp.snapshot.num_node_groups #=> Integer
    #   resp.snapshot.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.snapshot.node_snapshots #=> Array
    #   resp.snapshot.node_snapshots[0].cache_cluster_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_id #=> String
    #   resp.snapshot.node_snapshots[0].cache_node_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.node_group_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.slots #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_count #=> Integer
    #   resp.snapshot.node_snapshots[0].node_group_configuration.primary_availability_zone #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones #=> Array
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones[0] #=> String
    #   resp.snapshot.node_snapshots[0].cache_size #=> String
    #   resp.snapshot.node_snapshots[0].cache_node_create_time #=> Time
    #   resp.snapshot.node_snapshots[0].snapshot_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/CreateSnapshot AWS API Documentation
    #
    # @overload create_snapshot(params = {})
    # @param [Hash] params ({})
    def create_snapshot(params = {}, options = {})
      req = build_request(:create_snapshot, params)
      req.send_request(options)
    end

    # Dynamically decreases the number of replics in a Redis (cluster mode
    # disabled) replication group or the number of replica nodes in one or
    # more node groups (shards) of a Redis (cluster mode enabled)
    # replication group. This operation is performed with no cluster down
    # time.
    #
    # @option params [required, String] :replication_group_id
    #   The id of the replication group from which you want to remove replica
    #   nodes.
    #
    # @option params [Integer] :new_replica_count
    #   The number of read replica nodes you want at the completion of this
    #   operation. For Redis (cluster mode disabled) replication groups, this
    #   is the number of replica nodes in the replication group. For Redis
    #   (cluster mode enabled) replication groups, this is the number of
    #   replica nodes in each of the replication group's node groups.
    #
    #   The minimum number of replicas in a shard or replication group is:
    #
    #   * Redis (cluster mode disabled)
    #
    #     * If Multi-AZ with Automatic Failover is enabled: 1
    #
    #     * If Multi-AZ with Automatic Failover is not enabled: 0
    #
    #   * Redis (cluster mode enabled): 0 (though you will not be able to
    #     failover to a replica if your primary node fails)
    #
    # @option params [Array<Types::ConfigureShard>] :replica_configuration
    #   A list of `ConfigureShard` objects that can be used to configure each
    #   shard in a Redis (cluster mode enabled) replication group. The
    #   `ConfigureShard` has three members: `NewReplicaCount`, `NodeGroupId`,
    #   and `PreferredAvailabilityZones`.
    #
    # @option params [Array<String>] :replicas_to_remove
    #   A list of the node ids to remove from the replication group or node
    #   group (shard).
    #
    # @option params [required, Boolean] :apply_immediately
    #   If `True`, the number of replica nodes is decreased immediately. If
    #   `False`, the number of replica nodes is decreased during the next
    #   maintenance window.
    #
    # @return [Types::DecreaseReplicaCountResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DecreaseReplicaCountResult#replication_group #replication_group} => Types::ReplicationGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decrease_replica_count({
    #     replication_group_id: "String", # required
    #     new_replica_count: 1,
    #     replica_configuration: [
    #       {
    #         node_group_id: "AllowedNodeGroupId", # required
    #         new_replica_count: 1, # required
    #         preferred_availability_zones: ["String"],
    #       },
    #     ],
    #     replicas_to_remove: ["String"],
    #     apply_immediately: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_group.replication_group_id #=> String
    #   resp.replication_group.description #=> String
    #   resp.replication_group.status #=> String
    #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
    #   resp.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.replication_group.member_clusters #=> Array
    #   resp.replication_group.member_clusters[0] #=> String
    #   resp.replication_group.node_groups #=> Array
    #   resp.replication_group.node_groups[0].node_group_id #=> String
    #   resp.replication_group.node_groups[0].status #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].slots #=> String
    #   resp.replication_group.node_groups[0].node_group_members #=> Array
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.replication_group.snapshotting_cluster_id #=> String
    #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.replication_group.configuration_endpoint.address #=> String
    #   resp.replication_group.configuration_endpoint.port #=> Integer
    #   resp.replication_group.snapshot_retention_limit #=> Integer
    #   resp.replication_group.snapshot_window #=> String
    #   resp.replication_group.cluster_enabled #=> Boolean
    #   resp.replication_group.cache_node_type #=> String
    #   resp.replication_group.auth_token_enabled #=> Boolean
    #   resp.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.replication_group.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DecreaseReplicaCount AWS API Documentation
    #
    # @overload decrease_replica_count(params = {})
    # @param [Hash] params ({})
    def decrease_replica_count(params = {}, options = {})
      req = build_request(:decrease_replica_count, params)
      req.send_request(options)
    end

    # Deletes a previously provisioned cluster. `DeleteCacheCluster` deletes
    # all associated cache nodes, node endpoints and the cluster itself.
    # When you receive a successful response from this operation, Amazon
    # ElastiCache immediately begins deleting the cluster; you cannot cancel
    # or revert this operation.
    #
    # This operation cannot be used to delete a cluster that is the last
    # read replica of a replication group or node group (shard) that has
    # Multi-AZ mode enabled or a cluster from a Redis (cluster mode enabled)
    # replication group.
    #
    # This operation is not valid for Redis (cluster mode enabled) clusters.
    #
    # @option params [required, String] :cache_cluster_id
    #   The cluster identifier for the cluster to be deleted. This parameter
    #   is not case sensitive.
    #
    # @option params [String] :final_snapshot_identifier
    #   The user-supplied name of a final cluster snapshot. This is the unique
    #   name that identifies the snapshot. ElastiCache creates the snapshot,
    #   and then deletes the cluster immediately afterward.
    #
    # @return [Types::DeleteCacheClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteCacheClusterResult#cache_cluster #cache_cluster} => Types::CacheCluster
    #
    #
    # @example Example: DeleteCacheCluster
    #
    #   # Deletes an Amazon ElastiCache cluster.
    #
    #   resp = client.delete_cache_cluster({
    #     cache_cluster_id: "my-memcached", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_cluster: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_create_time: Time.parse("2016-12-22T16:05:17.314Z"), 
    #       cache_cluster_id: "my-memcached", 
    #       cache_cluster_status: "deleting", 
    #       cache_node_type: "cache.r3.large", 
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ], 
    #         cache_parameter_group_name: "default.memcached1.4", 
    #         parameter_apply_status: "in-sync", 
    #       }, 
    #       cache_security_groups: [
    #       ], 
    #       cache_subnet_group_name: "default", 
    #       client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:", 
    #       configuration_endpoint: {
    #         address: "my-memcached2.ameaqx.cfg.use1.cache.amazonaws.com", 
    #         port: 11211, 
    #       }, 
    #       engine: "memcached", 
    #       engine_version: "1.4.24", 
    #       num_cache_nodes: 2, 
    #       pending_modified_values: {
    #       }, 
    #       preferred_availability_zone: "Multiple", 
    #       preferred_maintenance_window: "tue:07:30-tue:08:30", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_cluster({
    #     cache_cluster_id: "String", # required
    #     final_snapshot_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_cluster.cache_cluster_id #=> String
    #   resp.cache_cluster.configuration_endpoint.address #=> String
    #   resp.cache_cluster.configuration_endpoint.port #=> Integer
    #   resp.cache_cluster.client_download_landing_page #=> String
    #   resp.cache_cluster.cache_node_type #=> String
    #   resp.cache_cluster.engine #=> String
    #   resp.cache_cluster.engine_version #=> String
    #   resp.cache_cluster.cache_cluster_status #=> String
    #   resp.cache_cluster.num_cache_nodes #=> Integer
    #   resp.cache_cluster.preferred_availability_zone #=> String
    #   resp.cache_cluster.cache_cluster_create_time #=> Time
    #   resp.cache_cluster.preferred_maintenance_window #=> String
    #   resp.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
    #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array
    #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.cache_cluster.pending_modified_values.engine_version #=> String
    #   resp.cache_cluster.pending_modified_values.cache_node_type #=> String
    #   resp.cache_cluster.notification_configuration.topic_arn #=> String
    #   resp.cache_cluster.notification_configuration.topic_status #=> String
    #   resp.cache_cluster.cache_security_groups #=> Array
    #   resp.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.cache_cluster.cache_security_groups[0].status #=> String
    #   resp.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
    #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array
    #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
    #   resp.cache_cluster.cache_subnet_group_name #=> String
    #   resp.cache_cluster.cache_nodes #=> Array
    #   resp.cache_cluster.cache_nodes[0].cache_node_id #=> String
    #   resp.cache_cluster.cache_nodes[0].cache_node_status #=> String
    #   resp.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
    #   resp.cache_cluster.cache_nodes[0].endpoint.address #=> String
    #   resp.cache_cluster.cache_nodes[0].endpoint.port #=> Integer
    #   resp.cache_cluster.cache_nodes[0].parameter_group_status #=> String
    #   resp.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
    #   resp.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
    #   resp.cache_cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.cache_cluster.security_groups #=> Array
    #   resp.cache_cluster.security_groups[0].security_group_id #=> String
    #   resp.cache_cluster.security_groups[0].status #=> String
    #   resp.cache_cluster.replication_group_id #=> String
    #   resp.cache_cluster.snapshot_retention_limit #=> Integer
    #   resp.cache_cluster.snapshot_window #=> String
    #   resp.cache_cluster.auth_token_enabled #=> Boolean
    #   resp.cache_cluster.transit_encryption_enabled #=> Boolean
    #   resp.cache_cluster.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheCluster AWS API Documentation
    #
    # @overload delete_cache_cluster(params = {})
    # @param [Hash] params ({})
    def delete_cache_cluster(params = {}, options = {})
      req = build_request(:delete_cache_cluster, params)
      req.send_request(options)
    end

    # Deletes the specified cache parameter group. You cannot delete a cache
    # parameter group if it is associated with any cache clusters.
    #
    # @option params [required, String] :cache_parameter_group_name
    #   The name of the cache parameter group to delete.
    #
    #   <note markdown="1"> The specified cache security group must not be associated with any
    #   clusters.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteCacheParameterGroup
    #
    #   # Deletes the Amazon ElastiCache parameter group custom-mem1-4.
    #
    #   resp = client.delete_cache_parameter_group({
    #     cache_parameter_group_name: "custom-mem1-4", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_parameter_group({
    #     cache_parameter_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheParameterGroup AWS API Documentation
    #
    # @overload delete_cache_parameter_group(params = {})
    # @param [Hash] params ({})
    def delete_cache_parameter_group(params = {}, options = {})
      req = build_request(:delete_cache_parameter_group, params)
      req.send_request(options)
    end

    # Deletes a cache security group.
    #
    # <note markdown="1"> You cannot delete a cache security group if it is associated with any
    # clusters.
    #
    #  </note>
    #
    # @option params [required, String] :cache_security_group_name
    #   The name of the cache security group to delete.
    #
    #   <note markdown="1"> You cannot delete the default security group.
    #
    #    </note>
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteCacheSecurityGroup
    #
    #   # Deletes a cache security group.
    #
    #   resp = client.delete_cache_security_group({
    #     cache_security_group_name: "my-sec-group", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_security_group({
    #     cache_security_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheSecurityGroup AWS API Documentation
    #
    # @overload delete_cache_security_group(params = {})
    # @param [Hash] params ({})
    def delete_cache_security_group(params = {}, options = {})
      req = build_request(:delete_cache_security_group, params)
      req.send_request(options)
    end

    # Deletes a cache subnet group.
    #
    # <note markdown="1"> You cannot delete a cache subnet group if it is associated with any
    # clusters.
    #
    #  </note>
    #
    # @option params [required, String] :cache_subnet_group_name
    #   The name of the cache subnet group to delete.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters or
    #   hyphens.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: DeleteCacheSubnetGroup
    #
    #   # Deletes the Amazon ElastiCache subnet group my-subnet-group.
    #
    #   resp = client.delete_cache_subnet_group({
    #     cache_subnet_group_name: "my-subnet-group", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_cache_subnet_group({
    #     cache_subnet_group_name: "String", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteCacheSubnetGroup AWS API Documentation
    #
    # @overload delete_cache_subnet_group(params = {})
    # @param [Hash] params ({})
    def delete_cache_subnet_group(params = {}, options = {})
      req = build_request(:delete_cache_subnet_group, params)
      req.send_request(options)
    end

    # Deletes an existing replication group. By default, this operation
    # deletes the entire replication group, including the primary/primaries
    # and all of the read replicas. If the replication group has only one
    # primary, you can optionally delete only the read replicas, while
    # retaining the primary by setting `RetainPrimaryCluster=true`.
    #
    # When you receive a successful response from this operation, Amazon
    # ElastiCache immediately begins deleting the selected resources; you
    # cannot cancel or revert this operation.
    #
    # <note markdown="1"> This operation is valid for Redis only.
    #
    #  </note>
    #
    # @option params [required, String] :replication_group_id
    #   The identifier for the cluster to be deleted. This parameter is not
    #   case sensitive.
    #
    # @option params [Boolean] :retain_primary_cluster
    #   If set to `true`, all of the read replicas are deleted, but the
    #   primary node is retained.
    #
    # @option params [String] :final_snapshot_identifier
    #   The name of a final node group (shard) snapshot. ElastiCache creates
    #   the snapshot from the primary node in the cluster, rather than one of
    #   the replicas; this is to ensure that it captures the freshest data.
    #   After the final snapshot is taken, the replication group is
    #   immediately deleted.
    #
    # @return [Types::DeleteReplicationGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteReplicationGroupResult#replication_group #replication_group} => Types::ReplicationGroup
    #
    #
    # @example Example: DeleteReplicationGroup
    #
    #   # Deletes the Amazon ElastiCache replication group my-redis-rg.
    #
    #   resp = client.delete_replication_group({
    #     replication_group_id: "my-redis-rg", 
    #     retain_primary_cluster: false, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_group: {
    #       automatic_failover: "disabled", 
    #       description: "simple redis cluster", 
    #       pending_modified_values: {
    #       }, 
    #       replication_group_id: "my-redis-rg", 
    #       status: "deleting", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_replication_group({
    #     replication_group_id: "String", # required
    #     retain_primary_cluster: false,
    #     final_snapshot_identifier: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_group.replication_group_id #=> String
    #   resp.replication_group.description #=> String
    #   resp.replication_group.status #=> String
    #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
    #   resp.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.replication_group.member_clusters #=> Array
    #   resp.replication_group.member_clusters[0] #=> String
    #   resp.replication_group.node_groups #=> Array
    #   resp.replication_group.node_groups[0].node_group_id #=> String
    #   resp.replication_group.node_groups[0].status #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].slots #=> String
    #   resp.replication_group.node_groups[0].node_group_members #=> Array
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.replication_group.snapshotting_cluster_id #=> String
    #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.replication_group.configuration_endpoint.address #=> String
    #   resp.replication_group.configuration_endpoint.port #=> Integer
    #   resp.replication_group.snapshot_retention_limit #=> Integer
    #   resp.replication_group.snapshot_window #=> String
    #   resp.replication_group.cluster_enabled #=> Boolean
    #   resp.replication_group.cache_node_type #=> String
    #   resp.replication_group.auth_token_enabled #=> Boolean
    #   resp.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.replication_group.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteReplicationGroup AWS API Documentation
    #
    # @overload delete_replication_group(params = {})
    # @param [Hash] params ({})
    def delete_replication_group(params = {}, options = {})
      req = build_request(:delete_replication_group, params)
      req.send_request(options)
    end

    # Deletes an existing snapshot. When you receive a successful response
    # from this operation, ElastiCache immediately begins deleting the
    # snapshot; you cannot cancel or revert this operation.
    #
    # <note markdown="1"> This operation is valid for Redis only.
    #
    #  </note>
    #
    # @option params [required, String] :snapshot_name
    #   The name of the snapshot to be deleted.
    #
    # @return [Types::DeleteSnapshotResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSnapshotResult#snapshot #snapshot} => Types::Snapshot
    #
    #
    # @example Example: DeleteSnapshot
    #
    #   # Deletes the Redis snapshot snapshot-20160822.
    #
    #   resp = client.delete_snapshot({
    #     snapshot_name: "snapshot-20161212", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snapshot: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_create_time: Time.parse("2016-12-21T22:27:12.543Z"), 
    #       cache_cluster_id: "my-redis5", 
    #       cache_node_type: "cache.m3.large", 
    #       cache_parameter_group_name: "default.redis3.2", 
    #       cache_subnet_group_name: "default", 
    #       engine: "redis", 
    #       engine_version: "3.2.4", 
    #       node_snapshots: [
    #         {
    #           cache_node_create_time: Time.parse("2016-12-21T22:27:12.543Z"), 
    #           cache_node_id: "0001", 
    #           cache_size: "3 MB", 
    #           snapshot_create_time: Time.parse("2016-12-21T22:30:26Z"), 
    #         }, 
    #       ], 
    #       num_cache_nodes: 1, 
    #       port: 6379, 
    #       preferred_availability_zone: "us-east-1c", 
    #       preferred_maintenance_window: "fri:05:30-fri:06:30", 
    #       snapshot_name: "snapshot-20161212", 
    #       snapshot_retention_limit: 7, 
    #       snapshot_source: "manual", 
    #       snapshot_status: "deleting", 
    #       snapshot_window: "10:00-11:00", 
    #       vpc_id: "vpc-91280df6", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_snapshot({
    #     snapshot_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.snapshot.snapshot_name #=> String
    #   resp.snapshot.replication_group_id #=> String
    #   resp.snapshot.replication_group_description #=> String
    #   resp.snapshot.cache_cluster_id #=> String
    #   resp.snapshot.snapshot_status #=> String
    #   resp.snapshot.snapshot_source #=> String
    #   resp.snapshot.cache_node_type #=> String
    #   resp.snapshot.engine #=> String
    #   resp.snapshot.engine_version #=> String
    #   resp.snapshot.num_cache_nodes #=> Integer
    #   resp.snapshot.preferred_availability_zone #=> String
    #   resp.snapshot.cache_cluster_create_time #=> Time
    #   resp.snapshot.preferred_maintenance_window #=> String
    #   resp.snapshot.topic_arn #=> String
    #   resp.snapshot.port #=> Integer
    #   resp.snapshot.cache_parameter_group_name #=> String
    #   resp.snapshot.cache_subnet_group_name #=> String
    #   resp.snapshot.vpc_id #=> String
    #   resp.snapshot.auto_minor_version_upgrade #=> Boolean
    #   resp.snapshot.snapshot_retention_limit #=> Integer
    #   resp.snapshot.snapshot_window #=> String
    #   resp.snapshot.num_node_groups #=> Integer
    #   resp.snapshot.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.snapshot.node_snapshots #=> Array
    #   resp.snapshot.node_snapshots[0].cache_cluster_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_id #=> String
    #   resp.snapshot.node_snapshots[0].cache_node_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.node_group_id #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.slots #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_count #=> Integer
    #   resp.snapshot.node_snapshots[0].node_group_configuration.primary_availability_zone #=> String
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones #=> Array
    #   resp.snapshot.node_snapshots[0].node_group_configuration.replica_availability_zones[0] #=> String
    #   resp.snapshot.node_snapshots[0].cache_size #=> String
    #   resp.snapshot.node_snapshots[0].cache_node_create_time #=> Time
    #   resp.snapshot.node_snapshots[0].snapshot_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DeleteSnapshot AWS API Documentation
    #
    # @overload delete_snapshot(params = {})
    # @param [Hash] params ({})
    def delete_snapshot(params = {}, options = {})
      req = build_request(:delete_snapshot, params)
      req.send_request(options)
    end

    # Returns information about all provisioned clusters if no cluster
    # identifier is specified, or about a specific cache cluster if a
    # cluster identifier is supplied.
    #
    # By default, abbreviated information about the clusters is returned.
    # You can use the optional *ShowCacheNodeInfo* flag to retrieve detailed
    # information about the cache nodes associated with the clusters. These
    # details include the DNS address and port for the cache node endpoint.
    #
    # If the cluster is in the *creating* state, only cluster-level
    # information is displayed until all of the nodes are successfully
    # provisioned.
    #
    # If the cluster is in the *deleting* state, only cluster-level
    # information is displayed.
    #
    # If cache nodes are currently being added to the cluster, node endpoint
    # information and creation time for the additional nodes are not
    # displayed until they are completely provisioned. When the cluster
    # state is *available*, the cluster is ready for use.
    #
    # If cache nodes are currently being removed from the cluster, no
    # endpoint information for the removed nodes is displayed.
    #
    # @option params [String] :cache_cluster_id
    #   The user-supplied cluster identifier. If this parameter is specified,
    #   only information about that specific cluster is returned. This
    #   parameter isn't case sensitive.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @option params [Boolean] :show_cache_node_info
    #   An optional flag that can be included in the `DescribeCacheCluster`
    #   request to retrieve information about the individual cache nodes.
    #
    # @option params [Boolean] :show_cache_clusters_not_in_replication_groups
    #   An optional flag that can be included in the `DescribeCacheCluster`
    #   request to show only nodes (API/CLI: clusters) that are not members of
    #   a replication group. In practice, this mean Memcached and single node
    #   Redis clusters.
    #
    # @return [Types::CacheClusterMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CacheClusterMessage#marker #marker} => String
    #   * {Types::CacheClusterMessage#cache_clusters #cache_clusters} => Array&lt;Types::CacheCluster&gt;
    #
    #
    # @example Example: DescribeCacheClusters
    #
    #   # Lists the details for up to 50 cache clusters.
    #
    #   resp = client.describe_cache_clusters({
    #     cache_cluster_id: "my-mem-cluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_clusters: [
    #       {
    #         auto_minor_version_upgrade: true, 
    #         cache_cluster_create_time: Time.parse("2016-12-21T21:59:43.794Z"), 
    #         cache_cluster_id: "my-mem-cluster", 
    #         cache_cluster_status: "available", 
    #         cache_node_type: "cache.t2.medium", 
    #         cache_parameter_group: {
    #           cache_node_ids_to_reboot: [
    #           ], 
    #           cache_parameter_group_name: "default.memcached1.4", 
    #           parameter_apply_status: "in-sync", 
    #         }, 
    #         cache_security_groups: [
    #         ], 
    #         cache_subnet_group_name: "default", 
    #         client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:", 
    #         configuration_endpoint: {
    #           address: "my-mem-cluster.abcdef.cfg.use1.cache.amazonaws.com", 
    #           port: 11211, 
    #         }, 
    #         engine: "memcached", 
    #         engine_version: "1.4.24", 
    #         num_cache_nodes: 2, 
    #         pending_modified_values: {
    #         }, 
    #         preferred_availability_zone: "Multiple", 
    #         preferred_maintenance_window: "wed:06:00-wed:07:00", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: DescribeCacheClusters
    #
    #   # Lists the details for the cache cluster my-mem-cluster.
    #
    #   resp = client.describe_cache_clusters({
    #     cache_cluster_id: "my-mem-cluster", 
    #     show_cache_node_info: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_clusters: [
    #       {
    #         auto_minor_version_upgrade: true, 
    #         cache_cluster_create_time: Time.parse("2016-12-21T21:59:43.794Z"), 
    #         cache_cluster_id: "my-mem-cluster", 
    #         cache_cluster_status: "available", 
    #         cache_node_type: "cache.t2.medium", 
    #         cache_nodes: [
    #           {
    #             cache_node_create_time: Time.parse("2016-12-21T21:59:43.794Z"), 
    #             cache_node_id: "0001", 
    #             cache_node_status: "available", 
    #             customer_availability_zone: "us-east-1b", 
    #             endpoint: {
    #               address: "my-mem-cluster.ameaqx.0001.use1.cache.amazonaws.com", 
    #               port: 11211, 
    #             }, 
    #             parameter_group_status: "in-sync", 
    #           }, 
    #           {
    #             cache_node_create_time: Time.parse("2016-12-21T21:59:43.794Z"), 
    #             cache_node_id: "0002", 
    #             cache_node_status: "available", 
    #             customer_availability_zone: "us-east-1a", 
    #             endpoint: {
    #               address: "my-mem-cluster.ameaqx.0002.use1.cache.amazonaws.com", 
    #               port: 11211, 
    #             }, 
    #             parameter_group_status: "in-sync", 
    #           }, 
    #         ], 
    #         cache_parameter_group: {
    #           cache_node_ids_to_reboot: [
    #           ], 
    #           cache_parameter_group_name: "default.memcached1.4", 
    #           parameter_apply_status: "in-sync", 
    #         }, 
    #         cache_security_groups: [
    #         ], 
    #         cache_subnet_group_name: "default", 
    #         client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:", 
    #         configuration_endpoint: {
    #           address: "my-mem-cluster.ameaqx.cfg.use1.cache.amazonaws.com", 
    #           port: 11211, 
    #         }, 
    #         engine: "memcached", 
    #         engine_version: "1.4.24", 
    #         num_cache_nodes: 2, 
    #         pending_modified_values: {
    #         }, 
    #         preferred_availability_zone: "Multiple", 
    #         preferred_maintenance_window: "wed:06:00-wed:07:00", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_clusters({
    #     cache_cluster_id: "String",
    #     max_records: 1,
    #     marker: "String",
    #     show_cache_node_info: false,
    #     show_cache_clusters_not_in_replication_groups: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cache_clusters #=> Array
    #   resp.cache_clusters[0].cache_cluster_id #=> String
    #   resp.cache_clusters[0].configuration_endpoint.address #=> String
    #   resp.cache_clusters[0].configuration_endpoint.port #=> Integer
    #   resp.cache_clusters[0].client_download_landing_page #=> String
    #   resp.cache_clusters[0].cache_node_type #=> String
    #   resp.cache_clusters[0].engine #=> String
    #   resp.cache_clusters[0].engine_version #=> String
    #   resp.cache_clusters[0].cache_cluster_status #=> String
    #   resp.cache_clusters[0].num_cache_nodes #=> Integer
    #   resp.cache_clusters[0].preferred_availability_zone #=> String
    #   resp.cache_clusters[0].cache_cluster_create_time #=> Time
    #   resp.cache_clusters[0].preferred_maintenance_window #=> String
    #   resp.cache_clusters[0].pending_modified_values.num_cache_nodes #=> Integer
    #   resp.cache_clusters[0].pending_modified_values.cache_node_ids_to_remove #=> Array
    #   resp.cache_clusters[0].pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.cache_clusters[0].pending_modified_values.engine_version #=> String
    #   resp.cache_clusters[0].pending_modified_values.cache_node_type #=> String
    #   resp.cache_clusters[0].notification_configuration.topic_arn #=> String
    #   resp.cache_clusters[0].notification_configuration.topic_status #=> String
    #   resp.cache_clusters[0].cache_security_groups #=> Array
    #   resp.cache_clusters[0].cache_security_groups[0].cache_security_group_name #=> String
    #   resp.cache_clusters[0].cache_security_groups[0].status #=> String
    #   resp.cache_clusters[0].cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.cache_clusters[0].cache_parameter_group.parameter_apply_status #=> String
    #   resp.cache_clusters[0].cache_parameter_group.cache_node_ids_to_reboot #=> Array
    #   resp.cache_clusters[0].cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
    #   resp.cache_clusters[0].cache_subnet_group_name #=> String
    #   resp.cache_clusters[0].cache_nodes #=> Array
    #   resp.cache_clusters[0].cache_nodes[0].cache_node_id #=> String
    #   resp.cache_clusters[0].cache_nodes[0].cache_node_status #=> String
    #   resp.cache_clusters[0].cache_nodes[0].cache_node_create_time #=> Time
    #   resp.cache_clusters[0].cache_nodes[0].endpoint.address #=> String
    #   resp.cache_clusters[0].cache_nodes[0].endpoint.port #=> Integer
    #   resp.cache_clusters[0].cache_nodes[0].parameter_group_status #=> String
    #   resp.cache_clusters[0].cache_nodes[0].source_cache_node_id #=> String
    #   resp.cache_clusters[0].cache_nodes[0].customer_availability_zone #=> String
    #   resp.cache_clusters[0].auto_minor_version_upgrade #=> Boolean
    #   resp.cache_clusters[0].security_groups #=> Array
    #   resp.cache_clusters[0].security_groups[0].security_group_id #=> String
    #   resp.cache_clusters[0].security_groups[0].status #=> String
    #   resp.cache_clusters[0].replication_group_id #=> String
    #   resp.cache_clusters[0].snapshot_retention_limit #=> Integer
    #   resp.cache_clusters[0].snapshot_window #=> String
    #   resp.cache_clusters[0].auth_token_enabled #=> Boolean
    #   resp.cache_clusters[0].transit_encryption_enabled #=> Boolean
    #   resp.cache_clusters[0].at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheClusters AWS API Documentation
    #
    # @overload describe_cache_clusters(params = {})
    # @param [Hash] params ({})
    def describe_cache_clusters(params = {}, options = {})
      req = build_request(:describe_cache_clusters, params)
      req.send_request(options)
    end

    # Returns a list of the available cache engines and their versions.
    #
    # @option params [String] :engine
    #   The cache engine to return. Valid values: `memcached` \| `redis`
    #
    # @option params [String] :engine_version
    #   The cache engine version to return.
    #
    #   Example: `1.4.14`
    #
    # @option params [String] :cache_parameter_group_family
    #   The name of a specific cache parameter group family to return details
    #   for.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @option params [Boolean] :default_only
    #   If `true`, specifies that only the default version of the specified
    #   engine or engine and major version combination is to be returned.
    #
    # @return [Types::CacheEngineVersionMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CacheEngineVersionMessage#marker #marker} => String
    #   * {Types::CacheEngineVersionMessage#cache_engine_versions #cache_engine_versions} => Array&lt;Types::CacheEngineVersion&gt;
    #
    #
    # @example Example: DescribeCacheEngineVersions
    #
    #   # Lists the details for up to 25 Memcached and Redis cache engine versions.
    #
    #   resp = client.describe_cache_engine_versions({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_engine_versions: [
    #       {
    #         cache_engine_description: "memcached", 
    #         cache_engine_version_description: "memcached version 1.4.14", 
    #         cache_parameter_group_family: "memcached1.4", 
    #         engine: "memcached", 
    #         engine_version: "1.4.14", 
    #       }, 
    #       {
    #         cache_engine_description: "memcached", 
    #         cache_engine_version_description: "memcached version 1.4.24", 
    #         cache_parameter_group_family: "memcached1.4", 
    #         engine: "memcached", 
    #         engine_version: "1.4.24", 
    #       }, 
    #       {
    #         cache_engine_description: "memcached", 
    #         cache_engine_version_description: "memcached version 1.4.33", 
    #         cache_parameter_group_family: "memcached1.4", 
    #         engine: "memcached", 
    #         engine_version: "1.4.33", 
    #       }, 
    #       {
    #         cache_engine_description: "memcached", 
    #         cache_engine_version_description: "memcached version 1.4.5", 
    #         cache_parameter_group_family: "memcached1.4", 
    #         engine: "memcached", 
    #         engine_version: "1.4.5", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.6.13", 
    #         cache_parameter_group_family: "redis2.6", 
    #         engine: "redis", 
    #         engine_version: "2.6.13", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.19", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.19", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.21", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.21", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.22 R5", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.22", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.23 R4", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.23", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.24 R3", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.24", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.6", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.6", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 3.2.4", 
    #         cache_parameter_group_family: "redis3.2", 
    #         engine: "redis", 
    #         engine_version: "3.2.4", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: DescribeCacheEngineVersions
    #
    #   # Lists the details for up to 50 Redis cache engine versions.
    #
    #   resp = client.describe_cache_engine_versions({
    #     default_only: false, 
    #     engine: "redis", 
    #     max_records: 50, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_engine_versions: [
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.6.13", 
    #         cache_parameter_group_family: "redis2.6", 
    #         engine: "redis", 
    #         engine_version: "2.6.13", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.19", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.19", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.21", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.21", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.22 R5", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.22", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.23 R4", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.23", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.24 R3", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.24", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 2.8.6", 
    #         cache_parameter_group_family: "redis2.8", 
    #         engine: "redis", 
    #         engine_version: "2.8.6", 
    #       }, 
    #       {
    #         cache_engine_description: "Redis", 
    #         cache_engine_version_description: "redis version 3.2.4", 
    #         cache_parameter_group_family: "redis3.2", 
    #         engine: "redis", 
    #         engine_version: "3.2.4", 
    #       }, 
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_engine_versions({
    #     engine: "String",
    #     engine_version: "String",
    #     cache_parameter_group_family: "String",
    #     max_records: 1,
    #     marker: "String",
    #     default_only: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cache_engine_versions #=> Array
    #   resp.cache_engine_versions[0].engine #=> String
    #   resp.cache_engine_versions[0].engine_version #=> String
    #   resp.cache_engine_versions[0].cache_parameter_group_family #=> String
    #   resp.cache_engine_versions[0].cache_engine_description #=> String
    #   resp.cache_engine_versions[0].cache_engine_version_description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheEngineVersions AWS API Documentation
    #
    # @overload describe_cache_engine_versions(params = {})
    # @param [Hash] params ({})
    def describe_cache_engine_versions(params = {}, options = {})
      req = build_request(:describe_cache_engine_versions, params)
      req.send_request(options)
    end

    # Returns a list of cache parameter group descriptions. If a cache
    # parameter group name is specified, the list contains only the
    # descriptions for that group.
    #
    # @option params [String] :cache_parameter_group_name
    #   The name of a specific cache parameter group to return details for.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::CacheParameterGroupsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CacheParameterGroupsMessage#marker #marker} => String
    #   * {Types::CacheParameterGroupsMessage#cache_parameter_groups #cache_parameter_groups} => Array&lt;Types::CacheParameterGroup&gt;
    #
    #
    # @example Example: DescribeCacheParameterGroups
    #
    #   # Returns a list of cache parameter group descriptions. If a cache parameter group name is specified, the list contains
    #   # only the descriptions for that group.
    #
    #   resp = client.describe_cache_parameter_groups({
    #     cache_parameter_group_name: "custom-mem1-4", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_parameter_groups: [
    #       {
    #         cache_parameter_group_family: "memcached1.4", 
    #         cache_parameter_group_name: "custom-mem1-4", 
    #         description: "Custom memcache param group", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_parameter_groups({
    #     cache_parameter_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cache_parameter_groups #=> Array
    #   resp.cache_parameter_groups[0].cache_parameter_group_name #=> String
    #   resp.cache_parameter_groups[0].cache_parameter_group_family #=> String
    #   resp.cache_parameter_groups[0].description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheParameterGroups AWS API Documentation
    #
    # @overload describe_cache_parameter_groups(params = {})
    # @param [Hash] params ({})
    def describe_cache_parameter_groups(params = {}, options = {})
      req = build_request(:describe_cache_parameter_groups, params)
      req.send_request(options)
    end

    # Returns the detailed parameter list for a particular cache parameter
    # group.
    #
    # @option params [required, String] :cache_parameter_group_name
    #   The name of a specific cache parameter group to return details for.
    #
    # @option params [String] :source
    #   The parameter types to return.
    #
    #   Valid values: `user` \| `system` \| `engine-default`
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::CacheParameterGroupDetails] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CacheParameterGroupDetails#marker #marker} => String
    #   * {Types::CacheParameterGroupDetails#parameters #parameters} => Array&lt;Types::Parameter&gt;
    #   * {Types::CacheParameterGroupDetails#cache_node_type_specific_parameters #cache_node_type_specific_parameters} => Array&lt;Types::CacheNodeTypeSpecificParameter&gt;
    #
    #
    # @example Example: DescribeCacheParameters
    #
    #   # Lists up to 100 user parameter values for the parameter group custom.redis2.8.
    #
    #   resp = client.describe_cache_parameters({
    #     cache_parameter_group_name: "custom-redis2-8", 
    #     max_records: 100, 
    #     source: "user", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     parameters: [
    #       {
    #         allowed_values: "yes,no", 
    #         change_type: "requires-reboot", 
    #         data_type: "string", 
    #         description: "Apply rehashing or not.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "activerehashing", 
    #         parameter_value: "yes", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "always,everysec,no", 
    #         change_type: "immediate", 
    #         data_type: "string", 
    #         description: "fsync policy for AOF persistence", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "appendfsync", 
    #         parameter_value: "everysec", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "yes,no", 
    #         change_type: "immediate", 
    #         data_type: "string", 
    #         description: "Enable Redis persistence.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "appendonly", 
    #         parameter_value: "no", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Normal client output buffer hard limit in bytes.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "client-output-buffer-limit-normal-hard-limit", 
    #         parameter_value: "0", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Normal client output buffer soft limit in bytes.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "client-output-buffer-limit-normal-soft-limit", 
    #         parameter_value: "0", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Normal client output buffer soft limit in seconds.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "client-output-buffer-limit-normal-soft-seconds", 
    #         parameter_value: "0", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Pubsub client output buffer hard limit in bytes.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "client-output-buffer-limit-pubsub-hard-limit", 
    #         parameter_value: "33554432", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Pubsub client output buffer soft limit in bytes.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "client-output-buffer-limit-pubsub-soft-limit", 
    #         parameter_value: "8388608", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Pubsub client output buffer soft limit in seconds.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "client-output-buffer-limit-pubsub-soft-seconds", 
    #         parameter_value: "60", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Slave client output buffer soft limit in seconds.", 
    #         is_modifiable: false, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "client-output-buffer-limit-slave-soft-seconds", 
    #         parameter_value: "60", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "yes,no", 
    #         change_type: "immediate", 
    #         data_type: "string", 
    #         description: "If enabled, clients who attempt to write to a read-only slave will be disconnected. Applicable to 2.8.23 and higher.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.23", 
    #         parameter_name: "close-on-slave-write", 
    #         parameter_value: "yes", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "1-1200000", 
    #         change_type: "requires-reboot", 
    #         data_type: "integer", 
    #         description: "Set the number of databases.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "databases", 
    #         parameter_value: "16", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The maximum number of hash entries in order for the dataset to be compressed.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "hash-max-ziplist-entries", 
    #         parameter_value: "512", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The threshold of biggest hash entries in order for the dataset to be compressed.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "hash-max-ziplist-value", 
    #         parameter_value: "64", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The maximum number of list entries in order for the dataset to be compressed.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "list-max-ziplist-entries", 
    #         parameter_value: "512", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The threshold of biggest list entries in order for the dataset to be compressed.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "list-max-ziplist-value", 
    #         parameter_value: "64", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "5000", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Max execution time of a Lua script in milliseconds. 0 for unlimited execution without warnings.", 
    #         is_modifiable: false, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "lua-time-limit", 
    #         parameter_value: "5000", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "1-65000", 
    #         change_type: "requires-reboot", 
    #         data_type: "integer", 
    #         description: "The maximum number of Redis clients.", 
    #         is_modifiable: false, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "maxclients", 
    #         parameter_value: "65000", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "volatile-lru,allkeys-lru,volatile-random,allkeys-random,volatile-ttl,noeviction", 
    #         change_type: "immediate", 
    #         data_type: "string", 
    #         description: "Max memory policy.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "maxmemory-policy", 
    #         parameter_value: "volatile-lru", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "1-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Max memory samples.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "maxmemory-samples", 
    #         parameter_value: "3", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Maximum number of seconds within which the master must receive a ping from a slave to take writes. Use this parameter together with min-slaves-to-write to regulate when the master stops accepting writes. Setting this value to 0 means the master always takes writes.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "min-slaves-max-lag", 
    #         parameter_value: "10", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Number of slaves that must be connected in order for master to take writes. Use this parameter together with min-slaves-max-lag to regulate when the master stops accepting writes. Setting this to 0 means the master always takes writes.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "min-slaves-to-write", 
    #         parameter_value: "0", 
    #         source: "system", 
    #       }, 
    #       {
    #         change_type: "immediate", 
    #         data_type: "string", 
    #         description: "The keyspace events for Redis to notify Pub/Sub clients about. By default all notifications are disabled", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "notify-keyspace-events", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "16384-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The replication backlog size in bytes for PSYNC. This is the size of the buffer which accumulates slave data when slave is disconnected for some time, so that when slave reconnects again, only transfer the portion of data which the slave missed. Minimum value is 16K.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "repl-backlog-size", 
    #         parameter_value: "1048576", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The amount of time in seconds after the master no longer have any slaves connected for the master to free the replication backlog. A value of 0 means to never release the backlog.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "repl-backlog-ttl", 
    #         parameter_value: "3600", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "11-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The timeout in seconds for bulk transfer I/O during sync and master timeout from the perspective of the slave, and slave timeout from the perspective of the master.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "repl-timeout", 
    #         parameter_value: "60", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The amount of memory reserved for non-cache memory usage, in bytes. You may want to increase this parameter for nodes with read replicas, AOF enabled, etc, to reduce swap usage.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "reserved-memory", 
    #         parameter_value: "0", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The limit in the size of the set in order for the dataset to be compressed.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "set-max-intset-entries", 
    #         parameter_value: "512", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "yes,no", 
    #         change_type: "immediate", 
    #         data_type: "string", 
    #         description: "Configures if chaining of slaves is allowed", 
    #         is_modifiable: false, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "slave-allow-chaining", 
    #         parameter_value: "no", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The execution time, in microseconds, to exceed in order for the command to get logged. Note that a negative number disables the slow log, while a value of zero forces the logging of every command.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "slowlog-log-slower-than", 
    #         parameter_value: "10000", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The length of the slow log. There is no limit to this length. Just be aware that it will consume memory. You can reclaim memory used by the slow log with SLOWLOG RESET.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "slowlog-max-len", 
    #         parameter_value: "128", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "If non-zero, send ACKs every given number of seconds.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "tcp-keepalive", 
    #         parameter_value: "0", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0,20-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "Close connection if client is idle for a given number of seconds, or never if 0.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "timeout", 
    #         parameter_value: "0", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The maximum number of sorted set entries in order for the dataset to be compressed.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "zset-max-ziplist-entries", 
    #         parameter_value: "128", 
    #         source: "system", 
    #       }, 
    #       {
    #         allowed_values: "0-", 
    #         change_type: "immediate", 
    #         data_type: "integer", 
    #         description: "The threshold of biggest sorted set entries in order for the dataset to be compressed.", 
    #         is_modifiable: true, 
    #         minimum_engine_version: "2.8.6", 
    #         parameter_name: "zset-max-ziplist-value", 
    #         parameter_value: "64", 
    #         source: "system", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_parameters({
    #     cache_parameter_group_name: "String", # required
    #     source: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.parameters #=> Array
    #   resp.parameters[0].parameter_name #=> String
    #   resp.parameters[0].parameter_value #=> String
    #   resp.parameters[0].description #=> String
    #   resp.parameters[0].source #=> String
    #   resp.parameters[0].data_type #=> String
    #   resp.parameters[0].allowed_values #=> String
    #   resp.parameters[0].is_modifiable #=> Boolean
    #   resp.parameters[0].minimum_engine_version #=> String
    #   resp.parameters[0].change_type #=> String, one of "immediate", "requires-reboot"
    #   resp.cache_node_type_specific_parameters #=> Array
    #   resp.cache_node_type_specific_parameters[0].parameter_name #=> String
    #   resp.cache_node_type_specific_parameters[0].description #=> String
    #   resp.cache_node_type_specific_parameters[0].source #=> String
    #   resp.cache_node_type_specific_parameters[0].data_type #=> String
    #   resp.cache_node_type_specific_parameters[0].allowed_values #=> String
    #   resp.cache_node_type_specific_parameters[0].is_modifiable #=> Boolean
    #   resp.cache_node_type_specific_parameters[0].minimum_engine_version #=> String
    #   resp.cache_node_type_specific_parameters[0].cache_node_type_specific_values #=> Array
    #   resp.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].cache_node_type #=> String
    #   resp.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].value #=> String
    #   resp.cache_node_type_specific_parameters[0].change_type #=> String, one of "immediate", "requires-reboot"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheParameters AWS API Documentation
    #
    # @overload describe_cache_parameters(params = {})
    # @param [Hash] params ({})
    def describe_cache_parameters(params = {}, options = {})
      req = build_request(:describe_cache_parameters, params)
      req.send_request(options)
    end

    # Returns a list of cache security group descriptions. If a cache
    # security group name is specified, the list contains only the
    # description of that group.
    #
    # @option params [String] :cache_security_group_name
    #   The name of the cache security group to return details for.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::CacheSecurityGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CacheSecurityGroupMessage#marker #marker} => String
    #   * {Types::CacheSecurityGroupMessage#cache_security_groups #cache_security_groups} => Array&lt;Types::CacheSecurityGroup&gt;
    #
    #
    # @example Example: DescribeCacheSecurityGroups
    #
    #   # Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only
    #   # the description of that group.
    #
    #   resp = client.describe_cache_security_groups({
    #     cache_security_group_name: "my-sec-group", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_security_groups({
    #     cache_security_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cache_security_groups #=> Array
    #   resp.cache_security_groups[0].owner_id #=> String
    #   resp.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.cache_security_groups[0].description #=> String
    #   resp.cache_security_groups[0].ec2_security_groups #=> Array
    #   resp.cache_security_groups[0].ec2_security_groups[0].status #=> String
    #   resp.cache_security_groups[0].ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.cache_security_groups[0].ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheSecurityGroups AWS API Documentation
    #
    # @overload describe_cache_security_groups(params = {})
    # @param [Hash] params ({})
    def describe_cache_security_groups(params = {}, options = {})
      req = build_request(:describe_cache_security_groups, params)
      req.send_request(options)
    end

    # Returns a list of cache subnet group descriptions. If a subnet group
    # name is specified, the list contains only the description of that
    # group.
    #
    # @option params [String] :cache_subnet_group_name
    #   The name of the cache subnet group to return details for.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::CacheSubnetGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CacheSubnetGroupMessage#marker #marker} => String
    #   * {Types::CacheSubnetGroupMessage#cache_subnet_groups #cache_subnet_groups} => Array&lt;Types::CacheSubnetGroup&gt;
    #
    #
    # @example Example: DescribeCacheSubnetGroups
    #
    #   # Describes up to 25 cache subnet groups.
    #
    #   resp = client.describe_cache_subnet_groups({
    #     max_records: 25, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_subnet_groups: [
    #       {
    #         cache_subnet_group_description: "Default CacheSubnetGroup", 
    #         cache_subnet_group_name: "default", 
    #         subnets: [
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1a", 
    #             }, 
    #             subnet_identifier: "subnet-1a2b3c4d", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1c", 
    #             }, 
    #             subnet_identifier: "subnet-a1b2c3d4", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1e", 
    #             }, 
    #             subnet_identifier: "subnet-abcd1234", 
    #           }, 
    #           {
    #             subnet_availability_zone: {
    #               name: "us-east-1b", 
    #             }, 
    #             subnet_identifier: "subnet-1234abcd", 
    #           }, 
    #         ], 
    #         vpc_id: "vpc-91280df6", 
    #       }, 
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cache_subnet_groups({
    #     cache_subnet_group_name: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.cache_subnet_groups #=> Array
    #   resp.cache_subnet_groups[0].cache_subnet_group_name #=> String
    #   resp.cache_subnet_groups[0].cache_subnet_group_description #=> String
    #   resp.cache_subnet_groups[0].vpc_id #=> String
    #   resp.cache_subnet_groups[0].subnets #=> Array
    #   resp.cache_subnet_groups[0].subnets[0].subnet_identifier #=> String
    #   resp.cache_subnet_groups[0].subnets[0].subnet_availability_zone.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeCacheSubnetGroups AWS API Documentation
    #
    # @overload describe_cache_subnet_groups(params = {})
    # @param [Hash] params ({})
    def describe_cache_subnet_groups(params = {}, options = {})
      req = build_request(:describe_cache_subnet_groups, params)
      req.send_request(options)
    end

    # Returns the default engine and system parameter information for the
    # specified cache engine.
    #
    # @option params [required, String] :cache_parameter_group_family
    #   The name of the cache parameter group family.
    #
    #   Valid values are: `memcached1.4` \| `redis2.6` \| `redis2.8` \|
    #   `redis3.2` \| `redis4.0`
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::DescribeEngineDefaultParametersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEngineDefaultParametersResult#engine_defaults #engine_defaults} => Types::EngineDefaults
    #
    #
    # @example Example: DescribeEngineDefaultParameters
    #
    #   # Returns the default engine and system parameter information for the specified cache engine.
    #
    #   resp = client.describe_engine_default_parameters({
    #     cache_parameter_group_family: "redis2.8", 
    #     max_records: 25, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     engine_defaults: {
    #       cache_node_type_specific_parameters: [
    #         {
    #           allowed_values: "0-", 
    #           cache_node_type_specific_values: [
    #             {
    #               cache_node_type: "cache.c1.xlarge", 
    #               value: "650117120", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.large", 
    #               value: "702545920", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.medium", 
    #               value: "309329920", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.small", 
    #               value: "94371840", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.xlarge", 
    #               value: "1488977920", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.2xlarge", 
    #               value: "3502243840", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.4xlarge", 
    #               value: "7088373760", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.xlarge", 
    #               value: "1709178880", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.2xlarge", 
    #               value: "2998927360", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.large", 
    #               value: "650117120", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.medium", 
    #               value: "309329920", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.xlarge", 
    #               value: "1426063360", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.10xlarge", 
    #               value: "16604761424", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.2xlarge", 
    #               value: "3188912636", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.4xlarge", 
    #               value: "6525729063", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.large", 
    #               value: "689259315", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.xlarge", 
    #               value: "1532850176", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.2xlarge", 
    #               value: "6081740800", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.4xlarge", 
    #               value: "12268339200", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.8xlarge", 
    #               value: "24536678400", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.large", 
    #               value: "1468006400", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.xlarge", 
    #               value: "3040870400", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t1.micro", 
    #               value: "14260633", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.medium", 
    #               value: "346134937", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.micro", 
    #               value: "58195968", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.small", 
    #               value: "166513868", 
    #             }, 
    #           ], 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Slave client output buffer hard limit in bytes.", 
    #           is_modifiable: false, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-slave-hard-limit", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           cache_node_type_specific_values: [
    #             {
    #               cache_node_type: "cache.c1.xlarge", 
    #               value: "650117120", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.large", 
    #               value: "702545920", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.medium", 
    #               value: "309329920", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.small", 
    #               value: "94371840", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.xlarge", 
    #               value: "1488977920", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.2xlarge", 
    #               value: "3502243840", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.4xlarge", 
    #               value: "7088373760", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.xlarge", 
    #               value: "1709178880", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.2xlarge", 
    #               value: "2998927360", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.large", 
    #               value: "650117120", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.medium", 
    #               value: "309329920", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.xlarge", 
    #               value: "1426063360", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.10xlarge", 
    #               value: "16604761424", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.2xlarge", 
    #               value: "3188912636", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.4xlarge", 
    #               value: "6525729063", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.large", 
    #               value: "689259315", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.xlarge", 
    #               value: "1532850176", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.2xlarge", 
    #               value: "6081740800", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.4xlarge", 
    #               value: "12268339200", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.8xlarge", 
    #               value: "24536678400", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.large", 
    #               value: "1468006400", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.xlarge", 
    #               value: "3040870400", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t1.micro", 
    #               value: "14260633", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.medium", 
    #               value: "346134937", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.micro", 
    #               value: "58195968", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.small", 
    #               value: "166513868", 
    #             }, 
    #           ], 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Slave client output buffer soft limit in bytes.", 
    #           is_modifiable: false, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-slave-soft-limit", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           cache_node_type_specific_values: [
    #             {
    #               cache_node_type: "cache.c1.xlarge", 
    #               value: "6501171200", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.large", 
    #               value: "7025459200", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.medium", 
    #               value: "3093299200", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.small", 
    #               value: "943718400", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m1.xlarge", 
    #               value: "14889779200", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.2xlarge", 
    #               value: "35022438400", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.4xlarge", 
    #               value: "70883737600", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m2.xlarge", 
    #               value: "17091788800", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.2xlarge", 
    #               value: "29989273600", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.large", 
    #               value: "6501171200", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.medium", 
    #               value: "2988441600", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m3.xlarge", 
    #               value: "14260633600", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.10xlarge", 
    #               value: "166047614239", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.2xlarge", 
    #               value: "31889126359", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.4xlarge", 
    #               value: "65257290629", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.large", 
    #               value: "6892593152", 
    #             }, 
    #             {
    #               cache_node_type: "cache.m4.xlarge", 
    #               value: "15328501760", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.2xlarge", 
    #               value: "62495129600", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.4xlarge", 
    #               value: "126458265600", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.8xlarge", 
    #               value: "254384537600", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.large", 
    #               value: "14470348800", 
    #             }, 
    #             {
    #               cache_node_type: "cache.r3.xlarge", 
    #               value: "30513561600", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t1.micro", 
    #               value: "142606336", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.medium", 
    #               value: "3461349376", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.micro", 
    #               value: "581959680", 
    #             }, 
    #             {
    #               cache_node_type: "cache.t2.small", 
    #               value: "1665138688", 
    #             }, 
    #           ], 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "The maximum configurable amount of memory to use to store items, in bytes.", 
    #           is_modifiable: false, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "maxmemory", 
    #           source: "system", 
    #         }, 
    #       ], 
    #       cache_parameter_group_family: "redis2.8", 
    #       marker: "bWluLXNsYXZlcy10by13cml0ZQ==", 
    #       parameters: [
    #         {
    #           allowed_values: "yes,no", 
    #           change_type: "requires-reboot", 
    #           data_type: "string", 
    #           description: "Apply rehashing or not.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "activerehashing", 
    #           parameter_value: "yes", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "always,everysec,no", 
    #           change_type: "immediate", 
    #           data_type: "string", 
    #           description: "fsync policy for AOF persistence", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "appendfsync", 
    #           parameter_value: "everysec", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "yes,no", 
    #           change_type: "immediate", 
    #           data_type: "string", 
    #           description: "Enable Redis persistence.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "appendonly", 
    #           parameter_value: "no", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Normal client output buffer hard limit in bytes.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-normal-hard-limit", 
    #           parameter_value: "0", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Normal client output buffer soft limit in bytes.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-normal-soft-limit", 
    #           parameter_value: "0", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Normal client output buffer soft limit in seconds.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-normal-soft-seconds", 
    #           parameter_value: "0", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Pubsub client output buffer hard limit in bytes.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-pubsub-hard-limit", 
    #           parameter_value: "33554432", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Pubsub client output buffer soft limit in bytes.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-pubsub-soft-limit", 
    #           parameter_value: "8388608", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Pubsub client output buffer soft limit in seconds.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-pubsub-soft-seconds", 
    #           parameter_value: "60", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Slave client output buffer soft limit in seconds.", 
    #           is_modifiable: false, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "client-output-buffer-limit-slave-soft-seconds", 
    #           parameter_value: "60", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "yes,no", 
    #           change_type: "immediate", 
    #           data_type: "string", 
    #           description: "If enabled, clients who attempt to write to a read-only slave will be disconnected. Applicable to 2.8.23 and higher.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.23", 
    #           parameter_name: "close-on-slave-write", 
    #           parameter_value: "yes", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "1-1200000", 
    #           change_type: "requires-reboot", 
    #           data_type: "integer", 
    #           description: "Set the number of databases.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "databases", 
    #           parameter_value: "16", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "The maximum number of hash entries in order for the dataset to be compressed.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "hash-max-ziplist-entries", 
    #           parameter_value: "512", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "The threshold of biggest hash entries in order for the dataset to be compressed.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "hash-max-ziplist-value", 
    #           parameter_value: "64", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "The maximum number of list entries in order for the dataset to be compressed.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "list-max-ziplist-entries", 
    #           parameter_value: "512", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "The threshold of biggest list entries in order for the dataset to be compressed.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "list-max-ziplist-value", 
    #           parameter_value: "64", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "5000", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Max execution time of a Lua script in milliseconds. 0 for unlimited execution without warnings.", 
    #           is_modifiable: false, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "lua-time-limit", 
    #           parameter_value: "5000", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "1-65000", 
    #           change_type: "requires-reboot", 
    #           data_type: "integer", 
    #           description: "The maximum number of Redis clients.", 
    #           is_modifiable: false, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "maxclients", 
    #           parameter_value: "65000", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "volatile-lru,allkeys-lru,volatile-random,allkeys-random,volatile-ttl,noeviction", 
    #           change_type: "immediate", 
    #           data_type: "string", 
    #           description: "Max memory policy.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "maxmemory-policy", 
    #           parameter_value: "volatile-lru", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "1-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Max memory samples.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "maxmemory-samples", 
    #           parameter_value: "3", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Maximum number of seconds within which the master must receive a ping from a slave to take writes. Use this parameter together with min-slaves-to-write to regulate when the master stops accepting writes. Setting this value to 0 means the master always takes writes.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "min-slaves-max-lag", 
    #           parameter_value: "10", 
    #           source: "system", 
    #         }, 
    #         {
    #           allowed_values: "0-", 
    #           change_type: "immediate", 
    #           data_type: "integer", 
    #           description: "Number of slaves that must be connected in order for master to take writes. Use this parameter together with min-slaves-max-lag to regulate when the master stops accepting writes. Setting this to 0 means the master always takes writes.", 
    #           is_modifiable: true, 
    #           minimum_engine_version: "2.8.6", 
    #           parameter_name: "min-slaves-to-write", 
    #           parameter_value: "0", 
    #           source: "system", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_engine_default_parameters({
    #     cache_parameter_group_family: "String", # required
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.engine_defaults.cache_parameter_group_family #=> String
    #   resp.engine_defaults.marker #=> String
    #   resp.engine_defaults.parameters #=> Array
    #   resp.engine_defaults.parameters[0].parameter_name #=> String
    #   resp.engine_defaults.parameters[0].parameter_value #=> String
    #   resp.engine_defaults.parameters[0].description #=> String
    #   resp.engine_defaults.parameters[0].source #=> String
    #   resp.engine_defaults.parameters[0].data_type #=> String
    #   resp.engine_defaults.parameters[0].allowed_values #=> String
    #   resp.engine_defaults.parameters[0].is_modifiable #=> Boolean
    #   resp.engine_defaults.parameters[0].minimum_engine_version #=> String
    #   resp.engine_defaults.parameters[0].change_type #=> String, one of "immediate", "requires-reboot"
    #   resp.engine_defaults.cache_node_type_specific_parameters #=> Array
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].parameter_name #=> String
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].description #=> String
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].source #=> String
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].data_type #=> String
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].allowed_values #=> String
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].is_modifiable #=> Boolean
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].minimum_engine_version #=> String
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values #=> Array
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].cache_node_type #=> String
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].cache_node_type_specific_values[0].value #=> String
    #   resp.engine_defaults.cache_node_type_specific_parameters[0].change_type #=> String, one of "immediate", "requires-reboot"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEngineDefaultParameters AWS API Documentation
    #
    # @overload describe_engine_default_parameters(params = {})
    # @param [Hash] params ({})
    def describe_engine_default_parameters(params = {}, options = {})
      req = build_request(:describe_engine_default_parameters, params)
      req.send_request(options)
    end

    # Returns events related to clusters, cache security groups, and cache
    # parameter groups. You can obtain events specific to a particular
    # cluster, cache security group, or cache parameter group by providing
    # the name as a parameter.
    #
    # By default, only the events occurring within the last hour are
    # returned; however, you can retrieve up to 14 days' worth of events if
    # necessary.
    #
    # @option params [String] :source_identifier
    #   The identifier of the event source for which events are returned. If
    #   not specified, all sources are included in the response.
    #
    # @option params [String] :source_type
    #   The event source to retrieve events for. If no value is specified, all
    #   events are returned.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format.
    #
    #   **Example:** 2017-03-30T07:03:49.555Z
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format.
    #
    #   **Example:** 2017-03-30T07:03:49.555Z
    #
    # @option params [Integer] :duration
    #   The number of minutes worth of events to retrieve.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::EventsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::EventsMessage#marker #marker} => String
    #   * {Types::EventsMessage#events #events} => Array&lt;Types::Event&gt;
    #
    #
    # @example Example: DescribeEvents
    #
    #   # Describes all the cache-cluster events for the past 120 minutes.
    #
    #   resp = client.describe_events({
    #     duration: 360, 
    #     source_type: "cache-cluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     events: [
    #       {
    #         date: Time.parse("2016-12-22T16:27:56.088Z"), 
    #         message: "Added cache node 0001 in availability zone us-east-1e", 
    #         source_identifier: "redis-cluster", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:27:56.078Z"), 
    #         message: "Cache cluster created", 
    #         source_identifier: "redis-cluster", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.326Z"), 
    #         message: "Added cache node 0002 in availability zone us-east-1c", 
    #         source_identifier: "my-memcached2", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.323Z"), 
    #         message: "Added cache node 0001 in availability zone us-east-1e", 
    #         source_identifier: "my-memcached2", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.314Z"), 
    #         message: "Cache cluster created", 
    #         source_identifier: "my-memcached2", 
    #         source_type: "cache-cluster", 
    #       }, 
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Example: DescribeEvents
    #
    #   # Describes all the replication-group events from 3:00P to 5:00P on November 11, 2016.
    #
    #   resp = client.describe_events({
    #     start_time: Time.parse("2016-12-22T15:00:00.000Z"), 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     events: [
    #       {
    #         date: Time.parse("2016-12-22T21:35:46.674Z"), 
    #         message: "Snapshot succeeded for snapshot with ID 'cr-bkup' of replication group with ID 'clustered-redis'", 
    #         source_identifier: "clustered-redis-0001-001", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:27:56.088Z"), 
    #         message: "Added cache node 0001 in availability zone us-east-1e", 
    #         source_identifier: "redis-cluster", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:27:56.078Z"), 
    #         message: "Cache cluster created", 
    #         source_identifier: "redis-cluster", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.326Z"), 
    #         message: "Added cache node 0002 in availability zone us-east-1c", 
    #         source_identifier: "my-memcached2", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.323Z"), 
    #         message: "Added cache node 0001 in availability zone us-east-1e", 
    #         source_identifier: "my-memcached2", 
    #         source_type: "cache-cluster", 
    #       }, 
    #       {
    #         date: Time.parse("2016-12-22T16:05:17.314Z"), 
    #         message: "Cache cluster created", 
    #         source_identifier: "my-memcached2", 
    #         source_type: "cache-cluster", 
    #       }, 
    #     ], 
    #     marker: "", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_events({
    #     source_identifier: "String",
    #     source_type: "cache-cluster", # accepts cache-cluster, cache-parameter-group, cache-security-group, cache-subnet-group, replication-group
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.events #=> Array
    #   resp.events[0].source_identifier #=> String
    #   resp.events[0].source_type #=> String, one of "cache-cluster", "cache-parameter-group", "cache-security-group", "cache-subnet-group", "replication-group"
    #   resp.events[0].message #=> String
    #   resp.events[0].date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeEvents AWS API Documentation
    #
    # @overload describe_events(params = {})
    # @param [Hash] params ({})
    def describe_events(params = {}, options = {})
      req = build_request(:describe_events, params)
      req.send_request(options)
    end

    # Returns information about a particular replication group. If no
    # identifier is specified, `DescribeReplicationGroups` returns
    # information about all replication groups.
    #
    # <note markdown="1"> This operation is valid for Redis only.
    #
    #  </note>
    #
    # @option params [String] :replication_group_id
    #   The identifier for the replication group to be described. This
    #   parameter is not case sensitive.
    #
    #   If you do not specify this parameter, information about all
    #   replication groups is returned.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::ReplicationGroupMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReplicationGroupMessage#marker #marker} => String
    #   * {Types::ReplicationGroupMessage#replication_groups #replication_groups} => Array&lt;Types::ReplicationGroup&gt;
    #
    #
    # @example Example: DescribeReplicationGroups
    #
    #   # Returns information about the replication group myreplgroup.
    #
    #   resp = client.describe_replication_groups({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     replication_groups: [
    #       {
    #         automatic_failover: "enabled", 
    #         description: "Test cluster", 
    #         member_clusters: [
    #           "clustered-redis-0001-001", 
    #           "clustered-redis-0001-002", 
    #           "clustered-redis-0002-001", 
    #           "clustered-redis-0002-002", 
    #         ], 
    #         node_groups: [
    #           {
    #             node_group_id: "0001", 
    #             node_group_members: [
    #               {
    #                 cache_cluster_id: "clustered-redis-0001-001", 
    #                 cache_node_id: "0001", 
    #                 preferred_availability_zone: "us-east-1e", 
    #               }, 
    #               {
    #                 cache_cluster_id: "clustered-redis-0001-002", 
    #                 cache_node_id: "0001", 
    #                 preferred_availability_zone: "us-east-1c", 
    #               }, 
    #             ], 
    #             status: "available", 
    #           }, 
    #           {
    #             node_group_id: "0002", 
    #             node_group_members: [
    #               {
    #                 cache_cluster_id: "clustered-redis-0002-001", 
    #                 cache_node_id: "0001", 
    #                 preferred_availability_zone: "us-east-1c", 
    #               }, 
    #               {
    #                 cache_cluster_id: "clustered-redis-0002-002", 
    #                 cache_node_id: "0001", 
    #                 preferred_availability_zone: "us-east-1b", 
    #               }, 
    #             ], 
    #             status: "available", 
    #           }, 
    #         ], 
    #         pending_modified_values: {
    #         }, 
    #         replication_group_id: "clustered-redis", 
    #         status: "available", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_replication_groups({
    #     replication_group_id: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.replication_groups #=> Array
    #   resp.replication_groups[0].replication_group_id #=> String
    #   resp.replication_groups[0].description #=> String
    #   resp.replication_groups[0].status #=> String
    #   resp.replication_groups[0].pending_modified_values.primary_cluster_id #=> String
    #   resp.replication_groups[0].pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
    #   resp.replication_groups[0].pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.replication_groups[0].member_clusters #=> Array
    #   resp.replication_groups[0].member_clusters[0] #=> String
    #   resp.replication_groups[0].node_groups #=> Array
    #   resp.replication_groups[0].node_groups[0].node_group_id #=> String
    #   resp.replication_groups[0].node_groups[0].status #=> String
    #   resp.replication_groups[0].node_groups[0].primary_endpoint.address #=> String
    #   resp.replication_groups[0].node_groups[0].primary_endpoint.port #=> Integer
    #   resp.replication_groups[0].node_groups[0].slots #=> String
    #   resp.replication_groups[0].node_groups[0].node_group_members #=> Array
    #   resp.replication_groups[0].node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.replication_groups[0].node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.replication_groups[0].node_groups[0].node_group_members[0].read_endpoint.address #=> String
    #   resp.replication_groups[0].node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
    #   resp.replication_groups[0].node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.replication_groups[0].node_groups[0].node_group_members[0].current_role #=> String
    #   resp.replication_groups[0].snapshotting_cluster_id #=> String
    #   resp.replication_groups[0].automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.replication_groups[0].configuration_endpoint.address #=> String
    #   resp.replication_groups[0].configuration_endpoint.port #=> Integer
    #   resp.replication_groups[0].snapshot_retention_limit #=> Integer
    #   resp.replication_groups[0].snapshot_window #=> String
    #   resp.replication_groups[0].cluster_enabled #=> Boolean
    #   resp.replication_groups[0].cache_node_type #=> String
    #   resp.replication_groups[0].auth_token_enabled #=> Boolean
    #   resp.replication_groups[0].transit_encryption_enabled #=> Boolean
    #   resp.replication_groups[0].at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReplicationGroups AWS API Documentation
    #
    # @overload describe_replication_groups(params = {})
    # @param [Hash] params ({})
    def describe_replication_groups(params = {}, options = {})
      req = build_request(:describe_replication_groups, params)
      req.send_request(options)
    end

    # Returns information about reserved cache nodes for this account, or
    # about a specified reserved cache node.
    #
    # @option params [String] :reserved_cache_node_id
    #   The reserved cache node identifier filter value. Use this parameter to
    #   show only the reservation that matches the specified reservation ID.
    #
    # @option params [String] :reserved_cache_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show only
    #   purchased reservations matching the specified offering identifier.
    #
    # @option params [String] :cache_node_type
    #   The cache node type filter value. Use this parameter to show only
    #   those reservations matching the specified cache node type.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not supported
    #     on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on T1
    #     instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for T1
    #     or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #
    # @option params [String] :duration
    #   The duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for this duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #
    # @option params [String] :product_description
    #   The product description filter value. Use this parameter to show only
    #   those reservations matching the specified product description.
    #
    # @option params [String] :offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type.
    #
    #   Valid values: `"Light Utilization"|"Medium Utilization"|"Heavy
    #   Utilization"`
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::ReservedCacheNodeMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReservedCacheNodeMessage#marker #marker} => String
    #   * {Types::ReservedCacheNodeMessage#reserved_cache_nodes #reserved_cache_nodes} => Array&lt;Types::ReservedCacheNode&gt;
    #
    #
    # @example Example: DescribeReservedCacheNodes
    #
    #   # Returns information about reserved cache nodes for this account, or about a specified reserved cache node. If the
    #   # account has no reserved cache nodes, the operation returns an empty list, as shown here.
    #
    #   resp = client.describe_reserved_cache_nodes({
    #     max_records: 25, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_cache_nodes({
    #     reserved_cache_node_id: "String",
    #     reserved_cache_nodes_offering_id: "String",
    #     cache_node_type: "String",
    #     duration: "String",
    #     product_description: "String",
    #     offering_type: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.reserved_cache_nodes #=> Array
    #   resp.reserved_cache_nodes[0].reserved_cache_node_id #=> String
    #   resp.reserved_cache_nodes[0].reserved_cache_nodes_offering_id #=> String
    #   resp.reserved_cache_nodes[0].cache_node_type #=> String
    #   resp.reserved_cache_nodes[0].start_time #=> Time
    #   resp.reserved_cache_nodes[0].duration #=> Integer
    #   resp.reserved_cache_nodes[0].fixed_price #=> Float
    #   resp.reserved_cache_nodes[0].usage_price #=> Float
    #   resp.reserved_cache_nodes[0].cache_node_count #=> Integer
    #   resp.reserved_cache_nodes[0].product_description #=> String
    #   resp.reserved_cache_nodes[0].offering_type #=> String
    #   resp.reserved_cache_nodes[0].state #=> String
    #   resp.reserved_cache_nodes[0].recurring_charges #=> Array
    #   resp.reserved_cache_nodes[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_cache_nodes[0].recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_cache_nodes[0].reservation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReservedCacheNodes AWS API Documentation
    #
    # @overload describe_reserved_cache_nodes(params = {})
    # @param [Hash] params ({})
    def describe_reserved_cache_nodes(params = {}, options = {})
      req = build_request(:describe_reserved_cache_nodes, params)
      req.send_request(options)
    end

    # Lists available reserved cache node offerings.
    #
    # @option params [String] :reserved_cache_nodes_offering_id
    #   The offering identifier filter value. Use this parameter to show only
    #   the available offering that matches the specified reservation
    #   identifier.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    #
    # @option params [String] :cache_node_type
    #   The cache node type filter value. Use this parameter to show only the
    #   available offerings matching the specified cache node type.
    #
    #   The following node types are supported by ElastiCache. Generally
    #   speaking, the current generation types provide more memory and
    #   computational power at lower cost when compared to their equivalent
    #   previous generation counterparts.
    #
    #   * General purpose:
    #
    #     * Current generation:
    #
    #       **T2 node types:** `cache.t2.micro`, `cache.t2.small`,
    #       `cache.t2.medium`
    #
    #       **M3 node types:** `cache.m3.medium`, `cache.m3.large`,
    #       `cache.m3.xlarge`, `cache.m3.2xlarge`
    #
    #       **M4 node types:** `cache.m4.large`, `cache.m4.xlarge`,
    #       `cache.m4.2xlarge`, `cache.m4.4xlarge`, `cache.m4.10xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **T1 node types:** `cache.t1.micro`
    #
    #       **M1 node types:** `cache.m1.small`, `cache.m1.medium`,
    #       `cache.m1.large`, `cache.m1.xlarge`
    #
    #   * Compute optimized:
    #
    #     * Previous generation: (not recommended)
    #
    #       **C1 node types:** `cache.c1.xlarge`
    #
    #   * Memory optimized:
    #
    #     * Current generation:
    #
    #       **R3 node types:** `cache.r3.large`, `cache.r3.xlarge`,
    #       `cache.r3.2xlarge`, `cache.r3.4xlarge`, `cache.r3.8xlarge`
    #
    #       **R4 node types;** `cache.r4.large`, `cache.r4.xlarge`,
    #       `cache.r4.2xlarge`, `cache.r4.4xlarge`, `cache.r4.8xlarge`,
    #       `cache.r4.16xlarge`
    #
    #     * Previous generation: (not recommended)
    #
    #       **M2 node types:** `cache.m2.xlarge`, `cache.m2.2xlarge`,
    #       `cache.m2.4xlarge`
    #
    #   **Notes:**
    #
    #   * All T2 instances are created in an Amazon Virtual Private Cloud
    #     (Amazon VPC).
    #
    #   * Redis (cluster mode disabled): Redis backup/restore is not supported
    #     on T1 and T2 instances.
    #
    #   * Redis (cluster mode enabled): Backup/restore is not supported on T1
    #     instances.
    #
    #   * Redis Append-only files (AOF) functionality is not supported for T1
    #     or T2 instances.
    #
    #   For a complete listing of node types and specifications, see:
    #
    #   * [Amazon ElastiCache Product Features and Details][1]
    #
    #   * [Cache Node Type-Specific Parameters for Memcached][2]
    #
    #   * [Cache Node Type-Specific Parameters for Redis][3]
    #
    #
    #
    #   [1]: http://aws.amazon.com/elasticache/details
    #   [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Memcached.html#ParameterGroups.Memcached.NodeSpecific
    #   [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.Redis.html#ParameterGroups.Redis.NodeSpecific
    #
    # @option params [String] :duration
    #   Duration filter value, specified in years or seconds. Use this
    #   parameter to show only reservations for a given duration.
    #
    #   Valid Values: `1 | 3 | 31536000 | 94608000`
    #
    # @option params [String] :product_description
    #   The product description filter value. Use this parameter to show only
    #   the available offerings matching the specified product description.
    #
    # @option params [String] :offering_type
    #   The offering type filter value. Use this parameter to show only the
    #   available offerings matching the specified offering type.
    #
    #   Valid Values: `"Light Utilization"|"Medium Utilization"|"Heavy
    #   Utilization"`
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20; maximum 100.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @return [Types::ReservedCacheNodesOfferingMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReservedCacheNodesOfferingMessage#marker #marker} => String
    #   * {Types::ReservedCacheNodesOfferingMessage#reserved_cache_nodes_offerings #reserved_cache_nodes_offerings} => Array&lt;Types::ReservedCacheNodesOffering&gt;
    #
    #
    # @example Example: DescribeReseredCacheNodeOfferings
    #
    #   # Lists available reserved cache node offerings.
    #
    #   resp = client.describe_reserved_cache_nodes_offerings({
    #     max_records: 20, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "1ef01f5b-433f-94ff-a530-61a56bfc8e7a", 
    #     reserved_cache_nodes_offerings: [
    #       {
    #         cache_node_type: "cache.m1.small", 
    #         duration: 94608000, 
    #         fixed_price: 157.0, 
    #         offering_type: "Medium Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "0167633d-37f6-4222-b872-b1f22eb79ba4", 
    #         usage_price: 0.017, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m4.xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 1248.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.077, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "02c04e13-baca-4e71-9ceb-620eed94827d", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m2.4xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 2381.0, 
    #         offering_type: "Medium Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "02e1755e-76e8-48e3-8d82-820a5726a458", 
    #         usage_price: 0.276, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m1.small", 
    #         duration: 94608000, 
    #         fixed_price: 188.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.013, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "03315215-7b87-421a-a3dd-785021e4113f", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m4.10xlarge", 
    #         duration: 31536000, 
    #         fixed_price: 6158.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.125, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "05ffbb44-2ace-4476-a2a5-8ec99f866fb3", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m1.small", 
    #         duration: 31536000, 
    #         fixed_price: 101.0, 
    #         offering_type: "Medium Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "065c71ae-4a4e-4f1e-bebf-37525f4c6cb2", 
    #         usage_price: 0.023, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m1.medium", 
    #         duration: 94608000, 
    #         fixed_price: 314.0, 
    #         offering_type: "Medium Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "06774b12-7f5e-48c1-907a-f286c63f327d", 
    #         usage_price: 0.034, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m2.xlarge", 
    #         duration: 31536000, 
    #         fixed_price: 163.0, 
    #         offering_type: "Light Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "0924ac6b-847f-4761-ba6b-4290b2adf719", 
    #         usage_price: 0.137, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m2.xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 719.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.049, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "09eeb126-69b6-4d3f-8f94-ca3510629f53", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.r3.2xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 4132.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.182, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "0a516ad8-557f-4310-9dd0-2448c2ff4d62", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.c1.xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 875.0, 
    #         offering_type: "Light Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "0b0c1cc5-2177-4150-95d7-c67ec34dcb19", 
    #         usage_price: 0.363, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m4.10xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 12483.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.76, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "0c2b139b-1cff-43d0-8fba-0c753f9b1950", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.c1.xlarge", 
    #         duration: 31536000, 
    #         fixed_price: 1620.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.207, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "0c52115b-38cb-47a2-8dbc-e02e40b6a13f", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m2.4xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 2381.0, 
    #         offering_type: "Medium Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "12fcb19c-5416-4e1d-934f-28f1e2cb8599", 
    #         usage_price: 0.276, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m4.xlarge", 
    #         duration: 31536000, 
    #         fixed_price: 616.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.112, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "13af20ad-914d-4d8b-9763-fa2e565f3549", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.r3.8xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 16528.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.729, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "14da3d3f-b526-4dbf-b09b-355578b2a576", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m1.medium", 
    #         duration: 94608000, 
    #         fixed_price: 140.0, 
    #         offering_type: "Light Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "15d7018c-71fb-4717-8409-4bdcdca18da7", 
    #         usage_price: 0.052, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m4.4xlarge", 
    #         duration: 94608000, 
    #         fixed_price: 4993.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.304, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "1ae7ec5f-a76e-49b6-822b-629b1768a13a", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.m3.2xlarge", 
    #         duration: 31536000, 
    #         fixed_price: 1772.0, 
    #         offering_type: "Heavy Utilization", 
    #         product_description: "redis", 
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 0.25, 
    #             recurring_charge_frequency: "Hourly", 
    #           }, 
    #         ], 
    #         reserved_cache_nodes_offering_id: "1d31242b-3925-48d1-b882-ce03204e6013", 
    #         usage_price: 0.0, 
    #       }, 
    #       {
    #         cache_node_type: "cache.t1.micro", 
    #         duration: 31536000, 
    #         fixed_price: 54.0, 
    #         offering_type: "Medium Utilization", 
    #         product_description: "memcached", 
    #         recurring_charges: [
    #         ], 
    #         reserved_cache_nodes_offering_id: "1ef01f5b-94ff-433f-a530-61a56bfc8e7a", 
    #         usage_price: 0.008, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Example: DescribeReseredCacheNodeOfferings
    #
    #   # Lists available reserved cache node offerings for cache.r3.large nodes with a 3 year commitment.
    #
    #   resp = client.describe_reserved_cache_nodes_offerings({
    #     cache_node_type: "cache.r3.large", 
    #     duration: "3", 
    #     max_records: 25, 
    #     offering_type: "Light Utilization", 
    #     reserved_cache_nodes_offering_id: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     reserved_cache_nodes_offerings: [
    #     ], 
    #   }
    #
    # @example Example: DescribeReseredCacheNodeOfferings
    #
    #   # Lists available reserved cache node offerings.
    #
    #   resp = client.describe_reserved_cache_nodes_offerings({
    #     cache_node_type: "", 
    #     duration: "", 
    #     marker: "", 
    #     max_records: 25, 
    #     offering_type: "", 
    #     product_description: "", 
    #     reserved_cache_nodes_offering_id: "438012d3-4052-4cc7-b2e3-8d3372e0e706", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     reserved_cache_nodes_offerings: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_reserved_cache_nodes_offerings({
    #     reserved_cache_nodes_offering_id: "String",
    #     cache_node_type: "String",
    #     duration: "String",
    #     product_description: "String",
    #     offering_type: "String",
    #     max_records: 1,
    #     marker: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.reserved_cache_nodes_offerings #=> Array
    #   resp.reserved_cache_nodes_offerings[0].reserved_cache_nodes_offering_id #=> String
    #   resp.reserved_cache_nodes_offerings[0].cache_node_type #=> String
    #   resp.reserved_cache_nodes_offerings[0].duration #=> Integer
    #   resp.reserved_cache_nodes_offerings[0].fixed_price #=> Float
    #   resp.reserved_cache_nodes_offerings[0].usage_price #=> Float
    #   resp.reserved_cache_nodes_offerings[0].product_description #=> String
    #   resp.reserved_cache_nodes_offerings[0].offering_type #=> String
    #   resp.reserved_cache_nodes_offerings[0].recurring_charges #=> Array
    #   resp.reserved_cache_nodes_offerings[0].recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_cache_nodes_offerings[0].recurring_charges[0].recurring_charge_frequency #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeReservedCacheNodesOfferings AWS API Documentation
    #
    # @overload describe_reserved_cache_nodes_offerings(params = {})
    # @param [Hash] params ({})
    def describe_reserved_cache_nodes_offerings(params = {}, options = {})
      req = build_request(:describe_reserved_cache_nodes_offerings, params)
      req.send_request(options)
    end

    # Returns information about cluster or replication group snapshots. By
    # default, `DescribeSnapshots` lists all of your snapshots; it can
    # optionally describe a single snapshot, or just the snapshots
    # associated with a particular cache cluster.
    #
    # <note markdown="1"> This operation is valid for Redis only.
    #
    #  </note>
    #
    # @option params [String] :replication_group_id
    #   A user-supplied replication group identifier. If this parameter is
    #   specified, only snapshots associated with that specific replication
    #   group are described.
    #
    # @option params [String] :cache_cluster_id
    #   A user-supplied cluster identifier. If this parameter is specified,
    #   only snapshots associated with that specific cluster are described.
    #
    # @option params [String] :snapshot_name
    #   A user-supplied name of the snapshot. If this parameter is specified,
    #   only this snapshot are described.
    #
    # @option params [String] :snapshot_source
    #   If set to `system`, the output shows snapshots that were automatically
    #   created by ElastiCache. If set to `user` the output shows snapshots
    #   that were manually created. If omitted, the output shows both
    #   automatically and manually created snapshots.
    #
    # @option params [String] :marker
    #   An optional marker returned from a prior request. Use this marker for
    #   pagination of results from this operation. If this parameter is
    #   specified, the response includes only records beyond the marker, up to
    #   the value specified by `MaxRecords`.
    #
    # @option params [Integer] :max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a marker is
    #   included in the response so that the remaining results can be
    #   retrieved.
    #
    #   Default: 50
    #
    #   Constraints: minimum 20; maximum 50.
    #
    # @option params [Boolean] :show_node_group_config
    #   A Boolean value which if true, the node group (shard) configuration is
    #   included in the snapshot description.
    #
    # @return [Types::DescribeSnapshotsListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSnapshotsListMessage#marker #marker} => String
    #   * {Types::DescribeSnapshotsListMessage#snapshots #snapshots} => Array&lt;Types::Snapshot&gt;
    #
    #
    # @example Example: DescribeSnapshots
    #
    #   # Returns information about the snapshot mysnapshot. By default.
    #
    #   resp = client.describe_snapshots({
    #     snapshot_name: "snapshot-20161212", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "", 
    #     snapshots: [
    #       {
    #         auto_minor_version_upgrade: true, 
    #         cache_cluster_create_time: Time.parse("2016-12-21T22:27:12.543Z"), 
    #         cache_cluster_id: "my-redis5", 
    #         cache_node_type: "cache.m3.large", 
    #         cache_parameter_group_name: "default.redis3.2", 
    #         cache_subnet_group_name: "default", 
    #         engine: "redis", 
    #         engine_version: "3.2.4", 
    #         node_snapshots: [
    #           {
    #             cache_node_create_time: Time.parse("2016-12-21T22:27:12.543Z"), 
    #             cache_node_id: "0001", 
    #             cache_size: "3 MB", 
    #             snapshot_create_time: Time.parse("2016-12-21T22:30:26Z"), 
    #           }, 
    #         ], 
    #         num_cache_nodes: 1, 
    #         port: 6379, 
    #         preferred_availability_zone: "us-east-1c", 
    #         preferred_maintenance_window: "fri:05:30-fri:06:30", 
    #         snapshot_name: "snapshot-20161212", 
    #         snapshot_retention_limit: 7, 
    #         snapshot_source: "manual", 
    #         snapshot_status: "available", 
    #         snapshot_window: "10:00-11:00", 
    #         vpc_id: "vpc-91280df6", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_snapshots({
    #     replication_group_id: "String",
    #     cache_cluster_id: "String",
    #     snapshot_name: "String",
    #     snapshot_source: "String",
    #     marker: "String",
    #     max_records: 1,
    #     show_node_group_config: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.marker #=> String
    #   resp.snapshots #=> Array
    #   resp.snapshots[0].snapshot_name #=> String
    #   resp.snapshots[0].replication_group_id #=> String
    #   resp.snapshots[0].replication_group_description #=> String
    #   resp.snapshots[0].cache_cluster_id #=> String
    #   resp.snapshots[0].snapshot_status #=> String
    #   resp.snapshots[0].snapshot_source #=> String
    #   resp.snapshots[0].cache_node_type #=> String
    #   resp.snapshots[0].engine #=> String
    #   resp.snapshots[0].engine_version #=> String
    #   resp.snapshots[0].num_cache_nodes #=> Integer
    #   resp.snapshots[0].preferred_availability_zone #=> String
    #   resp.snapshots[0].cache_cluster_create_time #=> Time
    #   resp.snapshots[0].preferred_maintenance_window #=> String
    #   resp.snapshots[0].topic_arn #=> String
    #   resp.snapshots[0].port #=> Integer
    #   resp.snapshots[0].cache_parameter_group_name #=> String
    #   resp.snapshots[0].cache_subnet_group_name #=> String
    #   resp.snapshots[0].vpc_id #=> String
    #   resp.snapshots[0].auto_minor_version_upgrade #=> Boolean
    #   resp.snapshots[0].snapshot_retention_limit #=> Integer
    #   resp.snapshots[0].snapshot_window #=> String
    #   resp.snapshots[0].num_node_groups #=> Integer
    #   resp.snapshots[0].automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.snapshots[0].node_snapshots #=> Array
    #   resp.snapshots[0].node_snapshots[0].cache_cluster_id #=> String
    #   resp.snapshots[0].node_snapshots[0].node_group_id #=> String
    #   resp.snapshots[0].node_snapshots[0].cache_node_id #=> String
    #   resp.snapshots[0].node_snapshots[0].node_group_configuration.node_group_id #=> String
    #   resp.snapshots[0].node_snapshots[0].node_group_configuration.slots #=> String
    #   resp.snapshots[0].node_snapshots[0].node_group_configuration.replica_count #=> Integer
    #   resp.snapshots[0].node_snapshots[0].node_group_configuration.primary_availability_zone #=> String
    #   resp.snapshots[0].node_snapshots[0].node_group_configuration.replica_availability_zones #=> Array
    #   resp.snapshots[0].node_snapshots[0].node_group_configuration.replica_availability_zones[0] #=> String
    #   resp.snapshots[0].node_snapshots[0].cache_size #=> String
    #   resp.snapshots[0].node_snapshots[0].cache_node_create_time #=> Time
    #   resp.snapshots[0].node_snapshots[0].snapshot_create_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/DescribeSnapshots AWS API Documentation
    #
    # @overload describe_snapshots(params = {})
    # @param [Hash] params ({})
    def describe_snapshots(params = {}, options = {})
      req = build_request(:describe_snapshots, params)
      req.send_request(options)
    end

    # Dynamically increases the number of replics in a Redis (cluster mode
    # disabled) replication group or the number of replica nodes in one or
    # more node groups (shards) of a Redis (cluster mode enabled)
    # replication group. This operation is performed with no cluster down
    # time.
    #
    # @option params [required, String] :replication_group_id
    #   The id of the replication group to which you want to add replica
    #   nodes.
    #
    # @option params [Integer] :new_replica_count
    #   The number of read replica nodes you want at the completion of this
    #   operation. For Redis (cluster mode disabled) replication groups, this
    #   is the number of replica nodes in the replication group. For Redis
    #   (cluster mode enabled) replication groups, this is the number of
    #   replica nodes in each of the replication group's node groups.
    #
    # @option params [Array<Types::ConfigureShard>] :replica_configuration
    #   A list of `ConfigureShard` objects that can be used to configure each
    #   shard in a Redis (cluster mode enabled) replication group. The
    #   `ConfigureShard` has three members: `NewReplicaCount`, `NodeGroupId`,
    #   and `PreferredAvailabilityZones`.
    #
    # @option params [required, Boolean] :apply_immediately
    #   If `True`, the number of replica nodes is increased immediately. If
    #   `False`, the number of replica nodes is increased during the next
    #   maintenance window.
    #
    # @return [Types::IncreaseReplicaCountResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IncreaseReplicaCountResult#replication_group #replication_group} => Types::ReplicationGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.increase_replica_count({
    #     replication_group_id: "String", # required
    #     new_replica_count: 1,
    #     replica_configuration: [
    #       {
    #         node_group_id: "AllowedNodeGroupId", # required
    #         new_replica_count: 1, # required
    #         preferred_availability_zones: ["String"],
    #       },
    #     ],
    #     apply_immediately: false, # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_group.replication_group_id #=> String
    #   resp.replication_group.description #=> String
    #   resp.replication_group.status #=> String
    #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
    #   resp.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.replication_group.member_clusters #=> Array
    #   resp.replication_group.member_clusters[0] #=> String
    #   resp.replication_group.node_groups #=> Array
    #   resp.replication_group.node_groups[0].node_group_id #=> String
    #   resp.replication_group.node_groups[0].status #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].slots #=> String
    #   resp.replication_group.node_groups[0].node_group_members #=> Array
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.replication_group.snapshotting_cluster_id #=> String
    #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.replication_group.configuration_endpoint.address #=> String
    #   resp.replication_group.configuration_endpoint.port #=> Integer
    #   resp.replication_group.snapshot_retention_limit #=> Integer
    #   resp.replication_group.snapshot_window #=> String
    #   resp.replication_group.cluster_enabled #=> Boolean
    #   resp.replication_group.cache_node_type #=> String
    #   resp.replication_group.auth_token_enabled #=> Boolean
    #   resp.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.replication_group.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/IncreaseReplicaCount AWS API Documentation
    #
    # @overload increase_replica_count(params = {})
    # @param [Hash] params ({})
    def increase_replica_count(params = {}, options = {})
      req = build_request(:increase_replica_count, params)
      req.send_request(options)
    end

    # Lists all available node types that you can scale your Redis
    # cluster's or replication group's current node type up to.
    #
    # When you use the `ModifyCacheCluster` or `ModifyReplicationGroup`
    # operations to scale up your cluster or replication group, the value of
    # the `CacheNodeType` parameter must be one of the node types returned
    # by this operation.
    #
    # @option params [String] :cache_cluster_id
    #   The name of the cluster you want to scale up to a larger node
    #   instanced type. ElastiCache uses the cluster id to identify the
    #   current node type of this cluster and from that to create a list of
    #   node types you can scale up to.
    #
    #   You must provide a value for either the `CacheClusterId` or the
    #   `ReplicationGroupId`.
    #
    # @option params [String] :replication_group_id
    #   The name of the replication group want to scale up to a larger node
    #   type. ElastiCache uses the replication group id to identify the
    #   current node type being used by this replication group, and from that
    #   to create a list of node types you can scale up to.
    #
    #   You must provide a value for either the `CacheClusterId` or the
    #   `ReplicationGroupId`.
    #
    # @return [Types::AllowedNodeTypeModificationsMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AllowedNodeTypeModificationsMessage#scale_up_modifications #scale_up_modifications} => Array&lt;String&gt;
    #
    #
    # @example Example: ListAllowedNodeTypeModifications
    #
    #   # Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to.
    #
    #   resp = client.list_allowed_node_type_modifications({
    #     replication_group_id: "myreplgroup", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scale_up_modifications: [
    #       "cache.m4.10xlarge", 
    #       "cache.m4.2xlarge", 
    #       "cache.m4.4xlarge", 
    #       "cache.m4.xlarge", 
    #       "cache.r3.2xlarge", 
    #       "cache.r3.4xlarge", 
    #       "cache.r3.8xlarge", 
    #       "cache.r3.xlarge", 
    #     ], 
    #   }
    #
    # @example Example: ListAllowedNodeTypeModifications
    #
    #   # Lists all available node types that you can scale your Redis cluster's or replication group's current node type up to.
    #
    #   resp = client.list_allowed_node_type_modifications({
    #     cache_cluster_id: "mycluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     scale_up_modifications: [
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_allowed_node_type_modifications({
    #     cache_cluster_id: "String",
    #     replication_group_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.scale_up_modifications #=> Array
    #   resp.scale_up_modifications[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ListAllowedNodeTypeModifications AWS API Documentation
    #
    # @overload list_allowed_node_type_modifications(params = {})
    # @param [Hash] params ({})
    def list_allowed_node_type_modifications(params = {}, options = {})
      req = build_request(:list_allowed_node_type_modifications, params)
      req.send_request(options)
    end

    # Lists all cost allocation tags currently on the named resource. A
    # `cost allocation tag` is a key-value pair where the key is
    # case-sensitive and the value is optional. You can use cost allocation
    # tags to categorize and track your AWS costs.
    #
    # If the cluster is not in the *available* state, `ListTagsForResource`
    # returns an error.
    #
    # You can have a maximum of 50 cost allocation tags on an ElastiCache
    # resource. For more information, see [Monitoring Costs with Tags][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html
    #
    # @option params [required, String] :resource_name
    #   The Amazon Resource Name (ARN) of the resource for which you want the
    #   list of tags, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagListMessage#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: ListTagsForResource
    #
    #   # Lists all cost allocation tags currently on the named resource. A cost allocation tag is a key-value pair where the key
    #   # is case-sensitive and the value is optional. You can use cost allocation tags to categorize and track your AWS costs.
    #
    #   resp = client.list_tags_for_resource({
    #     resource_name: "arn:aws:elasticache:us-west-2:<my-account-id>:cluster:mycluster", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tag_list: [
    #       {
    #         key: "APIVersion", 
    #         value: "20150202", 
    #       }, 
    #       {
    #         key: "Service", 
    #         value: "ElastiCache", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource({
    #     resource_name: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ListTagsForResource AWS API Documentation
    #
    # @overload list_tags_for_resource(params = {})
    # @param [Hash] params ({})
    def list_tags_for_resource(params = {}, options = {})
      req = build_request(:list_tags_for_resource, params)
      req.send_request(options)
    end

    # Modifies the settings for a cluster. You can use this operation to
    # change one or more cluster configuration parameters by specifying the
    # parameters and the new values.
    #
    # @option params [required, String] :cache_cluster_id
    #   The cluster identifier. This value is stored as a lowercase string.
    #
    # @option params [Integer] :num_cache_nodes
    #   The number of cache nodes that the cluster should have. If the value
    #   for `NumCacheNodes` is greater than the sum of the number of current
    #   cache nodes and the number of cache nodes pending creation (which may
    #   be zero), more nodes are added. If the value is less than the number
    #   of existing cache nodes, nodes are removed. If the value is equal to
    #   the number of current cache nodes, any pending add or remove requests
    #   are canceled.
    #
    #   If you are removing cache nodes, you must use the
    #   `CacheNodeIdsToRemove` parameter to provide the IDs of the specific
    #   cache nodes to remove.
    #
    #   For clusters running Redis, this value must be 1. For clusters running
    #   Memcached, this value must be between 1 and 20.
    #
    #   <note markdown="1"> Adding or removing Memcached cache nodes can be applied immediately or
    #   as a pending operation (see `ApplyImmediately`).
    #
    #    A pending operation to modify the number of cache nodes in a cluster
    #   during its maintenance window, whether by adding or removing nodes in
    #   accordance with the scale out architecture, is not queued. The
    #   customer's latest request to add or remove nodes to the cluster
    #   overrides any previous pending operations to modify the number of
    #   cache nodes in the cluster. For example, a request to remove 2 nodes
    #   would override a previous pending operation to remove 3 nodes.
    #   Similarly, a request to add 2 nodes would override a previous pending
    #   operation to remove 3 nodes and vice versa. As Memcached cache nodes
    #   may now be provisioned in different Availability Zones with flexible
    #   cache node placement, a request to add nodes does not automatically
    #   override a previous pending operation to add nodes. The customer can
    #   modify the previous pending operation to add more nodes or explicitly
    #   cancel the pending request and retry the new request. To cancel
    #   pending operations to modify the number of cache nodes in a cluster,
    #   use the `ModifyCacheCluster` request and set `NumCacheNodes` equal to
    #   the number of cache nodes currently in the cluster.
    #
    #    </note>
    #
    # @option params [Array<String>] :cache_node_ids_to_remove
    #   A list of cache node IDs to be removed. A node ID is a numeric
    #   identifier (0001, 0002, etc.). This parameter is only valid when
    #   `NumCacheNodes` is less than the existing number of cache nodes. The
    #   number of cache node IDs supplied in this parameter must match the
    #   difference between the existing number of cache nodes in the cluster
    #   or pending cache nodes, whichever is greater, and the value of
    #   `NumCacheNodes` in the request.
    #
    #   For example: If you have 3 active cache nodes, 7 pending cache nodes,
    #   and the number of cache nodes in this `ModifyCacheCluster` call is 5,
    #   you must list 2 (7 - 5) cache node IDs to remove.
    #
    # @option params [String] :az_mode
    #   Specifies whether the new nodes in this Memcached cluster are all
    #   created in a single Availability Zone or created across multiple
    #   Availability Zones.
    #
    #   Valid values: `single-az` \| `cross-az`.
    #
    #   This option is only supported for Memcached clusters.
    #
    #   <note markdown="1"> You cannot specify `single-az` if the Memcached cluster already has
    #   cache nodes in different Availability Zones. If `cross-az` is
    #   specified, existing Memcached nodes remain in their current
    #   Availability Zone.
    #
    #    Only newly created nodes are located in different Availability Zones.
    #   For instructions on how to move existing Memcached nodes to different
    #   Availability Zones, see the **Availability Zone Considerations**
    #   section of [Cache Node Considerations for Memcached][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNode.Memcached.html
    #
    # @option params [Array<String>] :new_availability_zones
    #   The list of Availability Zones where the new Memcached cache nodes are
    #   created.
    #
    #   This parameter is only valid when `NumCacheNodes` in the request is
    #   greater than the sum of the number of active cache nodes and the
    #   number of cache nodes pending creation (which may be zero). The number
    #   of Availability Zones supplied in this list must match the cache nodes
    #   being added in this request.
    #
    #   This option is only supported on Memcached clusters.
    #
    #   Scenarios:
    #
    #   * **Scenario 1:** You have 3 active nodes and wish to add 2 nodes.
    #     Specify `NumCacheNodes=5` (3 + 2) and optionally specify two
    #     Availability Zones for the two new nodes.
    #
    #   * **Scenario 2:** You have 3 active nodes and 2 nodes pending creation
    #     (from the scenario 1 call) and want to add 1 more node. Specify
    #     `NumCacheNodes=6` ((3 + 2) + 1) and optionally specify an
    #     Availability Zone for the new node.
    #
    #   * **Scenario 3:** You want to cancel all pending operations. Specify
    #     `NumCacheNodes=3` to cancel all pending operations.
    #
    #   The Availability Zone placement of nodes pending creation cannot be
    #   modified. If you wish to cancel any nodes pending creation, add 0
    #   nodes by setting `NumCacheNodes` to the number of current nodes.
    #
    #   If `cross-az` is specified, existing Memcached nodes remain in their
    #   current Availability Zone. Only newly created nodes can be located in
    #   different Availability Zones. For guidance on how to move existing
    #   Memcached nodes to different Availability Zones, see the
    #   **Availability Zone Considerations** section of [Cache Node
    #   Considerations for Memcached][1].
    #
    #   **Impact of new add/remove requests upon pending requests**
    #
    #   * Scenario-1
    #
    #     * Pending Action: Delete
    #
    #     * New Request: Delete
    #
    #     * Result: The new delete, pending or immediate, replaces the pending
    #       delete.
    #
    #   * Scenario-2
    #
    #     * Pending Action: Delete
    #
    #     * New Request: Create
    #
    #     * Result: The new create, pending or immediate, replaces the pending
    #       delete.
    #
    #   * Scenario-3
    #
    #     * Pending Action: Create
    #
    #     * New Request: Delete
    #
    #     * Result: The new delete, pending or immediate, replaces the pending
    #       create.
    #
    #   * Scenario-4
    #
    #     * Pending Action: Create
    #
    #     * New Request: Create
    #
    #     * Result: The new create is added to the pending create.
    #
    #       **Important:** If the new create request is **Apply Immediately -
    #       Yes**, all creates are performed immediately. If the new create
    #       request is **Apply Immediately - No**, all creates are pending.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheNode.Memcached.html
    #
    # @option params [Array<String>] :cache_security_group_names
    #   A list of cache security group names to authorize on this cluster.
    #   This change is asynchronously applied as soon as possible.
    #
    #   You can use this parameter only with clusters that are created outside
    #   of an Amazon Virtual Private Cloud (Amazon VPC).
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Must not be "Default".
    #
    # @option params [Array<String>] :security_group_ids
    #   Specifies the VPC Security Groups associated with the cluster.
    #
    #   This parameter can be used only with clusters that are created in an
    #   Amazon Virtual Private Cloud (Amazon VPC).
    #
    # @option params [String] :preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #
    # @option params [String] :notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be same as the cluster owner.
    #
    #    </note>
    #
    # @option params [String] :cache_parameter_group_name
    #   The name of the cache parameter group to apply to this cluster. This
    #   change is asynchronously applied as soon as possible for parameters
    #   when the `ApplyImmediately` parameter is specified as `true` for this
    #   request.
    #
    # @option params [String] :notification_topic_status
    #   The status of the Amazon SNS notification topic. Notifications are
    #   sent only if the status is `active`.
    #
    #   Valid values: `active` \| `inactive`
    #
    # @option params [Boolean] :apply_immediately
    #   If `true`, this parameter causes the modifications in this request and
    #   any pending modifications to be applied, asynchronously and as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the cluster.
    #
    #   If `false`, changes to the cluster are applied on the next maintenance
    #   reboot, or the next failure reboot, whichever occurs first.
    #
    #   If you perform a `ModifyCacheCluster` before a pending modification is
    #   applied, the pending modification is replaced by the newer
    #   modification.
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: `false`
    #
    # @option params [String] :engine_version
    #   The upgraded version of the cache engine to be run on the cache nodes.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing cluster and create it anew with
    #   the earlier engine version.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #
    # @option params [Integer] :snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic cluster
    #   snapshots before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   <note markdown="1"> If the value of `SnapshotRetentionLimit` is set to zero (0), backups
    #   are turned off.
    #
    #    </note>
    #
    # @option params [String] :snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking a
    #   daily snapshot of your cluster.
    #
    # @option params [String] :cache_node_type
    #   A valid cache node type that you want to scale this cluster up to.
    #
    # @return [Types::ModifyCacheClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyCacheClusterResult#cache_cluster #cache_cluster} => Types::CacheCluster
    #
    #
    # @example Example: ModifyCacheCluster
    #
    #   # Copies a snapshot to a specified name.
    #
    #   resp = client.modify_cache_cluster({
    #     apply_immediately: true, 
    #     cache_cluster_id: "redis-cluster", 
    #     snapshot_retention_limit: 14, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_cluster: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_create_time: Time.parse("2016-12-22T16:27:56.078Z"), 
    #       cache_cluster_id: "redis-cluster", 
    #       cache_cluster_status: "available", 
    #       cache_node_type: "cache.r3.large", 
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ], 
    #         cache_parameter_group_name: "default.redis3.2", 
    #         parameter_apply_status: "in-sync", 
    #       }, 
    #       cache_security_groups: [
    #       ], 
    #       cache_subnet_group_name: "default", 
    #       client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:", 
    #       engine: "redis", 
    #       engine_version: "3.2.4", 
    #       num_cache_nodes: 1, 
    #       pending_modified_values: {
    #       }, 
    #       preferred_availability_zone: "us-east-1e", 
    #       preferred_maintenance_window: "fri:09:00-fri:10:00", 
    #       snapshot_retention_limit: 14, 
    #       snapshot_window: "07:00-08:00", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cache_cluster({
    #     cache_cluster_id: "String", # required
    #     num_cache_nodes: 1,
    #     cache_node_ids_to_remove: ["String"],
    #     az_mode: "single-az", # accepts single-az, cross-az
    #     new_availability_zones: ["String"],
    #     cache_security_group_names: ["String"],
    #     security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     notification_topic_arn: "String",
    #     cache_parameter_group_name: "String",
    #     notification_topic_status: "String",
    #     apply_immediately: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: "String",
    #     cache_node_type: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_cluster.cache_cluster_id #=> String
    #   resp.cache_cluster.configuration_endpoint.address #=> String
    #   resp.cache_cluster.configuration_endpoint.port #=> Integer
    #   resp.cache_cluster.client_download_landing_page #=> String
    #   resp.cache_cluster.cache_node_type #=> String
    #   resp.cache_cluster.engine #=> String
    #   resp.cache_cluster.engine_version #=> String
    #   resp.cache_cluster.cache_cluster_status #=> String
    #   resp.cache_cluster.num_cache_nodes #=> Integer
    #   resp.cache_cluster.preferred_availability_zone #=> String
    #   resp.cache_cluster.cache_cluster_create_time #=> Time
    #   resp.cache_cluster.preferred_maintenance_window #=> String
    #   resp.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
    #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array
    #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.cache_cluster.pending_modified_values.engine_version #=> String
    #   resp.cache_cluster.pending_modified_values.cache_node_type #=> String
    #   resp.cache_cluster.notification_configuration.topic_arn #=> String
    #   resp.cache_cluster.notification_configuration.topic_status #=> String
    #   resp.cache_cluster.cache_security_groups #=> Array
    #   resp.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.cache_cluster.cache_security_groups[0].status #=> String
    #   resp.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
    #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array
    #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
    #   resp.cache_cluster.cache_subnet_group_name #=> String
    #   resp.cache_cluster.cache_nodes #=> Array
    #   resp.cache_cluster.cache_nodes[0].cache_node_id #=> String
    #   resp.cache_cluster.cache_nodes[0].cache_node_status #=> String
    #   resp.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
    #   resp.cache_cluster.cache_nodes[0].endpoint.address #=> String
    #   resp.cache_cluster.cache_nodes[0].endpoint.port #=> Integer
    #   resp.cache_cluster.cache_nodes[0].parameter_group_status #=> String
    #   resp.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
    #   resp.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
    #   resp.cache_cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.cache_cluster.security_groups #=> Array
    #   resp.cache_cluster.security_groups[0].security_group_id #=> String
    #   resp.cache_cluster.security_groups[0].status #=> String
    #   resp.cache_cluster.replication_group_id #=> String
    #   resp.cache_cluster.snapshot_retention_limit #=> Integer
    #   resp.cache_cluster.snapshot_window #=> String
    #   resp.cache_cluster.auth_token_enabled #=> Boolean
    #   resp.cache_cluster.transit_encryption_enabled #=> Boolean
    #   resp.cache_cluster.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheCluster AWS API Documentation
    #
    # @overload modify_cache_cluster(params = {})
    # @param [Hash] params ({})
    def modify_cache_cluster(params = {}, options = {})
      req = build_request(:modify_cache_cluster, params)
      req.send_request(options)
    end

    # Modifies the parameters of a cache parameter group. You can modify up
    # to 20 parameters in a single request by submitting a list parameter
    # name and value pairs.
    #
    # @option params [required, String] :cache_parameter_group_name
    #   The name of the cache parameter group to modify.
    #
    # @option params [required, Array<Types::ParameterNameValue>] :parameter_name_values
    #   An array of parameter names and values for the parameter update. You
    #   must supply at least one parameter name and value; subsequent
    #   arguments are optional. A maximum of 20 parameters may be modified per
    #   request.
    #
    # @return [Types::CacheParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CacheParameterGroupNameMessage#cache_parameter_group_name #cache_parameter_group_name} => String
    #
    #
    # @example Example: ModifyCacheParameterGroup
    #
    #   # Modifies one or more parameter values in the specified parameter group. You cannot modify any default parameter group.
    #
    #   resp = client.modify_cache_parameter_group({
    #     cache_parameter_group_name: "custom-mem1-4", 
    #     parameter_name_values: [
    #       {
    #         parameter_name: "binding_protocol", 
    #         parameter_value: "ascii", 
    #       }, 
    #       {
    #         parameter_name: "chunk_size", 
    #         parameter_value: "96", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_parameter_group_name: "custom-mem1-4", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cache_parameter_group({
    #     cache_parameter_group_name: "String", # required
    #     parameter_name_values: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheParameterGroup AWS API Documentation
    #
    # @overload modify_cache_parameter_group(params = {})
    # @param [Hash] params ({})
    def modify_cache_parameter_group(params = {}, options = {})
      req = build_request(:modify_cache_parameter_group, params)
      req.send_request(options)
    end

    # Modifies an existing cache subnet group.
    #
    # @option params [required, String] :cache_subnet_group_name
    #   The name for the cache subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters or
    #   hyphens.
    #
    #   Example: `mysubnetgroup`
    #
    # @option params [String] :cache_subnet_group_description
    #   A description of the cache subnet group.
    #
    # @option params [Array<String>] :subnet_ids
    #   The EC2 subnet IDs for the cache subnet group.
    #
    # @return [Types::ModifyCacheSubnetGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyCacheSubnetGroupResult#cache_subnet_group #cache_subnet_group} => Types::CacheSubnetGroup
    #
    #
    # @example Example: ModifyCacheSubnetGroup
    #
    #   # Modifies an existing ElastiCache subnet group.
    #
    #   resp = client.modify_cache_subnet_group({
    #     cache_subnet_group_name: "my-sn-grp", 
    #     subnet_ids: [
    #       "subnet-bcde2345", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_subnet_group: {
    #       cache_subnet_group_description: "My subnet group.", 
    #       cache_subnet_group_name: "my-sn-grp", 
    #       subnets: [
    #         {
    #           subnet_availability_zone: {
    #             name: "us-east-1c", 
    #           }, 
    #           subnet_identifier: "subnet-a1b2c3d4", 
    #         }, 
    #         {
    #           subnet_availability_zone: {
    #             name: "us-east-1e", 
    #           }, 
    #           subnet_identifier: "subnet-1a2b3c4d", 
    #         }, 
    #         {
    #           subnet_availability_zone: {
    #             name: "us-east-1e", 
    #           }, 
    #           subnet_identifier: "subnet-bcde2345", 
    #         }, 
    #         {
    #           subnet_availability_zone: {
    #             name: "us-east-1c", 
    #           }, 
    #           subnet_identifier: "subnet-1234abcd", 
    #         }, 
    #         {
    #           subnet_availability_zone: {
    #             name: "us-east-1b", 
    #           }, 
    #           subnet_identifier: "subnet-abcd1234", 
    #         }, 
    #       ], 
    #       vpc_id: "vpc-91280df6", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_cache_subnet_group({
    #     cache_subnet_group_name: "String", # required
    #     cache_subnet_group_description: "String",
    #     subnet_ids: ["String"],
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_subnet_group.cache_subnet_group_name #=> String
    #   resp.cache_subnet_group.cache_subnet_group_description #=> String
    #   resp.cache_subnet_group.vpc_id #=> String
    #   resp.cache_subnet_group.subnets #=> Array
    #   resp.cache_subnet_group.subnets[0].subnet_identifier #=> String
    #   resp.cache_subnet_group.subnets[0].subnet_availability_zone.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyCacheSubnetGroup AWS API Documentation
    #
    # @overload modify_cache_subnet_group(params = {})
    # @param [Hash] params ({})
    def modify_cache_subnet_group(params = {}, options = {})
      req = build_request(:modify_cache_subnet_group, params)
      req.send_request(options)
    end

    # Modifies the settings for a replication group.
    #
    # For Redis (cluster mode enabled) clusters, this operation cannot be
    # used to change a cluster's node type or engine version. For more
    # information, see:
    #
    # * [Scaling for Amazon ElastiCache for Redis—Redis (cluster mode
    #   enabled)][1] in the ElastiCache User Guide
    #
    # * [ModifyReplicationGroupShardConfiguration][2] in the ElastiCache API
    #   Reference
    #
    # <note markdown="1"> This operation is valid for Redis only.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/scaling-redis-cluster-mode-enabled.html
    # [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_ModifyReplicationGroupShardConfiguration.html
    #
    # @option params [required, String] :replication_group_id
    #   The identifier of the replication group to modify.
    #
    # @option params [String] :replication_group_description
    #   A description for the replication group. Maximum length is 255
    #   characters.
    #
    # @option params [String] :primary_cluster_id
    #   For replication groups with a single primary, if this parameter is
    #   specified, ElastiCache promotes the specified cluster in the specified
    #   replication group to the primary role. The nodes of all other clusters
    #   in the replication group are read replicas.
    #
    # @option params [String] :snapshotting_cluster_id
    #   The cluster ID that is used as the daily snapshot source for the
    #   replication group. This parameter cannot be set for Redis (cluster
    #   mode enabled) replication groups.
    #
    # @option params [Boolean] :automatic_failover_enabled
    #   Determines whether a read replica is automatically promoted to
    #   read/write primary if the existing primary encounters a failure.
    #
    #   Valid values: `true` \| `false`
    #
    #   Amazon ElastiCache for Redis does not support Multi-AZ with automatic
    #   failover on:
    #
    #   * Redis versions earlier than 2.8.6.
    #
    #   * Redis (cluster mode disabled): T1 and T2 cache node types.
    #
    #   * Redis (cluster mode enabled): T1 node types.
    #
    # @option params [Array<String>] :cache_security_group_names
    #   A list of cache security group names to authorize for the clusters in
    #   this replication group. This change is asynchronously applied as soon
    #   as possible.
    #
    #   This parameter can be used only with replication group containing
    #   clusters running outside of an Amazon Virtual Private Cloud (Amazon
    #   VPC).
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters.
    #   Must not be `Default`.
    #
    # @option params [Array<String>] :security_group_ids
    #   Specifies the VPC Security Groups associated with the clusters in the
    #   replication group.
    #
    #   This parameter can be used only with replication group containing
    #   clusters running in an Amazon Virtual Private Cloud (Amazon VPC).
    #
    # @option params [String] :preferred_maintenance_window
    #   Specifies the weekly time range during which maintenance on the
    #   cluster is performed. It is specified as a range in the format
    #   ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance
    #   window is a 60 minute period.
    #
    #   Valid values for `ddd` are:
    #
    #   * `sun`
    #
    #   * `mon`
    #
    #   * `tue`
    #
    #   * `wed`
    #
    #   * `thu`
    #
    #   * `fri`
    #
    #   * `sat`
    #
    #   Example: `sun:23:00-mon:01:30`
    #
    # @option params [String] :notification_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic to which
    #   notifications are sent.
    #
    #   <note markdown="1"> The Amazon SNS topic owner must be same as the replication group
    #   owner.
    #
    #    </note>
    #
    # @option params [String] :cache_parameter_group_name
    #   The name of the cache parameter group to apply to all of the clusters
    #   in this replication group. This change is asynchronously applied as
    #   soon as possible for parameters when the `ApplyImmediately` parameter
    #   is specified as `true` for this request.
    #
    # @option params [String] :notification_topic_status
    #   The status of the Amazon SNS notification topic for the replication
    #   group. Notifications are sent only if the status is `active`.
    #
    #   Valid values: `active` \| `inactive`
    #
    # @option params [Boolean] :apply_immediately
    #   If `true`, this parameter causes the modifications in this request and
    #   any pending modifications to be applied, asynchronously and as soon as
    #   possible, regardless of the `PreferredMaintenanceWindow` setting for
    #   the replication group.
    #
    #   If `false`, changes to the nodes in the replication group are applied
    #   on the next maintenance reboot, or the next failure reboot, whichever
    #   occurs first.
    #
    #   Valid values: `true` \| `false`
    #
    #   Default: `false`
    #
    # @option params [String] :engine_version
    #   The upgraded version of the cache engine to be run on the clusters in
    #   the replication group.
    #
    #   **Important:** You can upgrade to a newer engine version (see
    #   [Selecting a Cache Engine and Version][1]), but you cannot downgrade
    #   to an earlier engine version. If you want to use an earlier engine
    #   version, you must delete the existing replication group and create it
    #   anew with the earlier engine version.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/SelectEngine.html#VersionManagement
    #
    # @option params [Boolean] :auto_minor_version_upgrade
    #   This parameter is currently disabled.
    #
    # @option params [Integer] :snapshot_retention_limit
    #   The number of days for which ElastiCache retains automatic node group
    #   (shard) snapshots before deleting them. For example, if you set
    #   `SnapshotRetentionLimit` to 5, a snapshot that was taken today is
    #   retained for 5 days before being deleted.
    #
    #   **Important** If the value of SnapshotRetentionLimit is set to zero
    #   (0), backups are turned off.
    #
    # @option params [String] :snapshot_window
    #   The daily time range (in UTC) during which ElastiCache begins taking a
    #   daily snapshot of the node group (shard) specified by
    #   `SnapshottingClusterId`.
    #
    #   Example: `05:00-09:00`
    #
    #   If you do not specify this parameter, ElastiCache automatically
    #   chooses an appropriate time range.
    #
    # @option params [String] :cache_node_type
    #   A valid cache node type that you want to scale this replication group
    #   to.
    #
    # @option params [String] :node_group_id
    #   Deprecated. This parameter is not used.
    #
    # @return [Types::ModifyReplicationGroupResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReplicationGroupResult#replication_group #replication_group} => Types::ReplicationGroup
    #
    #
    # @example Example: ModifyReplicationGroup
    #
    #   resp = client.modify_replication_group({
    #     apply_immediately: true, 
    #     replication_group_description: "Modified replication group", 
    #     replication_group_id: "my-redis-rg", 
    #     snapshot_retention_limit: 30, 
    #     snapshotting_cluster_id: "my-redis-rg-001", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     replication_group: {
    #       automatic_failover: "enabled", 
    #       description: "Modified replication group", 
    #       member_clusters: [
    #         "my-redis-rg-001", 
    #         "my-redis-rg-002", 
    #         "my-redis-rg-003", 
    #       ], 
    #       node_groups: [
    #         {
    #           node_group_id: "0001", 
    #           node_group_members: [
    #             {
    #               cache_cluster_id: "my-redis-rg-001", 
    #               cache_node_id: "0001", 
    #               current_role: "primary", 
    #               preferred_availability_zone: "us-east-1b", 
    #               read_endpoint: {
    #                 address: "my-redis-rg-001.abcdef.0001.use1.cache.amazonaws.com", 
    #                 port: 6379, 
    #               }, 
    #             }, 
    #             {
    #               cache_cluster_id: "my-redis-rg-002", 
    #               cache_node_id: "0001", 
    #               current_role: "replica", 
    #               preferred_availability_zone: "us-east-1a", 
    #               read_endpoint: {
    #                 address: "my-redis-rg-002.abcdef.0001.use1.cache.amazonaws.com", 
    #                 port: 6379, 
    #               }, 
    #             }, 
    #             {
    #               cache_cluster_id: "my-redis-rg-003", 
    #               cache_node_id: "0001", 
    #               current_role: "replica", 
    #               preferred_availability_zone: "us-east-1c", 
    #               read_endpoint: {
    #                 address: "my-redis-rg-003.abcdef.0001.use1.cache.amazonaws.com", 
    #                 port: 6379, 
    #               }, 
    #             }, 
    #           ], 
    #           primary_endpoint: {
    #             address: "my-redis-rg.abcdef.ng.0001.use1.cache.amazonaws.com", 
    #             port: 6379, 
    #           }, 
    #           status: "available", 
    #         }, 
    #       ], 
    #       pending_modified_values: {
    #       }, 
    #       replication_group_id: "my-redis-rg", 
    #       snapshotting_cluster_id: "my-redis-rg-002", 
    #       status: "available", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_group({
    #     replication_group_id: "String", # required
    #     replication_group_description: "String",
    #     primary_cluster_id: "String",
    #     snapshotting_cluster_id: "String",
    #     automatic_failover_enabled: false,
    #     cache_security_group_names: ["String"],
    #     security_group_ids: ["String"],
    #     preferred_maintenance_window: "String",
    #     notification_topic_arn: "String",
    #     cache_parameter_group_name: "String",
    #     notification_topic_status: "String",
    #     apply_immediately: false,
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     snapshot_retention_limit: 1,
    #     snapshot_window: "String",
    #     cache_node_type: "String",
    #     node_group_id: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_group.replication_group_id #=> String
    #   resp.replication_group.description #=> String
    #   resp.replication_group.status #=> String
    #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
    #   resp.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.replication_group.member_clusters #=> Array
    #   resp.replication_group.member_clusters[0] #=> String
    #   resp.replication_group.node_groups #=> Array
    #   resp.replication_group.node_groups[0].node_group_id #=> String
    #   resp.replication_group.node_groups[0].status #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].slots #=> String
    #   resp.replication_group.node_groups[0].node_group_members #=> Array
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.replication_group.snapshotting_cluster_id #=> String
    #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.replication_group.configuration_endpoint.address #=> String
    #   resp.replication_group.configuration_endpoint.port #=> Integer
    #   resp.replication_group.snapshot_retention_limit #=> Integer
    #   resp.replication_group.snapshot_window #=> String
    #   resp.replication_group.cluster_enabled #=> Boolean
    #   resp.replication_group.cache_node_type #=> String
    #   resp.replication_group.auth_token_enabled #=> Boolean
    #   resp.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.replication_group.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroup AWS API Documentation
    #
    # @overload modify_replication_group(params = {})
    # @param [Hash] params ({})
    def modify_replication_group(params = {}, options = {})
      req = build_request(:modify_replication_group, params)
      req.send_request(options)
    end

    # Modifies a replication group's shards (node groups) by allowing you
    # to add shards, remove shards, or rebalance the keyspaces among
    # exisiting shards.
    #
    # @option params [required, String] :replication_group_id
    #   The name of the Redis (cluster mode enabled) cluster (replication
    #   group) on which the shards are to be configured.
    #
    # @option params [required, Integer] :node_group_count
    #   The number of node groups (shards) that results from the modification
    #   of the shard configuration.
    #
    # @option params [required, Boolean] :apply_immediately
    #   Indicates that the shard reconfiguration process begins immediately.
    #   At present, the only permitted value for this parameter is `true`.
    #
    #   Value: true
    #
    # @option params [Array<Types::ReshardingConfiguration>] :resharding_configuration
    #   Specifies the preferred availability zones for each node group in the
    #   cluster. If the value of `NodeGroupCount` is greater than the current
    #   number of node groups (shards), you can use this parameter to specify
    #   the preferred availability zones of the cluster's shards. If you omit
    #   this parameter ElastiCache selects availability zones for you.
    #
    #   You can specify this parameter only if the value of `NodeGroupCount`
    #   is greater than the current number of node groups (shards).
    #
    # @option params [Array<String>] :node_groups_to_remove
    #   If the value of `NodeGroupCount` is less than the current number of
    #   node groups (shards), the `NodeGroupsToRemove` or `NodeGroupsToRetain`
    #   is a required list of node group ids to remove from or retain in the
    #   cluster.
    #
    #   ElastiCache for Redis will attempt to remove all node groups listed by
    #   `NodeGroupsToRemove` from the cluster.
    #
    # @option params [Array<String>] :node_groups_to_retain
    #   If the value of `NodeGroupCount` is less than the current number of
    #   node groups (shards), the `NodeGroupsToRemove` or `NodeGroupsToRetain`
    #   is a required list of node group ids to remove from or retain in the
    #   cluster.
    #
    #   ElastiCache for Redis will attempt to remove all node groups except
    #   those listed by `NodeGroupsToRetain` from the cluster.
    #
    # @return [Types::ModifyReplicationGroupShardConfigurationResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ModifyReplicationGroupShardConfigurationResult#replication_group #replication_group} => Types::ReplicationGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.modify_replication_group_shard_configuration({
    #     replication_group_id: "String", # required
    #     node_group_count: 1, # required
    #     apply_immediately: false, # required
    #     resharding_configuration: [
    #       {
    #         node_group_id: "AllowedNodeGroupId",
    #         preferred_availability_zones: ["String"],
    #       },
    #     ],
    #     node_groups_to_remove: ["AllowedNodeGroupId"],
    #     node_groups_to_retain: ["AllowedNodeGroupId"],
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_group.replication_group_id #=> String
    #   resp.replication_group.description #=> String
    #   resp.replication_group.status #=> String
    #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
    #   resp.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.replication_group.member_clusters #=> Array
    #   resp.replication_group.member_clusters[0] #=> String
    #   resp.replication_group.node_groups #=> Array
    #   resp.replication_group.node_groups[0].node_group_id #=> String
    #   resp.replication_group.node_groups[0].status #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].slots #=> String
    #   resp.replication_group.node_groups[0].node_group_members #=> Array
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.replication_group.snapshotting_cluster_id #=> String
    #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.replication_group.configuration_endpoint.address #=> String
    #   resp.replication_group.configuration_endpoint.port #=> Integer
    #   resp.replication_group.snapshot_retention_limit #=> Integer
    #   resp.replication_group.snapshot_window #=> String
    #   resp.replication_group.cluster_enabled #=> Boolean
    #   resp.replication_group.cache_node_type #=> String
    #   resp.replication_group.auth_token_enabled #=> Boolean
    #   resp.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.replication_group.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ModifyReplicationGroupShardConfiguration AWS API Documentation
    #
    # @overload modify_replication_group_shard_configuration(params = {})
    # @param [Hash] params ({})
    def modify_replication_group_shard_configuration(params = {}, options = {})
      req = build_request(:modify_replication_group_shard_configuration, params)
      req.send_request(options)
    end

    # Allows you to purchase a reserved cache node offering.
    #
    # @option params [required, String] :reserved_cache_nodes_offering_id
    #   The ID of the reserved cache node offering to purchase.
    #
    #   Example: `438012d3-4052-4cc7-b2e3-8d3372e0e706`
    #
    # @option params [String] :reserved_cache_node_id
    #   A customer-specified identifier to track this reservation.
    #
    #   <note markdown="1"> The Reserved Cache Node ID is an unique customer-specified identifier
    #   to track this reservation. If this parameter is not specified,
    #   ElastiCache automatically generates an identifier for the reservation.
    #
    #    </note>
    #
    #   Example: myreservationID
    #
    # @option params [Integer] :cache_node_count
    #   The number of cache node instances to reserve.
    #
    #   Default: `1`
    #
    # @return [Types::PurchaseReservedCacheNodesOfferingResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseReservedCacheNodesOfferingResult#reserved_cache_node #reserved_cache_node} => Types::ReservedCacheNode
    #
    #
    # @example Example: PurchaseReservedCacheNodesOfferings
    #
    #   # Allows you to purchase a reserved cache node offering.
    #
    #   resp = client.purchase_reserved_cache_nodes_offering({
    #     reserved_cache_nodes_offering_id: "1ef01f5b-94ff-433f-a530-61a56bfc8e7a", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_reserved_cache_nodes_offering({
    #     reserved_cache_nodes_offering_id: "String", # required
    #     reserved_cache_node_id: "String",
    #     cache_node_count: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.reserved_cache_node.reserved_cache_node_id #=> String
    #   resp.reserved_cache_node.reserved_cache_nodes_offering_id #=> String
    #   resp.reserved_cache_node.cache_node_type #=> String
    #   resp.reserved_cache_node.start_time #=> Time
    #   resp.reserved_cache_node.duration #=> Integer
    #   resp.reserved_cache_node.fixed_price #=> Float
    #   resp.reserved_cache_node.usage_price #=> Float
    #   resp.reserved_cache_node.cache_node_count #=> Integer
    #   resp.reserved_cache_node.product_description #=> String
    #   resp.reserved_cache_node.offering_type #=> String
    #   resp.reserved_cache_node.state #=> String
    #   resp.reserved_cache_node.recurring_charges #=> Array
    #   resp.reserved_cache_node.recurring_charges[0].recurring_charge_amount #=> Float
    #   resp.reserved_cache_node.recurring_charges[0].recurring_charge_frequency #=> String
    #   resp.reserved_cache_node.reservation_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/PurchaseReservedCacheNodesOffering AWS API Documentation
    #
    # @overload purchase_reserved_cache_nodes_offering(params = {})
    # @param [Hash] params ({})
    def purchase_reserved_cache_nodes_offering(params = {}, options = {})
      req = build_request(:purchase_reserved_cache_nodes_offering, params)
      req.send_request(options)
    end

    # Reboots some, or all, of the cache nodes within a provisioned cluster.
    # This operation applies any modified cache parameter groups to the
    # cluster. The reboot operation takes place as soon as possible, and
    # results in a momentary outage to the cluster. During the reboot, the
    # cluster status is set to REBOOTING.
    #
    # The reboot causes the contents of the cache (for each cache node being
    # rebooted) to be lost.
    #
    # When the reboot is complete, a cluster event is created.
    #
    # Rebooting a cluster is currently supported on Memcached and Redis
    # (cluster mode disabled) clusters. Rebooting is not supported on Redis
    # (cluster mode enabled) clusters.
    #
    # If you make changes to parameters that require a Redis (cluster mode
    # enabled) cluster reboot for the changes to be applied, see [Rebooting
    # a Cluster][1] for an alternate process.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Clusters.Rebooting.html
    #
    # @option params [required, String] :cache_cluster_id
    #   The cluster identifier. This parameter is stored as a lowercase
    #   string.
    #
    # @option params [required, Array<String>] :cache_node_ids_to_reboot
    #   A list of cache node IDs to reboot. A node ID is a numeric identifier
    #   (0001, 0002, etc.). To reboot an entire cluster, specify all of the
    #   cache node IDs.
    #
    # @return [Types::RebootCacheClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RebootCacheClusterResult#cache_cluster #cache_cluster} => Types::CacheCluster
    #
    #
    # @example Example: RebootCacheCluster
    #
    #   # Reboots the specified nodes in the names cluster.
    #
    #   resp = client.reboot_cache_cluster({
    #     cache_cluster_id: "custom-mem1-4  ", 
    #     cache_node_ids_to_reboot: [
    #       "0001", 
    #       "0002", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_cluster: {
    #       auto_minor_version_upgrade: true, 
    #       cache_cluster_create_time: Time.parse("2016-12-21T21:59:43.794Z"), 
    #       cache_cluster_id: "my-mem-cluster", 
    #       cache_cluster_status: "rebooting cache cluster nodes", 
    #       cache_node_type: "cache.t2.medium", 
    #       cache_parameter_group: {
    #         cache_node_ids_to_reboot: [
    #         ], 
    #         cache_parameter_group_name: "default.memcached1.4", 
    #         parameter_apply_status: "in-sync", 
    #       }, 
    #       cache_security_groups: [
    #       ], 
    #       cache_subnet_group_name: "default", 
    #       client_download_landing_page: "https://console.aws.amazon.com/elasticache/home#client-download:", 
    #       configuration_endpoint: {
    #         address: "my-mem-cluster.abcdef.cfg.use1.cache.amazonaws.com", 
    #         port: 11211, 
    #       }, 
    #       engine: "memcached", 
    #       engine_version: "1.4.24", 
    #       num_cache_nodes: 2, 
    #       pending_modified_values: {
    #       }, 
    #       preferred_availability_zone: "Multiple", 
    #       preferred_maintenance_window: "wed:06:00-wed:07:00", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reboot_cache_cluster({
    #     cache_cluster_id: "String", # required
    #     cache_node_ids_to_reboot: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_cluster.cache_cluster_id #=> String
    #   resp.cache_cluster.configuration_endpoint.address #=> String
    #   resp.cache_cluster.configuration_endpoint.port #=> Integer
    #   resp.cache_cluster.client_download_landing_page #=> String
    #   resp.cache_cluster.cache_node_type #=> String
    #   resp.cache_cluster.engine #=> String
    #   resp.cache_cluster.engine_version #=> String
    #   resp.cache_cluster.cache_cluster_status #=> String
    #   resp.cache_cluster.num_cache_nodes #=> Integer
    #   resp.cache_cluster.preferred_availability_zone #=> String
    #   resp.cache_cluster.cache_cluster_create_time #=> Time
    #   resp.cache_cluster.preferred_maintenance_window #=> String
    #   resp.cache_cluster.pending_modified_values.num_cache_nodes #=> Integer
    #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove #=> Array
    #   resp.cache_cluster.pending_modified_values.cache_node_ids_to_remove[0] #=> String
    #   resp.cache_cluster.pending_modified_values.engine_version #=> String
    #   resp.cache_cluster.pending_modified_values.cache_node_type #=> String
    #   resp.cache_cluster.notification_configuration.topic_arn #=> String
    #   resp.cache_cluster.notification_configuration.topic_status #=> String
    #   resp.cache_cluster.cache_security_groups #=> Array
    #   resp.cache_cluster.cache_security_groups[0].cache_security_group_name #=> String
    #   resp.cache_cluster.cache_security_groups[0].status #=> String
    #   resp.cache_cluster.cache_parameter_group.cache_parameter_group_name #=> String
    #   resp.cache_cluster.cache_parameter_group.parameter_apply_status #=> String
    #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot #=> Array
    #   resp.cache_cluster.cache_parameter_group.cache_node_ids_to_reboot[0] #=> String
    #   resp.cache_cluster.cache_subnet_group_name #=> String
    #   resp.cache_cluster.cache_nodes #=> Array
    #   resp.cache_cluster.cache_nodes[0].cache_node_id #=> String
    #   resp.cache_cluster.cache_nodes[0].cache_node_status #=> String
    #   resp.cache_cluster.cache_nodes[0].cache_node_create_time #=> Time
    #   resp.cache_cluster.cache_nodes[0].endpoint.address #=> String
    #   resp.cache_cluster.cache_nodes[0].endpoint.port #=> Integer
    #   resp.cache_cluster.cache_nodes[0].parameter_group_status #=> String
    #   resp.cache_cluster.cache_nodes[0].source_cache_node_id #=> String
    #   resp.cache_cluster.cache_nodes[0].customer_availability_zone #=> String
    #   resp.cache_cluster.auto_minor_version_upgrade #=> Boolean
    #   resp.cache_cluster.security_groups #=> Array
    #   resp.cache_cluster.security_groups[0].security_group_id #=> String
    #   resp.cache_cluster.security_groups[0].status #=> String
    #   resp.cache_cluster.replication_group_id #=> String
    #   resp.cache_cluster.snapshot_retention_limit #=> Integer
    #   resp.cache_cluster.snapshot_window #=> String
    #   resp.cache_cluster.auth_token_enabled #=> Boolean
    #   resp.cache_cluster.transit_encryption_enabled #=> Boolean
    #   resp.cache_cluster.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RebootCacheCluster AWS API Documentation
    #
    # @overload reboot_cache_cluster(params = {})
    # @param [Hash] params ({})
    def reboot_cache_cluster(params = {}, options = {})
      req = build_request(:reboot_cache_cluster, params)
      req.send_request(options)
    end

    # Removes the tags identified by the `TagKeys` list from the named
    # resource.
    #
    # @option params [required, String] :resource_name
    #   The Amazon Resource Name (ARN) of the resource from which you want the
    #   tags removed, for example
    #   `arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster` or
    #   `arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot`.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
    #   AWS Service Namespaces][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of `TagKeys` identifying the tags you want removed from the
    #   named resource.
    #
    # @return [Types::TagListMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagListMessage#tag_list #tag_list} => Array&lt;Types::Tag&gt;
    #
    #
    # @example Example: RemoveTagsFromResource
    #
    #   # Removes tags identified by a list of tag keys from the list of tags on the specified resource.
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_name: "arn:aws:elasticache:us-east-1:1234567890:cluster:my-mem-cluster", 
    #     tag_keys: [
    #       "A", 
    #       "C", 
    #       "E", 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tag_list: [
    #       {
    #         key: "B", 
    #         value: "Banana", 
    #       }, 
    #       {
    #         key: "D", 
    #         value: "Dog", 
    #       }, 
    #       {
    #         key: "F", 
    #         value: "Fox", 
    #       }, 
    #       {
    #         key: "I", 
    #         value: "", 
    #       }, 
    #       {
    #         key: "K", 
    #         value: "Kite", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_resource({
    #     resource_name: "String", # required
    #     tag_keys: ["String"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_list #=> Array
    #   resp.tag_list[0].key #=> String
    #   resp.tag_list[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RemoveTagsFromResource AWS API Documentation
    #
    # @overload remove_tags_from_resource(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_resource(params = {}, options = {})
      req = build_request(:remove_tags_from_resource, params)
      req.send_request(options)
    end

    # Modifies the parameters of a cache parameter group to the engine or
    # system default value. You can reset specific parameters by submitting
    # a list of parameter names. To reset the entire cache parameter group,
    # specify the `ResetAllParameters` and `CacheParameterGroupName`
    # parameters.
    #
    # @option params [required, String] :cache_parameter_group_name
    #   The name of the cache parameter group to reset.
    #
    # @option params [Boolean] :reset_all_parameters
    #   If `true`, all parameters in the cache parameter group are reset to
    #   their default values. If `false`, only the parameters listed by
    #   `ParameterNameValues` are reset to their default values.
    #
    #   Valid values: `true` \| `false`
    #
    # @option params [Array<Types::ParameterNameValue>] :parameter_name_values
    #   An array of parameter names to reset to their default values. If
    #   `ResetAllParameters` is `true`, do not use `ParameterNameValues`. If
    #   `ResetAllParameters` is `false`, you must specify the name of at least
    #   one parameter to reset.
    #
    # @return [Types::CacheParameterGroupNameMessage] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CacheParameterGroupNameMessage#cache_parameter_group_name #cache_parameter_group_name} => String
    #
    #
    # @example Example: ResetCacheParameterGroup
    #
    #   # Modifies the parameters of a cache parameter group to the engine or system default value.
    #
    #   resp = client.reset_cache_parameter_group({
    #     cache_parameter_group_name: "custom-mem1-4", 
    #     reset_all_parameters: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cache_parameter_group_name: "custom-mem1-4", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_cache_parameter_group({
    #     cache_parameter_group_name: "String", # required
    #     reset_all_parameters: false,
    #     parameter_name_values: [
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_parameter_group_name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/ResetCacheParameterGroup AWS API Documentation
    #
    # @overload reset_cache_parameter_group(params = {})
    # @param [Hash] params ({})
    def reset_cache_parameter_group(params = {}, options = {})
      req = build_request(:reset_cache_parameter_group, params)
      req.send_request(options)
    end

    # Revokes ingress from a cache security group. Use this operation to
    # disallow access from an Amazon EC2 security group that had been
    # previously authorized.
    #
    # @option params [required, String] :cache_security_group_name
    #   The name of the cache security group to revoke ingress from.
    #
    # @option params [required, String] :ec2_security_group_name
    #   The name of the Amazon EC2 security group to revoke access from.
    #
    # @option params [required, String] :ec2_security_group_owner_id
    #   The AWS account number of the Amazon EC2 security group owner. Note
    #   that this is not the same thing as an AWS access key ID - you must
    #   provide a valid AWS account number for this parameter.
    #
    # @return [Types::RevokeCacheSecurityGroupIngressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RevokeCacheSecurityGroupIngressResult#cache_security_group #cache_security_group} => Types::CacheSecurityGroup
    #
    #
    # @example Example: DescribeCacheSecurityGroups
    #
    #   # Returns a list of cache security group descriptions. If a cache security group name is specified, the list contains only
    #   # the description of that group.
    #
    #   resp = client.revoke_cache_security_group_ingress({
    #     cache_security_group_name: "my-sec-grp", 
    #     ec2_security_group_name: "my-ec2-sec-grp", 
    #     ec2_security_group_owner_id: "1234567890", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.revoke_cache_security_group_ingress({
    #     cache_security_group_name: "String", # required
    #     ec2_security_group_name: "String", # required
    #     ec2_security_group_owner_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cache_security_group.owner_id #=> String
    #   resp.cache_security_group.cache_security_group_name #=> String
    #   resp.cache_security_group.description #=> String
    #   resp.cache_security_group.ec2_security_groups #=> Array
    #   resp.cache_security_group.ec2_security_groups[0].status #=> String
    #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_name #=> String
    #   resp.cache_security_group.ec2_security_groups[0].ec2_security_group_owner_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/RevokeCacheSecurityGroupIngress AWS API Documentation
    #
    # @overload revoke_cache_security_group_ingress(params = {})
    # @param [Hash] params ({})
    def revoke_cache_security_group_ingress(params = {}, options = {})
      req = build_request(:revoke_cache_security_group_ingress, params)
      req.send_request(options)
    end

    # Represents the input of a `TestFailover` operation which test
    # automatic failover on a specified node group (called shard in the
    # console) in a replication group (called cluster in the console).
    #
    # **Note the following**
    #
    # * A customer can use this operation to test automatic failover on up
    #   to 5 shards (called node groups in the ElastiCache API and AWS CLI)
    #   in any rolling 24-hour period.
    #
    # * If calling this operation on shards in different clusters (called
    #   replication groups in the API and CLI), the calls can be made
    #   concurrently.
    #
    #
    #
    # * If calling this operation multiple times on different shards in the
    #   same Redis (cluster mode enabled) replication group, the first node
    #   replacement must complete before a subsequent call can be made.
    #
    # * To determine whether the node replacement is complete you can check
    #   Events using the Amazon ElastiCache console, the AWS CLI, or the
    #   ElastiCache API. Look for the following automatic failover related
    #   events, listed here in order of occurrance:
    #
    #   1.  Replication group message: `Test Failover API called for node
    #       group <node-group-id>`
    #
    #   2.  Cache cluster message: `Failover from master node
    #       <primary-node-id> to replica node <node-id> completed`
    #
    #   3.  Replication group message: `Failover from master node
    #       <primary-node-id> to replica node <node-id> completed`
    #
    #   4.  Cache cluster message: `Recovering cache nodes <node-id>`
    #
    #   5.  Cache cluster message: `Finished recovery for cache nodes
    #       <node-id>`
    #
    #   For more information see:
    #
    #   * [Viewing ElastiCache Events][1] in the *ElastiCache User Guide*
    #
    #   * [DescribeEvents][2] in the ElastiCache API Reference
    #
    # Also see, [Testing Multi-AZ with Automatic Failover][3] in the
    # *ElastiCache User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ECEvents.Viewing.html
    # [2]: http://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_DescribeEvents.html
    # [3]: http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/AutoFailover.html#auto-failover-test
    #
    # @option params [required, String] :replication_group_id
    #   The name of the replication group (console: cluster) whose automatic
    #   failover is being tested by this operation.
    #
    # @option params [required, String] :node_group_id
    #   The name of the node group (called shard in the console) in this
    #   replication group on which automatic failover is to be tested. You may
    #   test automatic failover on up to 5 node groups in any rolling 24-hour
    #   period.
    #
    # @return [Types::TestFailoverResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestFailoverResult#replication_group #replication_group} => Types::ReplicationGroup
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_failover({
    #     replication_group_id: "String", # required
    #     node_group_id: "AllowedNodeGroupId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.replication_group.replication_group_id #=> String
    #   resp.replication_group.description #=> String
    #   resp.replication_group.status #=> String
    #   resp.replication_group.pending_modified_values.primary_cluster_id #=> String
    #   resp.replication_group.pending_modified_values.automatic_failover_status #=> String, one of "enabled", "disabled"
    #   resp.replication_group.pending_modified_values.resharding.slot_migration.progress_percentage #=> Float
    #   resp.replication_group.member_clusters #=> Array
    #   resp.replication_group.member_clusters[0] #=> String
    #   resp.replication_group.node_groups #=> Array
    #   resp.replication_group.node_groups[0].node_group_id #=> String
    #   resp.replication_group.node_groups[0].status #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].primary_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].slots #=> String
    #   resp.replication_group.node_groups[0].node_group_members #=> Array
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_cluster_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].cache_node_id #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.address #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].read_endpoint.port #=> Integer
    #   resp.replication_group.node_groups[0].node_group_members[0].preferred_availability_zone #=> String
    #   resp.replication_group.node_groups[0].node_group_members[0].current_role #=> String
    #   resp.replication_group.snapshotting_cluster_id #=> String
    #   resp.replication_group.automatic_failover #=> String, one of "enabled", "disabled", "enabling", "disabling"
    #   resp.replication_group.configuration_endpoint.address #=> String
    #   resp.replication_group.configuration_endpoint.port #=> Integer
    #   resp.replication_group.snapshot_retention_limit #=> Integer
    #   resp.replication_group.snapshot_window #=> String
    #   resp.replication_group.cluster_enabled #=> Boolean
    #   resp.replication_group.cache_node_type #=> String
    #   resp.replication_group.auth_token_enabled #=> Boolean
    #   resp.replication_group.transit_encryption_enabled #=> Boolean
    #   resp.replication_group.at_rest_encryption_enabled #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/elasticache-2015-02-02/TestFailover AWS API Documentation
    #
    # @overload test_failover(params = {})
    # @param [Hash] params ({})
    def test_failover(params = {}, options = {})
      req = build_request(:test_failover, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-elasticache'
      context[:gem_version] = '1.7.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name                 | params                         | :delay   | :max_attempts |
    # | --------------------------- | ------------------------------ | -------- | ------------- |
    # | cache_cluster_available     | {#describe_cache_clusters}     | 15       | 40            |
    # | cache_cluster_deleted       | {#describe_cache_clusters}     | 15       | 40            |
    # | replication_group_available | {#describe_replication_groups} | 15       | 40            |
    # | replication_group_deleted   | {#describe_replication_groups} | 15       | 40            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        cache_cluster_available: Waiters::CacheClusterAvailable,
        cache_cluster_deleted: Waiters::CacheClusterDeleted,
        replication_group_available: Waiters::ReplicationGroupAvailable,
        replication_group_deleted: Waiters::ReplicationGroupDeleted
      }
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
