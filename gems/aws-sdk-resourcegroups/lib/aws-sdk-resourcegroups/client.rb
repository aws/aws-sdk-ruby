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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:resourcegroups)

module Aws::ResourceGroups
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :resourcegroups

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Creates a group with a specified name, description, and resource
    # query.
    #
    # @option params [required, String] :name
    #   The name of the group, which is the identifier of the group in other
    #   operations. A resource group name cannot be updated after it is
    #   created. A resource group name can have a maximum of 128 characters,
    #   including letters, numbers, hyphens, dots, and underscores. The name
    #   cannot start with `AWS` or `aws`; these are reserved. A resource group
    #   name must be unique within your account.
    #
    # @option params [String] :description
    #   The description of the resource group. Descriptions can have a maximum
    #   of 511 characters, including letters, numbers, hyphens, underscores,
    #   punctuation, and spaces.
    #
    # @option params [required, Types::ResourceQuery] :resource_query
    #   The resource query that determines which AWS resources are members of
    #   this group.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the group. A tag is a string-to-string map of
    #   key-value pairs. Tag keys can have a maximum character length of 128
    #   characters, and tag values can have a maximum length of 256
    #   characters.
    #
    # @return [Types::CreateGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateGroupOutput#group #group} => Types::Group
    #   * {Types::CreateGroupOutput#resource_query #resource_query} => Types::ResourceQuery
    #   * {Types::CreateGroupOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group({
    #     name: "GroupName", # required
    #     description: "GroupDescription",
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0
    #       query: "Query", # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #   resp.resource_query.type #=> String, one of "TAG_FILTERS_1_0"
    #   resp.resource_query.query #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/CreateGroup AWS API Documentation
    #
    # @overload create_group(params = {})
    # @param [Hash] params ({})
    def create_group(params = {}, options = {})
      req = build_request(:create_group, params)
      req.send_request(options)
    end

    # Deletes a specified resource group. Deleting a resource group does not
    # delete resources that are members of the group; it only deletes the
    # group structure.
    #
    # @option params [required, String] :group_name
    #   The name of the resource group to delete.
    #
    # @return [Types::DeleteGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group({
    #     group_name: "GroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/DeleteGroup AWS API Documentation
    #
    # @overload delete_group(params = {})
    # @param [Hash] params ({})
    def delete_group(params = {}, options = {})
      req = build_request(:delete_group, params)
      req.send_request(options)
    end

    # Returns information about a specified resource group.
    #
    # @option params [required, String] :group_name
    #   The name of the resource group.
    #
    # @return [Types::GetGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group({
    #     group_name: "GroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroup AWS API Documentation
    #
    # @overload get_group(params = {})
    # @param [Hash] params ({})
    def get_group(params = {}, options = {})
      req = build_request(:get_group, params)
      req.send_request(options)
    end

    # Returns the resource query associated with the specified resource
    # group.
    #
    # @option params [required, String] :group_name
    #   The name of the resource group.
    #
    # @return [Types::GetGroupQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetGroupQueryOutput#group_query #group_query} => Types::GroupQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_query({
    #     group_name: "GroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.group_query.group_name #=> String
    #   resp.group_query.resource_query.type #=> String, one of "TAG_FILTERS_1_0"
    #   resp.group_query.resource_query.query #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetGroupQuery AWS API Documentation
    #
    # @overload get_group_query(params = {})
    # @param [Hash] params ({})
    def get_group_query(params = {}, options = {})
      req = build_request(:get_group_query, params)
      req.send_request(options)
    end

    # Returns a list of tags that are associated with a resource, specified
    # by an ARN.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource for which you want a list of tags. The
    #   resource must exist within the account you are using.
    #
    # @return [Types::GetTagsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTagsOutput#arn #arn} => String
    #   * {Types::GetTagsOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags({
    #     arn: "GroupArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/GetTags AWS API Documentation
    #
    # @overload get_tags(params = {})
    # @param [Hash] params ({})
    def get_tags(params = {}, options = {})
      req = build_request(:get_tags, params)
      req.send_request(options)
    end

    # Returns a list of ARNs of resources that are members of a specified
    # resource group.
    #
    # @option params [required, String] :group_name
    #   The name of the resource group.
    #
    # @option params [Array<Types::ResourceFilter>] :filters
    #   Filters, formatted as ResourceFilter objects, that you want to apply
    #   to a ListGroupResources operation.
    #
    #   * `resource-type` - Filter resources by their type. Specify up to five
    #     resource types in the format AWS::ServiceCode::ResourceType. For
    #     example, AWS::EC2::Instance, or AWS::S3::Bucket.
    #
    #   ^
    #
    # @option params [Integer] :max_results
    #   The maximum number of group member ARNs that are returned in a single
    #   call by ListGroupResources, in paginated output. By default, this
    #   number is 50.
    #
    # @option params [String] :next_token
    #   The NextToken value that is returned in a paginated ListGroupResources
    #   request. To get the next page of results, run the call again, add the
    #   NextToken parameter, and specify the NextToken value.
    #
    # @return [Types::ListGroupResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupResourcesOutput#resource_identifiers #resource_identifiers} => Array&lt;Types::ResourceIdentifier&gt;
    #   * {Types::ListGroupResourcesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_resources({
    #     group_name: "GroupName", # required
    #     filters: [
    #       {
    #         name: "resource-type", # required, accepts resource-type
    #         values: ["ResourceFilterValue"], # required
    #       },
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_identifiers #=> Array
    #   resp.resource_identifiers[0].resource_arn #=> String
    #   resp.resource_identifiers[0].resource_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroupResources AWS API Documentation
    #
    # @overload list_group_resources(params = {})
    # @param [Hash] params ({})
    def list_group_resources(params = {}, options = {})
      req = build_request(:list_group_resources, params)
      req.send_request(options)
    end

    # Returns a list of existing resource groups in your account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of resource group results that are returned by
    #   ListGroups in paginated output. By default, this number is 50.
    #
    # @option params [String] :next_token
    #   The NextToken value that is returned in a paginated `ListGroups`
    #   request. To get the next page of results, run the call again, add the
    #   NextToken parameter, and specify the NextToken value.
    #
    # @return [Types::ListGroupsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListGroupsOutput#groups #groups} => Array&lt;Types::Group&gt;
    #   * {Types::ListGroupsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups({
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].group_arn #=> String
    #   resp.groups[0].name #=> String
    #   resp.groups[0].description #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/ListGroups AWS API Documentation
    #
    # @overload list_groups(params = {})
    # @param [Hash] params ({})
    def list_groups(params = {}, options = {})
      req = build_request(:list_groups, params)
      req.send_request(options)
    end

    # Returns a list of AWS resource identifiers that matches a specified
    # query. The query uses the same format as a resource query in a
    # CreateGroup or UpdateGroupQuery operation.
    #
    # @option params [required, Types::ResourceQuery] :resource_query
    #   The search query, using the same formats that are supported for
    #   resource group definition.
    #
    # @option params [Integer] :max_results
    #   The maximum number of group member ARNs returned by `SearchResources`
    #   in paginated output. By default, this number is 50.
    #
    # @option params [String] :next_token
    #   The NextToken value that is returned in a paginated `SearchResources`
    #   request. To get the next page of results, run the call again, add the
    #   NextToken parameter, and specify the NextToken value.
    #
    # @return [Types::SearchResourcesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchResourcesOutput#resource_identifiers #resource_identifiers} => Array&lt;Types::ResourceIdentifier&gt;
    #   * {Types::SearchResourcesOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_resources({
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0
    #       query: "Query", # required
    #     },
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_identifiers #=> Array
    #   resp.resource_identifiers[0].resource_arn #=> String
    #   resp.resource_identifiers[0].resource_type #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/SearchResources AWS API Documentation
    #
    # @overload search_resources(params = {})
    # @param [Hash] params ({})
    def search_resources(params = {}, options = {})
      req = build_request(:search_resources, params)
      req.send_request(options)
    end

    # Adds specified tags to a resource with the specified ARN. Existing
    # tags on a resource are not changed if they are not specified in the
    # request parameters.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource to which to add tags.
    #
    # @option params [required, Hash<String,String>] :tags
    #   The tags to add to the specified resource. A tag is a string-to-string
    #   map of key-value pairs. Tag keys can have a maximum character length
    #   of 128 characters, and tag values can have a maximum length of 256
    #   characters.
    #
    # @return [Types::TagOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TagOutput#arn #arn} => String
    #   * {Types::TagOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag({
    #     arn: "GroupArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Tag AWS API Documentation
    #
    # @overload tag(params = {})
    # @param [Hash] params ({})
    def tag(params = {}, options = {})
      req = build_request(:tag, params)
      req.send_request(options)
    end

    # Deletes specified tags from a specified resource.
    #
    # @option params [required, String] :arn
    #   The ARN of the resource from which to remove tags.
    #
    # @option params [required, Array<String>] :keys
    #   The keys of the tags to be removed.
    #
    # @return [Types::UntagOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UntagOutput#arn #arn} => String
    #   * {Types::UntagOutput#keys #keys} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag({
    #     arn: "GroupArn", # required
    #     keys: ["TagKey"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.keys #=> Array
    #   resp.keys[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/Untag AWS API Documentation
    #
    # @overload untag(params = {})
    # @param [Hash] params ({})
    def untag(params = {}, options = {})
      req = build_request(:untag, params)
      req.send_request(options)
    end

    # Updates an existing group with a new or changed description. You
    # cannot update the name of a resource group.
    #
    # @option params [required, String] :group_name
    #   The name of the resource group for which you want to update its
    #   description.
    #
    # @option params [String] :description
    #   The description of the resource group. Descriptions can have a maximum
    #   of 511 characters, including letters, numbers, hyphens, underscores,
    #   punctuation, and spaces.
    #
    # @return [Types::UpdateGroupOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupOutput#group #group} => Types::Group
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group({
    #     group_name: "GroupName", # required
    #     description: "GroupDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.group.group_arn #=> String
    #   resp.group.name #=> String
    #   resp.group.description #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroup AWS API Documentation
    #
    # @overload update_group(params = {})
    # @param [Hash] params ({})
    def update_group(params = {}, options = {})
      req = build_request(:update_group, params)
      req.send_request(options)
    end

    # Updates the resource query of a group.
    #
    # @option params [required, String] :group_name
    #   The name of the resource group for which you want to edit the query.
    #
    # @option params [required, Types::ResourceQuery] :resource_query
    #   The resource query that determines which AWS resources are members of
    #   the resource group.
    #
    # @return [Types::UpdateGroupQueryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateGroupQueryOutput#group_query #group_query} => Types::GroupQuery
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group_query({
    #     group_name: "GroupName", # required
    #     resource_query: { # required
    #       type: "TAG_FILTERS_1_0", # required, accepts TAG_FILTERS_1_0
    #       query: "Query", # required
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.group_query.group_name #=> String
    #   resp.group_query.resource_query.type #=> String, one of "TAG_FILTERS_1_0"
    #   resp.group_query.resource_query.query #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resource-groups-2017-11-27/UpdateGroupQuery AWS API Documentation
    #
    # @overload update_group_query(params = {})
    # @param [Hash] params ({})
    def update_group_query(params = {}, options = {})
      req = build_request(:update_group_query, params)
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
      context[:gem_name] = 'aws-sdk-resourcegroups'
      context[:gem_version] = '1.4.0'
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
