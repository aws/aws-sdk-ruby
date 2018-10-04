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

Aws::Plugins::GlobalConfiguration.add_identifier(:servicecatalog)

module Aws::ServiceCatalog
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :servicecatalog

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

    # Accepts an offer to share the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AcceptPortfolioShare AWS API Documentation
    #
    # @overload accept_portfolio_share(params = {})
    # @param [Hash] params ({})
    def accept_portfolio_share(params = {}, options = {})
      req = build_request(:accept_portfolio_share, params)
      req.send_request(options)
    end

    # Associates the specified principal ARN with the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the principal (IAM user, role, or group).
    #
    # @option params [required, String] :principal_type
    #   The principal type. The supported value is `IAM`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_principal_with_portfolio({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     principal_arn: "PrincipalARN", # required
    #     principal_type: "IAM", # required, accepts IAM
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociatePrincipalWithPortfolio AWS API Documentation
    #
    # @overload associate_principal_with_portfolio(params = {})
    # @param [Hash] params ({})
    def associate_principal_with_portfolio(params = {}, options = {})
      req = build_request(:associate_principal_with_portfolio, params)
      req.send_request(options)
    end

    # Associates the specified product with the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :source_portfolio_id
    #   The identifier of the source portfolio.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_product_with_portfolio({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     portfolio_id: "Id", # required
    #     source_portfolio_id: "Id",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateProductWithPortfolio AWS API Documentation
    #
    # @overload associate_product_with_portfolio(params = {})
    # @param [Hash] params ({})
    def associate_product_with_portfolio(params = {}, options = {})
      req = build_request(:associate_product_with_portfolio, params)
      req.send_request(options)
    end

    # Associate the specified TagOption with the specified portfolio or
    # product.
    #
    # @option params [required, String] :resource_id
    #   The resource identifier.
    #
    # @option params [required, String] :tag_option_id
    #   The TagOption identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_tag_option_with_resource({
    #     resource_id: "ResourceId", # required
    #     tag_option_id: "TagOptionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/AssociateTagOptionWithResource AWS API Documentation
    #
    # @overload associate_tag_option_with_resource(params = {})
    # @param [Hash] params ({})
    def associate_tag_option_with_resource(params = {}, options = {})
      req = build_request(:associate_tag_option_with_resource, params)
      req.send_request(options)
    end

    # Copies the specified source product to the specified target product or
    # a new product.
    #
    # You can copy a product to the same account or another account. You can
    # copy a product to the same region or another region.
    #
    # This operation is performed asynchronously. To track the progress of
    # the operation, use DescribeCopyProductStatus.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :source_product_arn
    #   The Amazon Resource Name (ARN) of the source product.
    #
    # @option params [String] :target_product_id
    #   The identifier of the target product. By default, a new product is
    #   created.
    #
    # @option params [String] :target_product_name
    #   A name for the target product. The default is the name of the source
    #   product.
    #
    # @option params [Array<Hash>] :source_provisioning_artifact_identifiers
    #   The identifiers of the provisioning artifacts (also known as versions)
    #   of the product to copy. By default, all provisioning artifacts are
    #   copied.
    #
    # @option params [Array<String>] :copy_options
    #   The copy options. If the value is `CopyTags`, the tags from the source
    #   product are copied to the target product.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CopyProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CopyProductOutput#copy_product_token #copy_product_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.copy_product({
    #     accept_language: "AcceptLanguage",
    #     source_product_arn: "ProductArn", # required
    #     target_product_id: "Id",
    #     target_product_name: "ProductViewName",
    #     source_provisioning_artifact_identifiers: [
    #       {
    #         "Id" => "ProvisioningArtifactPropertyValue",
    #       },
    #     ],
    #     copy_options: ["CopyTags"], # accepts CopyTags
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_product_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CopyProduct AWS API Documentation
    #
    # @overload copy_product(params = {})
    # @param [Hash] params ({})
    def copy_product(params = {}, options = {})
      req = build_request(:copy_product, params)
      req.send_request(options)
    end

    # Creates a constraint.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :parameters
    #   The constraint parameters, in JSON format. The syntax depends on the
    #   constraint type as follows:
    #
    #   LAUNCH
    #
    #   : Specify the `RoleArn` property as follows:
    #
    #     \\"RoleArn\\" : \\"arn:aws:iam::123456789012:role/LaunchRole\\"
    #
    #   NOTIFICATION
    #
    #   : Specify the `NotificationArns` property as follows:
    #
    #     \\"NotificationArns\\" :
    #     \[\\"arn:aws:sns:us-east-1:123456789012:Topic\\"\]
    #
    #   TEMPLATE
    #
    #   : Specify the `Rules` property. For more information, see [Template
    #     Constraint Rules][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/servicecatalog/latest/adminguide/reference-template_constraint_rules.html
    #
    # @option params [required, String] :type
    #   The type of constraint.
    #
    #   * `LAUNCH`
    #
    #   * `NOTIFICATION`
    #
    #   * `TEMPLATE`
    #
    # @option params [String] :description
    #   The description of the constraint.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateConstraintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateConstraintOutput#constraint_detail #constraint_detail} => Types::ConstraintDetail
    #   * {Types::CreateConstraintOutput#constraint_parameters #constraint_parameters} => String
    #   * {Types::CreateConstraintOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_constraint({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     product_id: "Id", # required
    #     parameters: "ConstraintParameters", # required
    #     type: "ConstraintType", # required
    #     description: "ConstraintDescription",
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.constraint_detail.constraint_id #=> String
    #   resp.constraint_detail.type #=> String
    #   resp.constraint_detail.description #=> String
    #   resp.constraint_detail.owner #=> String
    #   resp.constraint_parameters #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateConstraint AWS API Documentation
    #
    # @overload create_constraint(params = {})
    # @param [Hash] params ({})
    def create_constraint(params = {}, options = {})
      req = build_request(:create_constraint, params)
      req.send_request(options)
    end

    # Creates a portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :display_name
    #   The name to use for display purposes.
    #
    # @option params [String] :description
    #   The description of the portfolio.
    #
    # @option params [required, String] :provider_name
    #   The name of the portfolio provider.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreatePortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePortfolioOutput#portfolio_detail #portfolio_detail} => Types::PortfolioDetail
    #   * {Types::CreatePortfolioOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portfolio({
    #     accept_language: "AcceptLanguage",
    #     display_name: "PortfolioDisplayName", # required
    #     description: "PortfolioDescription",
    #     provider_name: "ProviderName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_detail.id #=> String
    #   resp.portfolio_detail.arn #=> String
    #   resp.portfolio_detail.display_name #=> String
    #   resp.portfolio_detail.description #=> String
    #   resp.portfolio_detail.created_time #=> Time
    #   resp.portfolio_detail.provider_name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolio AWS API Documentation
    #
    # @overload create_portfolio(params = {})
    # @param [Hash] params ({})
    def create_portfolio(params = {}, options = {})
      req = build_request(:create_portfolio, params)
      req.send_request(options)
    end

    # Shares the specified portfolio with the specified account.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :account_id
    #   The AWS account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreatePortfolioShare AWS API Documentation
    #
    # @overload create_portfolio_share(params = {})
    # @param [Hash] params ({})
    def create_portfolio_share(params = {}, options = {})
      req = build_request(:create_portfolio_share, params)
      req.send_request(options)
    end

    # Creates a product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :name
    #   The name of the product.
    #
    # @option params [required, String] :owner
    #   The owner of the product.
    #
    # @option params [String] :description
    #   The description of the product.
    #
    # @option params [String] :distributor
    #   The distributor of the product.
    #
    # @option params [String] :support_description
    #   The support information about the product.
    #
    # @option params [String] :support_email
    #   The contact email for product support.
    #
    # @option params [String] :support_url
    #   The contact URL for product support.
    #
    # @option params [required, String] :product_type
    #   The type of product.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @option params [required, Types::ProvisioningArtifactProperties] :provisioning_artifact_parameters
    #   The configuration of the provisioning artifact.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProductOutput#product_view_detail #product_view_detail} => Types::ProductViewDetail
    #   * {Types::CreateProductOutput#provisioning_artifact_detail #provisioning_artifact_detail} => Types::ProvisioningArtifactDetail
    #   * {Types::CreateProductOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_product({
    #     accept_language: "AcceptLanguage",
    #     name: "ProductViewName", # required
    #     owner: "ProductViewOwner", # required
    #     description: "ProductViewShortDescription",
    #     distributor: "ProductViewOwner",
    #     support_description: "SupportDescription",
    #     support_email: "SupportEmail",
    #     support_url: "SupportUrl",
    #     product_type: "CLOUD_FORMATION_TEMPLATE", # required, accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     provisioning_artifact_parameters: { # required
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactDescription",
    #       info: { # required
    #         "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue",
    #       },
    #       type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_detail.product_view_summary.id #=> String
    #   resp.product_view_detail.product_view_summary.product_id #=> String
    #   resp.product_view_detail.product_view_summary.name #=> String
    #   resp.product_view_detail.product_view_summary.owner #=> String
    #   resp.product_view_detail.product_view_summary.short_description #=> String
    #   resp.product_view_detail.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"
    #   resp.product_view_detail.product_view_summary.distributor #=> String
    #   resp.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_detail.product_view_summary.support_email #=> String
    #   resp.product_view_detail.product_view_summary.support_description #=> String
    #   resp.product_view_detail.product_view_summary.support_url #=> String
    #   resp.product_view_detail.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.product_view_detail.product_arn #=> String
    #   resp.product_view_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"
    #   resp.provisioning_artifact_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.active #=> Boolean
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProduct AWS API Documentation
    #
    # @overload create_product(params = {})
    # @param [Hash] params ({})
    def create_product(params = {}, options = {})
      req = build_request(:create_product, params)
      req.send_request(options)
    end

    # Creates a plan. A plan includes the list of resources to be created
    # (when provisioning a new product) or modified (when updating a
    # provisioned product) when the plan is executed.
    #
    # You can create one plan per provisioned product. To create a plan for
    # an existing provisioned product, the product status must be AVAILBLE
    # or TAINTED.
    #
    # To view the resource changes in the change set, use
    # DescribeProvisionedProductPlan. To create or modify the provisioned
    # product, use ExecuteProvisionedProductPlan.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :plan_name
    #   The name of the plan.
    #
    # @option params [required, String] :plan_type
    #   The plan type.
    #
    # @option params [Array<String>] :notification_arns
    #   Passed to CloudFormation. The SNS topic ARNs to which to publish
    #   stack-related events.
    #
    # @option params [String] :path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more than
    #   one path. To list the paths for a product, use ListLaunchPaths.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioned_product_name
    #   A user-friendly name for the provisioned product. This value must be
    #   unique for the AWS account and cannot be updated after the product is
    #   provisioned.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [Array<Types::UpdateProvisioningParameter>] :provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @return [Types::CreateProvisionedProductPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisionedProductPlanOutput#plan_name #plan_name} => String
    #   * {Types::CreateProvisionedProductPlanOutput#plan_id #plan_id} => String
    #   * {Types::CreateProvisionedProductPlanOutput#provision_product_id #provision_product_id} => String
    #   * {Types::CreateProvisionedProductPlanOutput#provisioned_product_name #provisioned_product_name} => String
    #   * {Types::CreateProvisionedProductPlanOutput#provisioning_artifact_id #provisioning_artifact_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioned_product_plan({
    #     accept_language: "AcceptLanguage",
    #     plan_name: "ProvisionedProductPlanName", # required
    #     plan_type: "CLOUDFORMATION", # required, accepts CLOUDFORMATION
    #     notification_arns: ["NotificationArn"],
    #     path_id: "Id",
    #     product_id: "Id", # required
    #     provisioned_product_name: "ProvisionedProductName", # required
    #     provisioning_artifact_id: "Id", # required
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #         use_previous_value: false,
    #       },
    #     ],
    #     idempotency_token: "IdempotencyToken", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.plan_name #=> String
    #   resp.plan_id #=> String
    #   resp.provision_product_id #=> String
    #   resp.provisioned_product_name #=> String
    #   resp.provisioning_artifact_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisionedProductPlan AWS API Documentation
    #
    # @overload create_provisioned_product_plan(params = {})
    # @param [Hash] params ({})
    def create_provisioned_product_plan(params = {}, options = {})
      req = build_request(:create_provisioned_product_plan, params)
      req.send_request(options)
    end

    # Creates a provisioning artifact (also known as a version) for the
    # specified product.
    #
    # You cannot create a provisioning artifact for a product that was
    # shared with you.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, Types::ProvisioningArtifactProperties] :parameters
    #   The configuration for the provisioning artifact.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::CreateProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateProvisioningArtifactOutput#provisioning_artifact_detail #provisioning_artifact_detail} => Types::ProvisioningArtifactDetail
    #   * {Types::CreateProvisioningArtifactOutput#info #info} => Hash&lt;String,String&gt;
    #   * {Types::CreateProvisioningArtifactOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_provisioning_artifact({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     parameters: { # required
    #       name: "ProvisioningArtifactName",
    #       description: "ProvisioningArtifactDescription",
    #       info: { # required
    #         "ProvisioningArtifactInfoKey" => "ProvisioningArtifactInfoValue",
    #       },
    #       type: "CLOUD_FORMATION_TEMPLATE", # accepts CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR
    #     },
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"
    #   resp.provisioning_artifact_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.active #=> Boolean
    #   resp.info #=> Hash
    #   resp.info["ProvisioningArtifactInfoKey"] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateProvisioningArtifact AWS API Documentation
    #
    # @overload create_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def create_provisioning_artifact(params = {}, options = {})
      req = build_request(:create_provisioning_artifact, params)
      req.send_request(options)
    end

    # Creates a TagOption.
    #
    # @option params [required, String] :key
    #   The TagOption key.
    #
    # @option params [required, String] :value
    #   The TagOption value.
    #
    # @return [Types::CreateTagOptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateTagOptionOutput#tag_option_detail #tag_option_detail} => Types::TagOptionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tag_option({
    #     key: "TagOptionKey", # required
    #     value: "TagOptionValue", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_option_detail.key #=> String
    #   resp.tag_option_detail.value #=> String
    #   resp.tag_option_detail.active #=> Boolean
    #   resp.tag_option_detail.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/CreateTagOption AWS API Documentation
    #
    # @overload create_tag_option(params = {})
    # @param [Hash] params ({})
    def create_tag_option(params = {}, options = {})
      req = build_request(:create_tag_option, params)
      req.send_request(options)
    end

    # Deletes the specified constraint.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The identifier of the constraint.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_constraint({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteConstraint AWS API Documentation
    #
    # @overload delete_constraint(params = {})
    # @param [Hash] params ({})
    def delete_constraint(params = {}, options = {})
      req = build_request(:delete_constraint, params)
      req.send_request(options)
    end

    # Deletes the specified portfolio.
    #
    # You cannot delete a portfolio if it was shared with you or if it has
    # associated products, users, constraints, or shared accounts.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The portfolio identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portfolio({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolio AWS API Documentation
    #
    # @overload delete_portfolio(params = {})
    # @param [Hash] params ({})
    def delete_portfolio(params = {}, options = {})
      req = build_request(:delete_portfolio, params)
      req.send_request(options)
    end

    # Stops sharing the specified portfolio with the specified account.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :account_id
    #   The AWS account ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     account_id: "AccountId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeletePortfolioShare AWS API Documentation
    #
    # @overload delete_portfolio_share(params = {})
    # @param [Hash] params ({})
    def delete_portfolio_share(params = {}, options = {})
      req = build_request(:delete_portfolio_share, params)
      req.send_request(options)
    end

    # Deletes the specified product.
    #
    # You cannot delete a product if it was shared with you or is associated
    # with a portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The product identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_product({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProduct AWS API Documentation
    #
    # @overload delete_product(params = {})
    # @param [Hash] params ({})
    def delete_product(params = {}, options = {})
      req = build_request(:delete_product, params)
      req.send_request(options)
    end

    # Deletes the specified plan.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :plan_id
    #   The plan identifier.
    #
    # @option params [Boolean] :ignore_errors
    #   If set to true, AWS Service Catalog stops managing the specified
    #   provisioned product even if it cannot delete the underlying resources.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioned_product_plan({
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     ignore_errors: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisionedProductPlan AWS API Documentation
    #
    # @overload delete_provisioned_product_plan(params = {})
    # @param [Hash] params ({})
    def delete_provisioned_product_plan(params = {}, options = {})
      req = build_request(:delete_provisioned_product_plan, params)
      req.send_request(options)
    end

    # Deletes the specified provisioning artifact (also known as a version)
    # for the specified product.
    #
    # You cannot delete a provisioning artifact associated with a product
    # that was shared with you. You cannot delete the last provisioning
    # artifact for a product, because a product must have at least one
    # provisioning artifact.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioning_artifact({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteProvisioningArtifact AWS API Documentation
    #
    # @overload delete_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def delete_provisioning_artifact(params = {}, options = {})
      req = build_request(:delete_provisioning_artifact, params)
      req.send_request(options)
    end

    # Deletes the specified TagOption.
    #
    # You cannot delete a TagOption if it is associated with a product or
    # portfolio.
    #
    # @option params [required, String] :id
    #   The TagOption identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tag_option({
    #     id: "TagOptionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DeleteTagOption AWS API Documentation
    #
    # @overload delete_tag_option(params = {})
    # @param [Hash] params ({})
    def delete_tag_option(params = {}, options = {})
      req = build_request(:delete_tag_option, params)
      req.send_request(options)
    end

    # Gets information about the specified constraint.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The identifier of the constraint.
    #
    # @return [Types::DescribeConstraintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeConstraintOutput#constraint_detail #constraint_detail} => Types::ConstraintDetail
    #   * {Types::DescribeConstraintOutput#constraint_parameters #constraint_parameters} => String
    #   * {Types::DescribeConstraintOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_constraint({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.constraint_detail.constraint_id #=> String
    #   resp.constraint_detail.type #=> String
    #   resp.constraint_detail.description #=> String
    #   resp.constraint_detail.owner #=> String
    #   resp.constraint_parameters #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeConstraint AWS API Documentation
    #
    # @overload describe_constraint(params = {})
    # @param [Hash] params ({})
    def describe_constraint(params = {}, options = {})
      req = build_request(:describe_constraint, params)
      req.send_request(options)
    end

    # Gets the status of the specified copy product operation.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :copy_product_token
    #   The token for the copy product operation. This token is returned by
    #   CopyProduct.
    #
    # @return [Types::DescribeCopyProductStatusOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCopyProductStatusOutput#copy_product_status #copy_product_status} => String
    #   * {Types::DescribeCopyProductStatusOutput#target_product_id #target_product_id} => String
    #   * {Types::DescribeCopyProductStatusOutput#status_detail #status_detail} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_copy_product_status({
    #     accept_language: "AcceptLanguage",
    #     copy_product_token: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.copy_product_status #=> String, one of "SUCCEEDED", "IN_PROGRESS", "FAILED"
    #   resp.target_product_id #=> String
    #   resp.status_detail #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeCopyProductStatus AWS API Documentation
    #
    # @overload describe_copy_product_status(params = {})
    # @param [Hash] params ({})
    def describe_copy_product_status(params = {}, options = {})
      req = build_request(:describe_copy_product_status, params)
      req.send_request(options)
    end

    # Gets information about the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The portfolio identifier.
    #
    # @return [Types::DescribePortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePortfolioOutput#portfolio_detail #portfolio_detail} => Types::PortfolioDetail
    #   * {Types::DescribePortfolioOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribePortfolioOutput#tag_options #tag_options} => Array&lt;Types::TagOptionDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_portfolio({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_detail.id #=> String
    #   resp.portfolio_detail.arn #=> String
    #   resp.portfolio_detail.display_name #=> String
    #   resp.portfolio_detail.description #=> String
    #   resp.portfolio_detail.created_time #=> Time
    #   resp.portfolio_detail.provider_name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.tag_options #=> Array
    #   resp.tag_options[0].key #=> String
    #   resp.tag_options[0].value #=> String
    #   resp.tag_options[0].active #=> Boolean
    #   resp.tag_options[0].id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolio AWS API Documentation
    #
    # @overload describe_portfolio(params = {})
    # @param [Hash] params ({})
    def describe_portfolio(params = {}, options = {})
      req = build_request(:describe_portfolio, params)
      req.send_request(options)
    end

    # Gets information about the specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The product identifier.
    #
    # @return [Types::DescribeProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductOutput#product_view_summary #product_view_summary} => Types::ProductViewSummary
    #   * {Types::DescribeProductOutput#provisioning_artifacts #provisioning_artifacts} => Array&lt;Types::ProvisioningArtifact&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_summary.id #=> String
    #   resp.product_view_summary.product_id #=> String
    #   resp.product_view_summary.name #=> String
    #   resp.product_view_summary.owner #=> String
    #   resp.product_view_summary.short_description #=> String
    #   resp.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"
    #   resp.product_view_summary.distributor #=> String
    #   resp.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_summary.support_email #=> String
    #   resp.product_view_summary.support_description #=> String
    #   resp.product_view_summary.support_url #=> String
    #   resp.provisioning_artifacts #=> Array
    #   resp.provisioning_artifacts[0].id #=> String
    #   resp.provisioning_artifacts[0].name #=> String
    #   resp.provisioning_artifacts[0].description #=> String
    #   resp.provisioning_artifacts[0].created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProduct AWS API Documentation
    #
    # @overload describe_product(params = {})
    # @param [Hash] params ({})
    def describe_product(params = {}, options = {})
      req = build_request(:describe_product, params)
      req.send_request(options)
    end

    # Gets information about the specified product. This operation is run
    # with administrator access.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The product identifier.
    #
    # @return [Types::DescribeProductAsAdminOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductAsAdminOutput#product_view_detail #product_view_detail} => Types::ProductViewDetail
    #   * {Types::DescribeProductAsAdminOutput#provisioning_artifact_summaries #provisioning_artifact_summaries} => Array&lt;Types::ProvisioningArtifactSummary&gt;
    #   * {Types::DescribeProductAsAdminOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeProductAsAdminOutput#tag_options #tag_options} => Array&lt;Types::TagOptionDetail&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product_as_admin({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_detail.product_view_summary.id #=> String
    #   resp.product_view_detail.product_view_summary.product_id #=> String
    #   resp.product_view_detail.product_view_summary.name #=> String
    #   resp.product_view_detail.product_view_summary.owner #=> String
    #   resp.product_view_detail.product_view_summary.short_description #=> String
    #   resp.product_view_detail.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"
    #   resp.product_view_detail.product_view_summary.distributor #=> String
    #   resp.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_detail.product_view_summary.support_email #=> String
    #   resp.product_view_detail.product_view_summary.support_description #=> String
    #   resp.product_view_detail.product_view_summary.support_url #=> String
    #   resp.product_view_detail.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.product_view_detail.product_arn #=> String
    #   resp.product_view_detail.created_time #=> Time
    #   resp.provisioning_artifact_summaries #=> Array
    #   resp.provisioning_artifact_summaries[0].id #=> String
    #   resp.provisioning_artifact_summaries[0].name #=> String
    #   resp.provisioning_artifact_summaries[0].description #=> String
    #   resp.provisioning_artifact_summaries[0].created_time #=> Time
    #   resp.provisioning_artifact_summaries[0].provisioning_artifact_metadata #=> Hash
    #   resp.provisioning_artifact_summaries[0].provisioning_artifact_metadata["ProvisioningArtifactInfoKey"] #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.tag_options #=> Array
    #   resp.tag_options[0].key #=> String
    #   resp.tag_options[0].value #=> String
    #   resp.tag_options[0].active #=> Boolean
    #   resp.tag_options[0].id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductAsAdmin AWS API Documentation
    #
    # @overload describe_product_as_admin(params = {})
    # @param [Hash] params ({})
    def describe_product_as_admin(params = {}, options = {})
      req = build_request(:describe_product_as_admin, params)
      req.send_request(options)
    end

    # Gets information about the specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The product view identifier.
    #
    # @return [Types::DescribeProductViewOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductViewOutput#product_view_summary #product_view_summary} => Types::ProductViewSummary
    #   * {Types::DescribeProductViewOutput#provisioning_artifacts #provisioning_artifacts} => Array&lt;Types::ProvisioningArtifact&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_product_view({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_summary.id #=> String
    #   resp.product_view_summary.product_id #=> String
    #   resp.product_view_summary.name #=> String
    #   resp.product_view_summary.owner #=> String
    #   resp.product_view_summary.short_description #=> String
    #   resp.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"
    #   resp.product_view_summary.distributor #=> String
    #   resp.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_summary.support_email #=> String
    #   resp.product_view_summary.support_description #=> String
    #   resp.product_view_summary.support_url #=> String
    #   resp.provisioning_artifacts #=> Array
    #   resp.provisioning_artifacts[0].id #=> String
    #   resp.provisioning_artifacts[0].name #=> String
    #   resp.provisioning_artifacts[0].description #=> String
    #   resp.provisioning_artifacts[0].created_time #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductView AWS API Documentation
    #
    # @overload describe_product_view(params = {})
    # @param [Hash] params ({})
    def describe_product_view(params = {}, options = {})
      req = build_request(:describe_product_view, params)
      req.send_request(options)
    end

    # Gets information about the specified provisioned product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The provisioned product identifier.
    #
    # @return [Types::DescribeProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisionedProductOutput#provisioned_product_detail #provisioned_product_detail} => Types::ProvisionedProductDetail
    #   * {Types::DescribeProvisionedProductOutput#cloud_watch_dashboards #cloud_watch_dashboards} => Array&lt;Types::CloudWatchDashboard&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioned_product({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_product_detail.name #=> String
    #   resp.provisioned_product_detail.arn #=> String
    #   resp.provisioned_product_detail.type #=> String
    #   resp.provisioned_product_detail.id #=> String
    #   resp.provisioned_product_detail.status #=> String, one of "AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"
    #   resp.provisioned_product_detail.status_message #=> String
    #   resp.provisioned_product_detail.created_time #=> Time
    #   resp.provisioned_product_detail.idempotency_token #=> String
    #   resp.provisioned_product_detail.last_record_id #=> String
    #   resp.cloud_watch_dashboards #=> Array
    #   resp.cloud_watch_dashboards[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProduct AWS API Documentation
    #
    # @overload describe_provisioned_product(params = {})
    # @param [Hash] params ({})
    def describe_provisioned_product(params = {}, options = {})
      req = build_request(:describe_provisioned_product, params)
      req.send_request(options)
    end

    # Gets information about the resource changes for the specified plan.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :plan_id
    #   The plan identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::DescribeProvisionedProductPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisionedProductPlanOutput#provisioned_product_plan_details #provisioned_product_plan_details} => Types::ProvisionedProductPlanDetails
    #   * {Types::DescribeProvisionedProductPlanOutput#resource_changes #resource_changes} => Array&lt;Types::ResourceChange&gt;
    #   * {Types::DescribeProvisionedProductPlanOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioned_product_plan({
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_product_plan_details.created_time #=> Time
    #   resp.provisioned_product_plan_details.path_id #=> String
    #   resp.provisioned_product_plan_details.product_id #=> String
    #   resp.provisioned_product_plan_details.plan_name #=> String
    #   resp.provisioned_product_plan_details.plan_id #=> String
    #   resp.provisioned_product_plan_details.provision_product_id #=> String
    #   resp.provisioned_product_plan_details.provision_product_name #=> String
    #   resp.provisioned_product_plan_details.plan_type #=> String, one of "CLOUDFORMATION"
    #   resp.provisioned_product_plan_details.provisioning_artifact_id #=> String
    #   resp.provisioned_product_plan_details.status #=> String, one of "CREATE_IN_PROGRESS", "CREATE_SUCCESS", "CREATE_FAILED", "EXECUTE_IN_PROGRESS", "EXECUTE_SUCCESS", "EXECUTE_FAILED"
    #   resp.provisioned_product_plan_details.updated_time #=> Time
    #   resp.provisioned_product_plan_details.notification_arns #=> Array
    #   resp.provisioned_product_plan_details.notification_arns[0] #=> String
    #   resp.provisioned_product_plan_details.provisioning_parameters #=> Array
    #   resp.provisioned_product_plan_details.provisioning_parameters[0].key #=> String
    #   resp.provisioned_product_plan_details.provisioning_parameters[0].value #=> String
    #   resp.provisioned_product_plan_details.provisioning_parameters[0].use_previous_value #=> Boolean
    #   resp.provisioned_product_plan_details.tags #=> Array
    #   resp.provisioned_product_plan_details.tags[0].key #=> String
    #   resp.provisioned_product_plan_details.tags[0].value #=> String
    #   resp.provisioned_product_plan_details.status_message #=> String
    #   resp.resource_changes #=> Array
    #   resp.resource_changes[0].action #=> String, one of "ADD", "MODIFY", "REMOVE"
    #   resp.resource_changes[0].logical_resource_id #=> String
    #   resp.resource_changes[0].physical_resource_id #=> String
    #   resp.resource_changes[0].resource_type #=> String
    #   resp.resource_changes[0].replacement #=> String, one of "TRUE", "FALSE", "CONDITIONAL"
    #   resp.resource_changes[0].scope #=> Array
    #   resp.resource_changes[0].scope[0] #=> String, one of "PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"
    #   resp.resource_changes[0].details #=> Array
    #   resp.resource_changes[0].details[0].target.attribute #=> String, one of "PROPERTIES", "METADATA", "CREATIONPOLICY", "UPDATEPOLICY", "DELETIONPOLICY", "TAGS"
    #   resp.resource_changes[0].details[0].target.name #=> String
    #   resp.resource_changes[0].details[0].target.requires_recreation #=> String, one of "NEVER", "CONDITIONALLY", "ALWAYS"
    #   resp.resource_changes[0].details[0].evaluation #=> String, one of "STATIC", "DYNAMIC"
    #   resp.resource_changes[0].details[0].causing_entity #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProductPlan AWS API Documentation
    #
    # @overload describe_provisioned_product_plan(params = {})
    # @param [Hash] params ({})
    def describe_provisioned_product_plan(params = {}, options = {})
      req = build_request(:describe_provisioned_product_plan, params)
      req.send_request(options)
    end

    # Gets information about the specified provisioning artifact (also known
    # as a version) for the specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [Boolean] :verbose
    #   Indicates whether a verbose level of detail is enabled.
    #
    # @return [Types::DescribeProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisioningArtifactOutput#provisioning_artifact_detail #provisioning_artifact_detail} => Types::ProvisioningArtifactDetail
    #   * {Types::DescribeProvisioningArtifactOutput#info #info} => Hash&lt;String,String&gt;
    #   * {Types::DescribeProvisioningArtifactOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_artifact({
    #     accept_language: "AcceptLanguage",
    #     provisioning_artifact_id: "Id", # required
    #     product_id: "Id", # required
    #     verbose: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"
    #   resp.provisioning_artifact_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.active #=> Boolean
    #   resp.info #=> Hash
    #   resp.info["ProvisioningArtifactInfoKey"] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningArtifact AWS API Documentation
    #
    # @overload describe_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def describe_provisioning_artifact(params = {}, options = {})
      req = build_request(:describe_provisioning_artifact, params)
      req.send_request(options)
    end

    # Gets information about the configuration required to provision the
    # specified product using the specified provisioning artifact.
    #
    # If the output contains a TagOption key with an empty list of values,
    # there is a TagOption conflict for that key. The end user cannot take
    # action to fix the conflict, and launch is not blocked. In subsequent
    # calls to ProvisionProduct, do not include conflicted TagOption keys as
    # tags, or this causes the error "Parameter validation failed: Missing
    # required parameter in Tags\[*N*\]:*Value*". Tag the provisioned
    # product with the value `sc-tagoption-conflict-portfolioId-productId`.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [String] :path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more than
    #   one path. To list the paths for a product, use ListLaunchPaths.
    #
    # @return [Types::DescribeProvisioningParametersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisioningParametersOutput#provisioning_artifact_parameters #provisioning_artifact_parameters} => Array&lt;Types::ProvisioningArtifactParameter&gt;
    #   * {Types::DescribeProvisioningParametersOutput#constraint_summaries #constraint_summaries} => Array&lt;Types::ConstraintSummary&gt;
    #   * {Types::DescribeProvisioningParametersOutput#usage_instructions #usage_instructions} => Array&lt;Types::UsageInstruction&gt;
    #   * {Types::DescribeProvisioningParametersOutput#tag_options #tag_options} => Array&lt;Types::TagOptionSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_provisioning_parameters({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     path_id: "Id",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_parameters #=> Array
    #   resp.provisioning_artifact_parameters[0].parameter_key #=> String
    #   resp.provisioning_artifact_parameters[0].default_value #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_type #=> String
    #   resp.provisioning_artifact_parameters[0].is_no_echo #=> Boolean
    #   resp.provisioning_artifact_parameters[0].description #=> String
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_values #=> Array
    #   resp.provisioning_artifact_parameters[0].parameter_constraints.allowed_values[0] #=> String
    #   resp.constraint_summaries #=> Array
    #   resp.constraint_summaries[0].type #=> String
    #   resp.constraint_summaries[0].description #=> String
    #   resp.usage_instructions #=> Array
    #   resp.usage_instructions[0].type #=> String
    #   resp.usage_instructions[0].value #=> String
    #   resp.tag_options #=> Array
    #   resp.tag_options[0].key #=> String
    #   resp.tag_options[0].values #=> Array
    #   resp.tag_options[0].values[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningParameters AWS API Documentation
    #
    # @overload describe_provisioning_parameters(params = {})
    # @param [Hash] params ({})
    def describe_provisioning_parameters(params = {}, options = {})
      req = build_request(:describe_provisioning_parameters, params)
      req.send_request(options)
    end

    # Gets information about the specified request operation.
    #
    # Use this operation after calling a request operation (for example,
    # ProvisionProduct, TerminateProvisionedProduct, or
    # UpdateProvisionedProduct).
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The record identifier of the provisioned product. This identifier is
    #   returned by the request operation.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::DescribeRecordOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRecordOutput#record_detail #record_detail} => Types::RecordDetail
    #   * {Types::DescribeRecordOutput#record_outputs #record_outputs} => Array&lt;Types::RecordOutput&gt;
    #   * {Types::DescribeRecordOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_record({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #   resp.record_outputs #=> Array
    #   resp.record_outputs[0].output_key #=> String
    #   resp.record_outputs[0].output_value #=> String
    #   resp.record_outputs[0].description #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeRecord AWS API Documentation
    #
    # @overload describe_record(params = {})
    # @param [Hash] params ({})
    def describe_record(params = {}, options = {})
      req = build_request(:describe_record, params)
      req.send_request(options)
    end

    # Gets information about the specified TagOption.
    #
    # @option params [required, String] :id
    #   The TagOption identifier.
    #
    # @return [Types::DescribeTagOptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeTagOptionOutput#tag_option_detail #tag_option_detail} => Types::TagOptionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tag_option({
    #     id: "TagOptionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_option_detail.key #=> String
    #   resp.tag_option_detail.value #=> String
    #   resp.tag_option_detail.active #=> Boolean
    #   resp.tag_option_detail.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeTagOption AWS API Documentation
    #
    # @overload describe_tag_option(params = {})
    # @param [Hash] params ({})
    def describe_tag_option(params = {}, options = {})
      req = build_request(:describe_tag_option, params)
      req.send_request(options)
    end

    # Disassociates a previously associated principal ARN from a specified
    # portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :principal_arn
    #   The ARN of the principal (IAM user, role, or group).
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_principal_from_portfolio({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     principal_arn: "PrincipalARN", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociatePrincipalFromPortfolio AWS API Documentation
    #
    # @overload disassociate_principal_from_portfolio(params = {})
    # @param [Hash] params ({})
    def disassociate_principal_from_portfolio(params = {}, options = {})
      req = build_request(:disassociate_principal_from_portfolio, params)
      req.send_request(options)
    end

    # Disassociates the specified product from the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_product_from_portfolio({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     portfolio_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateProductFromPortfolio AWS API Documentation
    #
    # @overload disassociate_product_from_portfolio(params = {})
    # @param [Hash] params ({})
    def disassociate_product_from_portfolio(params = {}, options = {})
      req = build_request(:disassociate_product_from_portfolio, params)
      req.send_request(options)
    end

    # Disassociates the specified TagOption from the specified resource.
    #
    # @option params [required, String] :resource_id
    #   The resource identifier.
    #
    # @option params [required, String] :tag_option_id
    #   The TagOption identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_tag_option_from_resource({
    #     resource_id: "ResourceId", # required
    #     tag_option_id: "TagOptionId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DisassociateTagOptionFromResource AWS API Documentation
    #
    # @overload disassociate_tag_option_from_resource(params = {})
    # @param [Hash] params ({})
    def disassociate_tag_option_from_resource(params = {}, options = {})
      req = build_request(:disassociate_tag_option_from_resource, params)
      req.send_request(options)
    end

    # Provisions or modifies a product based on the resource changes for the
    # specified plan.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :plan_id
    #   The plan identifier.
    #
    # @option params [required, String] :idempotency_token
    #   A unique identifier that you provide to ensure idempotency. If
    #   multiple requests differ only by the idempotency token, the same
    #   response is returned for each repeated request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ExecuteProvisionedProductPlanOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ExecuteProvisionedProductPlanOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_provisioned_product_plan({
    #     accept_language: "AcceptLanguage",
    #     plan_id: "Id", # required
    #     idempotency_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ExecuteProvisionedProductPlan AWS API Documentation
    #
    # @overload execute_provisioned_product_plan(params = {})
    # @param [Hash] params ({})
    def execute_provisioned_product_plan(params = {}, options = {})
      req = build_request(:execute_provisioned_product_plan, params)
      req.send_request(options)
    end

    # Lists all portfolios for which sharing was accepted by this account.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :portfolio_share_type
    #   The type of shared portfolios to list. The default is to list imported
    #   portfolios.
    #
    #   * `AWS_SERVICECATALOG` - List default portfolios
    #
    #   * `IMPORTED` - List imported portfolios
    #
    # @return [Types::ListAcceptedPortfolioSharesOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAcceptedPortfolioSharesOutput#portfolio_details #portfolio_details} => Array&lt;Types::PortfolioDetail&gt;
    #   * {Types::ListAcceptedPortfolioSharesOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accepted_portfolio_shares({
    #     accept_language: "AcceptLanguage",
    #     page_token: "PageToken",
    #     page_size: 1,
    #     portfolio_share_type: "IMPORTED", # accepts IMPORTED, AWS_SERVICECATALOG
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_details #=> Array
    #   resp.portfolio_details[0].id #=> String
    #   resp.portfolio_details[0].arn #=> String
    #   resp.portfolio_details[0].display_name #=> String
    #   resp.portfolio_details[0].description #=> String
    #   resp.portfolio_details[0].created_time #=> Time
    #   resp.portfolio_details[0].provider_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListAcceptedPortfolioShares AWS API Documentation
    #
    # @overload list_accepted_portfolio_shares(params = {})
    # @param [Hash] params ({})
    def list_accepted_portfolio_shares(params = {}, options = {})
      req = build_request(:list_accepted_portfolio_shares, params)
      req.send_request(options)
    end

    # Lists the constraints for the specified portfolio and product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :product_id
    #   The product identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListConstraintsForPortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListConstraintsForPortfolioOutput#constraint_details #constraint_details} => Array&lt;Types::ConstraintDetail&gt;
    #   * {Types::ListConstraintsForPortfolioOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_constraints_for_portfolio({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     product_id: "Id",
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.constraint_details #=> Array
    #   resp.constraint_details[0].constraint_id #=> String
    #   resp.constraint_details[0].type #=> String
    #   resp.constraint_details[0].description #=> String
    #   resp.constraint_details[0].owner #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListConstraintsForPortfolio AWS API Documentation
    #
    # @overload list_constraints_for_portfolio(params = {})
    # @param [Hash] params ({})
    def list_constraints_for_portfolio(params = {}, options = {})
      req = build_request(:list_constraints_for_portfolio, params)
      req.send_request(options)
    end

    # Lists the paths to the specified product. A path is how the user has
    # access to a specified product, and is necessary when provisioning a
    # product. A path also determines the constraints put on the product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListLaunchPathsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListLaunchPathsOutput#launch_path_summaries #launch_path_summaries} => Array&lt;Types::LaunchPathSummary&gt;
    #   * {Types::ListLaunchPathsOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_launch_paths({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.launch_path_summaries #=> Array
    #   resp.launch_path_summaries[0].id #=> String
    #   resp.launch_path_summaries[0].constraint_summaries #=> Array
    #   resp.launch_path_summaries[0].constraint_summaries[0].type #=> String
    #   resp.launch_path_summaries[0].constraint_summaries[0].description #=> String
    #   resp.launch_path_summaries[0].tags #=> Array
    #   resp.launch_path_summaries[0].tags[0].key #=> String
    #   resp.launch_path_summaries[0].tags[0].value #=> String
    #   resp.launch_path_summaries[0].name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListLaunchPaths AWS API Documentation
    #
    # @overload list_launch_paths(params = {})
    # @param [Hash] params ({})
    def list_launch_paths(params = {}, options = {})
      req = build_request(:list_launch_paths, params)
      req.send_request(options)
    end

    # Lists the account IDs that have access to the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @return [Types::ListPortfolioAccessOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortfolioAccessOutput#account_ids #account_ids} => Array&lt;String&gt;
    #   * {Types::ListPortfolioAccessOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolio_access({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.account_ids #=> Array
    #   resp.account_ids[0] #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolioAccess AWS API Documentation
    #
    # @overload list_portfolio_access(params = {})
    # @param [Hash] params ({})
    def list_portfolio_access(params = {}, options = {})
      req = build_request(:list_portfolio_access, params)
      req.send_request(options)
    end

    # Lists all portfolios in the catalog.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::ListPortfoliosOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortfoliosOutput#portfolio_details #portfolio_details} => Array&lt;Types::PortfolioDetail&gt;
    #   * {Types::ListPortfoliosOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolios({
    #     accept_language: "AcceptLanguage",
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_details #=> Array
    #   resp.portfolio_details[0].id #=> String
    #   resp.portfolio_details[0].arn #=> String
    #   resp.portfolio_details[0].display_name #=> String
    #   resp.portfolio_details[0].description #=> String
    #   resp.portfolio_details[0].created_time #=> Time
    #   resp.portfolio_details[0].provider_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfolios AWS API Documentation
    #
    # @overload list_portfolios(params = {})
    # @param [Hash] params ({})
    def list_portfolios(params = {}, options = {})
      req = build_request(:list_portfolios, params)
      req.send_request(options)
    end

    # Lists all portfolios that the specified product is associated with.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @return [Types::ListPortfoliosForProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPortfoliosForProductOutput#portfolio_details #portfolio_details} => Array&lt;Types::PortfolioDetail&gt;
    #   * {Types::ListPortfoliosForProductOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_portfolios_for_product({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     page_token: "PageToken",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_details #=> Array
    #   resp.portfolio_details[0].id #=> String
    #   resp.portfolio_details[0].arn #=> String
    #   resp.portfolio_details[0].display_name #=> String
    #   resp.portfolio_details[0].description #=> String
    #   resp.portfolio_details[0].created_time #=> Time
    #   resp.portfolio_details[0].provider_name #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPortfoliosForProduct AWS API Documentation
    #
    # @overload list_portfolios_for_product(params = {})
    # @param [Hash] params ({})
    def list_portfolios_for_product(params = {}, options = {})
      req = build_request(:list_portfolios_for_product, params)
      req.send_request(options)
    end

    # Lists all principal ARNs associated with the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListPrincipalsForPortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrincipalsForPortfolioOutput#principals #principals} => Array&lt;Types::Principal&gt;
    #   * {Types::ListPrincipalsForPortfolioOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principals_for_portfolio({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0].principal_arn #=> String
    #   resp.principals[0].principal_type #=> String, one of "IAM"
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListPrincipalsForPortfolio AWS API Documentation
    #
    # @overload list_principals_for_portfolio(params = {})
    # @param [Hash] params ({})
    def list_principals_for_portfolio(params = {}, options = {})
      req = build_request(:list_principals_for_portfolio, params)
      req.send_request(options)
    end

    # Lists the plans for the specified provisioned product or all plans to
    # which the user has access.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :provision_product_id
    #   The product identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level to use to obtain results. The default is `User`.
    #
    # @return [Types::ListProvisionedProductPlansOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisionedProductPlansOutput#provisioned_product_plans #provisioned_product_plans} => Array&lt;Types::ProvisionedProductPlanSummary&gt;
    #   * {Types::ListProvisionedProductPlansOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_product_plans({
    #     accept_language: "AcceptLanguage",
    #     provision_product_id: "Id",
    #     page_size: 1,
    #     page_token: "PageToken",
    #     access_level_filter: {
    #       key: "Account", # accepts Account, Role, User
    #       value: "AccessLevelFilterValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_product_plans #=> Array
    #   resp.provisioned_product_plans[0].plan_name #=> String
    #   resp.provisioned_product_plans[0].plan_id #=> String
    #   resp.provisioned_product_plans[0].provision_product_id #=> String
    #   resp.provisioned_product_plans[0].provision_product_name #=> String
    #   resp.provisioned_product_plans[0].plan_type #=> String, one of "CLOUDFORMATION"
    #   resp.provisioned_product_plans[0].provisioning_artifact_id #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisionedProductPlans AWS API Documentation
    #
    # @overload list_provisioned_product_plans(params = {})
    # @param [Hash] params ({})
    def list_provisioned_product_plans(params = {}, options = {})
      req = build_request(:list_provisioned_product_plans, params)
      req.send_request(options)
    end

    # Lists all provisioning artifacts (also known as versions) for the
    # specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @return [Types::ListProvisioningArtifactsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisioningArtifactsOutput#provisioning_artifact_details #provisioning_artifact_details} => Array&lt;Types::ProvisioningArtifactDetail&gt;
    #   * {Types::ListProvisioningArtifactsOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioning_artifacts({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_details #=> Array
    #   resp.provisioning_artifact_details[0].id #=> String
    #   resp.provisioning_artifact_details[0].name #=> String
    #   resp.provisioning_artifact_details[0].description #=> String
    #   resp.provisioning_artifact_details[0].type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"
    #   resp.provisioning_artifact_details[0].created_time #=> Time
    #   resp.provisioning_artifact_details[0].active #=> Boolean
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListProvisioningArtifacts AWS API Documentation
    #
    # @overload list_provisioning_artifacts(params = {})
    # @param [Hash] params ({})
    def list_provisioning_artifacts(params = {}, options = {})
      req = build_request(:list_provisioning_artifacts, params)
      req.send_request(options)
    end

    # Lists the specified requests or all performed requests.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level to use to obtain results. The default is `User`.
    #
    # @option params [Types::ListRecordHistorySearchFilter] :search_filter
    #   The search filter to scope the results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListRecordHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRecordHistoryOutput#record_details #record_details} => Array&lt;Types::RecordDetail&gt;
    #   * {Types::ListRecordHistoryOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_record_history({
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account", # accepts Account, Role, User
    #       value: "AccessLevelFilterValue",
    #     },
    #     search_filter: {
    #       key: "SearchFilterKey",
    #       value: "SearchFilterValue",
    #     },
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.record_details #=> Array
    #   resp.record_details[0].record_id #=> String
    #   resp.record_details[0].provisioned_product_name #=> String
    #   resp.record_details[0].status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_details[0].created_time #=> Time
    #   resp.record_details[0].updated_time #=> Time
    #   resp.record_details[0].provisioned_product_type #=> String
    #   resp.record_details[0].record_type #=> String
    #   resp.record_details[0].provisioned_product_id #=> String
    #   resp.record_details[0].product_id #=> String
    #   resp.record_details[0].provisioning_artifact_id #=> String
    #   resp.record_details[0].path_id #=> String
    #   resp.record_details[0].record_errors #=> Array
    #   resp.record_details[0].record_errors[0].code #=> String
    #   resp.record_details[0].record_errors[0].description #=> String
    #   resp.record_details[0].record_tags #=> Array
    #   resp.record_details[0].record_tags[0].key #=> String
    #   resp.record_details[0].record_tags[0].value #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListRecordHistory AWS API Documentation
    #
    # @overload list_record_history(params = {})
    # @param [Hash] params ({})
    def list_record_history(params = {}, options = {})
      req = build_request(:list_record_history, params)
      req.send_request(options)
    end

    # Lists the resources associated with the specified TagOption.
    #
    # @option params [required, String] :tag_option_id
    #   The TagOption identifier.
    #
    # @option params [String] :resource_type
    #   The resource type.
    #
    #   * `Portfolio`
    #
    #   * `Product`
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListResourcesForTagOptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListResourcesForTagOptionOutput#resource_details #resource_details} => Array&lt;Types::ResourceDetail&gt;
    #   * {Types::ListResourcesForTagOptionOutput#page_token #page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources_for_tag_option({
    #     tag_option_id: "TagOptionId", # required
    #     resource_type: "ResourceType",
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_details #=> Array
    #   resp.resource_details[0].id #=> String
    #   resp.resource_details[0].arn #=> String
    #   resp.resource_details[0].name #=> String
    #   resp.resource_details[0].description #=> String
    #   resp.resource_details[0].created_time #=> Time
    #   resp.page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListResourcesForTagOption AWS API Documentation
    #
    # @overload list_resources_for_tag_option(params = {})
    # @param [Hash] params ({})
    def list_resources_for_tag_option(params = {}, options = {})
      req = build_request(:list_resources_for_tag_option, params)
      req.send_request(options)
    end

    # Lists the specified TagOptions or all TagOptions.
    #
    # @option params [Types::ListTagOptionsFilters] :filters
    #   The search filters. If no search filters are specified, the output
    #   includes all TagOptions.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ListTagOptionsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagOptionsOutput#tag_option_details #tag_option_details} => Array&lt;Types::TagOptionDetail&gt;
    #   * {Types::ListTagOptionsOutput#page_token #page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tag_options({
    #     filters: {
    #       key: "TagOptionKey",
    #       value: "TagOptionValue",
    #       active: false,
    #     },
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_option_details #=> Array
    #   resp.tag_option_details[0].key #=> String
    #   resp.tag_option_details[0].value #=> String
    #   resp.tag_option_details[0].active #=> Boolean
    #   resp.tag_option_details[0].id #=> String
    #   resp.page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ListTagOptions AWS API Documentation
    #
    # @overload list_tag_options(params = {})
    # @param [Hash] params ({})
    def list_tag_options(params = {}, options = {})
      req = build_request(:list_tag_options, params)
      req.send_request(options)
    end

    # Provisions the specified product.
    #
    # A provisioned product is a resourced instance of a product. For
    # example, provisioning a product based on a CloudFormation template
    # launches a CloudFormation stack and its underlying resources. You can
    # check the status of this request using DescribeRecord.
    #
    # If the request contains a tag key with an empty list of values, there
    # is a tag conflict for that key. Do not include conflicted keys as
    # tags, or this causes the error "Parameter validation failed: Missing
    # required parameter in Tags\[*N*\]:*Value*".
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [String] :path_id
    #   The path identifier of the product. This value is optional if the
    #   product has a default path, and required if the product has more than
    #   one path. To list the paths for a product, use ListLaunchPaths.
    #
    # @option params [required, String] :provisioned_product_name
    #   A user-friendly name for the provisioned product. This value must be
    #   unique for the AWS account and cannot be updated after the product is
    #   provisioned.
    #
    # @option params [Array<Types::ProvisioningParameter>] :provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #
    # @option params [Array<Types::Tag>] :tags
    #   One or more tags.
    #
    # @option params [Array<String>] :notification_arns
    #   Passed to CloudFormation. The SNS topic ARNs to which to publish
    #   stack-related events.
    #
    # @option params [required, String] :provision_token
    #   An idempotency token that uniquely identifies the provisioning
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::ProvisionProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ProvisionProductOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_product({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     path_id: "Id",
    #     provisioned_product_name: "ProvisionedProductName", # required
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #       },
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     notification_arns: ["NotificationArn"],
    #     provision_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ProvisionProduct AWS API Documentation
    #
    # @overload provision_product(params = {})
    # @param [Hash] params ({})
    def provision_product(params = {}, options = {})
      req = build_request(:provision_product, params)
      req.send_request(options)
    end

    # Rejects an offer to share the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_portfolio_share({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/RejectPortfolioShare AWS API Documentation
    #
    # @overload reject_portfolio_share(params = {})
    # @param [Hash] params ({})
    def reject_portfolio_share(params = {}, options = {})
      req = build_request(:reject_portfolio_share, params)
      req.send_request(options)
    end

    # Lists the provisioned products that are available (not terminated).
    #
    # To use additional filtering, see SearchProvisionedProducts.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level to use to obtain results. The default is `User`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::ScanProvisionedProductsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ScanProvisionedProductsOutput#provisioned_products #provisioned_products} => Array&lt;Types::ProvisionedProductDetail&gt;
    #   * {Types::ScanProvisionedProductsOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.scan_provisioned_products({
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account", # accepts Account, Role, User
    #       value: "AccessLevelFilterValue",
    #     },
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_products #=> Array
    #   resp.provisioned_products[0].name #=> String
    #   resp.provisioned_products[0].arn #=> String
    #   resp.provisioned_products[0].type #=> String
    #   resp.provisioned_products[0].id #=> String
    #   resp.provisioned_products[0].status #=> String, one of "AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"
    #   resp.provisioned_products[0].status_message #=> String
    #   resp.provisioned_products[0].created_time #=> Time
    #   resp.provisioned_products[0].idempotency_token #=> String
    #   resp.provisioned_products[0].last_record_id #=> String
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/ScanProvisionedProducts AWS API Documentation
    #
    # @overload scan_provisioned_products(params = {})
    # @param [Hash] params ({})
    def scan_provisioned_products(params = {}, options = {})
      req = build_request(:scan_provisioned_products, params)
      req.send_request(options)
    end

    # Gets information about the products to which the caller has access.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Hash<String,Array>] :filters
    #   The search filters. If no search filters are specified, the output
    #   includes all products to which the caller has access.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :sort_by
    #   The sort field. If no value is specified, the results are not sorted.
    #
    # @option params [String] :sort_order
    #   The sort order. If no value is specified, the results are not sorted.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::SearchProductsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProductsOutput#product_view_summaries #product_view_summaries} => Array&lt;Types::ProductViewSummary&gt;
    #   * {Types::SearchProductsOutput#product_view_aggregations #product_view_aggregations} => Hash&lt;String,Array&lt;Types::ProductViewAggregationValue&gt;&gt;
    #   * {Types::SearchProductsOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_products({
    #     accept_language: "AcceptLanguage",
    #     filters: {
    #       "FullTextSearch" => ["ProductViewFilterValue"],
    #     },
    #     page_size: 1,
    #     sort_by: "Title", # accepts Title, VersionCount, CreationDate
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_summaries #=> Array
    #   resp.product_view_summaries[0].id #=> String
    #   resp.product_view_summaries[0].product_id #=> String
    #   resp.product_view_summaries[0].name #=> String
    #   resp.product_view_summaries[0].owner #=> String
    #   resp.product_view_summaries[0].short_description #=> String
    #   resp.product_view_summaries[0].type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"
    #   resp.product_view_summaries[0].distributor #=> String
    #   resp.product_view_summaries[0].has_default_path #=> Boolean
    #   resp.product_view_summaries[0].support_email #=> String
    #   resp.product_view_summaries[0].support_description #=> String
    #   resp.product_view_summaries[0].support_url #=> String
    #   resp.product_view_aggregations #=> Hash
    #   resp.product_view_aggregations["ProductViewAggregationType"] #=> Array
    #   resp.product_view_aggregations["ProductViewAggregationType"][0].value #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.product_view_aggregations["ProductViewAggregationType"][0].approximate_count #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProducts AWS API Documentation
    #
    # @overload search_products(params = {})
    # @param [Hash] params ({})
    def search_products(params = {}, options = {})
      req = build_request(:search_products, params)
      req.send_request(options)
    end

    # Gets information about the products for the specified portfolio or all
    # products.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [Hash<String,Array>] :filters
    #   The search filters. If no search filters are specified, the output
    #   includes all products to which the administrator has access.
    #
    # @option params [String] :sort_by
    #   The sort field. If no value is specified, the results are not sorted.
    #
    # @option params [String] :sort_order
    #   The sort order. If no value is specified, the results are not sorted.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :product_source
    #   Access level of the source of the product.
    #
    # @return [Types::SearchProductsAsAdminOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProductsAsAdminOutput#product_view_details #product_view_details} => Array&lt;Types::ProductViewDetail&gt;
    #   * {Types::SearchProductsAsAdminOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_products_as_admin({
    #     accept_language: "AcceptLanguage",
    #     portfolio_id: "Id",
    #     filters: {
    #       "FullTextSearch" => ["ProductViewFilterValue"],
    #     },
    #     sort_by: "Title", # accepts Title, VersionCount, CreationDate
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     page_token: "PageToken",
    #     page_size: 1,
    #     product_source: "ACCOUNT", # accepts ACCOUNT
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_details #=> Array
    #   resp.product_view_details[0].product_view_summary.id #=> String
    #   resp.product_view_details[0].product_view_summary.product_id #=> String
    #   resp.product_view_details[0].product_view_summary.name #=> String
    #   resp.product_view_details[0].product_view_summary.owner #=> String
    #   resp.product_view_details[0].product_view_summary.short_description #=> String
    #   resp.product_view_details[0].product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"
    #   resp.product_view_details[0].product_view_summary.distributor #=> String
    #   resp.product_view_details[0].product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_details[0].product_view_summary.support_email #=> String
    #   resp.product_view_details[0].product_view_summary.support_description #=> String
    #   resp.product_view_details[0].product_view_summary.support_url #=> String
    #   resp.product_view_details[0].status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.product_view_details[0].product_arn #=> String
    #   resp.product_view_details[0].created_time #=> Time
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProductsAsAdmin AWS API Documentation
    #
    # @overload search_products_as_admin(params = {})
    # @param [Hash] params ({})
    def search_products_as_admin(params = {}, options = {})
      req = build_request(:search_products_as_admin, params)
      req.send_request(options)
    end

    # Gets information about the provisioned products that meet the
    # specified criteria.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level to use to obtain results. The default is `User`.
    #
    # @option params [Hash<String,Array>] :filters
    #   The search filters.
    #
    #   When the key is `SearchQuery`, the searchable fields are `arn`,
    #   `createdTime`, `id`, `lastRecordId`, `idempotencyToken`, `name`,
    #   `physicalId`, `productId`, `provisioningArtifact`, `type`, `status`,
    #   `tags`, `userArn`, and `userArnSession`.
    #
    #   Example: `"SearchQuery":["status:AVAILABLE"]`
    #
    # @option params [String] :sort_by
    #   The sort field. If no value is specified, the results are not sorted.
    #   The valid values are `arn`, `id`, `name`, and `lastRecordId`.
    #
    # @option params [String] :sort_order
    #   The sort order. If no value is specified, the results are not sorted.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :page_token
    #   The page token for the next set of results. To retrieve the first set
    #   of results, use null.
    #
    # @return [Types::SearchProvisionedProductsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchProvisionedProductsOutput#provisioned_products #provisioned_products} => Array&lt;Types::ProvisionedProductAttribute&gt;
    #   * {Types::SearchProvisionedProductsOutput#total_results_count #total_results_count} => Integer
    #   * {Types::SearchProvisionedProductsOutput#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_provisioned_products({
    #     accept_language: "AcceptLanguage",
    #     access_level_filter: {
    #       key: "Account", # accepts Account, Role, User
    #       value: "AccessLevelFilterValue",
    #     },
    #     filters: {
    #       "SearchQuery" => ["ProvisionedProductViewFilterValue"],
    #     },
    #     sort_by: "SortField",
    #     sort_order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     page_size: 1,
    #     page_token: "PageToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_products #=> Array
    #   resp.provisioned_products[0].name #=> String
    #   resp.provisioned_products[0].arn #=> String
    #   resp.provisioned_products[0].type #=> String
    #   resp.provisioned_products[0].id #=> String
    #   resp.provisioned_products[0].status #=> String, one of "AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR", "PLAN_IN_PROGRESS"
    #   resp.provisioned_products[0].status_message #=> String
    #   resp.provisioned_products[0].created_time #=> Time
    #   resp.provisioned_products[0].idempotency_token #=> String
    #   resp.provisioned_products[0].last_record_id #=> String
    #   resp.provisioned_products[0].tags #=> Array
    #   resp.provisioned_products[0].tags[0].key #=> String
    #   resp.provisioned_products[0].tags[0].value #=> String
    #   resp.provisioned_products[0].physical_id #=> String
    #   resp.provisioned_products[0].product_id #=> String
    #   resp.provisioned_products[0].provisioning_artifact_id #=> String
    #   resp.provisioned_products[0].user_arn #=> String
    #   resp.provisioned_products[0].user_arn_session #=> String
    #   resp.total_results_count #=> Integer
    #   resp.next_page_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/SearchProvisionedProducts AWS API Documentation
    #
    # @overload search_provisioned_products(params = {})
    # @param [Hash] params ({})
    def search_provisioned_products(params = {}, options = {})
      req = build_request(:search_provisioned_products, params)
      req.send_request(options)
    end

    # Terminates the specified provisioned product.
    #
    # This operation does not delete any records associated with the
    # provisioned product.
    #
    # You can check the status of this request using DescribeRecord.
    #
    # @option params [String] :provisioned_product_name
    #   The name of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #
    # @option params [String] :provisioned_product_id
    #   The identifier of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #
    # @option params [required, String] :terminate_token
    #   An idempotency token that uniquely identifies the termination request.
    #   This token is only valid during the termination process. After the
    #   provisioned product is terminated, subsequent requests to terminate
    #   the same provisioned product always return **ResourceNotFound**.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :ignore_errors
    #   If set to true, AWS Service Catalog stops managing the specified
    #   provisioned product even if it cannot delete the underlying resources.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @return [Types::TerminateProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TerminateProvisionedProductOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.terminate_provisioned_product({
    #     provisioned_product_name: "ProvisionedProductNameOrArn",
    #     provisioned_product_id: "Id",
    #     terminate_token: "IdempotencyToken", # required
    #     ignore_errors: false,
    #     accept_language: "AcceptLanguage",
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/TerminateProvisionedProduct AWS API Documentation
    #
    # @overload terminate_provisioned_product(params = {})
    # @param [Hash] params ({})
    def terminate_provisioned_product(params = {}, options = {})
      req = build_request(:terminate_provisioned_product, params)
      req.send_request(options)
    end

    # Updates the specified constraint.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The identifier of the constraint.
    #
    # @option params [String] :description
    #   The updated description of the constraint.
    #
    # @return [Types::UpdateConstraintOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateConstraintOutput#constraint_detail #constraint_detail} => Types::ConstraintDetail
    #   * {Types::UpdateConstraintOutput#constraint_parameters #constraint_parameters} => String
    #   * {Types::UpdateConstraintOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_constraint({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     description: "ConstraintDescription",
    #   })
    #
    # @example Response structure
    #
    #   resp.constraint_detail.constraint_id #=> String
    #   resp.constraint_detail.type #=> String
    #   resp.constraint_detail.description #=> String
    #   resp.constraint_detail.owner #=> String
    #   resp.constraint_parameters #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateConstraint AWS API Documentation
    #
    # @overload update_constraint(params = {})
    # @param [Hash] params ({})
    def update_constraint(params = {}, options = {})
      req = build_request(:update_constraint, params)
      req.send_request(options)
    end

    # Updates the specified portfolio.
    #
    # You cannot update a product that was shared with you.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The portfolio identifier.
    #
    # @option params [String] :display_name
    #   The name to use for display purposes.
    #
    # @option params [String] :description
    #   The updated description of the portfolio.
    #
    # @option params [String] :provider_name
    #   The updated name of the portfolio provider.
    #
    # @option params [Array<Types::Tag>] :add_tags
    #   The tags to add.
    #
    # @option params [Array<String>] :remove_tags
    #   The tags to remove.
    #
    # @return [Types::UpdatePortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePortfolioOutput#portfolio_detail #portfolio_detail} => Types::PortfolioDetail
    #   * {Types::UpdatePortfolioOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_portfolio({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     display_name: "PortfolioDisplayName",
    #     description: "PortfolioDescription",
    #     provider_name: "ProviderName",
    #     add_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     remove_tags: ["TagKey"],
    #   })
    #
    # @example Response structure
    #
    #   resp.portfolio_detail.id #=> String
    #   resp.portfolio_detail.arn #=> String
    #   resp.portfolio_detail.display_name #=> String
    #   resp.portfolio_detail.description #=> String
    #   resp.portfolio_detail.created_time #=> Time
    #   resp.portfolio_detail.provider_name #=> String
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdatePortfolio AWS API Documentation
    #
    # @overload update_portfolio(params = {})
    # @param [Hash] params ({})
    def update_portfolio(params = {}, options = {})
      req = build_request(:update_portfolio, params)
      req.send_request(options)
    end

    # Updates the specified product.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :id
    #   The product identifier.
    #
    # @option params [String] :name
    #   The updated product name.
    #
    # @option params [String] :owner
    #   The updated owner of the product.
    #
    # @option params [String] :description
    #   The updated description of the product.
    #
    # @option params [String] :distributor
    #   The updated distributor of the product.
    #
    # @option params [String] :support_description
    #   The updated support description for the product.
    #
    # @option params [String] :support_email
    #   The updated support email for the product.
    #
    # @option params [String] :support_url
    #   The updated support URL for the product.
    #
    # @option params [Array<Types::Tag>] :add_tags
    #   The tags to add to the product.
    #
    # @option params [Array<String>] :remove_tags
    #   The tags to remove from the product.
    #
    # @return [Types::UpdateProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProductOutput#product_view_detail #product_view_detail} => Types::ProductViewDetail
    #   * {Types::UpdateProductOutput#tags #tags} => Array&lt;Types::Tag&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_product({
    #     accept_language: "AcceptLanguage",
    #     id: "Id", # required
    #     name: "ProductViewName",
    #     owner: "ProductViewOwner",
    #     description: "ProductViewShortDescription",
    #     distributor: "ProductViewOwner",
    #     support_description: "SupportDescription",
    #     support_email: "SupportEmail",
    #     support_url: "SupportUrl",
    #     add_tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       },
    #     ],
    #     remove_tags: ["TagKey"],
    #   })
    #
    # @example Response structure
    #
    #   resp.product_view_detail.product_view_summary.id #=> String
    #   resp.product_view_detail.product_view_summary.product_id #=> String
    #   resp.product_view_detail.product_view_summary.name #=> String
    #   resp.product_view_detail.product_view_summary.owner #=> String
    #   resp.product_view_detail.product_view_summary.short_description #=> String
    #   resp.product_view_detail.product_view_summary.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE"
    #   resp.product_view_detail.product_view_summary.distributor #=> String
    #   resp.product_view_detail.product_view_summary.has_default_path #=> Boolean
    #   resp.product_view_detail.product_view_summary.support_email #=> String
    #   resp.product_view_detail.product_view_summary.support_description #=> String
    #   resp.product_view_detail.product_view_summary.support_url #=> String
    #   resp.product_view_detail.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #   resp.product_view_detail.product_arn #=> String
    #   resp.product_view_detail.created_time #=> Time
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProduct AWS API Documentation
    #
    # @overload update_product(params = {})
    # @param [Hash] params ({})
    def update_product(params = {}, options = {})
      req = build_request(:update_product, params)
      req.send_request(options)
    end

    # Requests updates to the configuration of the specified provisioned
    # product.
    #
    # If there are tags associated with the object, they cannot be updated
    # or added. Depending on the specific updates requested, this operation
    # can update with no interruption, with some interruption, or replace
    # the provisioned product entirely.
    #
    # You can check the status of this request using DescribeRecord.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [String] :provisioned_product_name
    #   The updated name of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #
    # @option params [String] :provisioned_product_id
    #   The identifier of the provisioned product. You cannot specify both
    #   `ProvisionedProductName` and `ProvisionedProductId`.
    #
    # @option params [String] :product_id
    #   The identifier of the provisioned product.
    #
    # @option params [String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [String] :path_id
    #   The new path identifier. This value is optional if the product has a
    #   default path, and required if the product has more than one path.
    #
    # @option params [Array<Types::UpdateProvisioningParameter>] :provisioning_parameters
    #   The new parameters.
    #
    # @option params [required, String] :update_token
    #   The idempotency token that uniquely identifies the provisioning update
    #   request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::UpdateProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProvisionedProductOutput#record_detail #record_detail} => Types::RecordDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioned_product({
    #     accept_language: "AcceptLanguage",
    #     provisioned_product_name: "ProvisionedProductNameOrArn",
    #     provisioned_product_id: "Id",
    #     product_id: "Id",
    #     provisioning_artifact_id: "Id",
    #     path_id: "Id",
    #     provisioning_parameters: [
    #       {
    #         key: "ParameterKey",
    #         value: "ParameterValue",
    #         use_previous_value: false,
    #       },
    #     ],
    #     update_token: "IdempotencyToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.record_detail.record_id #=> String
    #   resp.record_detail.provisioned_product_name #=> String
    #   resp.record_detail.status #=> String, one of "CREATED", "IN_PROGRESS", "IN_PROGRESS_IN_ERROR", "SUCCEEDED", "FAILED"
    #   resp.record_detail.created_time #=> Time
    #   resp.record_detail.updated_time #=> Time
    #   resp.record_detail.provisioned_product_type #=> String
    #   resp.record_detail.record_type #=> String
    #   resp.record_detail.provisioned_product_id #=> String
    #   resp.record_detail.product_id #=> String
    #   resp.record_detail.provisioning_artifact_id #=> String
    #   resp.record_detail.path_id #=> String
    #   resp.record_detail.record_errors #=> Array
    #   resp.record_detail.record_errors[0].code #=> String
    #   resp.record_detail.record_errors[0].description #=> String
    #   resp.record_detail.record_tags #=> Array
    #   resp.record_detail.record_tags[0].key #=> String
    #   resp.record_detail.record_tags[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisionedProduct AWS API Documentation
    #
    # @overload update_provisioned_product(params = {})
    # @param [Hash] params ({})
    def update_provisioned_product(params = {}, options = {})
      req = build_request(:update_provisioned_product, params)
      req.send_request(options)
    end

    # Updates the specified provisioning artifact (also known as a version)
    # for the specified product.
    #
    # You cannot update a provisioning artifact for a product that was
    # shared with you.
    #
    # @option params [String] :accept_language
    #   The language code.
    #
    #   * `en` - English (default)
    #
    #   * `jp` - Japanese
    #
    #   * `zh` - Chinese
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact.
    #
    # @option params [String] :name
    #   The updated name of the provisioning artifact.
    #
    # @option params [String] :description
    #   The updated description of the provisioning artifact.
    #
    # @option params [Boolean] :active
    #   Indicates whether the product version is active.
    #
    # @return [Types::UpdateProvisioningArtifactOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateProvisioningArtifactOutput#provisioning_artifact_detail #provisioning_artifact_detail} => Types::ProvisioningArtifactDetail
    #   * {Types::UpdateProvisioningArtifactOutput#info #info} => Hash&lt;String,String&gt;
    #   * {Types::UpdateProvisioningArtifactOutput#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_provisioning_artifact({
    #     accept_language: "AcceptLanguage",
    #     product_id: "Id", # required
    #     provisioning_artifact_id: "Id", # required
    #     name: "ProvisioningArtifactName",
    #     description: "ProvisioningArtifactDescription",
    #     active: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"
    #   resp.provisioning_artifact_detail.created_time #=> Time
    #   resp.provisioning_artifact_detail.active #=> Boolean
    #   resp.info #=> Hash
    #   resp.info["ProvisioningArtifactInfoKey"] #=> String
    #   resp.status #=> String, one of "AVAILABLE", "CREATING", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateProvisioningArtifact AWS API Documentation
    #
    # @overload update_provisioning_artifact(params = {})
    # @param [Hash] params ({})
    def update_provisioning_artifact(params = {}, options = {})
      req = build_request(:update_provisioning_artifact, params)
      req.send_request(options)
    end

    # Updates the specified TagOption.
    #
    # @option params [required, String] :id
    #   The TagOption identifier.
    #
    # @option params [String] :value
    #   The updated value.
    #
    # @option params [Boolean] :active
    #   The updated active state.
    #
    # @return [Types::UpdateTagOptionOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateTagOptionOutput#tag_option_detail #tag_option_detail} => Types::TagOptionDetail
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_tag_option({
    #     id: "TagOptionId", # required
    #     value: "TagOptionValue",
    #     active: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.tag_option_detail.key #=> String
    #   resp.tag_option_detail.value #=> String
    #   resp.tag_option_detail.active #=> Boolean
    #   resp.tag_option_detail.id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/UpdateTagOption AWS API Documentation
    #
    # @overload update_tag_option(params = {})
    # @param [Hash] params ({})
    def update_tag_option(params = {}, options = {})
      req = build_request(:update_tag_option, params)
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
      context[:gem_name] = 'aws-sdk-servicecatalog'
      context[:gem_version] = '1.8.0'
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
