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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:snowball)

module Aws::Snowball
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :snowball

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
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
    # @option options [Boolean] :simple_json (false)
    #   Disables request parameter conversion, validation, and formatting.
    #   Also disable response data type conversions. This option is useful
    #   when you want to ensure the highest level of performance by
    #   avoiding overhead of walking request parameters and response data
    #   structures.
    #
    #   When `:simple_json` is enabled, the request parameters hash must
    #   be formatted exactly as the DynamoDB API expects.
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

    # Cancels a cluster job. You can only cancel a cluster job while it's
    # in the `AwaitingQuorum` status. You'll have at least an hour after
    # creating a cluster job to cancel it.
    #
    # @option params [required, String] :cluster_id
    #   The 39-character ID for the cluster that you want to cancel, for
    #   example `CID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To cancel a cluster job
    #
    #   # This operation cancels a cluster job. You can only cancel a cluster job while it's in the AwaitingQuorum status.
    #
    #   resp = client.cancel_cluster({
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_cluster({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelCluster AWS API Documentation
    #
    # @overload cancel_cluster(params = {})
    # @param [Hash] params ({})
    def cancel_cluster(params = {}, options = {})
      req = build_request(:cancel_cluster, params)
      req.send_request(options)
    end

    # Cancels the specified job. You can only cancel a job before its
    # `JobState` value changes to `PreparingAppliance`. Requesting the
    # `ListJobs` or `DescribeJob` action returns a job's `JobState` as part
    # of the response element data returned.
    #
    # @option params [required, String] :job_id
    #   The 39-character job ID for the job that you want to cancel, for
    #   example `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To cancel a job for a Snowball device
    #
    #   # This operation cancels a job. You can only cancel a job before its JobState value changes to PreparingAppliance.
    #
    #   resp = client.cancel_job({
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CancelJob AWS API Documentation
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # Creates an address for a Snowball to be shipped to. In most regions,
    # addresses are validated at the time of creation. The address you
    # provide must be located within the serviceable area of your region. If
    # the address is invalid or unsupported, then an exception is thrown.
    #
    # @option params [required, Types::Address] :address
    #   The address that you want the Snowball shipped to.
    #
    # @return [Types::CreateAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAddressResult#address_id #address_id} => String
    #
    #
    # @example Example: To create an address for a job
    #
    #   # This operation creates an address for a job. Addresses are validated at the time of creation. The address you provide
    #   # must be located within the serviceable area of your region. If the address is invalid or unsupported, then an exception
    #   # is thrown.
    #
    #   resp = client.create_address({
    #     address: {
    #       city: "Seattle", 
    #       company: "My Company's Name", 
    #       country: "USA", 
    #       name: "My Name", 
    #       phone_number: "425-555-5555", 
    #       postal_code: "98101", 
    #       state_or_province: "WA", 
    #       street_1: "123 Main Street", 
    #     }, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_address({
    #     address: { # required
    #       address_id: "AddressId",
    #       name: "String",
    #       company: "String",
    #       street_1: "String",
    #       street_2: "String",
    #       street_3: "String",
    #       city: "String",
    #       state_or_province: "String",
    #       prefecture_or_district: "String",
    #       landmark: "String",
    #       country: "String",
    #       postal_code: "String",
    #       phone_number: "String",
    #       is_restricted: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.address_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateAddress AWS API Documentation
    #
    # @overload create_address(params = {})
    # @param [Hash] params ({})
    def create_address(params = {}, options = {})
      req = build_request(:create_address, params)
      req.send_request(options)
    end

    # Creates an empty cluster. Each cluster supports five nodes. You use
    # the CreateJob action separately to create the jobs for each of these
    # nodes. The cluster does not ship until these five node jobs have been
    # created.
    #
    # @option params [required, String] :job_type
    #   The type of job for this cluster. Currently, the only job type
    #   supported for clusters is `LOCAL_USE`.
    #
    # @option params [required, Types::JobResource] :resources
    #   The resources associated with the cluster job. These resources include
    #   Amazon S3 buckets and optional AWS Lambda functions written in the
    #   Python language.
    #
    # @option params [String] :description
    #   An optional description of this specific cluster, for example
    #   `Environmental Data Cluster-01`.
    #
    # @option params [required, String] :address_id
    #   The ID for the address that you want the cluster shipped to.
    #
    # @option params [String] :kms_key_arn
    #   The `KmsKeyARN` value that you want to associate with this cluster.
    #   `KmsKeyARN` values are created by using the [CreateKey][1] API action
    #   in AWS Key Management Service (AWS KMS).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #
    # @option params [required, String] :role_arn
    #   The `RoleARN` that you want to associate with this cluster. `RoleArn`
    #   values are created by using the [CreateRole][1] API action in AWS
    #   Identity and Access Management (IAM).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @option params [String] :snowball_type
    #   The type of AWS Snowball device to use for this cluster. Currently,
    #   the only supported device type for cluster jobs is `EDGE`.
    #
    # @option params [required, String] :shipping_option
    #   The shipping speed for each node in this cluster. This speed doesn't
    #   dictate how soon you'll get each Snowball Edge device, rather it
    #   represents how quickly each device moves to its destination while in
    #   transit. Regional shipping speeds are as follows:
    #
    #   * In Australia, you have access to express shipping. Typically,
    #     devices shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snowball Edges shipped express are delivered in about a
    #     day. In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snowball Edges are delivered in one to seven days.
    #
    #   * In the US, you have access to one-day shipping and two-day shipping.
    #
    # @option params [Types::Notification] :notification
    #   The Amazon Simple Notification Service (Amazon SNS) notification
    #   settings for this cluster.
    #
    # @option params [String] :forwarding_address_id
    #   The forwarding address ID for a cluster. This field is not supported
    #   in most regions.
    #
    # @return [Types::CreateClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateClusterResult#cluster_id #cluster_id} => String
    #
    #
    # @example Example: To create a cluster
    #
    #   # Creates an empty cluster. Each cluster supports five nodes. You use the CreateJob action separately to create the jobs
    #   # for each of these nodes. The cluster does not ship until these five node jobs have been created.
    #
    #   resp = client.create_cluster({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #     description: "MyCluster", 
    #     job_type: "LOCAL_USE", 
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456", 
    #     notification: {
    #       job_states_to_notify: [
    #       ], 
    #       notify_all: false, 
    #     }, 
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "arn:aws:s3:::MyBucket", 
    #           key_range: {
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #     role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role", 
    #     shipping_option: "SECOND_DAY", 
    #     snowball_type: "EDGE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_cluster({
    #     job_type: "IMPORT", # required, accepts IMPORT, EXPORT, LOCAL_USE
    #     resources: { # required
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String",
    #           },
    #         },
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN",
    #             },
    #           ],
    #         },
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String",
    #         },
    #       ],
    #     },
    #     description: "String",
    #     address_id: "AddressId", # required
    #     kms_key_arn: "KmsKeyARN",
    #     role_arn: "RoleARN", # required
    #     snowball_type: "STANDARD", # accepts STANDARD, EDGE
    #     shipping_option: "SECOND_DAY", # required, accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #       notify_all: false,
    #     },
    #     forwarding_address_id: "AddressId",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateCluster AWS API Documentation
    #
    # @overload create_cluster(params = {})
    # @param [Hash] params ({})
    def create_cluster(params = {}, options = {})
      req = build_request(:create_cluster, params)
      req.send_request(options)
    end

    # Creates a job to import or export data between Amazon S3 and your
    # on-premises data center. Your AWS account must have the right trust
    # policies and permissions in place to create a job for Snowball. If
    # you're creating a job for a node in a cluster, you only need to
    # provide the `clusterId` value; the other job attributes are inherited
    # from the cluster.
    #
    # @option params [String] :job_type
    #   Defines the type of job that you're creating.
    #
    # @option params [Types::JobResource] :resources
    #   Defines the Amazon S3 buckets associated with this job.
    #
    #   With `IMPORT` jobs, you specify the bucket or buckets that your
    #   transferred data will be imported into.
    #
    #   With `EXPORT` jobs, you specify the bucket or buckets that your
    #   transferred data will be exported from. Optionally, you can also
    #   specify a `KeyRange` value. If you choose to export a range, you
    #   define the length of the range by providing either an inclusive
    #   `BeginMarker` value, an inclusive `EndMarker` value, or both. Ranges
    #   are UTF-8 binary sorted.
    #
    # @option params [String] :description
    #   Defines an optional description of this specific job, for example
    #   `Important Photos 2016-08-11`.
    #
    # @option params [String] :address_id
    #   The ID for the address that you want the Snowball shipped to.
    #
    # @option params [String] :kms_key_arn
    #   The `KmsKeyARN` that you want to associate with this job. `KmsKeyARN`s
    #   are created using the [CreateKey][1] AWS Key Management Service (KMS)
    #   API action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html
    #
    # @option params [String] :role_arn
    #   The `RoleARN` that you want to associate with this job. `RoleArn`s are
    #   created using the [CreateRole][1] AWS Identity and Access Management
    #   (IAM) API action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @option params [String] :snowball_capacity_preference
    #   If your job is being created in one of the US regions, you have the
    #   option of specifying what size Snowball you'd like for this job. In
    #   all other regions, Snowballs come with 80 TB in storage capacity.
    #
    # @option params [String] :shipping_option
    #   The shipping speed for this job. This speed doesn't dictate how soon
    #   you'll get the Snowball, rather it represents how quickly the
    #   Snowball moves to its destination while in transit. Regional shipping
    #   speeds are as follows:
    #
    #   * In Australia, you have access to express shipping. Typically,
    #     Snowballs shipped express are delivered in about a day.
    #
    #   * In the European Union (EU), you have access to express shipping.
    #     Typically, Snowballs shipped express are delivered in about a day.
    #     In addition, most countries in the EU have access to standard
    #     shipping, which typically takes less than a week, one way.
    #
    #   * In India, Snowballs are delivered in one to seven days.
    #
    #   * In the US, you have access to one-day shipping and two-day shipping.
    #
    # @option params [Types::Notification] :notification
    #   Defines the Amazon Simple Notification Service (Amazon SNS)
    #   notification settings for this job.
    #
    # @option params [String] :cluster_id
    #   The ID of a cluster. If you're creating a job for a node in a
    #   cluster, you need to provide only this `clusterId` value. The other
    #   job attributes are inherited from the cluster.
    #
    # @option params [String] :snowball_type
    #   The type of AWS Snowball device to use for this job. Currently, the
    #   only supported device type for cluster jobs is `EDGE`.
    #
    # @option params [String] :forwarding_address_id
    #   The forwarding address ID for a job. This field is not supported in
    #   most regions.
    #
    # @return [Types::CreateJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResult#job_id #job_id} => String
    #
    #
    # @example Example: To create a job
    #
    #   # Creates a job to import or export data between Amazon S3 and your on-premises data center. Your AWS account must have
    #   # the right trust policies and permissions in place to create a job for Snowball. If you're creating a job for a node in a
    #   # cluster, you only need to provide the clusterId value; the other job attributes are inherited from the cluster.
    #
    #   resp = client.create_job({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #     description: "My Job", 
    #     job_type: "IMPORT", 
    #     kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456", 
    #     notification: {
    #       job_states_to_notify: [
    #       ], 
    #       notify_all: false, 
    #     }, 
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "arn:aws:s3:::MyBucket", 
    #           key_range: {
    #           }, 
    #         }, 
    #       ], 
    #     }, 
    #     role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role", 
    #     shipping_option: "SECOND_DAY", 
    #     snowball_capacity_preference: "T80", 
    #     snowball_type: "STANDARD", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     job_type: "IMPORT", # accepts IMPORT, EXPORT, LOCAL_USE
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String",
    #           },
    #         },
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN",
    #             },
    #           ],
    #         },
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String",
    #         },
    #       ],
    #     },
    #     description: "String",
    #     address_id: "AddressId",
    #     kms_key_arn: "KmsKeyARN",
    #     role_arn: "RoleARN",
    #     snowball_capacity_preference: "T50", # accepts T50, T80, T100, NoPreference
    #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #       notify_all: false,
    #     },
    #     cluster_id: "ClusterId",
    #     snowball_type: "STANDARD", # accepts STANDARD, EDGE
    #     forwarding_address_id: "AddressId",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/CreateJob AWS API Documentation
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # Takes an `AddressId` and returns specific details about that address
    # in the form of an `Address` object.
    #
    # @option params [required, String] :address_id
    #   The automatically generated ID for a specific address.
    #
    # @return [Types::DescribeAddressResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAddressResult#address #address} => Types::Address
    #
    #
    # @example Example: To describe an address for a job
    #
    #   # This operation describes an address for a job.
    #
    #   resp = client.describe_address({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     address: {
    #       address_id: "ADID5643ec50-3eec-4eb3-9be6-9374c10eb51b", 
    #       city: "Seattle", 
    #       company: "My Company", 
    #       country: "US", 
    #       name: "My Name", 
    #       phone_number: "425-555-5555", 
    #       postal_code: "98101", 
    #       state_or_province: "WA", 
    #       street_1: "123 Main Street", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_address({
    #     address_id: "AddressId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.address.address_id #=> String
    #   resp.address.name #=> String
    #   resp.address.company #=> String
    #   resp.address.street_1 #=> String
    #   resp.address.street_2 #=> String
    #   resp.address.street_3 #=> String
    #   resp.address.city #=> String
    #   resp.address.state_or_province #=> String
    #   resp.address.prefecture_or_district #=> String
    #   resp.address.landmark #=> String
    #   resp.address.country #=> String
    #   resp.address.postal_code #=> String
    #   resp.address.phone_number #=> String
    #   resp.address.is_restricted #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddress AWS API Documentation
    #
    # @overload describe_address(params = {})
    # @param [Hash] params ({})
    def describe_address(params = {}, options = {})
      req = build_request(:describe_address, params)
      req.send_request(options)
    end

    # Returns a specified number of `ADDRESS` objects. Calling this API in
    # one of the US regions will return addresses from the list of all
    # addresses associated with this account in all US regions.
    #
    # @option params [Integer] :max_results
    #   The number of `ADDRESS` objects to return.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `ADDRESS` objects, you have the option of specifying a
    #   value for `NextToken` as the starting point for your list of returned
    #   addresses.
    #
    # @return [Types::DescribeAddressesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAddressesResult#addresses #addresses} => Array&lt;Types::Address&gt;
    #   * {Types::DescribeAddressesResult#next_token #next_token} => String
    #
    #
    # @example Example: To describe all the addresses you've created for AWS Snowball
    #
    #   # This operation describes all the addresses that you've created for AWS Snowball. Calling this API in one of the US
    #   # regions will return addresses from the list of all addresses associated with this account in all US regions.
    #
    #   resp = client.describe_addresses({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     addresses: [
    #       {
    #         address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #         city: "Seattle", 
    #         company: "My Company", 
    #         country: "US", 
    #         name: "My Name", 
    #         phone_number: "425-555-5555", 
    #         postal_code: "98101", 
    #         state_or_province: "WA", 
    #         street_1: "123 Main Street", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_addresses({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.addresses #=> Array
    #   resp.addresses[0].address_id #=> String
    #   resp.addresses[0].name #=> String
    #   resp.addresses[0].company #=> String
    #   resp.addresses[0].street_1 #=> String
    #   resp.addresses[0].street_2 #=> String
    #   resp.addresses[0].street_3 #=> String
    #   resp.addresses[0].city #=> String
    #   resp.addresses[0].state_or_province #=> String
    #   resp.addresses[0].prefecture_or_district #=> String
    #   resp.addresses[0].landmark #=> String
    #   resp.addresses[0].country #=> String
    #   resp.addresses[0].postal_code #=> String
    #   resp.addresses[0].phone_number #=> String
    #   resp.addresses[0].is_restricted #=> Boolean
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeAddresses AWS API Documentation
    #
    # @overload describe_addresses(params = {})
    # @param [Hash] params ({})
    def describe_addresses(params = {}, options = {})
      req = build_request(:describe_addresses, params)
      req.send_request(options)
    end

    # Returns information about a specific cluster including shipping
    # information, cluster status, and other important metadata.
    #
    # @option params [required, String] :cluster_id
    #   The automatically generated ID for a cluster.
    #
    # @return [Types::DescribeClusterResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeClusterResult#cluster_metadata #cluster_metadata} => Types::ClusterMetadata
    #
    #
    # @example Example: To describe a cluster
    #
    #   # Returns information about a specific cluster including shipping information, cluster status, and other important
    #   # metadata.
    #
    #   resp = client.describe_cluster({
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_metadata: {
    #       address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #       cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #       cluster_state: "Pending", 
    #       creation_date: Time.parse("1480475517.0"), 
    #       description: "MyCluster", 
    #       job_type: "LOCAL_USE", 
    #       kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456", 
    #       notification: {
    #         job_states_to_notify: [
    #         ], 
    #         notify_all: false, 
    #       }, 
    #       resources: {
    #         s3_resources: [
    #           {
    #             bucket_arn: "arn:aws:s3:::MyBucket", 
    #             key_range: {
    #             }, 
    #           }, 
    #         ], 
    #       }, 
    #       role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role", 
    #       shipping_option: "SECOND_DAY", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_cluster({
    #     cluster_id: "ClusterId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_metadata.cluster_id #=> String
    #   resp.cluster_metadata.description #=> String
    #   resp.cluster_metadata.kms_key_arn #=> String
    #   resp.cluster_metadata.role_arn #=> String
    #   resp.cluster_metadata.cluster_state #=> String, one of "AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"
    #   resp.cluster_metadata.job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.cluster_metadata.snowball_type #=> String, one of "STANDARD", "EDGE"
    #   resp.cluster_metadata.creation_date #=> Time
    #   resp.cluster_metadata.resources.s3_resources #=> Array
    #   resp.cluster_metadata.resources.s3_resources[0].bucket_arn #=> String
    #   resp.cluster_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
    #   resp.cluster_metadata.resources.s3_resources[0].key_range.end_marker #=> String
    #   resp.cluster_metadata.resources.lambda_resources #=> Array
    #   resp.cluster_metadata.resources.lambda_resources[0].lambda_arn #=> String
    #   resp.cluster_metadata.resources.lambda_resources[0].event_triggers #=> Array
    #   resp.cluster_metadata.resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
    #   resp.cluster_metadata.resources.ec2_ami_resources #=> Array
    #   resp.cluster_metadata.resources.ec2_ami_resources[0].ami_id #=> String
    #   resp.cluster_metadata.resources.ec2_ami_resources[0].snowball_ami_id #=> String
    #   resp.cluster_metadata.address_id #=> String
    #   resp.cluster_metadata.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
    #   resp.cluster_metadata.notification.sns_topic_arn #=> String
    #   resp.cluster_metadata.notification.job_states_to_notify #=> Array
    #   resp.cluster_metadata.notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.cluster_metadata.notification.notify_all #=> Boolean
    #   resp.cluster_metadata.forwarding_address_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeCluster AWS API Documentation
    #
    # @overload describe_cluster(params = {})
    # @param [Hash] params ({})
    def describe_cluster(params = {}, options = {})
      req = build_request(:describe_cluster, params)
      req.send_request(options)
    end

    # Returns information about a specific job including shipping
    # information, job status, and other important metadata.
    #
    # @option params [required, String] :job_id
    #   The automatically generated ID for a job, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Types::DescribeJobResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobResult#job_metadata #job_metadata} => Types::JobMetadata
    #   * {Types::DescribeJobResult#sub_job_metadata #sub_job_metadata} => Array&lt;Types::JobMetadata&gt;
    #
    #
    # @example Example: To describe a job you've created for AWS Snowball
    #
    #   # This operation describes a job you've created for AWS Snowball.
    #
    #   resp = client.describe_job({
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_metadata: {
    #       address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #       creation_date: Time.parse("1475626164"), 
    #       description: "My Job", 
    #       job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #       job_state: "New", 
    #       job_type: "IMPORT", 
    #       kms_key_arn: "arn:aws:kms:us-east-1:123456789012:key/abcd1234-12ab-34cd-56ef-123456123456", 
    #       notification: {
    #         job_states_to_notify: [
    #         ], 
    #         notify_all: false, 
    #       }, 
    #       resources: {
    #         s3_resources: [
    #           {
    #             bucket_arn: "arn:aws:s3:::MyBucket", 
    #             key_range: {
    #             }, 
    #           }, 
    #         ], 
    #       }, 
    #       role_arn: "arn:aws:iam::123456789012:role/snowball-import-S3-role", 
    #       shipping_details: {
    #         shipping_option: "SECOND_DAY", 
    #       }, 
    #       snowball_capacity_preference: "T80", 
    #       snowball_type: "STANDARD", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_metadata.job_id #=> String
    #   resp.job_metadata.job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_metadata.job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.job_metadata.snowball_type #=> String, one of "STANDARD", "EDGE"
    #   resp.job_metadata.creation_date #=> Time
    #   resp.job_metadata.resources.s3_resources #=> Array
    #   resp.job_metadata.resources.s3_resources[0].bucket_arn #=> String
    #   resp.job_metadata.resources.s3_resources[0].key_range.begin_marker #=> String
    #   resp.job_metadata.resources.s3_resources[0].key_range.end_marker #=> String
    #   resp.job_metadata.resources.lambda_resources #=> Array
    #   resp.job_metadata.resources.lambda_resources[0].lambda_arn #=> String
    #   resp.job_metadata.resources.lambda_resources[0].event_triggers #=> Array
    #   resp.job_metadata.resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
    #   resp.job_metadata.resources.ec2_ami_resources #=> Array
    #   resp.job_metadata.resources.ec2_ami_resources[0].ami_id #=> String
    #   resp.job_metadata.resources.ec2_ami_resources[0].snowball_ami_id #=> String
    #   resp.job_metadata.description #=> String
    #   resp.job_metadata.kms_key_arn #=> String
    #   resp.job_metadata.role_arn #=> String
    #   resp.job_metadata.address_id #=> String
    #   resp.job_metadata.shipping_details.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
    #   resp.job_metadata.shipping_details.inbound_shipment.status #=> String
    #   resp.job_metadata.shipping_details.inbound_shipment.tracking_number #=> String
    #   resp.job_metadata.shipping_details.outbound_shipment.status #=> String
    #   resp.job_metadata.shipping_details.outbound_shipment.tracking_number #=> String
    #   resp.job_metadata.snowball_capacity_preference #=> String, one of "T50", "T80", "T100", "NoPreference"
    #   resp.job_metadata.notification.sns_topic_arn #=> String
    #   resp.job_metadata.notification.job_states_to_notify #=> Array
    #   resp.job_metadata.notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_metadata.notification.notify_all #=> Boolean
    #   resp.job_metadata.data_transfer_progress.bytes_transferred #=> Integer
    #   resp.job_metadata.data_transfer_progress.objects_transferred #=> Integer
    #   resp.job_metadata.data_transfer_progress.total_bytes #=> Integer
    #   resp.job_metadata.data_transfer_progress.total_objects #=> Integer
    #   resp.job_metadata.job_log_info.job_completion_report_uri #=> String
    #   resp.job_metadata.job_log_info.job_success_log_uri #=> String
    #   resp.job_metadata.job_log_info.job_failure_log_uri #=> String
    #   resp.job_metadata.cluster_id #=> String
    #   resp.job_metadata.forwarding_address_id #=> String
    #   resp.sub_job_metadata #=> Array
    #   resp.sub_job_metadata[0].job_id #=> String
    #   resp.sub_job_metadata[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.sub_job_metadata[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.sub_job_metadata[0].snowball_type #=> String, one of "STANDARD", "EDGE"
    #   resp.sub_job_metadata[0].creation_date #=> Time
    #   resp.sub_job_metadata[0].resources.s3_resources #=> Array
    #   resp.sub_job_metadata[0].resources.s3_resources[0].bucket_arn #=> String
    #   resp.sub_job_metadata[0].resources.s3_resources[0].key_range.begin_marker #=> String
    #   resp.sub_job_metadata[0].resources.s3_resources[0].key_range.end_marker #=> String
    #   resp.sub_job_metadata[0].resources.lambda_resources #=> Array
    #   resp.sub_job_metadata[0].resources.lambda_resources[0].lambda_arn #=> String
    #   resp.sub_job_metadata[0].resources.lambda_resources[0].event_triggers #=> Array
    #   resp.sub_job_metadata[0].resources.lambda_resources[0].event_triggers[0].event_resource_arn #=> String
    #   resp.sub_job_metadata[0].resources.ec2_ami_resources #=> Array
    #   resp.sub_job_metadata[0].resources.ec2_ami_resources[0].ami_id #=> String
    #   resp.sub_job_metadata[0].resources.ec2_ami_resources[0].snowball_ami_id #=> String
    #   resp.sub_job_metadata[0].description #=> String
    #   resp.sub_job_metadata[0].kms_key_arn #=> String
    #   resp.sub_job_metadata[0].role_arn #=> String
    #   resp.sub_job_metadata[0].address_id #=> String
    #   resp.sub_job_metadata[0].shipping_details.shipping_option #=> String, one of "SECOND_DAY", "NEXT_DAY", "EXPRESS", "STANDARD"
    #   resp.sub_job_metadata[0].shipping_details.inbound_shipment.status #=> String
    #   resp.sub_job_metadata[0].shipping_details.inbound_shipment.tracking_number #=> String
    #   resp.sub_job_metadata[0].shipping_details.outbound_shipment.status #=> String
    #   resp.sub_job_metadata[0].shipping_details.outbound_shipment.tracking_number #=> String
    #   resp.sub_job_metadata[0].snowball_capacity_preference #=> String, one of "T50", "T80", "T100", "NoPreference"
    #   resp.sub_job_metadata[0].notification.sns_topic_arn #=> String
    #   resp.sub_job_metadata[0].notification.job_states_to_notify #=> Array
    #   resp.sub_job_metadata[0].notification.job_states_to_notify[0] #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.sub_job_metadata[0].notification.notify_all #=> Boolean
    #   resp.sub_job_metadata[0].data_transfer_progress.bytes_transferred #=> Integer
    #   resp.sub_job_metadata[0].data_transfer_progress.objects_transferred #=> Integer
    #   resp.sub_job_metadata[0].data_transfer_progress.total_bytes #=> Integer
    #   resp.sub_job_metadata[0].data_transfer_progress.total_objects #=> Integer
    #   resp.sub_job_metadata[0].job_log_info.job_completion_report_uri #=> String
    #   resp.sub_job_metadata[0].job_log_info.job_success_log_uri #=> String
    #   resp.sub_job_metadata[0].job_log_info.job_failure_log_uri #=> String
    #   resp.sub_job_metadata[0].cluster_id #=> String
    #   resp.sub_job_metadata[0].forwarding_address_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/DescribeJob AWS API Documentation
    #
    # @overload describe_job(params = {})
    # @param [Hash] params ({})
    def describe_job(params = {}, options = {})
      req = build_request(:describe_job, params)
      req.send_request(options)
    end

    # Returns a link to an Amazon S3 presigned URL for the manifest file
    # associated with the specified `JobId` value. You can access the
    # manifest file for up to 60 minutes after this request has been made.
    # To access the manifest file after 60 minutes have passed, you'll have
    # to make another call to the `GetJobManifest` action.
    #
    # The manifest is an encrypted file that you can download after your job
    # enters the `WithCustomer` status. The manifest is decrypted by using
    # the `UnlockCode` code value, when you pass both values to the Snowball
    # through the Snowball client when the client is started for the first
    # time.
    #
    # As a best practice, we recommend that you don't save a copy of an
    # `UnlockCode` value in the same location as the manifest file for that
    # job. Saving these separately helps prevent unauthorized parties from
    # gaining access to the Snowball associated with that job.
    #
    # The credentials of a given job, including its manifest file and unlock
    # code, expire 90 days after the job is created.
    #
    # @option params [required, String] :job_id
    #   The ID for a job that you want to get the manifest file for, for
    #   example `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Types::GetJobManifestResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobManifestResult#manifest_uri #manifest_uri} => String
    #
    #
    # @example Example: To get the manifest for a job you've created for AWS Snowball
    #
    #   # Returns a link to an Amazon S3 presigned URL for the manifest file associated with the specified JobId value. You can
    #   # access the manifest file for up to 60 minutes after this request has been made. To access the manifest file after 60
    #   # minutes have passed, you'll have to make another call to the GetJobManifest action.
    #   # The manifest is an encrypted file that you can download after your job enters the WithCustomer status. The manifest is
    #   # decrypted by using the UnlockCode code value, when you pass both values to the Snowball through the Snowball client when
    #   # the client is started for the first time.
    #   # As a best practice, we recommend that you don't save a copy of an UnlockCode value in the same location as the manifest
    #   # file for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball
    #   # associated with that job.
    #   # The credentials of a given job, including its manifest file and unlock code, expire 90 days after the job is created.
    #
    #   resp = client.get_job_manifest({
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     manifest_uri: "https://awsie-frosty-manifests-prod.s3.amazonaws.com/JID123e4567-e89b-12d3-a456-426655440000_manifest.bin?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20161224T005115Z&X-Amz-SignedHeaders=...", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_manifest({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.manifest_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobManifest AWS API Documentation
    #
    # @overload get_job_manifest(params = {})
    # @param [Hash] params ({})
    def get_job_manifest(params = {}, options = {})
      req = build_request(:get_job_manifest, params)
      req.send_request(options)
    end

    # Returns the `UnlockCode` code value for the specified job. A
    # particular `UnlockCode` value can be accessed for up to 90 days after
    # the associated job has been created.
    #
    # The `UnlockCode` value is a 29-character code with 25 alphanumeric
    # characters and 4 hyphens. This code is used to decrypt the manifest
    # file when it is passed along with the manifest to the Snowball through
    # the Snowball client when the client is started for the first time.
    #
    # As a best practice, we recommend that you don't save a copy of the
    # `UnlockCode` in the same location as the manifest file for that job.
    # Saving these separately helps prevent unauthorized parties from
    # gaining access to the Snowball associated with that job.
    #
    # @option params [required, String] :job_id
    #   The ID for the job that you want to get the `UnlockCode` value for,
    #   for example `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @return [Types::GetJobUnlockCodeResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobUnlockCodeResult#unlock_code #unlock_code} => String
    #
    #
    # @example Example: To get the unlock code for a job you've created for AWS Snowball
    #
    #   # Returns the UnlockCode code value for the specified job. A particular UnlockCode value can be accessed for up to 90 days
    #   # after the associated job has been created.
    #   # The UnlockCode value is a 29-character code with 25 alphanumeric characters and 4 hyphens. This code is used to decrypt
    #   # the manifest file when it is passed along with the manifest to the Snowball through the Snowball client when the client
    #   # is started for the first time.
    #   # As a best practice, we recommend that you don't save a copy of the UnlockCode in the same location as the manifest file
    #   # for that job. Saving these separately helps prevent unauthorized parties from gaining access to the Snowball associated
    #   # with that job.
    #
    #   resp = client.get_job_unlock_code({
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     unlock_code: "12345-abcde-56789-fghij-01234", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_unlock_code({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unlock_code #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetJobUnlockCode AWS API Documentation
    #
    # @overload get_job_unlock_code(params = {})
    # @param [Hash] params ({})
    def get_job_unlock_code(params = {}, options = {})
      req = build_request(:get_job_unlock_code, params)
      req.send_request(options)
    end

    # Returns information about the Snowball service limit for your account,
    # and also the number of Snowballs your account has in use.
    #
    # The default service limit for the number of Snowballs that you can
    # have at one time is 1. If you want to increase your service limit,
    # contact AWS Support.
    #
    # @return [Types::GetSnowballUsageResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSnowballUsageResult#snowball_limit #snowball_limit} => Integer
    #   * {Types::GetSnowballUsageResult#snowballs_in_use #snowballs_in_use} => Integer
    #
    #
    # @example Example: To see your Snowball service limit and the number of Snowballs you have in use
    #
    #   # Returns information about the Snowball service limit for your account, and also the number of Snowballs your account has
    #   # in use.
    #   # The default service limit for the number of Snowballs that you can have at one time is 1. If you want to increase your
    #   # service limit, contact AWS Support.
    #
    #   resp = client.get_snowball_usage({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     snowball_limit: 1, 
    #     snowballs_in_use: 0, 
    #   }
    #
    # @example Response structure
    #
    #   resp.snowball_limit #=> Integer
    #   resp.snowballs_in_use #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/GetSnowballUsage AWS API Documentation
    #
    # @overload get_snowball_usage(params = {})
    # @param [Hash] params ({})
    def get_snowball_usage(params = {}, options = {})
      req = build_request(:get_snowball_usage, params)
      req.send_request(options)
    end

    # Returns an array of `JobListEntry` objects of the specified length.
    # Each `JobListEntry` object is for a job in the specified cluster and
    # contains a job's state, a job's ID, and other information.
    #
    # @option params [required, String] :cluster_id
    #   The 39-character ID for the cluster that you want to list, for example
    #   `CID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @option params [Integer] :max_results
    #   The number of `JobListEntry` objects to return.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `JobListEntry` objects, you have the option of specifying
    #   `NextToken` as the starting point for your returned list.
    #
    # @return [Types::ListClusterJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClusterJobsResult#job_list_entries #job_list_entries} => Array&lt;Types::JobListEntry&gt;
    #   * {Types::ListClusterJobsResult#next_token #next_token} => String
    #
    #
    # @example Example: To get a list of jobs in a cluster that you've created for AWS Snowball
    #
    #   # Returns an array of JobListEntry objects of the specified length. Each JobListEntry object is for a job in the specified
    #   # cluster and contains a job's state, a job's ID, and other information.
    #
    #   resp = client.list_cluster_jobs({
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_list_entries: [
    #       {
    #         creation_date: Time.parse("1480475524.0"), 
    #         description: "MyClustrer-node-001", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #       {
    #         creation_date: Time.parse("1480475525.0"), 
    #         description: "MyClustrer-node-002", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440001", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #       {
    #         creation_date: Time.parse("1480475525.0"), 
    #         description: "MyClustrer-node-003", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440002", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #       {
    #         creation_date: Time.parse("1480475525.0"), 
    #         description: "MyClustrer-node-004", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440003", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #       {
    #         creation_date: Time.parse("1480475525.0"), 
    #         description: "MyClustrer-node-005", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440004", 
    #         job_state: "New", 
    #         job_type: "LOCAL_USE", 
    #         snowball_type: "EDGE", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_cluster_jobs({
    #     cluster_id: "ClusterId", # required
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_list_entries #=> Array
    #   resp.job_list_entries[0].job_id #=> String
    #   resp.job_list_entries[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_list_entries[0].is_master #=> Boolean
    #   resp.job_list_entries[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.job_list_entries[0].snowball_type #=> String, one of "STANDARD", "EDGE"
    #   resp.job_list_entries[0].creation_date #=> Time
    #   resp.job_list_entries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClusterJobs AWS API Documentation
    #
    # @overload list_cluster_jobs(params = {})
    # @param [Hash] params ({})
    def list_cluster_jobs(params = {}, options = {})
      req = build_request(:list_cluster_jobs, params)
      req.send_request(options)
    end

    # Returns an array of `ClusterListEntry` objects of the specified
    # length. Each `ClusterListEntry` object contains a cluster's state, a
    # cluster's ID, and other important status information.
    #
    # @option params [Integer] :max_results
    #   The number of `ClusterListEntry` objects to return.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `ClusterListEntry` objects, you have the option of
    #   specifying `NextToken` as the starting point for your returned list.
    #
    # @return [Types::ListClustersResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListClustersResult#cluster_list_entries #cluster_list_entries} => Array&lt;Types::ClusterListEntry&gt;
    #   * {Types::ListClustersResult#next_token #next_token} => String
    #
    #
    # @example Example: To get a list of clusters that you've created for AWS Snowball
    #
    #   # Returns an array of ClusterListEntry objects of the specified length. Each ClusterListEntry object contains a cluster's
    #   # state, a cluster's ID, and other important status information.
    #
    #   resp = client.list_clusters({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     cluster_list_entries: [
    #       {
    #         cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #         cluster_state: "Pending", 
    #         creation_date: Time.parse("1480475517.0"), 
    #         description: "MyCluster", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_clusters({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.cluster_list_entries #=> Array
    #   resp.cluster_list_entries[0].cluster_id #=> String
    #   resp.cluster_list_entries[0].cluster_state #=> String, one of "AwaitingQuorum", "Pending", "InUse", "Complete", "Cancelled"
    #   resp.cluster_list_entries[0].creation_date #=> Time
    #   resp.cluster_list_entries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListClusters AWS API Documentation
    #
    # @overload list_clusters(params = {})
    # @param [Hash] params ({})
    def list_clusters(params = {}, options = {})
      req = build_request(:list_clusters, params)
      req.send_request(options)
    end

    # This action returns a list of the different Amazon EC2 Amazon Machine
    # Images (AMIs) that are owned by your AWS account that would be
    # supported for use on a Snowball Edge device. Currently, supported AMIs
    # are based on the CentOS 7 (x86\_64) - with Updates HVM, Ubuntu Server
    # 14.04 LTS (HVM), and Ubuntu 16.04 LTS - Xenial (HVM) images, available
    # on the AWS Marketplace.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results for the list of compatible images.
    #   Currently, a Snowball Edge device can store 10 AMIs.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of compatible images, you can specify a value for `NextToken`
    #   as the starting point for your list of returned images.
    #
    # @return [Types::ListCompatibleImagesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCompatibleImagesResult#compatible_images #compatible_images} => Array&lt;Types::CompatibleImage&gt;
    #   * {Types::ListCompatibleImagesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compatible_images({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.compatible_images #=> Array
    #   resp.compatible_images[0].ami_id #=> String
    #   resp.compatible_images[0].name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListCompatibleImages AWS API Documentation
    #
    # @overload list_compatible_images(params = {})
    # @param [Hash] params ({})
    def list_compatible_images(params = {}, options = {})
      req = build_request(:list_compatible_images, params)
      req.send_request(options)
    end

    # Returns an array of `JobListEntry` objects of the specified length.
    # Each `JobListEntry` object contains a job's state, a job's ID, and a
    # value that indicates whether the job is a job part, in the case of
    # export jobs. Calling this API action in one of the US regions will
    # return jobs from the list of all jobs associated with this account in
    # all US regions.
    #
    # @option params [Integer] :max_results
    #   The number of `JobListEntry` objects to return.
    #
    # @option params [String] :next_token
    #   HTTP requests are stateless. To identify what object comes "next" in
    #   the list of `JobListEntry` objects, you have the option of specifying
    #   `NextToken` as the starting point for your returned list.
    #
    # @return [Types::ListJobsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResult#job_list_entries #job_list_entries} => Array&lt;Types::JobListEntry&gt;
    #   * {Types::ListJobsResult#next_token #next_token} => String
    #
    #
    # @example Example: To get a list of jobs that you've created for AWS Snowball
    #
    #   # Returns an array of JobListEntry objects of the specified length. Each JobListEntry object contains a job's state, a
    #   # job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action
    #   # in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
    #
    #   resp = client.list_jobs({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_list_entries: [
    #       {
    #         creation_date: Time.parse("1460678186.0"), 
    #         description: "MyJob", 
    #         is_master: false, 
    #         job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #         job_state: "New", 
    #         job_type: "IMPORT", 
    #         snowball_type: "STANDARD", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_list_entries #=> Array
    #   resp.job_list_entries[0].job_id #=> String
    #   resp.job_list_entries[0].job_state #=> String, one of "New", "PreparingAppliance", "PreparingShipment", "InTransitToCustomer", "WithCustomer", "InTransitToAWS", "WithAWSSortingFacility", "WithAWS", "InProgress", "Complete", "Cancelled", "Listing", "Pending"
    #   resp.job_list_entries[0].is_master #=> Boolean
    #   resp.job_list_entries[0].job_type #=> String, one of "IMPORT", "EXPORT", "LOCAL_USE"
    #   resp.job_list_entries[0].snowball_type #=> String, one of "STANDARD", "EDGE"
    #   resp.job_list_entries[0].creation_date #=> Time
    #   resp.job_list_entries[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/ListJobs AWS API Documentation
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # While a cluster's `ClusterState` value is in the `AwaitingQuorum`
    # state, you can update some of the information associated with a
    # cluster. Once the cluster changes to a different job state, usually 60
    # minutes after the cluster being created, this action is no longer
    # available.
    #
    # @option params [required, String] :cluster_id
    #   The cluster ID of the cluster that you want to update, for example
    #   `CID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @option params [String] :role_arn
    #   The new role Amazon Resource Name (ARN) that you want to associate
    #   with this cluster. To create a role ARN, use the [CreateRole][1] API
    #   action in AWS Identity and Access Management (IAM).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @option params [String] :description
    #   The updated description of this cluster.
    #
    # @option params [Types::JobResource] :resources
    #   The updated arrays of JobResource objects that can include updated
    #   S3Resource objects or LambdaResource objects.
    #
    # @option params [String] :address_id
    #   The ID of the updated Address object.
    #
    # @option params [String] :shipping_option
    #   The updated shipping option value of this cluster's ShippingDetails
    #   object.
    #
    # @option params [Types::Notification] :notification
    #   The new or updated Notification object.
    #
    # @option params [String] :forwarding_address_id
    #   The updated ID for the forwarding address for a cluster. This field is
    #   not supported in most regions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update a cluster
    #
    #   # This action allows you to update certain parameters for a cluster. Once the cluster changes to a different state,
    #   # usually within 60 minutes of it being created, this action is no longer available.
    #
    #   resp = client.update_cluster({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #     cluster_id: "CID123e4567-e89b-12d3-a456-426655440000", 
    #     description: "Updated the address to send this to image processing - RJ", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_cluster({
    #     cluster_id: "ClusterId", # required
    #     role_arn: "RoleARN",
    #     description: "String",
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String",
    #           },
    #         },
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN",
    #             },
    #           ],
    #         },
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String",
    #         },
    #       ],
    #     },
    #     address_id: "AddressId",
    #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #       notify_all: false,
    #     },
    #     forwarding_address_id: "AddressId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateCluster AWS API Documentation
    #
    # @overload update_cluster(params = {})
    # @param [Hash] params ({})
    def update_cluster(params = {}, options = {})
      req = build_request(:update_cluster, params)
      req.send_request(options)
    end

    # While a job's `JobState` value is `New`, you can update some of the
    # information associated with a job. Once the job changes to a different
    # job state, usually within 60 minutes of the job being created, this
    # action is no longer available.
    #
    # @option params [required, String] :job_id
    #   The job ID of the job that you want to update, for example
    #   `JID123e4567-e89b-12d3-a456-426655440000`.
    #
    # @option params [String] :role_arn
    #   The new role Amazon Resource Name (ARN) that you want to associate
    #   with this job. To create a role ARN, use the [CreateRole][1]AWS
    #   Identity and Access Management (IAM) API action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    #
    # @option params [Types::Notification] :notification
    #   The new or updated Notification object.
    #
    # @option params [Types::JobResource] :resources
    #   The updated `JobResource` object, or the updated JobResource object.
    #
    # @option params [String] :address_id
    #   The ID of the updated Address object.
    #
    # @option params [String] :shipping_option
    #   The updated shipping option value of this job's ShippingDetails
    #   object.
    #
    # @option params [String] :description
    #   The updated description of this job's JobMetadata object.
    #
    # @option params [String] :snowball_capacity_preference
    #   The updated `SnowballCapacityPreference` of this job's JobMetadata
    #   object. The 50 TB Snowballs are only available in the US regions.
    #
    # @option params [String] :forwarding_address_id
    #   The updated ID for the forwarding address for a job. This field is not
    #   supported in most regions.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To update a job
    #
    #   # This action allows you to update certain parameters for a job. Once the job changes to a different job state, usually
    #   # within 60 minutes of the job being created, this action is no longer available.
    #
    #   resp = client.update_job({
    #     address_id: "ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b", 
    #     description: "Upgraded to Edge, shipped to Finance Dept, and requested faster shipping speed - TS.", 
    #     job_id: "JID123e4567-e89b-12d3-a456-426655440000", 
    #     shipping_option: "NEXT_DAY", 
    #     snowball_capacity_preference: "T100", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_job({
    #     job_id: "JobId", # required
    #     role_arn: "RoleARN",
    #     notification: {
    #       sns_topic_arn: "SnsTopicARN",
    #       job_states_to_notify: ["New"], # accepts New, PreparingAppliance, PreparingShipment, InTransitToCustomer, WithCustomer, InTransitToAWS, WithAWSSortingFacility, WithAWS, InProgress, Complete, Cancelled, Listing, Pending
    #       notify_all: false,
    #     },
    #     resources: {
    #       s3_resources: [
    #         {
    #           bucket_arn: "ResourceARN",
    #           key_range: {
    #             begin_marker: "String",
    #             end_marker: "String",
    #           },
    #         },
    #       ],
    #       lambda_resources: [
    #         {
    #           lambda_arn: "ResourceARN",
    #           event_triggers: [
    #             {
    #               event_resource_arn: "ResourceARN",
    #             },
    #           ],
    #         },
    #       ],
    #       ec2_ami_resources: [
    #         {
    #           ami_id: "AmiId", # required
    #           snowball_ami_id: "String",
    #         },
    #       ],
    #     },
    #     address_id: "AddressId",
    #     shipping_option: "SECOND_DAY", # accepts SECOND_DAY, NEXT_DAY, EXPRESS, STANDARD
    #     description: "String",
    #     snowball_capacity_preference: "T50", # accepts T50, T80, T100, NoPreference
    #     forwarding_address_id: "AddressId",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/snowball-2016-06-30/UpdateJob AWS API Documentation
    #
    # @overload update_job(params = {})
    # @param [Hash] params ({})
    def update_job(params = {}, options = {})
      req = build_request(:update_job, params)
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
      context[:gem_name] = 'aws-sdk-snowball'
      context[:gem_version] = '1.7.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
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
