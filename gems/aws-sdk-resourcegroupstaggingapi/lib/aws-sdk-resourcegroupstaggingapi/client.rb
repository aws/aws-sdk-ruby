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

    # Returns all the tagged resources that are associated with the
    # specified tags (keys and values) located in the specified region for
    # the AWS account. The tags and the resource types that you specify in
    # the request are known as *filters*. The response includes all tags
    # that are associated with the requested resources. If no filter is
    # provided, this action returns a paginated resource list with the
    # associated tags.
    #
    # @option params [String] :pagination_token
    #   A string that indicates that additional data is available. Leave this
    #   value empty for your initial request. If the response includes a
    #   `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #
    # @option params [Array<Types::TagFilter>] :tag_filters
    #   A list of tags (keys and values). A request can include up to 50 keys,
    #   and each key can include up to 20 values.
    #
    #   If you specify multiple filters connected by an AND operator in a
    #   single request, the response returns only those resources that are
    #   associated with every specified filter.
    #
    #   If you specify multiple filters connected by an OR operator in a
    #   single request, the response returns all resources that are associated
    #   with at least one or possibly more of the specified filters.
    #
    # @option params [Integer] :resources_per_page
    #   A limit that restricts the number of resources returned by
    #   GetResources in paginated output. You can set ResourcesPerPage to a
    #   minimum of 1 item and the maximum of 50 items.
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
    #
    #
    #   You can set `TagsPerPage` to a minimum of 100 items and the maximum of
    #   500 items.
    #
    # @option params [Array<String>] :resource_type_filters
    #   The constraints on the resources that you want returned. The format of
    #   each resource type is `service[:resourceType]`. For example,
    #   specifying a resource type of `ec2` returns all tagged Amazon EC2
    #   resources (which includes tagged EC2 instances). Specifying a resource
    #   type of `ec2:instance` returns only EC2 instances.
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
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax
    #   [3]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetResources AWS API Documentation
    #
    # @overload get_resources(params = {})
    # @param [Hash] params ({})
    def get_resources(params = {}, options = {})
      req = build_request(:get_resources, params)
      req.send_request(options)
    end

    # Returns all tag keys in the specified region for the AWS account.
    #
    # @option params [String] :pagination_token
    #   A string that indicates that additional data is available. Leave this
    #   value empty for your initial request. If the response includes a
    #   PaginationToken, use that string for this value to request an
    #   additional page of data.
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

    # Returns all tag values for the specified key in the specified region
    # for the AWS account.
    #
    # @option params [String] :pagination_token
    #   A string that indicates that additional data is available. Leave this
    #   value empty for your initial request. If the response includes a
    #   PaginationToken, use that string for this value to request an
    #   additional page of data.
    #
    # @option params [required, String] :key
    #   The key for which you want to list all existing values in the
    #   specified region for the AWS account.
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

    # Applies one or more tags to the specified resources. Note the
    # following:
    #
    # * Not all resources can have tags. For a list of resources that
    #   support tagging, see [Supported Resources][1] in the *AWS Resource
    #   Groups and Tag Editor User Guide*.
    #
    # * Each resource can have up to 50 tags. For other limits, see [Tag
    #   Restrictions][2] in the *Amazon EC2 User Guide for Linux Instances*.
    #
    # * You can only tag resources that are located in the specified region
    #   for the AWS account.
    #
    # * To add tags to a resource, you need the necessary permissions for
    #   the service that the resource belongs to as well as permissions for
    #   adding tags. For more information, see [Obtaining Permissions for
    #   Tagging][3] in the *AWS Resource Groups and Tag Editor User Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/supported-resources.html
    # [2]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-restrictions
    # [3]: http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html
    #
    # @option params [required, Array<String>] :resource_arn_list
    #   A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
    #   resource. You can specify a minimum of 1 and a maximum of 20 ARNs
    #   (resources) to tag. An ARN can be set to a maximum of 1600 characters.
    #   For more information, see [Amazon Resource Names (ARNs) and AWS
    #   Service Namespaces][1] in the *AWS General Reference*.
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
    #   for removing tags. For more information, see [Obtaining Permissions
    #   for Tagging][1] in the *AWS Resource Groups and Tag Editor User
    #   Guide*.
    #
    # * You can only tag resources that are located in the specified region
    #   for the AWS account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/obtaining-permissions-for-tagging.html
    #
    # @option params [required, Array<String>] :resource_arn_list
    #   A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
    #   resource. You can specify a minimum of 1 and a maximum of 20 ARNs
    #   (resources) to untag. An ARN can be set to a maximum of 1600
    #   characters. For more information, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
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
      context[:gem_version] = '1.3.0'
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
