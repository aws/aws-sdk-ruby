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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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

    # Accepts an offer to share a portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
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
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :principal_arn
    #   The ARN representing the principal (IAM user, role, or group).
    #
    # @option params [required, String] :principal_type
    #   The principal type. Must be `IAM`
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

    # Associates a product with a portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :source_portfolio_id
    #   The identifier of the source portfolio to use with this association.
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

    # Creates a new constraint. For more information, see [Using
    # Constraints][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/servicecatalog/latest/adminguide/constraints.html
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :parameters
    #   The constraint parameters. Expected values vary depending on which
    #   **Type** is specified. For examples, see the bottom of this topic.
    #
    #   For Type `LAUNCH`, the `RoleArn` property is required.
    #
    #   For Type `NOTIFICATION`, the `NotificationArns` property is required.
    #
    #   For Type `TEMPLATE`, the `Rules` property is required.
    #
    # @option params [required, String] :type
    #   The type of the constraint. Case-sensitive valid values are: `LAUNCH`,
    #   `NOTIFICATION`, or `TEMPLATE`.
    #
    # @option params [String] :description
    #   The text description of the constraint.
    #
    # @option params [required, String] :idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that you
    #   also specify a different idempotency token for each request.
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

    # Creates a new portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :display_name
    #   The name to use for display purposes.
    #
    # @option params [String] :description
    #   The text description of the portfolio.
    #
    # @option params [required, String] :provider_name
    #   The name of the portfolio provider.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the new portfolio.
    #
    # @option params [required, String] :idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that you
    #   also specify a different idempotency token for each request.
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

    # Creates a new portfolio share.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :account_id
    #   The account ID with which to share the portfolio.
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

    # Creates a new product.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :name
    #   The name of the product.
    #
    # @option params [required, String] :owner
    #   The owner of the product.
    #
    # @option params [String] :description
    #   The text description of the product.
    #
    # @option params [String] :distributor
    #   The distributor of the product.
    #
    # @option params [String] :support_description
    #   Support information about the product.
    #
    # @option params [String] :support_email
    #   Contact email for product support.
    #
    # @option params [String] :support_url
    #   Contact URL for product support.
    #
    # @option params [required, String] :product_type
    #   The type of the product to create.
    #
    # @option params [Array<Types::Tag>] :tags
    #   Tags to associate with the new product.
    #
    # @option params [required, Types::ProvisioningArtifactProperties] :provisioning_artifact_parameters
    #   Parameters for the provisioning artifact.
    #
    # @option params [required, String] :idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that you
    #   also specify a different idempotency token for each request.
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

    # Create a new provisioning artifact for the specified product. This
    # operation does not work with a product that has been shared with you.
    #
    # See the bottom of this topic for an example JSON request.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, Types::ProvisioningArtifactProperties] :parameters
    #   The parameters to use when creating the new provisioning artifact.
    #
    # @option params [required, String] :idempotency_token
    #   A token to disambiguate duplicate requests. You can create multiple
    #   resources using the same input in multiple requests, provided that you
    #   also specify a different idempotency token for each request.
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

    # Deletes the specified constraint.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The identifier of the constraint to delete.
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

    # Deletes the specified portfolio. This operation does not work with a
    # portfolio that has been shared with you or if it has products, users,
    # constraints, or shared accounts associated with it.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The identifier of the portfolio for the delete request.
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

    # Deletes the specified portfolio share.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :account_id
    #   The account ID associated with the share to delete.
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

    # Deletes the specified product. This operation does not work with a
    # product that has been shared with you or is associated with a
    # portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The identifier of the product for the delete request.
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

    # Deletes the specified provisioning artifact. This operation does not
    # work on a provisioning artifact associated with a product that has
    # been shared with you, or on the last provisioning artifact associated
    # with a product (a product must have at least one provisioning
    # artifact).
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact for the delete request.
    #   This is sometimes referred to as the product version.
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

    # Retrieves detailed information for a specified constraint.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
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

    # Retrieves detailed information and any tags associated with the
    # specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The identifier of the portfolio for which to retrieve information.
    #
    # @return [Types::DescribePortfolioOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribePortfolioOutput#portfolio_detail #portfolio_detail} => Types::PortfolioDetail
    #   * {Types::DescribePortfolioOutput#tags #tags} => Array&lt;Types::Tag&gt;
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribePortfolio AWS API Documentation
    #
    # @overload describe_portfolio(params = {})
    # @param [Hash] params ({})
    def describe_portfolio(params = {}, options = {})
      req = build_request(:describe_portfolio, params)
      req.send_request(options)
    end

    # Retrieves information about a specified product.
    #
    # This operation is functionally identical to DescribeProductView except
    # that it takes as input `ProductId` instead of `ProductViewId`.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The `ProductId` of the product to describe.
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

    # Retrieves information about a specified product, run with
    # administrator access.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The identifier of the product for which to retrieve information.
    #
    # @return [Types::DescribeProductAsAdminOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProductAsAdminOutput#product_view_detail #product_view_detail} => Types::ProductViewDetail
    #   * {Types::DescribeProductAsAdminOutput#provisioning_artifact_summaries #provisioning_artifact_summaries} => Array&lt;Types::ProvisioningArtifactSummary&gt;
    #   * {Types::DescribeProductAsAdminOutput#tags #tags} => Array&lt;Types::Tag&gt;
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProductAsAdmin AWS API Documentation
    #
    # @overload describe_product_as_admin(params = {})
    # @param [Hash] params ({})
    def describe_product_as_admin(params = {}, options = {})
      req = build_request(:describe_product_as_admin, params)
      req.send_request(options)
    end

    # Retrieves information about a specified product.
    #
    # This operation is functionally identical to DescribeProduct except
    # that it takes as input `ProductViewId` instead of `ProductId`.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The `ProductViewId` of the product to describe.
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

    # Retrieve detailed information about the provisioned product.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The provisioned product identifier.
    #
    # @return [Types::DescribeProvisionedProductOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisionedProductOutput#provisioned_product_detail #provisioned_product_detail} => Types::ProvisionedProductDetail
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
    #   resp.provisioned_product_detail.status #=> String, one of "AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR"
    #   resp.provisioned_product_detail.status_message #=> String
    #   resp.provisioned_product_detail.created_time #=> Time
    #   resp.provisioned_product_detail.idempotency_token #=> String
    #   resp.provisioned_product_detail.last_record_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisionedProduct AWS API Documentation
    #
    # @overload describe_provisioned_product(params = {})
    # @param [Hash] params ({})
    def describe_provisioned_product(params = {}, options = {})
      req = build_request(:describe_provisioned_product, params)
      req.send_request(options)
    end

    # Retrieves detailed information about the specified provisioning
    # artifact.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact. This is sometimes
    #   referred to as the product version.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [Boolean] :verbose
    #   Selects verbose results. If set to true, the CloudFormation template
    #   is returned.
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

    # Provides information about parameters required to provision a
    # specified product in a specified manner. Use this operation to obtain
    # the list of `ProvisioningArtifactParameters` parameters available to
    # call the ProvisionProduct operation for the specified product.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The provisioning artifact identifier for this product. This is
    #   sometimes referred to as the product version.
    #
    # @option params [String] :path_id
    #   The identifier of the path for this product's provisioning. This
    #   value is optional if the product has a default path, and is required
    #   if there is more than one path for the specified product.
    #
    # @return [Types::DescribeProvisioningParametersOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeProvisioningParametersOutput#provisioning_artifact_parameters #provisioning_artifact_parameters} => Array&lt;Types::ProvisioningArtifactParameter&gt;
    #   * {Types::DescribeProvisioningParametersOutput#constraint_summaries #constraint_summaries} => Array&lt;Types::ConstraintSummary&gt;
    #   * {Types::DescribeProvisioningParametersOutput#usage_instructions #usage_instructions} => Array&lt;Types::UsageInstruction&gt;
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
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/servicecatalog-2015-12-10/DescribeProvisioningParameters AWS API Documentation
    #
    # @overload describe_provisioning_parameters(params = {})
    # @param [Hash] params ({})
    def describe_provisioning_parameters(params = {}, options = {})
      req = build_request(:describe_provisioning_parameters, params)
      req.send_request(options)
    end

    # Retrieves a paginated list of the full details of a specific request.
    # Use this operation after calling a request operation
    # (ProvisionProduct, TerminateProvisionedProduct, or
    # UpdateProvisionedProduct).
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The record identifier of the ProvisionedProduct object for which to
    #   retrieve output information. This is the `RecordDetail.RecordId`
    #   obtained from the request operation's response.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
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

    # Disassociates a previously associated principal ARN from a specified
    # portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [required, String] :principal_arn
    #   The ARN representing the principal (IAM user, role, or group).
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
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
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

    # Lists details of all portfolios for which sharing was accepted by this
    # account.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
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

    # Retrieves detailed constraint information for the specified portfolio
    # and product.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [String] :product_id
    #   The product identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
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

    # Returns a paginated list of all paths to a specified product. A path
    # is how the user has access to a specified product, and is necessary
    # when provisioning a product. A path also determines the constraints
    # put on the product.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :product_id
    #   The product identifier.. Identifies the product for which to retrieve
    #   `LaunchPathSummaries` information.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
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

    # Lists the account IDs that have been authorized sharing of the
    # specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
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
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
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
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
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
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
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

    # Lists all provisioning artifacts associated with the specified
    # product.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
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

    # Returns a paginated list of all performed requests, in the form of
    # RecordDetails objects that are filtered as specified.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level for obtaining results. If left unspecified, `User`
    #   level access is used.
    #
    # @option params [Types::ListRecordHistorySearchFilter] :search_filter
    #   The filter to limit search results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
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

    # Requests a *provision* of a specified product. A *provisioned product*
    # is a resourced instance for a product. For example, provisioning a
    # CloudFormation-template-backed product results in launching a
    # CloudFormation stack and all the underlying resources that come with
    # it.
    #
    # You can check the status of this request using the DescribeRecord
    # operation.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The provisioning artifact identifier for this product. This is
    #   sometimes referred to as the product version.
    #
    # @option params [String] :path_id
    #   The identifier of the path for this product's provisioning. This
    #   value is optional if the product has a default path, and is required
    #   if there is more than one path for the specified product.
    #
    # @option params [required, String] :provisioned_product_name
    #   A user-friendly name to identify the ProvisionedProduct object. This
    #   value must be unique for the AWS account and cannot be updated after
    #   the product is provisioned.
    #
    # @option params [Array<Types::ProvisioningParameter>] :provisioning_parameters
    #   Parameters specified by the administrator that are required for
    #   provisioning the product.
    #
    # @option params [Array<Types::Tag>] :tags
    #   A list of tags to use as provisioning options.
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

    # Rejects an offer to share a portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
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

    # Returns a paginated list of all the ProvisionedProduct objects that
    # are currently available (not terminated).
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [Types::AccessLevelFilter] :access_level_filter
    #   The access level for obtaining results. If left unspecified, `User`
    #   level access is used.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
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
    #   resp.provisioned_products[0].status #=> String, one of "AVAILABLE", "UNDER_CHANGE", "TAINTED", "ERROR"
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

    # Returns a paginated list all of the `Products` objects to which the
    # caller has access.
    #
    # The output of this operation can be used as input for other
    # operations, such as DescribeProductView.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [Hash<String,Array>] :filters
    #   The list of filters with which to limit search results. If no search
    #   filters are specified, the output is all the products to which the
    #   calling user has access.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
    #
    # @option params [String] :sort_by
    #   The sort field specifier. If no value is specified, results are not
    #   sorted.
    #
    # @option params [String] :sort_order
    #   The sort order specifier. If no value is specified, results are not
    #   sorted.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
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

    # Retrieves summary and status information about all products created
    # within the caller's account. If a portfolio ID is provided, this
    # operation retrieves information for only those products that are
    # associated with the specified portfolio.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [String] :portfolio_id
    #   The portfolio identifier.
    #
    # @option params [Hash<String,Array>] :filters
    #   The list of filters with which to limit search results. If no search
    #   filters are specified, the output is all the products to which the
    #   administrator has access.
    #
    # @option params [String] :sort_by
    #   The sort field specifier. If no value is specified, results are not
    #   sorted.
    #
    # @option params [String] :sort_order
    #   The sort order specifier. If no value is specified, results are not
    #   sorted.
    #
    # @option params [String] :page_token
    #   The page token of the first page retrieved. If null, this retrieves
    #   the first page of size `PageSize`.
    #
    # @option params [Integer] :page_size
    #   The maximum number of items to return in the results. If more results
    #   exist than fit in the specified `PageSize`, the value of
    #   `NextPageToken` in the response is non-null.
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

    # Requests termination of an existing ProvisionedProduct object. If
    # there are `Tags` associated with the object, they are terminated when
    # the ProvisionedProduct object is terminated.
    #
    # This operation does not delete any records associated with the
    # ProvisionedProduct object.
    #
    # You can check the status of this request using the DescribeRecord
    # operation.
    #
    # @option params [String] :provisioned_product_name
    #   The name of the ProvisionedProduct object to terminate. Specify either
    #   `ProvisionedProductName` or `ProvisionedProductId`, but not both.
    #
    # @option params [String] :provisioned_product_id
    #   The identifier of the ProvisionedProduct object to terminate. Specify
    #   either `ProvisionedProductName` or `ProvisionedProductId`, but not
    #   both.
    #
    # @option params [required, String] :terminate_token
    #   An idempotency token that uniquely identifies the termination request.
    #   This token is only valid during the termination process. After the
    #   ProvisionedProduct object is terminated, further requests to terminate
    #   the same ProvisionedProduct object always return **ResourceNotFound**
    #   regardless of the value of `TerminateToken`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @option params [Boolean] :ignore_errors
    #   If set to true, AWS Service Catalog stops managing the specified
    #   ProvisionedProduct object even if it cannot delete the underlying
    #   resources.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
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

    # Updates an existing constraint.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The identifier of the constraint to update.
    #
    # @option params [String] :description
    #   The updated text description of the constraint.
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

    # Updates the specified portfolio's details. This operation does not
    # work with a product that has been shared with you.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The identifier of the portfolio for the update request.
    #
    # @option params [String] :display_name
    #   The name to use for display purposes.
    #
    # @option params [String] :description
    #   The updated text description of the portfolio.
    #
    # @option params [String] :provider_name
    #   The updated name of the portfolio provider.
    #
    # @option params [Array<Types::Tag>] :add_tags
    #   Tags to add to the existing list of tags associated with the
    #   portfolio.
    #
    # @option params [Array<String>] :remove_tags
    #   Tags to remove from the existing list of tags associated with the
    #   portfolio.
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

    # Updates an existing product.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :id
    #   The identifier of the product for the update request.
    #
    # @option params [String] :name
    #   The updated product name.
    #
    # @option params [String] :owner
    #   The updated owner of the product.
    #
    # @option params [String] :description
    #   The updated text description of the product.
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
    #   Tags to add to the existing list of tags associated with the product.
    #
    # @option params [Array<String>] :remove_tags
    #   Tags to remove from the existing list of tags associated with the
    #   product.
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

    # Requests updates to the configuration of an existing
    # ProvisionedProduct object. If there are tags associated with the
    # object, they cannot be updated or added with this operation. Depending
    # on the specific updates requested, this operation may update with no
    # interruption, with some interruption, or replace the
    # ProvisionedProduct object entirely.
    #
    # You can check the status of this request using the DescribeRecord
    # operation.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [String] :provisioned_product_name
    #   The updated name of the ProvisionedProduct object. Specify either
    #   `ProvisionedProductName` or `ProvisionedProductId`, but not both.
    #
    # @option params [String] :provisioned_product_id
    #   The identifier of the ProvisionedProduct object to update. Specify
    #   either `ProvisionedProductName` or `ProvisionedProductId`, but not
    #   both.
    #
    # @option params [String] :product_id
    #   The identifier of the ProvisionedProduct object.
    #
    # @option params [String] :provisioning_artifact_id
    #   The provisioning artifact identifier for this product. This is
    #   sometimes referred to as the product version.
    #
    # @option params [String] :path_id
    #   The identifier of the path to use in the updated ProvisionedProduct
    #   object. This value is optional if the product has a default path, and
    #   is required if there is more than one path for the specified product.
    #
    # @option params [Array<Types::UpdateProvisioningParameter>] :provisioning_parameters
    #   A list of `ProvisioningParameter` objects used to update the
    #   ProvisionedProduct object.
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

    # Updates an existing provisioning artifact's information. This
    # operation does not work on a provisioning artifact associated with a
    # product that has been shared with you.
    #
    # @option params [String] :accept_language
    #   The language code to use for this operation. Supported language codes
    #   are as follows:
    #
    #   "en" (English)
    #
    #   "jp" (Japanese)
    #
    #   "zh" (Chinese)
    #
    #   If no code is specified, "en" is used as the default.
    #
    # @option params [required, String] :product_id
    #   The product identifier.
    #
    # @option params [required, String] :provisioning_artifact_id
    #   The identifier of the provisioning artifact for the update request.
    #   This is sometimes referred to as the product version.
    #
    # @option params [String] :name
    #   The updated name of the provisioning artifact.
    #
    # @option params [String] :description
    #   The updated text description of the provisioning artifact.
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
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioning_artifact_detail.id #=> String
    #   resp.provisioning_artifact_detail.name #=> String
    #   resp.provisioning_artifact_detail.description #=> String
    #   resp.provisioning_artifact_detail.type #=> String, one of "CLOUD_FORMATION_TEMPLATE", "MARKETPLACE_AMI", "MARKETPLACE_CAR"
    #   resp.provisioning_artifact_detail.created_time #=> Time
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
      context[:gem_version] = '1.0.0.rc6'
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
