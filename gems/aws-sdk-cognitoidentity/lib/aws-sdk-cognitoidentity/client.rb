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

Aws::Plugins::GlobalConfiguration.add_identifier(:cognitoidentity)

module Aws::CognitoIdentity
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :cognitoidentity

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

    # Creates a new identity pool. The identity pool is a store of user
    # identity information that is specific to your AWS account. The limit
    # on identity pools is 60 per account. The keys for
    # `SupportedLoginProviders` are as follows:
    #
    # * Facebook: `graph.facebook.com`
    #
    # * Google: `accounts.google.com`
    #
    # * Amazon: `www.amazon.com`
    #
    # * Twitter: `api.twitter.com`
    #
    # * Digits: `www.digits.com`
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_name
    #   A string that you provide.
    #
    # @option params [required, Boolean] :allow_unauthenticated_identities
    #   TRUE if the identity pool supports unauthenticated logins.
    #
    # @option params [Hash<String,String>] :supported_login_providers
    #   Optional key:value pairs mapping provider names to provider app IDs.
    #
    # @option params [String] :developer_provider_name
    #   The "domain" by which Cognito will refer to your users. This name
    #   acts as a placeholder that allows your backend and the Cognito service
    #   to communicate about the developer provider. For the
    #   `DeveloperProviderName`, you can use letters as well as period (`.`),
    #   underscore (`_`), and dash (`-`).
    #
    #   Once you have set a developer provider name, you cannot change it.
    #   Please take care in setting this parameter.
    #
    # @option params [Array<String>] :open_id_connect_provider_arns
    #   A list of OpendID Connect provider ARNs.
    #
    # @option params [Array<Types::CognitoIdentityProvider>] :cognito_identity_providers
    #   An array of Amazon Cognito Identity user pools and their client IDs.
    #
    # @option params [Array<String>] :saml_provider_arns
    #   An array of Amazon Resource Names (ARNs) of the SAML provider for your
    #   identity pool.
    #
    # @return [Types::IdentityPool] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IdentityPool#identity_pool_id #identity_pool_id} => String
    #   * {Types::IdentityPool#identity_pool_name #identity_pool_name} => String
    #   * {Types::IdentityPool#allow_unauthenticated_identities #allow_unauthenticated_identities} => Boolean
    #   * {Types::IdentityPool#supported_login_providers #supported_login_providers} => Hash&lt;String,String&gt;
    #   * {Types::IdentityPool#developer_provider_name #developer_provider_name} => String
    #   * {Types::IdentityPool#open_id_connect_provider_arns #open_id_connect_provider_arns} => Array&lt;String&gt;
    #   * {Types::IdentityPool#cognito_identity_providers #cognito_identity_providers} => Array&lt;Types::CognitoIdentityProvider&gt;
    #   * {Types::IdentityPool#saml_provider_arns #saml_provider_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_identity_pool({
    #     identity_pool_name: "IdentityPoolName", # required
    #     allow_unauthenticated_identities: false, # required
    #     supported_login_providers: {
    #       "IdentityProviderName" => "IdentityProviderId",
    #     },
    #     developer_provider_name: "DeveloperProviderName",
    #     open_id_connect_provider_arns: ["ARNString"],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: "CognitoIdentityProviderName",
    #         client_id: "CognitoIdentityProviderClientId",
    #         server_side_token_check: false,
    #       },
    #     ],
    #     saml_provider_arns: ["ARNString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #   resp.identity_pool_name #=> String
    #   resp.allow_unauthenticated_identities #=> Boolean
    #   resp.supported_login_providers #=> Hash
    #   resp.supported_login_providers["IdentityProviderName"] #=> String
    #   resp.developer_provider_name #=> String
    #   resp.open_id_connect_provider_arns #=> Array
    #   resp.open_id_connect_provider_arns[0] #=> String
    #   resp.cognito_identity_providers #=> Array
    #   resp.cognito_identity_providers[0].provider_name #=> String
    #   resp.cognito_identity_providers[0].client_id #=> String
    #   resp.cognito_identity_providers[0].server_side_token_check #=> Boolean
    #   resp.saml_provider_arns #=> Array
    #   resp.saml_provider_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/CreateIdentityPool AWS API Documentation
    #
    # @overload create_identity_pool(params = {})
    # @param [Hash] params ({})
    def create_identity_pool(params = {}, options = {})
      req = build_request(:create_identity_pool, params)
      req.send_request(options)
    end

    # Deletes identities from an identity pool. You can specify a list of
    # 1-60 identities that you want to delete.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, Array<String>] :identity_ids_to_delete
    #   A list of 1-60 identities that you want to delete.
    #
    # @return [Types::DeleteIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteIdentitiesResponse#unprocessed_identity_ids #unprocessed_identity_ids} => Array&lt;Types::UnprocessedIdentityId&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identities({
    #     identity_ids_to_delete: ["IdentityId"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.unprocessed_identity_ids #=> Array
    #   resp.unprocessed_identity_ids[0].identity_id #=> String
    #   resp.unprocessed_identity_ids[0].error_code #=> String, one of "AccessDenied", "InternalServerError"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DeleteIdentities AWS API Documentation
    #
    # @overload delete_identities(params = {})
    # @param [Hash] params ({})
    def delete_identities(params = {}, options = {})
      req = build_request(:delete_identities, params)
      req.send_request(options)
    end

    # Deletes a user pool. Once a pool is deleted, users will not be able to
    # authenticate with the pool.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_identity_pool({
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DeleteIdentityPool AWS API Documentation
    #
    # @overload delete_identity_pool(params = {})
    # @param [Hash] params ({})
    def delete_identity_pool(params = {}, options = {})
      req = build_request(:delete_identity_pool, params)
      req.send_request(options)
    end

    # Returns metadata related to the given identity, including when the
    # identity was created and any associated linked logins.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_id
    #   A unique identifier in the format REGION:GUID.
    #
    # @return [Types::IdentityDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IdentityDescription#identity_id #identity_id} => String
    #   * {Types::IdentityDescription#logins #logins} => Array&lt;String&gt;
    #   * {Types::IdentityDescription#creation_date #creation_date} => Time
    #   * {Types::IdentityDescription#last_modified_date #last_modified_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity({
    #     identity_id: "IdentityId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_id #=> String
    #   resp.logins #=> Array
    #   resp.logins[0] #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DescribeIdentity AWS API Documentation
    #
    # @overload describe_identity(params = {})
    # @param [Hash] params ({})
    def describe_identity(params = {}, options = {})
      req = build_request(:describe_identity, params)
      req.send_request(options)
    end

    # Gets details about a particular identity pool, including the pool
    # name, ID description, creation date, and current number of users.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @return [Types::IdentityPool] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IdentityPool#identity_pool_id #identity_pool_id} => String
    #   * {Types::IdentityPool#identity_pool_name #identity_pool_name} => String
    #   * {Types::IdentityPool#allow_unauthenticated_identities #allow_unauthenticated_identities} => Boolean
    #   * {Types::IdentityPool#supported_login_providers #supported_login_providers} => Hash&lt;String,String&gt;
    #   * {Types::IdentityPool#developer_provider_name #developer_provider_name} => String
    #   * {Types::IdentityPool#open_id_connect_provider_arns #open_id_connect_provider_arns} => Array&lt;String&gt;
    #   * {Types::IdentityPool#cognito_identity_providers #cognito_identity_providers} => Array&lt;Types::CognitoIdentityProvider&gt;
    #   * {Types::IdentityPool#saml_provider_arns #saml_provider_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_identity_pool({
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #   resp.identity_pool_name #=> String
    #   resp.allow_unauthenticated_identities #=> Boolean
    #   resp.supported_login_providers #=> Hash
    #   resp.supported_login_providers["IdentityProviderName"] #=> String
    #   resp.developer_provider_name #=> String
    #   resp.open_id_connect_provider_arns #=> Array
    #   resp.open_id_connect_provider_arns[0] #=> String
    #   resp.cognito_identity_providers #=> Array
    #   resp.cognito_identity_providers[0].provider_name #=> String
    #   resp.cognito_identity_providers[0].client_id #=> String
    #   resp.cognito_identity_providers[0].server_side_token_check #=> Boolean
    #   resp.saml_provider_arns #=> Array
    #   resp.saml_provider_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/DescribeIdentityPool AWS API Documentation
    #
    # @overload describe_identity_pool(params = {})
    # @param [Hash] params ({})
    def describe_identity_pool(params = {}, options = {})
      req = build_request(:describe_identity_pool, params)
      req.send_request(options)
    end

    # Returns credentials for the provided identity ID. Any provided logins
    # will be validated against supported login providers. If the token is
    # for cognito-identity.amazonaws.com, it will be passed through to AWS
    # Security Token Service with the appropriate role for the token.
    #
    # This is a public API. You do not need any credentials to call this
    # API.
    #
    # @option params [required, String] :identity_id
    #   A unique identifier in the format REGION:GUID.
    #
    # @option params [Hash<String,String>] :logins
    #   A set of optional name-value pairs that map provider names to provider
    #   tokens.
    #
    # @option params [String] :custom_role_arn
    #   The Amazon Resource Name (ARN) of the role to be assumed when multiple
    #   roles were received in the token from the identity provider. For
    #   example, a SAML-based identity provider. This parameter is optional
    #   for identity providers that do not support role customization.
    #
    # @return [Types::GetCredentialsForIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCredentialsForIdentityResponse#identity_id #identity_id} => String
    #   * {Types::GetCredentialsForIdentityResponse#credentials #credentials} => Types::Credentials
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_credentials_for_identity({
    #     identity_id: "IdentityId", # required
    #     logins: {
    #       "IdentityProviderName" => "IdentityProviderToken",
    #     },
    #     custom_role_arn: "ARNString",
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_id #=> String
    #   resp.credentials.access_key_id #=> String
    #   resp.credentials.secret_key #=> String
    #   resp.credentials.session_token #=> String
    #   resp.credentials.expiration #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetCredentialsForIdentity AWS API Documentation
    #
    # @overload get_credentials_for_identity(params = {})
    # @param [Hash] params ({})
    def get_credentials_for_identity(params = {}, options = {})
      req = build_request(:get_credentials_for_identity, params)
      req.send_request(options)
    end

    # Generates (or retrieves) a Cognito ID. Supplying multiple logins will
    # create an implicit linked account.
    #
    # This is a public API. You do not need any credentials to call this
    # API.
    #
    # @option params [String] :account_id
    #   A standard AWS account ID (9+ digits).
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @option params [Hash<String,String>] :logins
    #   A set of optional name-value pairs that map provider names to provider
    #   tokens. The available provider names for `Logins` are as follows:
    #
    #   * Facebook: `graph.facebook.com`
    #
    #   * Amazon Cognito Identity Provider:
    #     `cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789`
    #
    #   * Google: `accounts.google.com`
    #
    #   * Amazon: `www.amazon.com`
    #
    #   * Twitter: `api.twitter.com`
    #
    #   * Digits: `www.digits.com`
    #
    # @return [Types::GetIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdResponse#identity_id #identity_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_id({
    #     account_id: "AccountId",
    #     identity_pool_id: "IdentityPoolId", # required
    #     logins: {
    #       "IdentityProviderName" => "IdentityProviderToken",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetId AWS API Documentation
    #
    # @overload get_id(params = {})
    # @param [Hash] params ({})
    def get_id(params = {}, options = {})
      req = build_request(:get_id, params)
      req.send_request(options)
    end

    # Gets the roles for an identity pool.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @return [Types::GetIdentityPoolRolesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIdentityPoolRolesResponse#identity_pool_id #identity_pool_id} => String
    #   * {Types::GetIdentityPoolRolesResponse#roles #roles} => Hash&lt;String,String&gt;
    #   * {Types::GetIdentityPoolRolesResponse#role_mappings #role_mappings} => Hash&lt;String,Types::RoleMapping&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_identity_pool_roles({
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #   resp.roles #=> Hash
    #   resp.roles["RoleType"] #=> String
    #   resp.role_mappings #=> Hash
    #   resp.role_mappings["IdentityProviderName"].type #=> String, one of "Token", "Rules"
    #   resp.role_mappings["IdentityProviderName"].ambiguous_role_resolution #=> String, one of "AuthenticatedRole", "Deny"
    #   resp.role_mappings["IdentityProviderName"].rules_configuration.rules #=> Array
    #   resp.role_mappings["IdentityProviderName"].rules_configuration.rules[0].claim #=> String
    #   resp.role_mappings["IdentityProviderName"].rules_configuration.rules[0].match_type #=> String, one of "Equals", "Contains", "StartsWith", "NotEqual"
    #   resp.role_mappings["IdentityProviderName"].rules_configuration.rules[0].value #=> String
    #   resp.role_mappings["IdentityProviderName"].rules_configuration.rules[0].role_arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetIdentityPoolRoles AWS API Documentation
    #
    # @overload get_identity_pool_roles(params = {})
    # @param [Hash] params ({})
    def get_identity_pool_roles(params = {}, options = {})
      req = build_request(:get_identity_pool_roles, params)
      req.send_request(options)
    end

    # Gets an OpenID token, using a known Cognito ID. This known Cognito ID
    # is returned by GetId. You can optionally add additional logins for the
    # identity. Supplying multiple logins creates an implicit link.
    #
    # The OpenId token is valid for 15 minutes.
    #
    # This is a public API. You do not need any credentials to call this
    # API.
    #
    # @option params [required, String] :identity_id
    #   A unique identifier in the format REGION:GUID.
    #
    # @option params [Hash<String,String>] :logins
    #   A set of optional name-value pairs that map provider names to provider
    #   tokens. When using graph.facebook.com and www.amazon.com, supply the
    #   access\_token returned from the provider's authflow. For
    #   accounts.google.com, an Amazon Cognito Identity Provider, or any other
    #   OpenId Connect provider, always include the `id_token`.
    #
    # @return [Types::GetOpenIdTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpenIdTokenResponse#identity_id #identity_id} => String
    #   * {Types::GetOpenIdTokenResponse#token #token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_open_id_token({
    #     identity_id: "IdentityId", # required
    #     logins: {
    #       "IdentityProviderName" => "IdentityProviderToken",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_id #=> String
    #   resp.token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetOpenIdToken AWS API Documentation
    #
    # @overload get_open_id_token(params = {})
    # @param [Hash] params ({})
    def get_open_id_token(params = {}, options = {})
      req = build_request(:get_open_id_token, params)
      req.send_request(options)
    end

    # Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect
    # token for a user authenticated by your backend authentication process.
    # Supplying multiple logins will create an implicit linked account. You
    # can only specify one developer provider as part of the `Logins` map,
    # which is linked to the identity pool. The developer provider is the
    # "domain" by which Cognito will refer to your users.
    #
    # You can use `GetOpenIdTokenForDeveloperIdentity` to create a new
    # identity and to link new logins (that is, user credentials issued by a
    # public provider or developer provider) to an existing identity. When
    # you want to create a new identity, the `IdentityId` should be null.
    # When you want to associate a new login with an existing
    # authenticated/unauthenticated identity, you can do so by providing the
    # existing `IdentityId`. This API will create the identity in the
    # specified `IdentityPoolId`.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @option params [String] :identity_id
    #   A unique identifier in the format REGION:GUID.
    #
    # @option params [required, Hash<String,String>] :logins
    #   A set of optional name-value pairs that map provider names to provider
    #   tokens. Each name-value pair represents a user from a public provider
    #   or developer provider. If the user is from a developer provider, the
    #   name-value pair will follow the syntax `"developer_provider_name":
    #   "developer_user_identifier"`. The developer provider is the "domain"
    #   by which Cognito will refer to your users; you provided this domain
    #   while creating/updating the identity pool. The developer user
    #   identifier is an identifier from your backend that uniquely identifies
    #   a user. When you create an identity pool, you can specify the
    #   supported logins.
    #
    # @option params [Integer] :token_duration
    #   The expiration time of the token, in seconds. You can specify a custom
    #   expiration time for the token so that you can cache it. If you don't
    #   provide an expiration time, the token is valid for 15 minutes. You can
    #   exchange the token with Amazon STS for temporary AWS credentials,
    #   which are valid for a maximum of one hour. The maximum token duration
    #   you can set is 24 hours. You should take care in setting the
    #   expiration time for a token, as there are significant security
    #   implications: an attacker could use a leaked token to access your AWS
    #   resources for the token's duration.
    #
    # @return [Types::GetOpenIdTokenForDeveloperIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOpenIdTokenForDeveloperIdentityResponse#identity_id #identity_id} => String
    #   * {Types::GetOpenIdTokenForDeveloperIdentityResponse#token #token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_open_id_token_for_developer_identity({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId",
    #     logins: { # required
    #       "IdentityProviderName" => "IdentityProviderToken",
    #     },
    #     token_duration: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_id #=> String
    #   resp.token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/GetOpenIdTokenForDeveloperIdentity AWS API Documentation
    #
    # @overload get_open_id_token_for_developer_identity(params = {})
    # @param [Hash] params ({})
    def get_open_id_token_for_developer_identity(params = {}, options = {})
      req = build_request(:get_open_id_token_for_developer_identity, params)
      req.send_request(options)
    end

    # Lists the identities in a pool.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of identities to return.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @option params [Boolean] :hide_disabled
    #   An optional boolean parameter that allows you to hide disabled
    #   identities. If omitted, the ListIdentities API will include disabled
    #   identities in the response.
    #
    # @return [Types::ListIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentitiesResponse#identity_pool_id #identity_pool_id} => String
    #   * {Types::ListIdentitiesResponse#identities #identities} => Array&lt;Types::IdentityDescription&gt;
    #   * {Types::ListIdentitiesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identities({
    #     identity_pool_id: "IdentityPoolId", # required
    #     max_results: 1, # required
    #     next_token: "PaginationKey",
    #     hide_disabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #   resp.identities #=> Array
    #   resp.identities[0].identity_id #=> String
    #   resp.identities[0].logins #=> Array
    #   resp.identities[0].logins[0] #=> String
    #   resp.identities[0].creation_date #=> Time
    #   resp.identities[0].last_modified_date #=> Time
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/ListIdentities AWS API Documentation
    #
    # @overload list_identities(params = {})
    # @param [Hash] params ({})
    def list_identities(params = {}, options = {})
      req = build_request(:list_identities, params)
      req.send_request(options)
    end

    # Lists all of the Cognito identity pools registered for your account.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, Integer] :max_results
    #   The maximum number of identities to return.
    #
    # @option params [String] :next_token
    #   A pagination token.
    #
    # @return [Types::ListIdentityPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIdentityPoolsResponse#identity_pools #identity_pools} => Array&lt;Types::IdentityPoolShortDescription&gt;
    #   * {Types::ListIdentityPoolsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_identity_pools({
    #     max_results: 1, # required
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pools #=> Array
    #   resp.identity_pools[0].identity_pool_id #=> String
    #   resp.identity_pools[0].identity_pool_name #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/ListIdentityPools AWS API Documentation
    #
    # @overload list_identity_pools(params = {})
    # @param [Hash] params ({})
    def list_identity_pools(params = {}, options = {})
      req = build_request(:list_identity_pools, params)
      req.send_request(options)
    end

    # Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier`
    # or the list of `DeveloperUserIdentifier`s associated with an
    # `IdentityId` for an existing identity. Either `IdentityID` or
    # `DeveloperUserIdentifier` must not be null. If you supply only one of
    # these values, the other value will be searched in the database and
    # returned as a part of the response. If you supply both,
    # `DeveloperUserIdentifier` will be matched against `IdentityID`. If the
    # values are verified against the database, the response returns both
    # values and is the same as the request. Otherwise a
    # `ResourceConflictException` is thrown.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @option params [String] :identity_id
    #   A unique identifier in the format REGION:GUID.
    #
    # @option params [String] :developer_user_identifier
    #   A unique ID used by your backend authentication process to identify a
    #   user. Typically, a developer identity provider would issue many
    #   developer user identifiers, in keeping with the number of users.
    #
    # @option params [Integer] :max_results
    #   The maximum number of identities to return.
    #
    # @option params [String] :next_token
    #   A pagination token. The first call you make will have `NextToken` set
    #   to null. After that the service will return `NextToken` values as
    #   needed. For example, let's say you make a request with `MaxResults`
    #   set to 10, and there are 20 matches in the database. The service will
    #   return a pagination token as a part of the response. This token can be
    #   used to call the API again and get results starting from the 11th
    #   match.
    #
    # @return [Types::LookupDeveloperIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::LookupDeveloperIdentityResponse#identity_id #identity_id} => String
    #   * {Types::LookupDeveloperIdentityResponse#developer_user_identifier_list #developer_user_identifier_list} => Array&lt;String&gt;
    #   * {Types::LookupDeveloperIdentityResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.lookup_developer_identity({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_id: "IdentityId",
    #     developer_user_identifier: "DeveloperUserIdentifier",
    #     max_results: 1,
    #     next_token: "PaginationKey",
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_id #=> String
    #   resp.developer_user_identifier_list #=> Array
    #   resp.developer_user_identifier_list[0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/LookupDeveloperIdentity AWS API Documentation
    #
    # @overload lookup_developer_identity(params = {})
    # @param [Hash] params ({})
    def lookup_developer_identity(params = {}, options = {})
      req = build_request(:lookup_developer_identity, params)
      req.send_request(options)
    end

    # Merges two users having different `IdentityId`s, existing in the same
    # identity pool, and identified by the same developer provider. You can
    # use this action to request that discrete users be merged and
    # identified as a single user in the Cognito environment. Cognito
    # associates the given source user (`SourceUserIdentifier`) with the
    # `IdentityId` of the `DestinationUserIdentifier`. Only
    # developer-authenticated users can be merged. If the users to be merged
    # are associated with the same public provider, but as two different
    # users, an exception will be thrown.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :source_user_identifier
    #   User identifier for the source user. The value should be a
    #   `DeveloperUserIdentifier`.
    #
    # @option params [required, String] :destination_user_identifier
    #   User identifier for the destination user. The value should be a
    #   `DeveloperUserIdentifier`.
    #
    # @option params [required, String] :developer_provider_name
    #   The "domain" by which Cognito will refer to your users. This is a
    #   (pseudo) domain name that you provide while creating an identity pool.
    #   This name acts as a placeholder that allows your backend and the
    #   Cognito service to communicate about the developer provider. For the
    #   `DeveloperProviderName`, you can use letters as well as period (.),
    #   underscore (\_), and dash (-).
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @return [Types::MergeDeveloperIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::MergeDeveloperIdentitiesResponse#identity_id #identity_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_developer_identities({
    #     source_user_identifier: "DeveloperUserIdentifier", # required
    #     destination_user_identifier: "DeveloperUserIdentifier", # required
    #     developer_provider_name: "DeveloperProviderName", # required
    #     identity_pool_id: "IdentityPoolId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/MergeDeveloperIdentities AWS API Documentation
    #
    # @overload merge_developer_identities(params = {})
    # @param [Hash] params ({})
    def merge_developer_identities(params = {}, options = {})
      req = build_request(:merge_developer_identities, params)
      req.send_request(options)
    end

    # Sets the roles for an identity pool. These roles are used when making
    # calls to GetCredentialsForIdentity action.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @option params [required, Hash<String,String>] :roles
    #   The map of roles associated with this pool. For a given role, the key
    #   will be either "authenticated" or "unauthenticated" and the value
    #   will be the Role ARN.
    #
    # @option params [Hash<String,Types::RoleMapping>] :role_mappings
    #   How users for a specific identity provider are to mapped to roles.
    #   This is a string to RoleMapping object map. The string identifies the
    #   identity provider, for example, "graph.facebook.com" or
    #   "cognito-idp-east-1.amazonaws.com/us-east-1\_abcdefghi:app\_client\_id".
    #
    #   Up to 25 rules can be specified per identity provider.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_identity_pool_roles({
    #     identity_pool_id: "IdentityPoolId", # required
    #     roles: { # required
    #       "RoleType" => "ARNString",
    #     },
    #     role_mappings: {
    #       "IdentityProviderName" => {
    #         type: "Token", # required, accepts Token, Rules
    #         ambiguous_role_resolution: "AuthenticatedRole", # accepts AuthenticatedRole, Deny
    #         rules_configuration: {
    #           rules: [ # required
    #             {
    #               claim: "ClaimName", # required
    #               match_type: "Equals", # required, accepts Equals, Contains, StartsWith, NotEqual
    #               value: "ClaimValue", # required
    #               role_arn: "ARNString", # required
    #             },
    #           ],
    #         },
    #       },
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/SetIdentityPoolRoles AWS API Documentation
    #
    # @overload set_identity_pool_roles(params = {})
    # @param [Hash] params ({})
    def set_identity_pool_roles(params = {}, options = {})
      req = build_request(:set_identity_pool_roles, params)
      req.send_request(options)
    end

    # Unlinks a `DeveloperUserIdentifier` from an existing identity.
    # Unlinked developer users will be considered new identities next time
    # they are seen. If, for a given Cognito identity, you remove all
    # federated identities as well as the developer user identifier, the
    # Cognito identity becomes inaccessible.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_id
    #   A unique identifier in the format REGION:GUID.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @option params [required, String] :developer_provider_name
    #   The "domain" by which Cognito will refer to your users.
    #
    # @option params [required, String] :developer_user_identifier
    #   A unique ID used by your backend authentication process to identify a
    #   user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unlink_developer_identity({
    #     identity_id: "IdentityId", # required
    #     identity_pool_id: "IdentityPoolId", # required
    #     developer_provider_name: "DeveloperProviderName", # required
    #     developer_user_identifier: "DeveloperUserIdentifier", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UnlinkDeveloperIdentity AWS API Documentation
    #
    # @overload unlink_developer_identity(params = {})
    # @param [Hash] params ({})
    def unlink_developer_identity(params = {}, options = {})
      req = build_request(:unlink_developer_identity, params)
      req.send_request(options)
    end

    # Unlinks a federated identity from an existing account. Unlinked logins
    # will be considered new identities next time they are seen. Removing
    # the last linked login will make this identity inaccessible.
    #
    # This is a public API. You do not need any credentials to call this
    # API.
    #
    # @option params [required, String] :identity_id
    #   A unique identifier in the format REGION:GUID.
    #
    # @option params [required, Hash<String,String>] :logins
    #   A set of optional name-value pairs that map provider names to provider
    #   tokens.
    #
    # @option params [required, Array<String>] :logins_to_remove
    #   Provider names to unlink from this identity.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.unlink_identity({
    #     identity_id: "IdentityId", # required
    #     logins: { # required
    #       "IdentityProviderName" => "IdentityProviderToken",
    #     },
    #     logins_to_remove: ["IdentityProviderName"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UnlinkIdentity AWS API Documentation
    #
    # @overload unlink_identity(params = {})
    # @param [Hash] params ({})
    def unlink_identity(params = {}, options = {})
      req = build_request(:unlink_identity, params)
      req.send_request(options)
    end

    # Updates a user pool.
    #
    # You must use AWS Developer credentials to call this API.
    #
    # @option params [required, String] :identity_pool_id
    #   An identity pool ID in the format REGION:GUID.
    #
    # @option params [required, String] :identity_pool_name
    #   A string that you provide.
    #
    # @option params [required, Boolean] :allow_unauthenticated_identities
    #   TRUE if the identity pool supports unauthenticated logins.
    #
    # @option params [Hash<String,String>] :supported_login_providers
    #   Optional key:value pairs mapping provider names to provider app IDs.
    #
    # @option params [String] :developer_provider_name
    #   The "domain" by which Cognito will refer to your users.
    #
    # @option params [Array<String>] :open_id_connect_provider_arns
    #   A list of OpendID Connect provider ARNs.
    #
    # @option params [Array<Types::CognitoIdentityProvider>] :cognito_identity_providers
    #   A list representing an Amazon Cognito Identity User Pool and its
    #   client ID.
    #
    # @option params [Array<String>] :saml_provider_arns
    #   An array of Amazon Resource Names (ARNs) of the SAML provider for your
    #   identity pool.
    #
    # @return [Types::IdentityPool] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::IdentityPool#identity_pool_id #identity_pool_id} => String
    #   * {Types::IdentityPool#identity_pool_name #identity_pool_name} => String
    #   * {Types::IdentityPool#allow_unauthenticated_identities #allow_unauthenticated_identities} => Boolean
    #   * {Types::IdentityPool#supported_login_providers #supported_login_providers} => Hash&lt;String,String&gt;
    #   * {Types::IdentityPool#developer_provider_name #developer_provider_name} => String
    #   * {Types::IdentityPool#open_id_connect_provider_arns #open_id_connect_provider_arns} => Array&lt;String&gt;
    #   * {Types::IdentityPool#cognito_identity_providers #cognito_identity_providers} => Array&lt;Types::CognitoIdentityProvider&gt;
    #   * {Types::IdentityPool#saml_provider_arns #saml_provider_arns} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_identity_pool({
    #     identity_pool_id: "IdentityPoolId", # required
    #     identity_pool_name: "IdentityPoolName", # required
    #     allow_unauthenticated_identities: false, # required
    #     supported_login_providers: {
    #       "IdentityProviderName" => "IdentityProviderId",
    #     },
    #     developer_provider_name: "DeveloperProviderName",
    #     open_id_connect_provider_arns: ["ARNString"],
    #     cognito_identity_providers: [
    #       {
    #         provider_name: "CognitoIdentityProviderName",
    #         client_id: "CognitoIdentityProviderClientId",
    #         server_side_token_check: false,
    #       },
    #     ],
    #     saml_provider_arns: ["ARNString"],
    #   })
    #
    # @example Response structure
    #
    #   resp.identity_pool_id #=> String
    #   resp.identity_pool_name #=> String
    #   resp.allow_unauthenticated_identities #=> Boolean
    #   resp.supported_login_providers #=> Hash
    #   resp.supported_login_providers["IdentityProviderName"] #=> String
    #   resp.developer_provider_name #=> String
    #   resp.open_id_connect_provider_arns #=> Array
    #   resp.open_id_connect_provider_arns[0] #=> String
    #   resp.cognito_identity_providers #=> Array
    #   resp.cognito_identity_providers[0].provider_name #=> String
    #   resp.cognito_identity_providers[0].client_id #=> String
    #   resp.cognito_identity_providers[0].server_side_token_check #=> Boolean
    #   resp.saml_provider_arns #=> Array
    #   resp.saml_provider_arns[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/cognito-identity-2014-06-30/UpdateIdentityPool AWS API Documentation
    #
    # @overload update_identity_pool(params = {})
    # @param [Hash] params ({})
    def update_identity_pool(params = {}, options = {})
      req = build_request(:update_identity_pool, params)
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
      context[:gem_name] = 'aws-sdk-cognitoidentity'
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
