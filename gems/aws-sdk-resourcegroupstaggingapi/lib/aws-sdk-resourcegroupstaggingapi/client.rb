# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::ResourceGroupsTaggingAPI
  # An API client for Aws::ResourceGroupsTaggingAPI.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ResourceGroupsTaggingAPI20170126

    add_plugin(::Aws::ResourceGroupsTaggingAPI::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::ResourceGroupsTaggingAPI::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Describes the status of the <code>StartReportCreation</code> operation. </p>
    #          <p>You can call this operation only from the organization's 
    #     management account and from the us-east-1 Region.</p>
    # @param [Hash, Types::DescribeReportCreationInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_report_creation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "Status",
    #     s3_location: "S3Location",
    #     start_date: "StartDate",
    #     error_message: "ErrorMessage"
    #   }
    # @return [Types::DescribeReportCreationOutput]
    def describe_report_creation(params = {}, options = {})
      request = build_request(:describe_report_creation, params)
      request.send_request(options)
    end

    # <p>Returns a table that shows counts of resources that are noncompliant with their tag
    #             policies.</p>
    #          <p>For more information on tag policies, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">Tag Policies</a> in
    #             the <i>Organizations User Guide.</i>
    #          </p>
    #          <p>You can call this operation only from the organization's 
    #     management account and from the us-east-1 Region.</p>
    #          <p>This operation supports pagination, where the response can be sent in 
    #     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    #     if there are additional results available to return. Repeat the query, passing the
    #     <code>PaginationToken</code> response parameter value as an input to the next request until you
    #     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    #     there are no more results waiting to be returned.</p>
    # @param [Hash, Types::GetComplianceSummaryInput] params
    # @option params [Array<String>] :target_id_filters
    #   <p>Specifies target identifiers (usually, specific account IDs) to limit the output by.
    #               If you use this parameter, the count of returned noncompliant resources includes only
    #               resources with the specified target IDs.</p>
    # @option params [Array<String>] :region_filters
    #   <p>Specifies a list of Amazon Web Services Regions to limit the output to. If you use this parameter,
    #               the count of returned noncompliant resources includes only resources in the specified
    #               Regions.</p>
    # @option params [Array<String>] :resource_type_filters
    #   <p>Specifies that you want the response to include information for only resources of the
    #               specified types. The format of each resource type is
    #               <code>service[:resourceType]</code>. For example, specifying a resource type of
    #                   <code>ec2</code> returns all Amazon EC2 resources (which includes EC2 instances).
    #               Specifying a resource type of <code>ec2:instance</code> returns only EC2
    #               instances.</p>
    #            <p>The string for each service name and resource type is the same as that embedded in a
    #               resource's Amazon Resource Name (ARN). Consult the <i>
    #                  <a href="https://docs.aws.amazon.com/general/latest/gr/">Amazon Web Services General Reference</a>
    #               </i>
    #               for the following:</p>
    #            <ul>
    #               <li>
    #                  <p>For a list of service name strings, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services Service Namespaces</a>.</p>
    #               </li>
    #               <li>
    #                  <p>For resource type strings, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax">Example
    #                           ARNs</a>.</p>
    #               </li>
    #               <li>
    #                  <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names
    #                           (ARNs) and Amazon Web Services Service Namespaces</a>.</p>
    #               </li>
    #            </ul>
    #            <p>You can specify multiple resource types by using a comma separated array. The array
    #               can include up to 100 items. Note that the length constraint requirement applies to each
    #               resource type filter. </p>
    # @option params [Array<String>] :tag_key_filters
    #   <p>Specifies that you want the response to include information for only resources that
    #               have tags with the specified tag keys. If you use this parameter, the count of returned
    #               noncompliant resources includes only resources that have the specified tag keys.</p>
    # @option params [Array<String>] :group_by
    #   <p>Specifies a list of attributes to group the counts of noncompliant resources by. If
    #               supplied, the counts are sorted by those attributes.</p>
    # @option params [Integer] :max_results
    #   <p>Specifies the maximum number of results to be returned in each page. A 
    #       query can return fewer than this maximum, even if there are more results still to return. You
    #       should always check the <code>PaginationToken</code> response value to see if there are more
    #       results. You can specify a minimum of 1 and a maximum value of 100.</p>
    # @option params [String] :pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a 
    #       previous request to indicate that you want the next page of results. Leave this parameter empty 
    #       in your initial request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     target_id_filters: ["TargetId"],
    #     region_filters: ["Region"],
    #     resource_type_filters: ["AmazonResourceType"],
    #     tag_key_filters: ["TagKey"],
    #     group_by: ["TARGET_ID" # One of: ["TARGET_ID", "REGION", "RESOURCE_TYPE"]],
    #     max_results: 1,
    #     pagination_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_compliance_summary(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     summary_list: [
    #       {
    #         last_updated: "LastUpdated",
    #         target_id: "TargetId",
    #         target_id_type: "ACCOUNT" # One of: ["ACCOUNT", "OU", "ROOT"],
    #         region: "Region",
    #         resource_type: "AmazonResourceType",
    #         non_compliant_resources: 1
    #       }
    #     ],
    #     pagination_token: "PaginationToken"
    #   }
    # @return [Types::GetComplianceSummaryOutput]
    def get_compliance_summary(params = {}, options = {})
      request = build_request(:get_compliance_summary, params)
      request.send_request(options)
    end

    # <p>Returns all the tagged or previously tagged resources that are located in the
    #             specified Amazon Web Services Region for the account.</p>
    #          <p>Depending on what information you want returned, you can also specify the
    #             following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <i>Filters</i> that specify what tags and resource types you
    #                     want returned. The response includes all tags that are associated with the
    #                     requested resources.</p>
    #             </li>
    #             <li>
    #                <p>Information about compliance with the account's effective tag policy. For more
    #                     information on tag policies, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">Tag
    #                         Policies</a> in the <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>This operation supports pagination, where the response can be sent in 
    #     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    #     if there are additional results available to return. Repeat the query, passing the
    #     <code>PaginationToken</code> response parameter value as an input to the next request until you
    #     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    #     there are no more results waiting to be returned.</p>
    # @param [Hash, Types::GetResourcesInput] params
    # @option params [String] :pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a 
    #       previous request to indicate that you want the next page of results. Leave this parameter empty 
    #       in your initial request.</p>
    # @option params [Array<Types::TagFilter>] :tag_filters
    #   <p>Specifies a list of TagFilters (keys and values) to restrict the output to only those
    #               resources that have tags with the specified keys and, if included, the specified values.
    #               Each <code>TagFilter</code> must contain a key with values optional. A request can
    #               include up to 50 keys, and each key can include up to 20 values. </p>
    #            <p>Note the following when deciding how to use TagFilters:</p>
    #            <ul>
    #               <li>
    #                  <p>If you <i>don't</i> specify a <code>TagFilter</code>, the
    #                       response includes all resources that are currently tagged or ever had a tag.
    #                       Resources that currently don't have tags are shown with an empty tag set, like
    #                       this: <code>"Tags": []</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify more than one filter in a single request, the response returns
    #                       only those resources that satisfy all filters.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a filter that contains more than one value for a key, the
    #                       response returns resources that match <i>any</i> of the specified
    #                       values for that key.</p>
    #               </li>
    #               <li>
    #                  <p>If you don't specify a value for a key, the response returns all resources
    #                       that are tagged with that key, with any or no value.</p>
    #                  <p>For example, for the following filters: <code>filter1= {keyA,{value1}}</code>,
    #                           <code>filter2={keyB,{value2,value3,value4}}</code>, <code>filter3=
    #                           {keyC}</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>GetResources({filter1})</code> returns resources tagged with
    #                                   <code>key1=value1</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>GetResources({filter2})</code> returns resources tagged with
    #                                   <code>key2=value2</code> or <code>key2=value3</code> or
    #                                   <code>key2=value4</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>GetResources({filter3})</code> returns resources tagged with any
    #                               tag with the key <code>key3</code>, and with any or no value</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>GetResources({filter1,filter2,filter3})</code> returns resources
    #                               tagged with <code>(key1=value1) and (key2=value2 or key2=value3 or
    #                                   key2=value4) and (key3, any or no value)</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Integer] :resources_per_page
    #   <p>Specifies the maximum number of results to be returned in each page. A 
    #       query can return fewer than this maximum, even if there are more results still to return. You
    #       should always check the <code>PaginationToken</code> response value to see if there are more
    #       results. You can specify a minimum of 1 and a maximum value of 100.</p>
    # @option params [Integer] :tags_per_page
    #   <p>Amazon Web Services recommends using <code>ResourcesPerPage</code> instead of this parameter.</p>
    #            <p>A limit that restricts the number of tags (key and value pairs) returned by
    #                   <code>GetResources</code> in paginated output. A resource with no tags is counted as
    #               having one tag (one key and value pair).</p>
    #            <p>
    #               <code>GetResources</code> does not split a resource and its associated tags across
    #               pages. If the specified <code>TagsPerPage</code> would cause such a break, a
    #                   <code>PaginationToken</code> is returned in place of the affected resource and its
    #               tags. Use that token in another request to get the remaining data. For example, if you
    #               specify a <code>TagsPerPage</code> of <code>100</code> and the account has 22 resources
    #               with 10 tags each (meaning that each resource has 10 key and value pairs), the output
    #               will consist of three pages. The first page displays the first 10 resources, each with
    #               its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The
    #               third page displays the remaining 2 resources, each with its 10 tags.</p>
    #            <p>You can set <code>TagsPerPage</code> to a minimum of 100 items up to a maximum of 500
    #               items.</p>
    # @option params [Array<String>] :resource_type_filters
    #   <p>Specifies the resource types that you want included in the response. The format of
    #               each resource type is <code>service[:resourceType]</code>. For example, specifying a
    #               resource type of <code>ec2</code> returns all Amazon EC2 resources (which includes EC2
    #               instances). Specifying a resource type of <code>ec2:instance</code> returns only EC2
    #               instances. </p>
    #            <p>The string for each service name and resource type is the same as that embedded in a
    #               resource's Amazon Resource Name (ARN). For the list of services whose resources you can
    #               use in this parameter, see <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services that support the Resource Groups Tagging API</a>.</p>
    #            <p>You can specify multiple resource types by using an array. The array can include up to
    #               100 items. Note that the length constraint requirement applies to each resource type
    #               filter. For example, the following string would limit the response to only Amazon EC2
    #               instances, Amazon S3 buckets, or any Audit Manager resource:</p>
    #            <p>
    #               <code>ec2:instance,s3:bucket,auditmanager</code>
    #            </p>
    # @option params [Boolean] :include_compliance_details
    #   <p>Specifies whether to include details regarding the compliance with the effective tag
    #               policy. Set this to <code>true</code> to determine whether resources are compliant with
    #               the tag policy and to get details.</p>
    # @option params [Boolean] :exclude_compliant_resources
    #   <p>Specifies whether to exclude resources that are compliant with the tag policy. Set
    #               this to <code>true</code> if you are interested in retrieving information on
    #               noncompliant resources only.</p>
    #            <p>You can use this parameter only if the <code>IncludeComplianceDetails</code> parameter
    #               is also set to <code>true</code>.</p>
    # @option params [Array<String>] :resource_arn_list
    #   <p>Specifies a list of ARNs of resources for which you want to retrieve tag data. You
    #               can't specify both this parameter and any of the pagination parameters
    #                   (<code>ResourcesPerPage</code>, <code>TagsPerPage</code>,
    #                   <code>PaginationToken</code>) in the same request. If you specify both, you get an
    #                   <code>Invalid Parameter</code> exception.</p>
    #            <p>If a resource specified by this parameter doesn't exist, it doesn't generate an error;
    #               it simply isn't included in the response.</p>
    #            <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the
    #                   <i>Amazon Web Services General Reference</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pagination_token: "PaginationToken",
    #     tag_filters: [
    #       {
    #         key: "TagKey",
    #         values: ["TagValue"]
    #       }
    #     ],
    #     resources_per_page: 1,
    #     tags_per_page: 1,
    #     resource_type_filters: ["AmazonResourceType"],
    #     include_compliance_details: false,
    #     exclude_compliant_resources: false,
    #     resource_arn_list: ["ResourceARN"]
    #   }
    #   options = {}
    #   response = client.get_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pagination_token: "PaginationToken",
    #     resource_tag_mapping_list: [
    #       {
    #         resource_arn: "ResourceARN",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ],
    #         compliance_details: {
    #           noncompliant_keys: ["TagKey"],
    #           keys_with_noncompliant_values: ["TagKey"],
    #           compliance_status: false
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetResourcesOutput]
    def get_resources(params = {}, options = {})
      request = build_request(:get_resources, params)
      request.send_request(options)
    end

    # <p>Returns all tag keys currently in use in the specified Amazon Web Services Region for the calling
    #             account.</p>
    #          <p>This operation supports pagination, where the response can be sent in 
    #     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    #     if there are additional results available to return. Repeat the query, passing the
    #     <code>PaginationToken</code> response parameter value as an input to the next request until you
    #     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    #     there are no more results waiting to be returned.</p>
    # @param [Hash, Types::GetTagKeysInput] params
    # @option params [String] :pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a 
    #       previous request to indicate that you want the next page of results. Leave this parameter empty 
    #       in your initial request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pagination_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.get_tag_keys(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pagination_token: "PaginationToken",
    #     tag_keys: ["TagKey"]
    #   }
    # @return [Types::GetTagKeysOutput]
    def get_tag_keys(params = {}, options = {})
      request = build_request(:get_tag_keys, params)
      request.send_request(options)
    end

    # <p>Returns all tag values for the specified key that are used in the specified Amazon Web Services
    #             Region for the calling account.</p>
    #          <p>This operation supports pagination, where the response can be sent in 
    #     multiple pages. You should check the <code>PaginationToken</code> response parameter to determine
    #     if there are additional results available to return. Repeat the query, passing the
    #     <code>PaginationToken</code> response parameter value as an input to the next request until you
    #     recieve a <code>null</code> value. A null value for <code>PaginationToken</code> indicates that
    #     there are no more results waiting to be returned.</p>
    # @param [Hash, Types::GetTagValuesInput] params
    # @option params [String] :pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a 
    #       previous request to indicate that you want the next page of results. Leave this parameter empty 
    #       in your initial request.</p>
    # @option params [String] :key
    #   <p>Specifies the tag key for which you want to list all existing values that are
    #               currently used in the specified Amazon Web Services Region for the calling account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pagination_token: "PaginationToken",
    #     key: "TagKey", # required
    #   }
    #   options = {}
    #   response = client.get_tag_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pagination_token: "PaginationToken",
    #     tag_values: ["TagValue"]
    #   }
    # @return [Types::GetTagValuesOutput]
    def get_tag_values(params = {}, options = {})
      request = build_request(:get_tag_values, params)
      request.send_request(options)
    end

    # <p>Generates a report that lists all tagged resources in the accounts across your
    #             organization and tells whether each resource is compliant with the effective tag policy.
    #             Compliance data is refreshed daily. The report is generated asynchronously.</p>
    #          <p>The generated report is saved to the following location:</p>
    #          <p>
    #             <code>s3://example-bucket/AwsTagPolicies/o-exampleorgid/YYYY-MM-ddTHH:mm:ssZ/report.csv</code>
    #          </p>
    #          <p>You can call this operation only from the organization's 
    #     management account and from the us-east-1 Region.</p>
    # @param [Hash, Types::StartReportCreationInput] params
    # @option params [String] :s3_bucket
    #   <p>The name of the Amazon S3 bucket where the report will be stored; for example:</p>
    #            <p>
    #               <code>awsexamplebucket</code>
    #            </p>
    #            <p>For more information on S3 bucket requirements, including an example bucket policy,
    #               see the example S3 bucket policy on this page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     s3_bucket: "S3Bucket", # required
    #   }
    #   options = {}
    #   response = client.start_report_creation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartReportCreationOutput]
    def start_report_creation(params = {}, options = {})
      request = build_request(:start_report_creation, params)
      request.send_request(options)
    end

    # <p>Applies one or more tags to the specified resources. Note the following:</p>
    #          <ul>
    #             <li>
    #                <p>Not all resources can have tags. For a list of services with resources that
    #                     support tagging using this operation, see <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services that support the
    #                         Resource Groups Tagging API</a>. If the resource doesn't yet support
    #                     this operation, the resource's service might support tagging using its own API
    #                     operations. For more information, refer to the documentation for that
    #                     service.</p>
    #             </li>
    #             <li>
    #                <p>Each resource can have up to 50 tags. For other limits, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag Naming and Usage Conventions</a> in the <i>Amazon Web Services General
    #                         Reference.</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>You can only tag resources that are located in the specified Amazon Web Services Region for
    #                     the Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>To add tags to a resource, you need the necessary permissions for the service
    #                     that the resource belongs to as well as permissions for adding tags. For more
    #                     information, see the documentation for each service.</p>
    #             </li>
    #          </ul>
    #          <important>
    #             <p>Do not store personally identifiable information (PII) or other confidential or
    #                 sensitive information in tags. We use tags to provide you with billing and
    #                 administration services. Tags are not intended to be used for private or sensitive
    #                 data.</p>
    #          </important>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>In addition to the <code>tag:TagResources</code> permission required by this
    #             operation, you must also have the tagging permission defined by the service that created
    #             the resource. For example, to tag an Amazon EC2 instance using the <code>TagResources</code>
    #             operation, you must have both of the following permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>tag:TagResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:CreateTags</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::TagResourcesInput] params
    # @option params [Array<String>] :resource_arn_list
    #   <p>Specifies the list of ARNs of the resources that you want to apply tags to.</p>
    #            <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services
    #                   General Reference</i>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Specifies a list of tags that you want to add to the specified resources. A tag
    #               consists of a key and a value that you define.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn_list: ["ResourceARN"], # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_resources_map: {
    #       "ResourceARN" => {
    #         status_code: 1,
    #         error_code: "InternalServiceException" # One of: ["InternalServiceException", "InvalidParameterException"],
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::TagResourcesOutput]
    def tag_resources(params = {}, options = {})
      request = build_request(:tag_resources, params)
      request.send_request(options)
    end

    # <p>Removes the specified tags from the specified resources. When you specify a tag key,
    #             the action removes both that key and its associated value. The operation succeeds even
    #             if you attempt to remove tags from a resource that were already removed. Note the
    #             following:</p>
    #          <ul>
    #             <li>
    #                <p>To remove tags from a resource, you need the necessary permissions for the
    #                     service that the resource belongs to as well as permissions for removing tags.
    #                     For more information, see the documentation for the service whose resource you
    #                     want to untag.</p>
    #             </li>
    #             <li>
    #                <p>You can only tag resources that are located in the specified Amazon Web Services Region for
    #                     the calling Amazon Web Services account.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>In addition to the <code>tag:UntagResources</code> permission required by this
    #             operation, you must also have the remove tags permission defined by the service that
    #             created the resource. For example, to remove the tags from an Amazon EC2 instance using the
    #                 <code>UntagResources</code> operation, you must have both of the following
    #             permissions:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>tag:UntagResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ec2:DeleteTags</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UntagResourcesInput] params
    # @option params [Array<String>] :resource_arn_list
    #   <p>Specifies a list of ARNs of the resources that you want to remove tags from.</p>
    #            <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services
    #                   General Reference</i>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies a list of tag keys that you want to remove from the specified
    #               resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn_list: ["ResourceARN"], # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     failed_resources_map: {
    #       "ResourceARN" => {
    #         status_code: 1,
    #         error_code: "InternalServiceException" # One of: ["InternalServiceException", "InvalidParameterException"],
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::UntagResourcesOutput]
    def untag_resources(params = {}, options = {})
      request = build_request(:untag_resources, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-resourcegroupstaggingapi'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
