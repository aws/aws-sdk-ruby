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

Aws::Plugins::GlobalConfiguration.add_identifier(:macie)

module Aws::Macie
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :macie

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

    # Associates a specified AWS account with Amazon Macie as a member
    # account.
    #
    # @option params [required, String] :member_account_id
    #   The ID of the AWS account that you want to associate with Amazon Macie
    #   as a member account.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_account({
    #     member_account_id: "AWSAccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateMemberAccount AWS API Documentation
    #
    # @overload associate_member_account(params = {})
    # @param [Hash] params ({})
    def associate_member_account(params = {}, options = {})
      req = build_request(:associate_member_account, params)
      req.send_request(options)
    end

    # Associates specified S3 resources with Amazon Macie for monitoring and
    # data classification. If memberAccountId isn't specified, the action
    # associates specified S3 resources with Macie for the current master
    # account. If memberAccountId is specified, the action associates
    # specified S3 resources with Macie for the specified member account.
    #
    # @option params [String] :member_account_id
    #   The ID of the Amazon Macie member account whose resources you want to
    #   associate with Macie.
    #
    # @option params [required, Array<Types::S3ResourceClassification>] :s3_resources
    #   The S3 resources that you want to associate with Amazon Macie for
    #   monitoring and data classification.
    #
    # @return [Types::AssociateS3ResourcesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateS3ResourcesResult#failed_s3_resources #failed_s3_resources} => Array&lt;Types::FailedS3Resource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_s3_resources({
    #     member_account_id: "AWSAccountId",
    #     s3_resources: [ # required
    #       {
    #         bucket_name: "BucketName", # required
    #         prefix: "Prefix",
    #         classification_type: { # required
    #           one_time: "FULL", # required, accepts FULL, NONE
    #           continuous: "FULL", # required, accepts FULL
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_s3_resources #=> Array
    #   resp.failed_s3_resources[0].failed_item.bucket_name #=> String
    #   resp.failed_s3_resources[0].failed_item.prefix #=> String
    #   resp.failed_s3_resources[0].error_code #=> String
    #   resp.failed_s3_resources[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/AssociateS3Resources AWS API Documentation
    #
    # @overload associate_s3_resources(params = {})
    # @param [Hash] params ({})
    def associate_s3_resources(params = {}, options = {})
      req = build_request(:associate_s3_resources, params)
      req.send_request(options)
    end

    # Removes the specified member account from Amazon Macie.
    #
    # @option params [required, String] :member_account_id
    #   The ID of the member account that you want to remove from Amazon
    #   Macie.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_account({
    #     member_account_id: "AWSAccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateMemberAccount AWS API Documentation
    #
    # @overload disassociate_member_account(params = {})
    # @param [Hash] params ({})
    def disassociate_member_account(params = {}, options = {})
      req = build_request(:disassociate_member_account, params)
      req.send_request(options)
    end

    # Removes specified S3 resources from being monitored by Amazon Macie.
    # If memberAccountId isn't specified, the action removes specified S3
    # resources from Macie for the current master account. If
    # memberAccountId is specified, the action removes specified S3
    # resources from Macie for the specified member account.
    #
    # @option params [String] :member_account_id
    #   The ID of the Amazon Macie member account whose resources you want to
    #   remove from being monitored by Amazon Macie.
    #
    # @option params [required, Array<Types::S3Resource>] :associated_s3_resources
    #   The S3 resources (buckets or prefixes) that you want to remove from
    #   being monitored and classified by Amazon Macie.
    #
    # @return [Types::DisassociateS3ResourcesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DisassociateS3ResourcesResult#failed_s3_resources #failed_s3_resources} => Array&lt;Types::FailedS3Resource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_s3_resources({
    #     member_account_id: "AWSAccountId",
    #     associated_s3_resources: [ # required
    #       {
    #         bucket_name: "BucketName", # required
    #         prefix: "Prefix",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_s3_resources #=> Array
    #   resp.failed_s3_resources[0].failed_item.bucket_name #=> String
    #   resp.failed_s3_resources[0].failed_item.prefix #=> String
    #   resp.failed_s3_resources[0].error_code #=> String
    #   resp.failed_s3_resources[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/DisassociateS3Resources AWS API Documentation
    #
    # @overload disassociate_s3_resources(params = {})
    # @param [Hash] params ({})
    def disassociate_s3_resources(params = {}, options = {})
      req = build_request(:disassociate_s3_resources, params)
      req.send_request(options)
    end

    # Lists all Amazon Macie member accounts for the current Amazon Macie
    # master account.
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results. Set the value of this
    #   parameter to null on your first call to the ListMemberAccounts action.
    #   Subsequent calls to the action fill nextToken in the request with the
    #   value of nextToken from the previous response to continue listing
    #   data.
    #
    # @option params [Integer] :max_results
    #   Use this parameter to indicate the maximum number of items that you
    #   want in the response. The default value is 250.
    #
    # @return [Types::ListMemberAccountsResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMemberAccountsResult#member_accounts #member_accounts} => Array&lt;Types::MemberAccount&gt;
    #   * {Types::ListMemberAccountsResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_member_accounts({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.member_accounts #=> Array
    #   resp.member_accounts[0].account_id #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListMemberAccounts AWS API Documentation
    #
    # @overload list_member_accounts(params = {})
    # @param [Hash] params ({})
    def list_member_accounts(params = {}, options = {})
      req = build_request(:list_member_accounts, params)
      req.send_request(options)
    end

    # Lists all the S3 resources associated with Amazon Macie. If
    # memberAccountId isn't specified, the action lists the S3 resources
    # associated with Amazon Macie for the current master account. If
    # memberAccountId is specified, the action lists the S3 resources
    # associated with Amazon Macie for the specified member account.
    #
    # @option params [String] :member_account_id
    #   The Amazon Macie member account ID whose associated S3 resources you
    #   want to list.
    #
    # @option params [String] :next_token
    #   Use this parameter when paginating results. Set its value to null on
    #   your first call to the ListS3Resources action. Subsequent calls to the
    #   action fill nextToken in the request with the value of nextToken from
    #   the previous response to continue listing data.
    #
    # @option params [Integer] :max_results
    #   Use this parameter to indicate the maximum number of items that you
    #   want in the response. The default value is 250.
    #
    # @return [Types::ListS3ResourcesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListS3ResourcesResult#s3_resources #s3_resources} => Array&lt;Types::S3ResourceClassification&gt;
    #   * {Types::ListS3ResourcesResult#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_s3_resources({
    #     member_account_id: "AWSAccountId",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.s3_resources #=> Array
    #   resp.s3_resources[0].bucket_name #=> String
    #   resp.s3_resources[0].prefix #=> String
    #   resp.s3_resources[0].classification_type.one_time #=> String, one of "FULL", "NONE"
    #   resp.s3_resources[0].classification_type.continuous #=> String, one of "FULL"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/ListS3Resources AWS API Documentation
    #
    # @overload list_s3_resources(params = {})
    # @param [Hash] params ({})
    def list_s3_resources(params = {}, options = {})
      req = build_request(:list_s3_resources, params)
      req.send_request(options)
    end

    # Updates the classification types for the specified S3 resources. If
    # memberAccountId isn't specified, the action updates the
    # classification types of the S3 resources associated with Amazon Macie
    # for the current master account. If memberAccountId is specified, the
    # action updates the classification types of the S3 resources associated
    # with Amazon Macie for the specified member account.
    #
    # @option params [String] :member_account_id
    #   The AWS ID of the Amazon Macie member account whose S3 resources'
    #   classification types you want to update.
    #
    # @option params [required, Array<Types::S3ResourceClassificationUpdate>] :s3_resources_update
    #   The S3 resources whose classification types you want to update.
    #
    # @return [Types::UpdateS3ResourcesResult] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateS3ResourcesResult#failed_s3_resources #failed_s3_resources} => Array&lt;Types::FailedS3Resource&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_s3_resources({
    #     member_account_id: "AWSAccountId",
    #     s3_resources_update: [ # required
    #       {
    #         bucket_name: "BucketName", # required
    #         prefix: "Prefix",
    #         classification_type_update: { # required
    #           one_time: "FULL", # accepts FULL, NONE
    #           continuous: "FULL", # accepts FULL
    #         },
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.failed_s3_resources #=> Array
    #   resp.failed_s3_resources[0].failed_item.bucket_name #=> String
    #   resp.failed_s3_resources[0].failed_item.prefix #=> String
    #   resp.failed_s3_resources[0].error_code #=> String
    #   resp.failed_s3_resources[0].error_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/macie-2017-12-19/UpdateS3Resources AWS API Documentation
    #
    # @overload update_s3_resources(params = {})
    # @param [Hash] params ({})
    def update_s3_resources(params = {}, options = {})
      req = build_request(:update_s3_resources, params)
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
      context[:gem_name] = 'aws-sdk-macie'
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
