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

Aws::Plugins::GlobalConfiguration.add_identifier(:mediastoredata)

module Aws::MediaStoreData
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :mediastoredata

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

    # Deletes an object at the specified path.
    #
    # @option params [required, String] :path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_object({
    #     path: "PathNaming", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DeleteObject AWS API Documentation
    #
    # @overload delete_object(params = {})
    # @param [Hash] params ({})
    def delete_object(params = {}, options = {})
      req = build_request(:delete_object, params)
      req.send_request(options)
    end

    # Gets the headers for an object at the specified path.
    #
    # @option params [required, String] :path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    # @return [Types::DescribeObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeObjectResponse#etag #etag} => String
    #   * {Types::DescribeObjectResponse#content_type #content_type} => String
    #   * {Types::DescribeObjectResponse#content_length #content_length} => Integer
    #   * {Types::DescribeObjectResponse#cache_control #cache_control} => String
    #   * {Types::DescribeObjectResponse#last_modified #last_modified} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_object({
    #     path: "PathNaming", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.etag #=> String
    #   resp.content_type #=> String
    #   resp.content_length #=> Integer
    #   resp.cache_control #=> String
    #   resp.last_modified #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/DescribeObject AWS API Documentation
    #
    # @overload describe_object(params = {})
    # @param [Hash] params ({})
    def describe_object(params = {}, options = {})
      req = build_request(:describe_object, params)
      req.send_request(options)
    end

    # Downloads the object at the specified path.
    #
    # @option params [required, String] :path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    #   For example, to upload the file `mlaw.avi` to the folder path
    #   `premium\canada` in the container `movies`, enter the path
    #   `premium/canada/mlaw.avi`.
    #
    #   Do not include the container name in this path.
    #
    #   If the path includes any folders that don't exist yet, the service
    #   creates them. For example, suppose you have an existing `premium/usa`
    #   subfolder. If you specify `premium/canada`, the service creates a
    #   `canada` subfolder in the `premium` folder. You then have two
    #   subfolders, `usa` and `canada`, in the `premium` folder.
    #
    #   There is no correlation between the path to the source and the path
    #   (folders) in the container in AWS Elemental MediaStore.
    #
    #   For more information about folders and how they exist in a container,
    #   see the [AWS Elemental MediaStore User Guide][1].
    #
    #   The file name is the name that is assigned to the file that you
    #   upload. The file can have the same name inside and outside of AWS
    #   Elemental MediaStore, or it can have the same name. The file name can
    #   include or omit an extension.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mediastore/latest/ug/
    #
    # @option params [String] :range
    #   The range bytes of an object to retrieve. For more information about
    #   the `Range` header, go to
    #   [http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35][1].
    #
    #
    #
    #   [1]: http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35
    #
    # @return [Types::GetObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetObjectResponse#body #body} => IO
    #   * {Types::GetObjectResponse#cache_control #cache_control} => String
    #   * {Types::GetObjectResponse#content_range #content_range} => String
    #   * {Types::GetObjectResponse#content_length #content_length} => Integer
    #   * {Types::GetObjectResponse#content_type #content_type} => String
    #   * {Types::GetObjectResponse#etag #etag} => String
    #   * {Types::GetObjectResponse#last_modified #last_modified} => Time
    #   * {Types::GetObjectResponse#status_code #status_code} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_object({
    #     path: "PathNaming", # required
    #     range: "RangePattern",
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> IO
    #   resp.cache_control #=> String
    #   resp.content_range #=> String
    #   resp.content_length #=> Integer
    #   resp.content_type #=> String
    #   resp.etag #=> String
    #   resp.last_modified #=> Time
    #   resp.status_code #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/GetObject AWS API Documentation
    #
    # @overload get_object(params = {})
    # @param [Hash] params ({})
    def get_object(params = {}, options = {}, &block)
      req = build_request(:get_object, params)
      req.send_request(options, &block)
    end

    # Provides a list of metadata entries about folders and objects in the
    # specified folder.
    #
    # @option params [String] :path
    #   The path in the container from which to retrieve items. Format:
    #   &lt;folder name&gt;/&lt;folder name&gt;/&lt;file name&gt;
    #
    # @option params [Integer] :max_results
    #   The maximum results to return. The service might return fewer results.
    #
    # @option params [String] :next_token
    #   The `NextToken` received in the `ListItemsResponse` for the same
    #   container and path. Tokens expire after 15 minutes.
    #
    # @return [Types::ListItemsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListItemsResponse#items #items} => Array&lt;Types::Item&gt;
    #   * {Types::ListItemsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_items({
    #     path: "ListPathNaming",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.items #=> Array
    #   resp.items[0].name #=> String
    #   resp.items[0].type #=> String, one of "OBJECT", "FOLDER"
    #   resp.items[0].etag #=> String
    #   resp.items[0].last_modified #=> Time
    #   resp.items[0].content_type #=> String
    #   resp.items[0].content_length #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/ListItems AWS API Documentation
    #
    # @overload list_items(params = {})
    # @param [Hash] params ({})
    def list_items(params = {}, options = {})
      req = build_request(:list_items, params)
      req.send_request(options)
    end

    # Uploads an object to the specified path. Object sizes are limited to
    # 10 MB.
    #
    # @option params [required, String, IO] :body
    #   The bytes to be stored.
    #
    # @option params [required, String] :path
    #   The path (including the file name) where the object is stored in the
    #   container. Format: &lt;folder name&gt;/&lt;folder name&gt;/&lt;file
    #   name&gt;
    #
    #   For example, to upload the file `mlaw.avi` to the folder path
    #   `premium\canada` in the container `movies`, enter the path
    #   `premium/canada/mlaw.avi`.
    #
    #   Do not include the container name in this path.
    #
    #   If the path includes any folders that don't exist yet, the service
    #   creates them. For example, suppose you have an existing `premium/usa`
    #   subfolder. If you specify `premium/canada`, the service creates a
    #   `canada` subfolder in the `premium` folder. You then have two
    #   subfolders, `usa` and `canada`, in the `premium` folder.
    #
    #   There is no correlation between the path to the source and the path
    #   (folders) in the container in AWS Elemental MediaStore.
    #
    #   For more information about folders and how they exist in a container,
    #   see the [AWS Elemental MediaStore User Guide][1].
    #
    #   The file name is the name that is assigned to the file that you
    #   upload. The file can have the same name inside and outside of AWS
    #   Elemental MediaStore, or it can have the same name. The file name can
    #   include or omit an extension.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/mediastore/latest/ug/
    #
    # @option params [String] :content_type
    #   The content type of the object.
    #
    # @option params [String] :cache_control
    #   An optional `CacheControl` header that allows the caller to control
    #   the object's cache behavior. Headers can be passed in as specified in
    #   the HTTP at
    #   [https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9][1].
    #
    #   Headers with a custom user-defined value are also accepted.
    #
    #
    #
    #   [1]: https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.9
    #
    # @option params [String] :storage_class
    #   Indicates the storage class of a `Put` request. Defaults to
    #   high-performance temporal storage class, and objects are persisted
    #   into durable storage shortly after being received.
    #
    # @return [Types::PutObjectResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutObjectResponse#content_sha256 #content_sha256} => String
    #   * {Types::PutObjectResponse#etag #etag} => String
    #   * {Types::PutObjectResponse#storage_class #storage_class} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_object({
    #     body: "data", # required
    #     path: "PathNaming", # required
    #     content_type: "ContentType",
    #     cache_control: "StringPrimitive",
    #     storage_class: "TEMPORAL", # accepts TEMPORAL
    #   })
    #
    # @example Response structure
    #
    #   resp.content_sha256 #=> String
    #   resp.etag #=> String
    #   resp.storage_class #=> String, one of "TEMPORAL"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediastore-data-2017-09-01/PutObject AWS API Documentation
    #
    # @overload put_object(params = {})
    # @param [Hash] params ({})
    def put_object(params = {}, options = {})
      req = build_request(:put_object, params)
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
      context[:gem_name] = 'aws-sdk-mediastoredata'
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
