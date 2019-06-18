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
require 'aws-sdk-core/plugins/endpoint_discovery.rb'
require 'aws-sdk-core/plugins/endpoint_pattern.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/transfer_encoding.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:resourcegroupstaggingapi)

module Aws::ResourceGroupsTaggingAPI
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :resourcegroupstaggingapi

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
    add_plugin(Aws::Plugins::EndpointDiscovery)
    add_plugin(Aws::Plugins::EndpointPattern)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
    add_plugin(Aws::Plugins::TransferEncoding)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::JsonRpc)

    # @overload initialize(options)
    #   @param [Hash] options
    #   @option options [required, Aws::CredentialProvider] :credentials
    #     Your AWS credentials. This can be an instance of any one of the
    #     following classes:
    #
    #     * `Aws::Credentials` - Used for configuring static, non-refreshing
    #       credentials.
    #
    #     * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #       from an EC2 IMDS on an EC2 instance.
    #
    #     * `Aws::SharedCredentials` - Used for loading credentials from a
    #       shared file, such as `~/.aws/config`.
    #
    #     * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #     When `:credentials` are not configured directly, the following
    #     locations will be searched for credentials:
    #
    #     * `Aws.config[:credentials]`
    #     * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #     * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #     * EC2 IMDS instance profile - When used by default, the timeouts are
    #       very aggressive. Construct and pass an instance of
    #       `Aws::InstanceProfileCredentails` to enable retries and extended
    #       timeouts.
    #
    #   @option options [required, String] :region
    #     The AWS region to connect to.  The configured `:region` is
    #     used to determine the service `:endpoint`. When not passed,
    #     a default `:region` is search for in the following locations:
    #
    #     * `Aws.config[:region]`
    #     * `ENV['AWS_REGION']`
    #     * `ENV['AMAZON_REGION']`
    #     * `ENV['AWS_DEFAULT_REGION']`
    #     * `~/.aws/credentials`
    #     * `~/.aws/config`
    #
    #   @option options [String] :access_key_id
    #
    #   @option options [Boolean] :active_endpoint_cache (false)
    #     When set to `true`, a thread polling for endpoints will be running in
    #     the background every 60 secs (default). Defaults to `false`.
    #
    #   @option options [Boolean] :client_side_monitoring (false)
    #     When `true`, client-side metrics will be collected for all API requests from
    #     this client.
    #
    #   @option options [String] :client_side_monitoring_client_id ("")
    #     Allows you to provide an identifier for this client which will be attached to
    #     all generated client side metrics. Defaults to an empty string.
    #
    #   @option options [String] :client_side_monitoring_host ("127.0.0.1")
    #     Allows you to specify the DNS hostname or IPv4 or IPv6 address that the client
    #     side monitoring agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Integer] :client_side_monitoring_port (31000)
    #     Required for publishing client metrics. The port that the client side monitoring
    #     agent is running on, where client metrics will be published via UDP.
    #
    #   @option options [Aws::ClientSideMonitoring::Publisher] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #     Allows you to provide a custom client-side monitoring publisher class. By default,
    #     will use the Client Side Monitoring Agent Publisher.
    #
    #   @option options [Boolean] :convert_params (true)
    #     When `true`, an attempt is made to coerce request parameters into
    #     the required types.
    #
    #   @option options [Boolean] :disable_host_prefix_injection (false)
    #     Set to true to disable SDK automatically adding host prefix
    #     to default service endpoint when available.
    #
    #   @option options [String] :endpoint
    #     The client endpoint is normally constructed from the `:region`
    #     option. You should only configure an `:endpoint` when connecting
    #     to test endpoints. This should be avalid HTTP(S) URI.
    #
    #   @option options [Integer] :endpoint_cache_max_entries (1000)
    #     Used for the maximum size limit of the LRU cache storing endpoints data
    #     for endpoint discovery enabled operations. Defaults to 1000.
    #
    #   @option options [Integer] :endpoint_cache_max_threads (10)
    #     Used for the maximum threads in use for polling endpoints to be cached, defaults to 10.
    #
    #   @option options [Integer] :endpoint_cache_poll_interval (60)
    #     When :endpoint_discovery and :active_endpoint_cache is enabled,
    #     Use this option to config the time interval in seconds for making
    #     requests fetching endpoints information. Defaults to 60 sec.
    #
    #   @option options [Boolean] :endpoint_discovery (false)
    #     When set to `true`, endpoint discovery will be enabled for operations when available. Defaults to `false`.
    #
    #   @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #     The log formatter.
    #
    #   @option options [Symbol] :log_level (:info)
    #     The log level to send messages to the `:logger` at.
    #
    #   @option options [Logger] :logger
    #     The Logger instance to send log messages to.  If this option
    #     is not set, logging will be disabled.
    #
    #   @option options [String] :profile ("default")
    #     Used when loading credentials from the shared credentials file
    #     at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    #   @option options [Float] :retry_base_delay (0.3)
    #     The base delay in seconds used by the default backoff function.
    #
    #   @option options [Symbol] :retry_jitter (:none)
    #     A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #     @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    #   @option options [Integer] :retry_limit (3)
    #     The maximum number of times to retry failed requests.  Only
    #     ~ 500 level server errors and certain ~ 400 level client errors
    #     are retried.  Generally, these are throttling errors, data
    #     checksum errors, networking errors, timeout errors and auth
    #     errors from expired credentials.
    #
    #   @option options [Integer] :retry_max_delay (0)
    #     The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
    #
    #   @option options [String] :secret_access_key
    #
    #   @option options [String] :session_token
    #
    #   @option options [Boolean] :simple_json (false)
    #     Disables request parameter conversion, validation, and formatting.
    #     Also disable response data type conversions. This option is useful
    #     when you want to ensure the highest level of performance by
    #     avoiding overhead of walking request parameters and response data
    #     structures.
    #
    #     When `:simple_json` is enabled, the request parameters hash must
    #     be formatted exactly as the DynamoDB API expects.
    #
    #   @option options [Boolean] :stub_responses (false)
    #     Causes the client to return stubbed responses. By default
    #     fake responses are generated and returned. You can specify
    #     the response data to return or errors to raise by calling
    #     {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #     ** Please note ** When response stubbing is enabled, no HTTP
    #     requests are made, and retries are disabled.
    #
    #   @option options [Boolean] :validate_params (true)
    #     When `true`, request parameters are validated before
    #     sending the request.
    #
    #   @option options [URI::HTTP,String] :http_proxy A proxy to send
    #     requests through.  Formatted like 'http://proxy.com:123'.
    #
    #   @option options [Float] :http_open_timeout (15) The number of
    #     seconds to wait when opening a HTTP session before rasing a
    #     `Timeout::Error`.
    #
    #   @option options [Integer] :http_read_timeout (60) The default
    #     number of seconds to wait for response data.  This value can
    #     safely be set
    #     per-request on the session yeidled by {#session_for}.
    #
    #   @option options [Float] :http_idle_timeout (5) The number of
    #     seconds a connection is allowed to sit idble before it is
    #     considered stale.  Stale connections are closed and removed
    #     from the pool before making a request.
    #
    #   @option options [Float] :http_continue_timeout (1) The number of
    #     seconds to wait for a 100-continue response before sending the
    #     request body.  This option has no effect unless the request has
    #     "Expect" header set to "100-continue".  Defaults to `nil` which
    #     disables this behaviour.  This value can safely be set per
    #     request on the session yeidled by {#session_for}.
    #
    #   @option options [Boolean] :http_wire_trace (false) When `true`,
    #     HTTP debug output will be sent to the `:logger`.
    #
    #   @option options [Boolean] :ssl_verify_peer (true) When `true`,
    #     SSL peer certificates are verified when establishing a
    #     connection.
    #
    #   @option options [String] :ssl_ca_bundle Full path to the SSL
    #     certificate authority bundle file that should be used when
    #     verifying peer certificates.  If you do not pass
    #     `:ssl_ca_bundle` or `:ssl_ca_directory` the the system default
    #     will be used if available.
    #
    #   @option options [String] :ssl_ca_directory Full path of the
    #     directory that contains the unbundled SSL certificate
    #     authority files for verifying peer certificates.  If you do
    #     not pass `:ssl_ca_bundle` or `:ssl_ca_directory` the the
    #     system default will be used if available.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Deletes the policy that is attached to the specified organization root
    # or account.
    #
    # You can call this operation from the organization's master account
    # only and from the us-east-1 Region only.
    #
    # @option params [required, String] :target_id
    #   The account ID or the root identifier of the organization. If you
    #   don't know the root ID, you can call the AWS Organizations
    #   [ListRoots][1] API to find it.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tag_policy({
    #     target_id: "TargetId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/DeleteTagPolicy AWS API Documentation
    #
    # @overload delete_tag_policy(params = {})
    # @param [Hash] params ({})
    def delete_tag_policy(params = {}, options = {})
      req = build_request(:delete_tag_policy, params)
      req.send_request(options)
    end

    # Describes the status of the `StartReportCreation` operation.
    #
    # You can call this operation from the organization's master account
    # only and from the us-east-1 Region only.
    #
    # @return [Types::DescribeReportCreationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeReportCreationOutput#status #status} => String
    #   * {Types::DescribeReportCreationOutput#s3_location #s3_location} => String
    #   * {Types::DescribeReportCreationOutput#error_message #error_message} => String
    #
    # @example Response structure
    #
    #   resp.status #=> String
    #   resp.s3_location #=> String
    #   resp.error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/DescribeReportCreation AWS API Documentation
    #
    # @overload describe_report_creation(params = {})
    # @param [Hash] params ({})
    def describe_report_creation(params = {}, options = {})
      req = build_request(:describe_report_creation, params)
      req.send_request(options)
    end

    # Disables tag policies for your organization and deletes all tag
    # policies.
    #
    # You can call this operation from the organization's master account
    # only and from the us-east-1 Region only.
    #
    # Use caution when disabling tag policies, as this is a destructive
    # operation that applies to your entire organization. You cannot undo
    # this operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/DisableTagPolicies AWS API Documentation
    #
    # @overload disable_tag_policies(params = {})
    # @param [Hash] params ({})
    def disable_tag_policies(params = {}, options = {})
      req = build_request(:disable_tag_policies, params)
      req.send_request(options)
    end

    # Enables tag policies for your organization. To use tag policies, you
    # must be using AWS Organizations with all features enabled.
    #
    # You can call this operation from the organization's master account
    # only and from the us-east-1 Region only.
    #
    # This operation does the following:
    #
    # * Enables tag policies for the specified organization.
    #
    # * Calls the [EnableAWSServiceAccess][1] API on your behalf to allow
    #   service access with the `tagpolicies.tag.amazonaws.com` service
    #   principal.
    #
    # * Creates a [service-linked role][2] named
    #   `AWSServiceRoleForTagPolicies`.
    #
    # For more information on tag policies, see [Tag Policies][3] in the
    # *AWS Resource Groups User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html
    # [3]: http://docs.aws.amazon.com/ARG/latest/userguide/tag-policies.html
    #
    # @option params [required, String] :root_id
    #   The root identifier of the organization. If you don't know the root
    #   ID, you can call the AWS Organizations [ListRoots][1] API to find it.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_tag_policies({
    #     root_id: "RootId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/EnableTagPolicies AWS API Documentation
    #
    # @overload enable_tag_policies(params = {})
    # @param [Hash] params ({})
    def enable_tag_policies(params = {}, options = {})
      req = build_request(:enable_tag_policies, params)
      req.send_request(options)
    end

    # Returns a table that shows counts of resources that are noncompliant
    # with their tag policies.
    #
    # For more information on tag policies, see [Tag Policies][1] in the
    # *AWS Resource Groups User Guide.*
    #
    # You can call this operation from the organization's master account
    # only and from the us-east-1 Region only.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ARG/latest/userguide/tag-policies.html
    #
    # @option params [Array<String>] :target_id_filters
    #   The target identifiers (usually, specific account IDs) to limit the
    #   output by. If you use this parameter, the count of returned
    #   noncompliant resources includes only resources in the specified target
    #   IDs.
    #
    # @option params [Array<String>] :region_filters
    #   A list of Regions to limit the output by. If you use this parameter,
    #   the count of returned noncompliant resources includes only resources
    #   in the specified Regions.
    #
    # @option params [Array<String>] :resource_type_filters
    #   The constraints on the resources that you want returned. The format of
    #   each resource type is `service[:resourceType]`. For example,
    #   specifying a resource type of `ec2` returns all Amazon EC2 resources
    #   (which includes EC2 instances). Specifying a resource type of
    #   `ec2:instance` returns only EC2 instances.
    #
    #   The string for each service name and resource type is the same as that
    #   embedded in a resource's Amazon Resource Name (ARN). Consult the *AWS
    #   General Reference* for the following:
    #
    #   * For a list of service name strings, see [AWS Service Namespaces][1].
    #
    #   * For resource type strings, see [Example ARNs][2].
    #
    #   * For more information about ARNs, see [Amazon Resource Names (ARNs)
    #     and AWS Service Namespaces][3].
    #
    #   You can specify multiple resource types by using an array. The array
    #   can include up to 100 items. Note that the length constraint
    #   requirement applies to each resource type filter.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax
    #   [3]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Array<String>] :tag_key_filters
    #   A list of tag keys to limit the output by. If you use this parameter,
    #   the count of returned noncompliant resources includes only resources
    #   that have the specified tag keys.
    #
    # @option params [Array<String>] :group_by
    #   A list of attributes to group the counts of noncompliant resources by.
    #   If supplied, the counts are sorted by those attributes.
    #
    # @option params [Integer] :max_results
    #   A limit that restricts the number of results that are returned per
    #   page.
    #
    # @option params [String] :pagination_token
    #   A string that indicates that additional data is available. Leave this
    #   value empty for your initial request. If the response includes a
    #   `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #
    # @return [Types::GetComplianceSummaryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetComplianceSummaryOutput#summary_list #summary_list} => Array&lt;Types::Summary&gt;
    #   * {Types::GetComplianceSummaryOutput#pagination_token #pagination_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_summary({
    #     target_id_filters: ["TargetId"],
    #     region_filters: ["Region"],
    #     resource_type_filters: ["AmazonResourceType"],
    #     tag_key_filters: ["TagKey"],
    #     group_by: ["TARGET_ID"], # accepts TARGET_ID, REGION, RESOURCE_TYPE
    #     max_results: 1,
    #     pagination_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.summary_list #=> Array
    #   resp.summary_list[0].last_updated #=> Time
    #   resp.summary_list[0].target_id #=> String
    #   resp.summary_list[0].region #=> String
    #   resp.summary_list[0].resource_type #=> String
    #   resp.summary_list[0].non_compliant_resources #=> Integer
    #   resp.pagination_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetComplianceSummary AWS API Documentation
    #
    # @overload get_compliance_summary(params = {})
    # @param [Hash] params ({})
    def get_compliance_summary(params = {}, options = {})
      req = build_request(:get_compliance_summary, params)
      req.send_request(options)
    end

    # Returns the contents of the effective tag policy for the AWS account.
    # Depending on how you use tag policies, the effective tag policy for an
    # account is one of the following:
    #
    # * The tag policy attached to the organization that the account belongs
    #   to.
    #
    # * The tag policy attached to the account.
    #
    # * The combination of both policies if tag policies are attached to the
    #   organization root and account.
    #
    # @option params [String] :target_id
    #   The unique identifier of the organization root or account whose tag
    #   policy you want returned.
    #
    # @return [Types::GetEffectiveTagPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEffectiveTagPolicyOutput#policy #policy} => String
    #   * {Types::GetEffectiveTagPolicyOutput#last_updated #last_updated} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_tag_policy({
    #     target_id: "TargetId",
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.last_updated #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetEffectiveTagPolicy AWS API Documentation
    #
    # @overload get_effective_tag_policy(params = {})
    # @param [Hash] params ({})
    def get_effective_tag_policy(params = {}, options = {})
      req = build_request(:get_effective_tag_policy, params)
      req.send_request(options)
    end

    # Returns all the tagged or previously tagged resources that are located
    # in the specified Region for the AWS account.
    #
    # Depending on what information you want returned, you can also specify
    # the following:
    #
    # * *Filters* that specify what tags and resource types you want
    #   returned. The response includes all tags that are associated with
    #   the requested resources.
    #
    # * Information about compliance with tag policies. If supplied, the
    #   compliance check follows the specified tag policy instead of
    #   following the effective tag policy. For more information on tag
    #   policies, see [Tag Policies][1] in the *AWS Resource Groups User
    #   Guide.*
    #
    # <note markdown="1"> You can check the `PaginationToken` response parameter to determine if
    # a query completed. Queries can occasionally return fewer results on a
    # page than allowed. The `PaginationToken` response parameter value is
    # `null` *only* when there are no more results to display.
    #
    #  </note>
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ARG/latest/userguide/tag-policies.html
    #
    # @option params [String] :pagination_token
    #   A string that indicates that additional data is available. Leave this
    #   value empty for your initial request. If the response includes a
    #   `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #
    # @option params [Array<Types::TagFilter>] :tag_filters
    #   A list of TagFilters (keys and values). Each TagFilter specified must
    #   contain a key with values as optional. A request can include up to 50
    #   keys, and each key can include up to 20 values.
    #
    #   Note the following when deciding how to use TagFilters:
    #
    #   * If you *do* specify a TagFilter, the response returns only those
    #     resources that are currently associated with the specified tag.
    #
    #   * If you *don't* specify a TagFilter, the response includes all
    #     resources that were ever associated with tags. Resources that
    #     currently don't have associated tags are shown with an empty tag
    #     set, like this: `"Tags": []`.
    #
    #   * If you specify more than one filter in a single request, the
    #     response returns only those resources that satisfy all specified
    #     filters.
    #
    #   * If you specify a filter that contains more than one value for a key,
    #     the response returns resources that match any of the specified
    #     values for that key.
    #
    #   * If you don't specify any values for a key, the response returns
    #     resources that are tagged with that key irrespective of the value.
    #
    #     For example, for filters: `filter1 = \{key1, \{value1\}\}, filter2 =
    #     \{key2, \{value2,value3,value4\}\} , filter3 = \{key3\}`\:
    #
    #     * `GetResources( \{filter1\} )` returns resources tagged with
    #       key1=value1
    #
    #     * `GetResources( \{filter2\} )` returns resources tagged with
    #       key2=value2 or key2=value3 or key2=value4
    #
    #     * `GetResources( \{filter3\} )` returns resources tagged with any
    #       tag containing key3 as its tag key, irrespective of its value
    #
    #     * `GetResources( \{filter1,filter2,filter3\} )` returns resources
    #       tagged with ( key1=value1) and ( key2=value2 or key2=value3 or
    #       key2=value4) and (key3, irrespective of the value)
    #
    # @option params [Integer] :resources_per_page
    #   A limit that restricts the number of resources returned by
    #   GetResources in paginated output. You can set ResourcesPerPage to a
    #   minimum of 1 item and the maximum of 100 items.
    #
    # @option params [Integer] :tags_per_page
    #   A limit that restricts the number of tags (key and value pairs)
    #   returned by GetResources in paginated output. A resource with no tags
    #   is counted as having one tag (one key and value pair).
    #
    #   `GetResources` does not split a resource and its associated tags
    #   across pages. If the specified `TagsPerPage` would cause such a break,
    #   a `PaginationToken` is returned in place of the affected resource and
    #   its tags. Use that token in another request to get the remaining data.
    #   For example, if you specify a `TagsPerPage` of `100` and the account
    #   has 22 resources with 10 tags each (meaning that each resource has 10
    #   key and value pairs), the output will consist of 3 pages, with the
    #   first page displaying the first 10 resources, each with its 10 tags,
    #   the second page displaying the next 10 resources each with its 10
    #   tags, and the third page displaying the remaining 2 resources, each
    #   with its 10 tags.
    #
    #   You can set `TagsPerPage` to a minimum of 100 items and the maximum of
    #   500 items.
    #
    # @option params [Array<String>] :resource_type_filters
    #   The constraints on the resources that you want returned. The format of
    #   each resource type is `service[:resourceType]`. For example,
    #   specifying a resource type of `ec2` returns all Amazon EC2 resources
    #   (which includes EC2 instances). Specifying a resource type of
    #   `ec2:instance` returns only EC2 instances.
    #
    #   The string for each service name and resource type is the same as that
    #   embedded in a resource's Amazon Resource Name (ARN). Consult the *AWS
    #   General Reference* for the following:
    #
    #   * For a list of service name strings, see [AWS Service Namespaces][1].
    #
    #   * For resource type strings, see [Example ARNs][2].
    #
    #   * For more information about ARNs, see [Amazon Resource Names (ARNs)
    #     and AWS Service Namespaces][3].
    #
    #   You can specify multiple resource types by using an array. The array
    #   can include up to 100 items. Note that the length constraint
    #   requirement applies to each resource type filter.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax
    #   [3]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [Boolean] :include_compliance_details
    #   Specifies whether to include details regarding the compliance with the
    #   effective tag policy. Set this to `true` to determine whether
    #   resources are compliant with the tag policy and to get details.
    #
    # @option params [Boolean] :exclude_compliant_resources
    #   Specifies whether to exclude resources that are compliant with the tag
    #   policy. Set this to `true` if you are interested in retrieving
    #   information on noncompliant resources only.
    #
    #   You can use this parameter only if the `IncludeComplianceDetails`
    #   parameter is also set to `true`.
    #
    # @option params [String] :policy
    #   The tag policy to check resources against for compliance. If supplied,
    #   the compliance check follows the specified tag policy instead of
    #   following the effective tag policy. Using this parameter to specify a
    #   tag policy is useful for testing new tag policies before attaching
    #   them to a target.
    #
    #   You can only use this parameter if the `IncludeComplianceDetails`
    #   parameter is also set to `true`.
    #
    # @return [Types::GetResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcesOutput#pagination_token #pagination_token} => String
    #   * {Types::GetResourcesOutput#resource_tag_mapping_list #resource_tag_mapping_list} => Array&lt;Types::ResourceTagMapping&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resources({
    #     pagination_token: "PaginationToken",
    #     tag_filters: [
    #       {
    #         key: "TagKey",
    #         values: ["TagValue"],
    #       },
    #     ],
    #     resources_per_page: 1,
    #     tags_per_page: 1,
    #     resource_type_filters: ["AmazonResourceType"],
    #     include_compliance_details: false,
    #     exclude_compliant_resources: false,
    #     policy: "Policy",
    #   })
    #
    # @example Response structure
    #
    #   resp.pagination_token #=> String
    #   resp.resource_tag_mapping_list #=> Array
    #   resp.resource_tag_mapping_list[0].resource_arn #=> String
    #   resp.resource_tag_mapping_list[0].tags #=> Array
    #   resp.resource_tag_mapping_list[0].tags[0].key #=> String
    #   resp.resource_tag_mapping_list[0].tags[0].value #=> String
    #   resp.resource_tag_mapping_list[0].compliance_details.missing_keys #=> Array
    #   resp.resource_tag_mapping_list[0].compliance_details.missing_keys[0] #=> String
    #   resp.resource_tag_mapping_list[0].compliance_details.invalid_keys #=> Array
    #   resp.resource_tag_mapping_list[0].compliance_details.invalid_keys[0] #=> String
    #   resp.resource_tag_mapping_list[0].compliance_details.invalid_values #=> Array
    #   resp.resource_tag_mapping_list[0].compliance_details.invalid_values[0] #=> String
    #   resp.resource_tag_mapping_list[0].compliance_details.compliance_status #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetResources AWS API Documentation
    #
    # @overload get_resources(params = {})
    # @param [Hash] params ({})
    def get_resources(params = {}, options = {})
      req = build_request(:get_resources, params)
      req.send_request(options)
    end

    # Returns all tag keys in the specified Region for the AWS account.
    #
    # <note markdown="1"> You can check the `PaginationToken` response parameter to determine if
    # a query completed. Queries can occasionally return fewer results on a
    # page than allowed. The `PaginationToken` response parameter value is
    # `null` *only* when there are no more results to display.
    #
    #  </note>
    #
    # @option params [String] :pagination_token
    #   A string that indicates that additional data is available. Leave this
    #   value empty for your initial request. If the response includes a
    #   `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #
    # @option params [Integer] :max_results
    #   A limit that restricts the number of results that are returned per
    #   page.
    #
    # @return [Types::GetTagKeysOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagKeysOutput#pagination_token #pagination_token} => String
    #   * {Types::GetTagKeysOutput#tag_keys #tag_keys} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tag_keys({
    #     pagination_token: "PaginationToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pagination_token #=> String
    #   resp.tag_keys #=> Array
    #   resp.tag_keys[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagKeys AWS API Documentation
    #
    # @overload get_tag_keys(params = {})
    # @param [Hash] params ({})
    def get_tag_keys(params = {}, options = {})
      req = build_request(:get_tag_keys, params)
      req.send_request(options)
    end

    # Returns the policy that is attached to the specified target.
    #
    # You can call this operation from the organization's master account
    # only and from the us-east-1 Region only.
    #
    # @option params [required, String] :target_id
    #   The account ID or the root identifier of the organization. If you
    #   don't know the root ID, you can call the AWS Organizations
    #   [ListRoots][1] API to find it.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html
    #
    # @return [Types::GetTagPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagPolicyOutput#policy #policy} => String
    #   * {Types::GetTagPolicyOutput#last_updated #last_updated} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tag_policy({
    #     target_id: "TargetId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.last_updated #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagPolicy AWS API Documentation
    #
    # @overload get_tag_policy(params = {})
    # @param [Hash] params ({})
    def get_tag_policy(params = {}, options = {})
      req = build_request(:get_tag_policy, params)
      req.send_request(options)
    end

    # Returns all tag values for the specified key in the specified Region
    # for the AWS account.
    #
    # <note markdown="1"> You can check the `PaginationToken` response parameter to determine if
    # a query completed. Queries can occasionally return fewer results on a
    # page than allowed. The `PaginationToken` response parameter value is
    # `null` *only* when there are no more results to display.
    #
    #  </note>
    #
    # @option params [String] :pagination_token
    #   A string that indicates that additional data is available. Leave this
    #   value empty for your initial request. If the response includes a
    #   `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #
    # @option params [required, String] :key
    #   The key for which you want to list all existing values in the
    #   specified Region for the AWS account.
    #
    # @option params [Integer] :max_results
    #   A limit that restricts the number of results that are returned per
    #   page.
    #
    # @return [Types::GetTagValuesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagValuesOutput#pagination_token #pagination_token} => String
    #   * {Types::GetTagValuesOutput#tag_values #tag_values} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tag_values({
    #     pagination_token: "PaginationToken",
    #     key: "TagKey", # required
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.pagination_token #=> String
    #   resp.tag_values #=> Array
    #   resp.tag_values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagValues AWS API Documentation
    #
    # @overload get_tag_values(params = {})
    # @param [Hash] params ({})
    def get_tag_values(params = {}, options = {})
      req = build_request(:get_tag_values, params)
      req.send_request(options)
    end

    # Validates the tag policy and then attaches it to the account or
    # organization root. This policy determines whether a resource is
    # compliant.
    #
    # Validating the tag policy includes checking that the tag policy
    # document includes the required components, uses JSON syntax, and has
    # fewer than 5,000 characters (including spaces). For more information,
    # see [Tag Policy Structure][1] in the *AWS Resource Groups User Guide.*
    #
    # <note markdown="1"> If you later call this operation to attach a tag policy to the same
    # organization root or account, it overwrites the original call without
    # prompting you to confirm.
    #
    #  </note>
    #
    # You can call this operation from the organization's master account
    # only, and from the us-east-1 Region only.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ARG/latest/userguide/tag-policies-structure.html
    #
    # @option params [required, String] :target_id
    #   The account ID or the root identifier of the organization. If you
    #   don't know the root ID, you can call the AWS Organizations
    #   [ListRoots][1] API to find it.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html
    #
    # @option params [required, String] :policy
    #   The tag policy to attach to the target.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_tag_policy({
    #     target_id: "TargetId", # required
    #     policy: "Policy", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/PutTagPolicy AWS API Documentation
    #
    # @overload put_tag_policy(params = {})
    # @param [Hash] params ({})
    def put_tag_policy(params = {}, options = {})
      req = build_request(:put_tag_policy, params)
      req.send_request(options)
    end

    # Generates a report that lists all tagged resources in accounts across
    # your organization, and whether each resource is compliant with the
    # effective tag policy.
    #
    # You can call this operation from the organization's master account
    # only and from the us-east-1 Region only.
    #
    # @option params [required, String] :s3_bucket
    #   The name of the Amazon S3 bucket where the report will be stored.
    #
    #   For more information on S3 bucket requirements, including an example
    #   bucket policy, see [Additional Requirements for Running
    #   Organization-Wide Tag Compliance Report][1] in the *AWS Resource
    #   Groups User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/ARG/latest/userguide/tag-policies-prereqs.html#bucket-policy-org-report
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_report_creation({
    #     s3_bucket: "S3Bucket", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/StartReportCreation AWS API Documentation
    #
    # @overload start_report_creation(params = {})
    # @param [Hash] params ({})
    def start_report_creation(params = {}, options = {})
      req = build_request(:start_report_creation, params)
      req.send_request(options)
    end

    # Applies one or more tags to the specified resources. Note the
    # following:
    #
    # * Not all resources can have tags. For a list of resources that
    #   support tagging, see [this list][1].
    #
    # * Each resource can have up to 50 tags.
    #
    # * You can only tag resources that are located in the specified Region
    #   for the AWS account.
    #
    # * To add tags to a resource, you need the necessary permissions for
    #   the service that the resource belongs to as well as permissions for
    #   adding tags. For more information, see [Set Up Permissions][2] in
    #   the *AWS Resource Groups User Guide.*
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/Welcome.html
    # [2]: http://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-prereqs.html#rg-permissions
    #
    # @option params [required, Array<String>] :resource_arn_list
    #   A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
    #   resource. You can specify a minimum of 1 and a maximum of 20 ARNs
    #   (resources) to tag. For more information, see [Amazon Resource Names
    #   (ARNs) and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags that you want to add to the specified resources. A tag
    #   consists of a key and a value that you define.
    #
    # @return [Types::TagResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagResourcesOutput#failed_resources_map #failed_resources_map} => Hash&lt;String,Types::FailureInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resources({
    #     resource_arn_list: ["ResourceARN"], # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_resources_map #=> Hash
    #   resp.failed_resources_map["ResourceARN"].status_code #=> Integer
    #   resp.failed_resources_map["ResourceARN"].error_code #=> String, one of "InternalServiceException", "InvalidParameterException"
    #   resp.failed_resources_map["ResourceARN"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/TagResources AWS API Documentation
    #
    # @overload tag_resources(params = {})
    # @param [Hash] params ({})
    def tag_resources(params = {}, options = {})
      req = build_request(:tag_resources, params)
      req.send_request(options)
    end

    # Removes the specified tags from the specified resources. When you
    # specify a tag key, the action removes both that key and its associated
    # value. The operation succeeds even if you attempt to remove tags from
    # a resource that were already removed. Note the following:
    #
    # * To remove tags from a resource, you need the necessary permissions
    #   for the service that the resource belongs to as well as permissions
    #   for removing tags. For more information, see [Set Up Permissions][1]
    #   in the *AWS Resource Groups User Guide.*
    #
    # * You can only tag resources that are located in the specified Region
    #   for the AWS account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-prereqs.html#rg-permissions
    #
    # @option params [required, Array<String>] :resource_arn_list
    #   A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
    #   resource. You can specify a minimum of 1 and a maximum of 20 ARNs
    #   (resources) to untag. For more information, see [Amazon Resource Names
    #   (ARNs) and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of the tag keys that you want to remove from the specified
    #   resources.
    #
    # @return [Types::UntagResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagResourcesOutput#failed_resources_map #failed_resources_map} => Hash&lt;String,Types::FailureInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resources({
    #     resource_arn_list: ["ResourceARN"], # required
    #     tag_keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_resources_map #=> Hash
    #   resp.failed_resources_map["ResourceARN"].status_code #=> Integer
    #   resp.failed_resources_map["ResourceARN"].error_code #=> String, one of "InternalServiceException", "InvalidParameterException"
    #   resp.failed_resources_map["ResourceARN"].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/UntagResources AWS API Documentation
    #
    # @overload untag_resources(params = {})
    # @param [Hash] params ({})
    def untag_resources(params = {}, options = {})
      req = build_request(:untag_resources, params)
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
      context[:gem_name] = 'aws-sdk-resourcegroupstaggingapi'
      context[:gem_version] = '1.14.0'
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
