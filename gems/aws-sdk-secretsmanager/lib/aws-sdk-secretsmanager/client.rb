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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:secretsmanager)

module Aws::SecretsManager
  # An API client for Aws::SecretsManager.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::Secretsmanager
    @identifier = :secretsmanager

    add_plugin(::Aws::SecretsManager::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SecretsManager::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
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
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
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
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Retrieves the contents of the encrypted fields <code>SecretString</code> or <code>SecretBinary</code> for up to 20 secrets.  To retrieve a single secret, call <a>GetSecretValue</a>. </p>
    #          <p>To choose which secrets to retrieve, you can specify a list of secrets by name or ARN, or you can use filters. If Secrets Manager encounters errors such as <code>AccessDeniedException</code> while attempting to retrieve any of the secrets, you can see the errors in <code>Errors</code> in the response.</p>
    #          <p>Secrets Manager generates CloudTrail <code>GetSecretValue</code> log entries for each secret you request when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:BatchGetSecretValue</code>, and you must have <code>secretsmanager:GetSecretValue</code> for each secret. If you use filters, you must also have <code>secretsmanager:ListSecrets</code>. If the secrets are encrypted using customer-managed keys instead of the Amazon Web Services managed key 
    #       <code>aws/secretsmanager</code>, then you also need <code>kms:Decrypt</code> permissions for the keys.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::BatchGetSecretValueRequest] params
    # @option params [Array<String>] :secret_id_list
    #   <p>The ARN or names of the secrets to retrieve. You must include <code>Filters</code> or <code>SecretIdList</code>, but not both.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>The filters to choose which secrets to retrieve. You must include <code>Filters</code> or <code>SecretIdList</code>, but not both.</p>
    # @option params [Integer] :max_results
    #   <p>The number of results to include in the response.</p>
    #            <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>. 
    #       To get the next results, call <code>BatchGetSecretValue</code> again with the value from 
    #       <code>NextToken</code>. To use this parameter, you must also use the <code>Filters</code> parameter.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a 
    #       previous call did not show all results. To get the next results, call <code>BatchGetSecretValue</code> again 
    #       with this value.</p>
    # @example To retrieve the secret values for a group of secrets listed by name
    #   # The following example gets the values for three secrets.
    #   params = {
    #     secret_id_list: [
    #       "MySecret1",
    #       "MySecret2",
    #       "MySecret3"
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_secret_value(params, options)
    #   response.to_h #=>
    #   {
    #     secret_values: [
    #       {
    #         arn: "&region-arn;&asm-service-name;:us-west-2:&ExampleAccountId;:secret:MySecret1-a1b2c3",
    #         created_date: Time.parse(1700591229.801),
    #         name: "MySecret1",
    #         secret_string: "{\"username\":\"diego_ramirez\",\"password\":\"EXAMPLE-PASSWORD\",\"engine\":\"mysql\",\"host\":\"secretsmanagertutorial.cluster.us-west-2.rds.amazonaws.com\",\"port\":3306,\"dbClusterIdentifier\":\"secretsmanagertutorial\"}",
    #         version_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLEaaaaa",
    #         version_stages: [
    #           "AWSCURRENT"
    #         ]
    #       },
    #       {
    #         arn: "&region-arn;&asm-service-name;:us-west-2:&ExampleAccountId;:secret:MySecret2-a1b2c3",
    #         created_date: Time.parse(1699911394.105),
    #         name: "MySecret2",
    #         secret_string: "{\"username\":\"akua_mansa\",\"password\":\"EXAMPLE-PASSWORD\"",
    #         version_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLEbbbbb",
    #         version_stages: [
    #           "AWSCURRENT"
    #         ]
    #       },
    #       {
    #         arn: "&region-arn;&asm-service-name;:us-west-2:&ExampleAccountId;:secret:MySecret3-a1b2c3",
    #         created_date: Time.parse(1699911394.105),
    #         name: "MySecret3",
    #         secret_string: "{\"username\":\"jie_liu\",\"password\":\"EXAMPLE-PASSWORD\"",
    #         version_id: "a1b2c3d4-5678-90ab-cdef-EXAMPLEccccc",
    #         version_stages: [
    #           "AWSCURRENT"
    #         ]
    #       }
    #     ],
    #     errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id_list: ["SecretIdType"],
    #     filters: [
    #       {
    #         key: "description" # One of: ["description", "name", "tag-key", "tag-value", "primary-region", "owning-service", "all"],
    #         values: ["FilterValueStringType"]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextTokenType"
    #   }
    #   options = {}
    #   response = client.batch_get_secret_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     secret_values: [
    #       {
    #         arn: "SecretARNType",
    #         name: "SecretNameType",
    #         version_id: "SecretVersionIdType",
    #         secret_binary: "data",
    #         secret_string: "SecretStringType",
    #         version_stages: ["SecretVersionStageType"],
    #         created_date: Time.now
    #       }
    #     ],
    #     next_token: "NextTokenType",
    #     errors: [
    #       {
    #         secret_id: "SecretIdType",
    #         error_code: "ErrorCode",
    #         message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetSecretValueResponse]
    def batch_get_secret_value(params = {}, options = {})
      request = build_request(:batch_get_secret_value, params)
      request.send_request(options)
    end

    # <p>Turns off automatic rotation, and if a rotation is currently in
    #       progress, cancels the rotation.</p>
    #          <p>If you cancel a rotation in progress, it can leave the <code>VersionStage</code>
    #       labels in an unexpected state. You might
    #       need to remove the staging label <code>AWSPENDING</code> from the partially created version. 
    #       You also need to determine whether to roll back to the previous version of the secret 
    #       by moving the staging label <code>AWSCURRENT</code> to the version that has <code>AWSPENDING</code>.
    #       To determine 
    #       which version has a specific staging label, call <a>ListSecretVersionIds</a>. Then use 
    #      <a>UpdateSecretVersionStage</a> to change staging labels. 
    #      For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_how.html">How rotation works</a>.</p>
    #          <p>To turn on automatic rotation again, call <a>RotateSecret</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:CancelRotateSecret</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::CancelRotateSecretRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @example To cancel scheduled rotation for a secret
    #   # The following example shows how to cancel rotation for a secret. The operation sets the RotationEnabled field to false and cancels all scheduled rotations. To resume scheduled rotations, you must re-enable rotation by calling the rotate-secret operation.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret"
    #   }
    #   options = {}
    #   response = client.cancel_rotate_secret(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "Name"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #   }
    #   options = {}
    #   response = client.cancel_rotate_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType",
    #     version_id: "SecretVersionIdType"
    #   }
    # @return [Types::CancelRotateSecretResponse]
    def cancel_rotate_secret(params = {}, options = {})
      request = build_request(:cancel_rotate_secret, params)
      request.send_request(options)
    end

    # <p>Creates a new secret. A <i>secret</i> can be a password, a set of 
    #       credentials such as a user name and password, an OAuth token, or other secret information 
    #       that you store in an encrypted form in Secrets Manager. The secret also 
    #       includes the connection information to access a database or other service, which Secrets Manager 
    #       doesn't encrypt. A secret in Secrets Manager consists of both the protected secret data and the
    #       important information needed to manage the secret.</p>
    #          <p>For secrets that use <i>managed rotation</i>, you need to create the secret through the managing service. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html">Secrets Manager secrets managed by other Amazon Web Services services</a>.
    # 
    #     </p>
    #          <p>For information about creating a secret in the console, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_create-basic-secret.html">Create a secret</a>.</p>
    #          <p>To create a secret, you can provide the secret value to be encrypted in either the
    #       <code>SecretString</code> parameter or the <code>SecretBinary</code> parameter, but not both. 
    #       If you include <code>SecretString</code> or <code>SecretBinary</code>
    #       then Secrets Manager creates an initial secret version and automatically attaches the staging
    #       label <code>AWSCURRENT</code> to it.</p>
    #          <p>For database credentials you want to rotate, for Secrets Manager to be able to rotate the secret,
    #       you must make sure the JSON you store in the <code>SecretString</code> matches the <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_secret_json_structure.html">JSON structure of
    #         a database secret</a>.</p>
    #          <p>If you don't specify an KMS encryption key, Secrets Manager uses the Amazon Web Services managed key 
    #       <code>aws/secretsmanager</code>. If this key 
    #       doesn't already exist in your account, then Secrets Manager creates it for you automatically. All
    #       users and roles in the Amazon Web Services account automatically have access to use <code>aws/secretsmanager</code>. 
    #       Creating <code>aws/secretsmanager</code> can result in a one-time significant delay in returning the 
    #       result.</p>
    #          <p>If the secret is in a different Amazon Web Services account from the credentials calling the API, then 
    #       you can't use <code>aws/secretsmanager</code> to encrypt the secret, and you must create 
    #       and use a customer managed KMS key. </p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters except <code>SecretBinary</code> or <code>SecretString</code> because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:CreateSecret</code>. If you 
    #       include tags in the secret, you also need <code>secretsmanager:TagResource</code>. To add replica Regions, you must also have <code>secretsmanager:ReplicateSecretToRegions</code>.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    #          <p>To encrypt the secret with a KMS key other than <code>aws/secretsmanager</code>, you need <code>kms:GenerateDataKey</code> and <code>kms:Decrypt</code> permission to the key. </p>
    #          <important>
    #             <p>When you enter commands in a command shell, there is a risk of the command history being accessed or utilities having access to your command parameters. This is a concern if the command includes the value of a secret. Learn how to <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html">Mitigate the risks of using command-line tools to store Secrets Manager secrets</a>.</p>
    #          </important>
    # @param [Hash, Types::CreateSecretRequest] params
    # @option params [String] :name
    #   <p>The name of the new secret.</p>
    #            <p>The secret name can contain ASCII letters, numbers, and the following characters:
    #         /_+=.@-</p>
    #            <p>Do not end your secret name with a hyphen followed by six characters. If you do so, you
    #           risk confusion and unexpected results when searching for a secret by partial ARN. Secrets Manager
    #           automatically adds a hyphen and six random characters after the secret name at the end of the ARN.</p>
    # @option params [String] :client_request_token
    #   <p>If you include <code>SecretString</code> or <code>SecretBinary</code>, then 
    #         Secrets Manager creates an initial version for the secret, and this parameter specifies the unique
    #         identifier for the new version. </p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. </p>
    #            </note>
    #            <p>If you generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> and include it in the request.</p>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
    #             of the secret then a new version of the secret is created. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and the version <code>SecretString</code>
    #             and <code>SecretBinary</code> values are the same as those in the request, then the
    #             request is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and that version's
    #             <code>SecretString</code> and <code>SecretBinary</code> values are different from those
    #             in the request, then the request fails because you cannot modify an existing version.
    #             Instead, use <a>PutSecretValue</a> to create a new version.</p>
    #               </li>
    #            </ul>
    #            <p>This value becomes the <code>VersionId</code> of the new version.</p>
    # @option params [String] :description
    #   <p>The description of the secret.</p>
    # @option params [String] :kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key that Secrets Manager uses to
    #         encrypt the secret value in the secret. An alias is always prefixed by <code>alias/</code>, 
    #         for example <code>alias/aws/secretsmanager</code>. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html">About aliases</a>.</p>
    #            <p>To use a KMS key in a different account, use the key ARN or the alias ARN.</p>
    #            <p>If you don't specify this value, then Secrets Manager uses the key <code>aws/secretsmanager</code>. 
    #         If that key doesn't yet exist, then Secrets Manager creates it for you automatically the first time it 
    #         encrypts the secret value.</p>
    #            <p>If the secret is in a different Amazon Web Services account from the credentials calling the API, then 
    #         you can't use <code>aws/secretsmanager</code> to encrypt the secret, and you must create 
    #         and use a customer managed KMS key. </p>
    # @option params [String] :secret_binary
    #   <p>The binary data to encrypt and store in the new version of
    #         the secret. We recommend that you store your binary data in a file and then pass the
    #         contents of the file as a parameter.</p>
    #            <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
    #         both.</p>
    #            <p>This parameter is not available in the Secrets Manager console.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    # @option params [String] :secret_string
    #   <p>The text data to encrypt and store in this new version of
    #         the secret. We recommend you use a JSON structure of key/value pairs for your secret value.</p>
    #            <p>Either <code>SecretString</code> or <code>SecretBinary</code> must have a value, but not
    #         both.</p>
    #            <p>If you create a secret by using the Secrets Manager console then Secrets Manager puts the protected
    #         secret text in only the <code>SecretString</code> parameter. The Secrets Manager console stores the
    #         information as a JSON structure of key/value pairs that a Lambda rotation function can parse.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to attach to the secret. Each tag
    #         is a key and value pair of strings in a JSON text string, for example:</p>
    #            <p>
    #               <code>[{"Key":"CostCenter","Value":"12345"},{"Key":"environment","Value":"production"}]</code>
    #            </p>
    #            <p>Secrets Manager tag key names are case sensitive. A tag with the key "ABC" is a different tag
    #         from one with key "abc".</p>
    #            <p>If you check tags in permissions policies as part of your
    #         security strategy, then adding or removing a tag can change permissions. If the
    #         completion of this operation would result in you losing your permissions for
    #         this secret, then Secrets Manager blocks the operation and returns an <code>Access Denied</code>
    #         error. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#tag-secrets-abac">Control 
    #           access to secrets using tags</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html#auth-and-access_tags2">Limit access to identities with tags that match secrets' tags</a>.</p>
    #            <p>For information about how to format a
    #         JSON parameter for the various command line tool environments, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json">Using JSON for
    #           Parameters</a>. If your command-line tool or SDK requires quotation marks around the parameter, you should
    #         use single quotes to avoid confusion with the double quotes required in the JSON text.</p>
    #            <p>For tag quotas and naming restrictions, see <a href="https://docs.aws.amazon.com/general/latest/gr/arg.html#taged-reference-quotas">Service quotas for Tagging</a> in the <i>Amazon Web Services General 
    #         Reference guide</i>.</p>
    # @option params [Array<Types::ReplicaRegionType>] :add_replica_regions
    #   <p>A list of Regions and KMS keys to replicate secrets.</p>
    # @option params [Boolean] :force_overwrite_replica_secret
    #   <p>Specifies whether to overwrite a secret with the same name in the
    #         destination Region. By default, secrets aren't overwritten.</p>
    # @example To create a basic secret
    #   # The following example shows how to create a secret. The credentials stored in the encrypted secret value are retrieved from a file on disk named mycreds.json.
    #   params = {
    #     name: "MyTestDatabaseSecret",
    #     description: "My test database secret created with the CLI",
    #     secret_string: "{\"username\":\"david\",\"password\":\"EXAMPLE-PASSWORD\"}",
    #     client_request_token: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1"
    #   }
    #   options = {}
    #   response = client.create_secret(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret",
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     description: "DescriptionType",
    #     kms_key_id: "KmsKeyIdType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #     tags: [
    #       {
    #         key: "TagKeyType",
    #         value: "TagValueType"
    #       }
    #     ],
    #     add_replica_regions: [
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType"
    #       }
    #     ],
    #     force_overwrite_replica_secret: false
    #   }
    #   options = {}
    #   response = client.create_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType",
    #     version_id: "SecretVersionIdType",
    #     replication_status: [
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType",
    #         status: "InSync" # One of: ["InSync", "Failed", "InProgress"],
    #         status_message: "StatusMessageType",
    #         last_accessed_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::CreateSecretResponse]
    def create_secret(params = {}, options = {})
      request = build_request(:create_secret, params)
      request.send_request(options)
    end

    # <p>Deletes the resource-based permission policy attached to the secret. To attach a policy to 
    #       a secret, use <a>PutResourcePolicy</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:DeleteResourcePolicy</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to delete the attached resource-based policy for.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @example To delete the resource-based policy attached to a secret
    #   # The following example shows how to delete the resource-based policy that is attached to a secret.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret"
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "NameType"
    #   }
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a secret and all of its versions. You can specify a recovery
    #       window during which you can restore the secret. The minimum recovery window is 7 days. 
    #       The default recovery window is 30 days. Secrets Manager attaches a <code>DeletionDate</code> stamp to
    #       the secret that specifies the end of the recovery window. At the end of the recovery window,
    #       Secrets Manager deletes the secret permanently.</p>
    #          <p>You can't delete a primary secret that is replicated to other Regions. You must first delete the 
    #     replicas using <a>RemoveRegionsFromReplication</a>, and then delete the primary secret. 
    #     When you delete a replica, it is deleted immediately.</p>
    #          <p>You can't directly delete a version of a secret. Instead, you remove all staging labels 
    #     from the version using <a>UpdateSecretVersionStage</a>. This marks the version as deprecated, 
    #     and then Secrets Manager can automatically delete the version in the background.</p>
    #          <p>To determine whether an application still uses a secret, you can create an Amazon CloudWatch alarm 
    #     to alert you to any attempts to access a secret during the recovery window. For more information, 
    #     see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/monitoring_cloudwatch_deleted-secrets.html">
    #     Monitor secrets scheduled for deletion</a>.</p>
    #          <p>Secrets Manager performs the permanent secret deletion at the end of the waiting period as a
    #         background task with low priority. There is no guarantee of a specific time after the
    #         recovery window for the permanent delete to occur.</p>
    #          <p>At any time before recovery window ends, you can use <a>RestoreSecret</a> to
    #       remove the <code>DeletionDate</code> and cancel the deletion of the secret.</p>
    #          <p>When a secret is scheduled for deletion, you cannot retrieve the secret value.
    #       You must first cancel the deletion with <a>RestoreSecret</a> and then you can retrieve the secret.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:DeleteSecret</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::DeleteSecretRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to delete.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [Integer] :recovery_window_in_days
    #   <p>The number of days from 7 to 30 that Secrets Manager waits before permanently deleting the
    #         secret. You can't use both this parameter and <code>ForceDeleteWithoutRecovery</code>
    #         in the same call. If you don't use either, then by default Secrets Manager uses a 30 day recovery window.</p>
    # @option params [Boolean] :force_delete_without_recovery
    #   <p>Specifies whether to delete the secret without any recovery window. You
    #         can't use both this parameter and <code>RecoveryWindowInDays</code> in the same
    #         call. If you don't use either, then by default Secrets Manager uses a 30 day recovery window.</p>
    #            <p>Secrets Manager performs the actual deletion with an asynchronous background process, so there might 
    #         be a short delay before the secret is permanently deleted. If you delete a secret and then 
    #         immediately create a secret with the same name, use appropriate back off and retry logic.</p>
    #            <p>If you forcibly delete an already deleted or nonexistent secret, the operation does not return <code>ResourceNotFoundException</code>.</p>
    #            <important>
    #               <p>Use this parameter with caution. This parameter causes the operation to skip the normal
    #           recovery window before the permanent deletion that Secrets Manager would normally impose with the
    #             <code>RecoveryWindowInDays</code> parameter. If you delete a secret with the
    #             <code>ForceDeleteWithoutRecovery</code> parameter, then you have no opportunity to recover
    #           the secret. You lose the secret permanently.</p>
    #            </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     recovery_window_in_days: 1,
    #     force_delete_without_recovery: false
    #   }
    #   options = {}
    #   response = client.delete_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType",
    #     deletion_date: Time.now
    #   }
    # @return [Types::DeleteSecretResponse]
    def delete_secret(params = {}, options = {})
      request = build_request(:delete_secret, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a secret. It does not include the encrypted secret value. Secrets Manager
    #       only returns fields that have a value in the response. </p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:DescribeSecret</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::DescribeSecretRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret. </p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #   }
    #   options = {}
    #   response = client.describe_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType",
    #     description: "DescriptionType",
    #     kms_key_id: "KmsKeyIdType",
    #     rotation_enabled: false,
    #     rotation_lambda_arn: "RotationLambdaARNType",
    #     rotation_rules: {
    #       automatically_after_days: 1,
    #       duration: "DurationType",
    #       schedule_expression: "ScheduleExpressionType"
    #     },
    #     last_rotated_date: Time.now,
    #     last_changed_date: Time.now,
    #     last_accessed_date: Time.now,
    #     deleted_date: Time.now,
    #     next_rotation_date: Time.now,
    #     tags: [
    #       {
    #         key: "TagKeyType",
    #         value: "TagValueType"
    #       }
    #     ],
    #     version_ids_to_stages: {
    #       "SecretVersionIdType" => ["SecretVersionStageType"]
    #     },
    #     owning_service: "OwningServiceType",
    #     created_date: Time.now,
    #     primary_region: "RegionType",
    #     replication_status: [
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType",
    #         status: "InSync" # One of: ["InSync", "Failed", "InProgress"],
    #         status_message: "StatusMessageType",
    #         last_accessed_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSecretResponse]
    def describe_secret(params = {}, options = {})
      request = build_request(:describe_secret, params)
      request.send_request(options)
    end

    # <p>Generates a random password. We recommend that you specify the
    #       maximum length and include every character type that the system you are generating a password
    #       for can support. By default, Secrets Manager uses uppercase and lowercase letters, numbers, and the following characters in passwords: <code>!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~</code>
    #          </p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:GetRandomPassword</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::GetRandomPasswordRequest] params
    # @option params [Integer] :password_length
    #   <p>The length of the password. If you don't include this parameter, the 
    #         default length is 32 characters.</p>
    # @option params [String] :exclude_characters
    #   <p>A string of the characters that you don't want in the password.</p>
    # @option params [Boolean] :exclude_numbers
    #   <p>Specifies whether to exclude numbers from the password. If you don't 
    #         include this switch, the password can contain numbers.</p>
    # @option params [Boolean] :exclude_punctuation
    #   <p>Specifies whether to exclude the following punctuation characters from the password: 
    #         <code>! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` { | } ~</code>. 
    #         If you don't include this switch, the password can contain punctuation.</p>
    # @option params [Boolean] :exclude_uppercase
    #   <p>Specifies whether to exclude uppercase letters from the password. If you 
    #         don't include this switch, the password can contain uppercase letters.</p>
    # @option params [Boolean] :exclude_lowercase
    #   <p>Specifies whether to exclude lowercase letters from the password. If
    #         you don't include this switch, the password can contain lowercase letters.</p>
    # @option params [Boolean] :include_space
    #   <p>Specifies whether to include the space character. If you 
    #         include this switch, the password can contain space characters.</p>
    # @option params [Boolean] :require_each_included_type
    #   <p>Specifies whether to include at least one upper and lowercase letter, one number, and one punctuation. 
    #         If you don't include this switch, the password contains at least one of every character type.</p>
    # @example To generate a random password
    #   # The following example shows how to request a randomly generated password. This example includes the optional flags to require spaces and at least one character of each included type. It specifies a length of 20 characters.
    #   params = {
    #     password_length: 20,
    #     include_space: true,
    #     require_each_included_type: true
    #   }
    #   options = {}
    #   response = client.get_random_password(params, options)
    #   response.to_h #=>
    #   {
    #     random_password: "EXAMPLE-PASSWORD"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     password_length: 1,
    #     exclude_characters: "ExcludeCharactersType",
    #     exclude_numbers: false,
    #     exclude_punctuation: false,
    #     exclude_uppercase: false,
    #     exclude_lowercase: false,
    #     include_space: false,
    #     require_each_included_type: false
    #   }
    #   options = {}
    #   response = client.get_random_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     random_password: "RandomPasswordType"
    #   }
    # @return [Types::GetRandomPasswordResponse]
    def get_random_password(params = {}, options = {})
      request = build_request(:get_random_password, params)
      request.send_request(options)
    end

    # <p>Retrieves the JSON text of the resource-based policy document attached to the
    #       secret. For more information about permissions policies attached to a secret, see 
    #       <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-policies.html">Permissions 
    #         policies attached to a secret</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:GetResourcePolicy</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to retrieve the attached resource-based policy for.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @example To retrieve the resource-based policy attached to a secret
    #   # The following example shows how to retrieve the resource-based policy that is attached to a secret.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret"
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret",
    #     resource_policy: "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "NameType",
    #     resource_policy: "NonEmptyResourcePolicyType"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the contents of the encrypted fields <code>SecretString</code> or
    #         <code>SecretBinary</code> from the specified version of a secret, whichever contains
    #       content.</p>
    #          <p>To retrieve the values for a group of secrets, call <a>BatchGetSecretValue</a>.</p>
    #          <p>We recommend that you cache your secret values by using client-side caching. 
    #       Caching secrets improves speed and reduces your costs. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieving-secrets.html">Cache secrets for 
    #         your applications</a>.</p>
    #          <p>To retrieve the previous version of a secret, use <code>VersionStage</code> and specify 
    #       AWSPREVIOUS. To revert to the previous version of a secret, call <a href="https://docs.aws.amazon.com/cli/latest/reference/secretsmanager/update-secret-version-stage.html">UpdateSecretVersionStage</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:GetSecretValue</code>. 
    #       If the secret is encrypted using a customer-managed key instead of the Amazon Web Services managed key 
    #       <code>aws/secretsmanager</code>, then you also need <code>kms:Decrypt</code> permissions for that key.
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::GetSecretValueRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to retrieve. To retrieve a secret from another account, you must use an ARN.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [String] :version_id
    #   <p>The unique identifier of the version of the secret to retrieve. If
    #         you include both this parameter and <code>VersionStage</code>, the two parameters must refer
    #         to the same secret version. If you don't specify either a <code>VersionStage</code> or
    #           <code>VersionId</code>, then Secrets Manager returns the <code>AWSCURRENT</code> version.</p>
    #            <p>This value is typically a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value with
    #         32 hexadecimal digits.</p>
    # @option params [String] :version_stage
    #   <p>The staging label of the version of the secret to retrieve. </p>
    #            <p>Secrets Manager uses staging labels to keep track of different versions during the rotation process.
    #         If you include both this parameter and <code>VersionId</code>, the two parameters must refer
    #         to the same secret version. If you don't specify either a <code>VersionStage</code> or
    #         <code>VersionId</code>, Secrets Manager returns the <code>AWSCURRENT</code> version.</p>
    # @example To retrieve the encrypted secret value of a secret
    #   # The following example shows how to retrieve a secret string value.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret"
    #   }
    #   options = {}
    #   response = client.get_secret_value(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     created_date: Time.parse(1523477145.713),
    #     name: "MyTestDatabaseSecret",
    #     secret_string: "{\n  \"username\":\"david\",\n  \"password\":\"EXAMPLE-PASSWORD\"\n}\n",
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
    #     version_stages: [
    #       "AWSPREVIOUS"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     version_id: "SecretVersionIdType",
    #     version_stage: "SecretVersionStageType"
    #   }
    #   options = {}
    #   response = client.get_secret_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType",
    #     version_id: "SecretVersionIdType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #     version_stages: ["SecretVersionStageType"],
    #     created_date: Time.now
    #   }
    # @return [Types::GetSecretValueResponse]
    def get_secret_value(params = {}, options = {})
      request = build_request(:get_secret_value, params)
      request.send_request(options)
    end

    # <p>Lists the versions of a secret. Secrets Manager uses staging labels to indicate the different versions 
    #     of a secret. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version">
    #     Secrets Manager concepts: Versions</a>.</p>
    #          <p>To list the secrets in the account, use <a>ListSecrets</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:ListSecretVersionIds</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::ListSecretVersionIdsRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret whose versions you want to list.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [Integer] :max_results
    #   <p>The number of results to include in the response.</p>
    #            <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>. 
    #         To get the next results, call <code>ListSecretVersionIds</code> again with the value from <code>NextToken</code>. </p>
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a previous call 
    #         did not show all results. To get the next results, call <code>ListSecretVersionIds</code> again with 
    #         this value.</p>
    # @option params [Boolean] :include_deprecated
    #   <p>Specifies whether to include versions of secrets that don't have any
    #         staging labels attached to them. Versions without staging labels are considered deprecated and are subject to
    #         deletion by Secrets Manager. By default, versions without staging labels aren't included.</p>
    # @example To list all of the secret versions associated with a secret
    #   # The following example shows how to retrieve a list of all of the versions of a secret, including those without any staging labels.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     include_deprecated: true
    #   }
    #   options = {}
    #   response = client.list_secret_version_ids(params, options)
    #   response.to_h #=>
    #   {
    #     versions: [
    #       {
    #         version_id: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE",
    #         version_stages: [
    #           "AWSPREVIOUS"
    #         ],
    #         created_date: Time.parse(1523477145.713)
    #       },
    #       {
    #         version_id: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE",
    #         version_stages: [
    #           "AWSCURRENT"
    #         ],
    #         created_date: Time.parse(1523486221.391)
    #       },
    #       {
    #         created_date: Time.parse(1511974462.36),
    #         version_id: "EXAMPLE3-90ab-cdef-fedc-ba987EXAMPLE;"
    #       }
    #     ],
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     max_results: 1,
    #     next_token: "NextTokenType",
    #     include_deprecated: false
    #   }
    #   options = {}
    #   response = client.list_secret_version_ids(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     versions: [
    #       {
    #         version_id: "SecretVersionIdType",
    #         version_stages: ["SecretVersionStageType"],
    #         last_accessed_date: Time.now,
    #         created_date: Time.now,
    #         kms_key_ids: ["KmsKeyIdType"]
    #       }
    #     ],
    #     next_token: "NextTokenType",
    #     arn: "SecretARNType",
    #     name: "SecretNameType"
    #   }
    # @return [Types::ListSecretVersionIdsResponse]
    def list_secret_version_ids(params = {}, options = {})
      request = build_request(:list_secret_version_ids, params)
      request.send_request(options)
    end

    # <p>Lists the secrets that are stored by Secrets Manager in the Amazon Web Services account, not including secrets 
    #       that are marked for deletion. To see secrets marked for deletion, use the Secrets Manager console.</p>
    #          <p>All Secrets Manager operations are eventually consistent. ListSecrets might not reflect changes from the last five minutes. You can get more recent information for a specific secret by calling <a>DescribeSecret</a>.</p>
    #          <p>To list the versions of a secret, use <a>ListSecretVersionIds</a>.</p>
    #          <p>To retrieve the values for the secrets, call <a>BatchGetSecretValue</a> or <a>GetSecretValue</a>.</p>
    #          <p>For information about finding secrets in the console, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/manage_search-secret.html">Find secrets in Secrets Manager</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:ListSecrets</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::ListSecretsRequest] params
    # @option params [Boolean] :include_planned_deletion
    #   <p>Specifies whether to include secrets scheduled for deletion. By default, secrets scheduled for deletion aren't included.</p>
    # @option params [Integer] :max_results
    #   <p>The number of results to include in the response.</p>
    #            <p>If there are more results available, in the response, Secrets Manager includes <code>NextToken</code>. 
    #         To get the next results, call <code>ListSecrets</code> again with the value from 
    #         <code>NextToken</code>.</p>
    # @option params [String] :next_token
    #   <p>A token that indicates where the output should continue from, if a 
    #         previous call did not show all results. To get the next results, call <code>ListSecrets</code> again 
    #         with this value.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>The filters to apply to the list of secrets.</p>
    # @option params [String] :sort_order
    #   <p>Secrets are listed by <code>CreatedDate</code>. </p>
    # @example To list the secrets in your account
    #   # The following example shows how to list all of the secrets in your account.
    #   params = {}
    #   options = {}
    #   response = client.list_secrets(params, options)
    #   response.to_h #=>
    #   {
    #     secret_list: [
    #       {
    #         arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #         name: "MyTestDatabaseSecret",
    #         description: "My test database secret",
    #         last_changed_date: Time.parse(1523477145.729),
    #         secret_versions_to_stages: {
    #           "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => [
    #             "AWSCURRENT"
    #           ]
    #         }
    #       },
    #       {
    #         arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret1-d4e5f6",
    #         name: "MyTestDatabaseSecret1",
    #         description: "Another secret created for a different database",
    #         last_changed_date: Time.parse(1523482025.685),
    #         secret_versions_to_stages: {
    #           "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => [
    #             "AWSCURRENT"
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     include_planned_deletion: false,
    #     max_results: 1,
    #     next_token: "NextTokenType",
    #     filters: [
    #       {
    #         key: "description" # One of: ["description", "name", "tag-key", "tag-value", "primary-region", "owning-service", "all"],
    #         values: ["FilterValueStringType"]
    #       }
    #     ],
    #     sort_order: "asc" # One of: ["asc", "desc"]
    #   }
    #   options = {}
    #   response = client.list_secrets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     secret_list: [
    #       {
    #         arn: "SecretARNType",
    #         name: "SecretNameType",
    #         description: "DescriptionType",
    #         kms_key_id: "KmsKeyIdType",
    #         rotation_enabled: false,
    #         rotation_lambda_arn: "RotationLambdaARNType",
    #         rotation_rules: {
    #           automatically_after_days: 1,
    #           duration: "DurationType",
    #           schedule_expression: "ScheduleExpressionType"
    #         },
    #         last_rotated_date: Time.now,
    #         last_changed_date: Time.now,
    #         last_accessed_date: Time.now,
    #         deleted_date: Time.now,
    #         next_rotation_date: Time.now,
    #         tags: [
    #           {
    #             key: "TagKeyType",
    #             value: "TagValueType"
    #           }
    #         ],
    #         secret_versions_to_stages: {
    #           "SecretVersionIdType" => ["SecretVersionStageType"]
    #         },
    #         owning_service: "OwningServiceType",
    #         created_date: Time.now,
    #         primary_region: "RegionType"
    #       }
    #     ],
    #     next_token: "NextTokenType"
    #   }
    # @return [Types::ListSecretsResponse]
    def list_secrets(params = {}, options = {})
      request = build_request(:list_secrets, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based permission policy to a secret. A resource-based policy is 
    #       optional. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication and access control for Secrets Manager</a>
    #          </p>
    #          <p>For information about attaching a policy in the console, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html">Attach a 
    #       permissions policy to a secret</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:PutResourcePolicy</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to attach the resource-based policy.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [String] :resource_policy
    #   <p>A JSON-formatted string for an Amazon Web Services
    #         resource-based policy. For example policies, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html">Permissions 
    #           policy examples</a>.</p>
    # @option params [Boolean] :block_public_policy
    #   <p>Specifies whether to block resource-based policies that allow broad access to the secret, for example those that use a wildcard for the principal. By default, public policies aren't blocked.</p>
    #            <important>
    #               <p>Resource policy validation and the BlockPublicPolicy parameter help protect your resources by preventing public access from being granted through the resource policies that are directly attached to your secrets. In addition to using these features, carefully inspect the following policies to confirm that they do not grant public access:</p>
    #               <ul>
    #                  <li>
    #                     <p>Identity-based policies attached to associated Amazon Web Services principals (for example, IAM roles)</p>
    #                  </li>
    #                  <li>
    #                     <p>Resource-based policies attached to associated Amazon Web Services resources (for example, Key Management Service (KMS) keys)</p>
    #                  </li>
    #               </ul>
    #               <p>To review permissions to your secrets, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/determine-acccess_examine-iam-policies.html">Determine who has permissions to your secrets</a>.</p>
    #            </important>
    # @example To add a resource-based policy to a secret
    #   # The following example shows how to add a resource-based policy to a secret.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     resource_policy: "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}"
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     resource_policy: "NonEmptyResourcePolicyType", # required
    #     block_public_policy: false
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "NameType"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new version with a new encrypted secret value and attaches it to the secret. The 
    #       version can contain a new <code>SecretString</code> value or a new <code>SecretBinary</code> value. </p>
    #          <p>We recommend you avoid calling <code>PutSecretValue</code> at a sustained rate of more than 
    #       once every 10 minutes. When you update the secret value, Secrets Manager creates a new version 
    #       of the secret. Secrets Manager removes outdated versions when there are more than 100, but it does not 
    #       remove versions created less than 24 hours ago. If you call <code>PutSecretValue</code> more 
    #       than once every 10 minutes, you create more versions than Secrets Manager removes, and you will reach 
    #       the quota for secret versions.</p>
    #          <p>You can specify the staging labels to attach to the new version in <code>VersionStages</code>. 
    #       If you don't include <code>VersionStages</code>, then Secrets Manager automatically
    #       moves the staging label <code>AWSCURRENT</code> to this version. If this operation creates 
    #       the first version for the secret, then Secrets Manager
    #         automatically attaches the staging label <code>AWSCURRENT</code> to it. 
    #     If this operation moves the staging label <code>AWSCURRENT</code> from another version to this
    #       version, then Secrets Manager also automatically moves the staging label <code>AWSPREVIOUS</code> to
    #       the version that <code>AWSCURRENT</code> was removed from.</p>
    #          <p>This operation is idempotent. If you call this operation with a <code>ClientRequestToken</code> 
    #     that matches an existing version's VersionId, and you specify the
    #       same secret data, the operation succeeds but does nothing. However, if the secret data is
    #       different, then the operation fails because you can't modify an existing version; you can
    #       only create new ones.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters except <code>SecretBinary</code>, <code>SecretString</code>, or <code>RotationToken</code> because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:PutSecretValue</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    #          <important>
    #             <p>When you enter commands in a command shell, there is a risk of the command history being accessed or utilities having access to your command parameters. This is a concern if the command includes the value of a secret. Learn how to <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html">Mitigate the risks of using command-line tools to store Secrets Manager secrets</a>.</p>
    #          </important>
    # @param [Hash, Types::PutSecretValueRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to add a new version to.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    #            <p>If the secret doesn't already exist, use <code>CreateSecret</code> instead.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the new version of the secret. </p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. </p>
    #            </note>
    #            <p>If you generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> and include it in the request.</p>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p>
    #            <ul>
    #               <li>
    #                  <p>If the <code>ClientRequestToken</code> value isn't already associated with a version
    #             of the secret then a new version of the secret is created. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and that version's
    #             <code>SecretString</code> or <code>SecretBinary</code> values are the same as those in
    #             the request then the request is ignored. The operation is idempotent. </p>
    #               </li>
    #               <li>
    #                  <p>If a version with this value already exists and the version of the
    #             <code>SecretString</code> and <code>SecretBinary</code> values are different from those
    #             in the request, then the request fails because you can't modify a secret 
    #             version. You can only create new versions to store new secret values.</p>
    #               </li>
    #            </ul>
    #            <p>This value becomes the <code>VersionId</code> of the new version.</p>
    # @option params [String] :secret_binary
    #   <p>The binary data to encrypt and store in the new version of
    #         the secret. To use this parameter in the command-line tools, we recommend that you store your
    #         binary data in a file and then pass the
    #         contents of the file as a parameter. </p>
    #            <p>You must include <code>SecretBinary</code> or <code>SecretString</code>, but not both.</p>
    #            <p>You can't access this value from the Secrets Manager console.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    # @option params [String] :secret_string
    #   <p>The text to encrypt and store in the new version of the secret. </p>
    #            <p>You must include <code>SecretBinary</code> or <code>SecretString</code>, but not both.</p>
    #            <p>We recommend you create the secret string as JSON key/value pairs, as shown in the example.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    # @option params [Array<String>] :version_stages
    #   <p>A list of staging labels to attach to this version of the
    #         secret. Secrets Manager uses staging labels to track versions of a secret through the rotation process.</p>
    #            <p>If you specify a staging
    #         label that's already associated with a different version of the same secret, then Secrets Manager  
    #         removes the label from the other version and attaches it to this version. 
    #         If you specify 
    #         <code>AWSCURRENT</code>, and it is already attached to another version, then Secrets Manager also  
    #         moves the staging label <code>AWSPREVIOUS</code> to the version that <code>AWSCURRENT</code> was removed from.</p>
    #            <p>If you don't include <code>VersionStages</code>, then Secrets Manager automatically
    #         moves the staging label <code>AWSCURRENT</code> to this version.</p>
    # @option params [String] :rotation_token
    #   <p>A unique identifier that indicates the source of the request. For cross-account rotation (when you rotate a secret in one account by using a Lambda rotation function in another account) and the Lambda rotation function assumes an IAM role to call Secrets Manager, Secrets Manager validates the identity with the rotation token. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html">How rotation works</a>.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    # @example To store a secret value in a new version of a secret
    #   # The following example shows how to create a new version of the secret. Alternatively, you can use the update-secret command.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     secret_string: "{\"username\":\"david\",\"password\":\"EXAMPLE-PASSWORD\"}",
    #     client_request_token: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE"
    #   }
    #   options = {}
    #   response = client.put_secret_value(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret",
    #     version_id: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE",
    #     version_stages: [
    #       "AWSCURRENT"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #     version_stages: ["SecretVersionStageType"],
    #     rotation_token: "RotationTokenType"
    #   }
    #   options = {}
    #   response = client.put_secret_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType",
    #     version_id: "SecretVersionIdType",
    #     version_stages: ["SecretVersionStageType"]
    #   }
    # @return [Types::PutSecretValueResponse]
    def put_secret_value(params = {}, options = {})
      request = build_request(:put_secret_value, params)
      request.send_request(options)
    end

    # <p>For a secret that is replicated to other Regions, deletes the secret replicas from the Regions you specify.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:RemoveRegionsFromReplication</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::RemoveRegionsFromReplicationRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret.</p>
    # @option params [Array<String>] :remove_replica_regions
    #   <p>The Regions of the replicas to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     remove_replica_regions: ["RegionType"], # required
    #   }
    #   options = {}
    #   response = client.remove_regions_from_replication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     replication_status: [
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType",
    #         status: "InSync" # One of: ["InSync", "Failed", "InProgress"],
    #         status_message: "StatusMessageType",
    #         last_accessed_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::RemoveRegionsFromReplicationResponse]
    def remove_regions_from_replication(params = {}, options = {})
      request = build_request(:remove_regions_from_replication, params)
      request.send_request(options)
    end

    # <p>Replicates the secret to a new Regions. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/create-manage-multi-region-secrets.html">Multi-Region secrets</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:ReplicateSecretToRegions</code>. 
    #       If the primary secret is encrypted with a KMS key other than <code>aws/secretsmanager</code>, you also need <code>kms:Decrypt</code> permission to the key. To encrypt the replicated secret with a KMS key other than <code>aws/secretsmanager</code>, you need <code>kms:GenerateDataKey</code> and <code>kms:Encrypt</code> to the key. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::ReplicateSecretToRegionsRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to replicate.</p>
    # @option params [Array<Types::ReplicaRegionType>] :add_replica_regions
    #   <p>A list of Regions in which to replicate the secret.</p>
    # @option params [Boolean] :force_overwrite_replica_secret
    #   <p>Specifies whether to overwrite a secret with the same name in the destination Region. By default, secrets aren't overwritten.</p>
    # @example Example
    #   # The following example replicates a secret to eu-west-3. The replica is encrypted with the AWS managed key aws/secretsmanager.
    #   params = {
    #     secret_id: "MyTestSecret",
    #     add_replica_regions: [
    #       {
    #         region: "eu-west-3"
    #       }
    #     ],
    #     force_overwrite_replica_secret: true
    #   }
    #   options = {}
    #   response = client.replicate_secret_to_regions(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestSecret-1a2b3c",
    #     replication_status: [
    #       {
    #         region: "eu-west-3",
    #         kms_key_id: "alias/aws/secretsmanager",
    #         status: InProgress
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     add_replica_regions: [ # required
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType"
    #       }
    #     ],
    #     force_overwrite_replica_secret: false
    #   }
    #   options = {}
    #   response = client.replicate_secret_to_regions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     replication_status: [
    #       {
    #         region: "RegionType",
    #         kms_key_id: "KmsKeyIdType",
    #         status: "InSync" # One of: ["InSync", "Failed", "InProgress"],
    #         status_message: "StatusMessageType",
    #         last_accessed_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ReplicateSecretToRegionsResponse]
    def replicate_secret_to_regions(params = {}, options = {})
      request = build_request(:replicate_secret_to_regions, params)
      request.send_request(options)
    end

    # <p>Cancels the scheduled deletion of a secret by removing the <code>DeletedDate</code> time
    #       stamp. You can access a secret again after it has been restored.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:RestoreSecret</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::RestoreSecretRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to restore.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @example To restore a previously deleted secret
    #   # The following example shows how to restore a secret that you previously scheduled for deletion.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret"
    #   }
    #   options = {}
    #   response = client.restore_secret(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #   }
    #   options = {}
    #   response = client.restore_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType"
    #   }
    # @return [Types::RestoreSecretResponse]
    def restore_secret(params = {}, options = {})
      request = build_request(:restore_secret, params)
      request.send_request(options)
    end

    # <p>Configures and starts the asynchronous process of rotating the secret. For information about rotation, 
    #       see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html">Rotate secrets</a> in the <i>Secrets Manager User Guide</i>. If you include the configuration parameters, the operation sets the values for the secret and then immediately starts a rotation. If you don't include the configuration parameters, the operation starts a rotation with the values already stored in the secret. </p>
    #          <p>When rotation is successful, the <code>AWSPENDING</code> staging label might be attached
    #       to the same version as the <code>AWSCURRENT</code> version, or it might not be attached to any
    #       version. If the <code>AWSPENDING</code> staging label is present but not attached to the same
    #       version as <code>AWSCURRENT</code>, then any later invocation of <code>RotateSecret</code>
    #       assumes that a previous rotation request is still in progress and returns an error. When rotation is unsuccessful, the <code>AWSPENDING</code> staging label might be attached to an empty secret version. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot_rotation.html">Troubleshoot rotation</a> in the <i>Secrets Manager User Guide</i>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:RotateSecret</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. You also need <code>lambda:InvokeFunction</code> permissions on the rotation function. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets-required-permissions-function.html">
    #         Permissions for rotation</a>.</p>
    # @param [Hash, Types::RotateSecretRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret to rotate.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [String] :client_request_token
    #   <p>A unique identifier for the new version of the secret. You only need to specify this value if you implement your own retry logic and you want to
    #       ensure that Secrets Manager doesn't attempt to create a secret version twice.</p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. </p>
    #            </note>
    #            <p>If you generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> and include it in the request.</p>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p>
    # @option params [String] :rotation_lambda_arn
    #   <p>For secrets that use a Lambda rotation function to rotate, the ARN of the Lambda rotation function. </p>
    #            <p>For secrets that use <i>managed rotation</i>, omit this field. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_managed.html">Managed rotation</a> in the <i>Secrets Manager User Guide</i>.</p>
    # @option params [Types::RotationRulesType] :rotation_rules
    #   <p>A structure that defines the rotation configuration for this secret.</p>
    # @option params [Boolean] :rotate_immediately
    #   <p>Specifies whether to rotate the secret immediately or wait until the next scheduled rotation window. 
    #       The rotation schedule is defined in <a>RotateSecretRequest$RotationRules</a>.</p>
    #            <p>For secrets that use a Lambda rotation function to rotate, if you don't immediately rotate the secret, Secrets Manager tests the rotation configuration by running the 
    #       <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_lambda-functions.html#rotate-secrets_lambda-functions-code">
    #                  <code>testSecret</code> 
    #         step</a> of the Lambda rotation function. The test creates an <code>AWSPENDING</code> version of the secret and then removes it.</p>
    #            <p>By default, Secrets Manager rotates the secret immediately.</p>
    # @example To configure rotation for a secret
    #   # The following example configures rotation for a secret using a cron expression. The first rotation happens immediately after the changes are stored in the secret. The rotation schedule is the first and 15th day of every month. The rotation window begins at 4:00 PM UTC and ends at 6:00 PM.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     rotation_lambda_arn: "arn:aws:lambda:us-west-2:123456789012:function:MyTestDatabaseRotationLambda",
    #     rotation_rules: {
    #       schedule_expression: "cron(0 16 1,15 * ? *)",
    #       duration: "2h"
    #     }
    #   }
    #   options = {}
    #   response = client.rotate_secret(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret",
    #     version_id: "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2"
    #   }
    # @example To request an immediate rotation for a secret
    #   # The following example requests an immediate invocation of the secret's Lambda rotation function. It assumes that the specified secret already has rotation configured. The rotation function runs asynchronously in the background.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret"
    #   }
    #   options = {}
    #   response = client.rotate_secret(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret",
    #     version_id: "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     rotation_lambda_arn: "RotationLambdaARNType",
    #     rotation_rules: {
    #       automatically_after_days: 1,
    #       duration: "DurationType",
    #       schedule_expression: "ScheduleExpressionType"
    #     },
    #     rotate_immediately: false
    #   }
    #   options = {}
    #   response = client.rotate_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType",
    #     version_id: "SecretVersionIdType"
    #   }
    # @return [Types::RotateSecretResponse]
    def rotate_secret(params = {}, options = {})
      request = build_request(:rotate_secret, params)
      request.send_request(options)
    end

    # <p>Removes the link between the replica secret and the primary secret and promotes the replica to a primary secret in the replica Region.</p>
    #          <p>You must call this operation from the Region in which you want to promote the replica to a primary secret.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:StopReplicationToReplica</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::StopReplicationToReplicaRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN of the primary secret. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #   }
    #   options = {}
    #   response = client.stop_replication_to_replica(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType"
    #   }
    # @return [Types::StopReplicationToReplicaResponse]
    def stop_replication_to_replica(params = {}, options = {})
      request = build_request(:stop_replication_to_replica, params)
      request.send_request(options)
    end

    # <p>Attaches tags to a secret. Tags consist of a key name and a value. Tags are part of the 
    #       secret's metadata. They are not associated with specific versions of the secret. This operation appends tags to the existing list of tags.</p>
    #          <p>For tag quotas and naming restrictions, see <a href="https://docs.aws.amazon.com/general/latest/gr/arg.html#taged-reference-quotas">Service quotas for Tagging</a> in the <i>Amazon Web Services General 
    #       Reference guide</i>.</p>
    #          <important>
    #             <p>If you use tags as part of your security strategy, then adding or removing a tag can
    #         change permissions. If successfully completing this operation would result in you losing
    #         your permissions for this secret, then the operation is blocked and returns an Access Denied
    #         error.</p>
    #          </important>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:TagResource</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :secret_id
    #   <p>The identifier for the secret to attach tags to. You can specify either the
    #         Amazon Resource Name (ARN) or the friendly name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to attach to the secret as a JSON text string argument. Each element in the list consists of a <code>Key</code>
    #         and a <code>Value</code>.</p>
    #            <p>For storing multiple values, we recommend that you use a JSON text 
    #       string argument and specify key/value pairs. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html">Specifying parameter values for the Amazon Web Services CLI</a>
    #       in the Amazon Web Services CLI User Guide.</p>
    # @example To add tags to a secret
    #   # The following example shows how to attach two tags each with a Key and Value to a secret. There is no output from this API. To see the result, use the DescribeSecret operation.
    #   params = {
    #     secret_id: "MyExampleSecret",
    #     tags: [
    #       {
    #         key: "FirstTag",
    #         value: "SomeValue"
    #       },
    #       {
    #         key: "SecondTag",
    #         value: "AnotherValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyType",
    #         value: "TagValueType"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes specific tags from a secret.</p>
    #          <p>This operation is idempotent. If a requested tag is not attached to the secret, no error
    #       is returned and the secret metadata is unchanged.</p>
    #          <important>
    #             <p>If you use tags as part of your security strategy, then removing a tag can change
    #         permissions. If successfully completing this operation would result in you losing your
    #         permissions for this secret, then the operation is blocked and returns an Access Denied
    #         error.</p>
    #          </important>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:UntagResource</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag key names to remove from the secret. You don't specify the value. Both the
    #         key and its associated value are removed.</p>
    #            <p>This parameter requires a JSON text string argument.</p>
    #            <p>For storing multiple values, we recommend that you use a JSON text 
    #       string argument and specify key/value pairs. For more information, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html">Specifying parameter values for the Amazon Web Services CLI</a>
    #       in the Amazon Web Services CLI User Guide.</p>
    # @example To remove tags from a secret
    #   # The following example shows how to remove two tags from a secret's metadata. For each, both the tag and the associated value are removed. There is no output from this API. To see the result, use the DescribeSecret operation.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     tag_keys: [
    #       "FirstTag",
    #       "SecondTag"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     tag_keys: ["TagKeyType"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Modifies the details of a secret, including metadata and the secret value. To change the secret value, you can also use <a>PutSecretValue</a>.</p>
    #          <p>To change the rotation configuration of a secret, use <a>RotateSecret</a> instead.</p>
    #          <p>To change a secret so that it is managed by another service, you need to recreate the secret in that service. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/service-linked-secrets.html">Secrets Manager secrets managed by other Amazon Web Services services</a>.</p>
    #          <p>We recommend you avoid calling <code>UpdateSecret</code> at a sustained rate of more than 
    #       once every 10 minutes. When you call <code>UpdateSecret</code> to update the secret value, Secrets Manager creates a new version 
    #       of the secret. Secrets Manager removes outdated versions when there are more than 100, but it does not 
    #       remove versions created less than 24 hours ago. If you update the secret value more 
    #       than once every 10 minutes, you create more versions than Secrets Manager removes, and you will reach 
    #       the quota for secret versions.</p>
    #          <p>If you include <code>SecretString</code> or <code>SecretBinary</code> to create a new
    #       secret version, Secrets Manager automatically moves the staging label <code>AWSCURRENT</code> to the new
    #       version. Then it attaches the label <code>AWSPREVIOUS</code>
    #         to the version that <code>AWSCURRENT</code> was removed from.</p>
    #          <p>If you call this operation with a <code>ClientRequestToken</code> that matches an existing version's 
    #       <code>VersionId</code>, the operation results in an error. You can't modify an existing 
    #       version, you can only create a new version. To remove a version, remove all staging labels from it. See 
    #     <a>UpdateSecretVersionStage</a>.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters except <code>SecretBinary</code> or <code>SecretString</code> because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:UpdateSecret</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. 
    #       If you use a customer managed key, you must also have <code>kms:GenerateDataKey</code>, <code>kms:Encrypt</code>, and 
    #       <code>kms:Decrypt</code> permissions on the key. If you change the KMS key and you don't have <code>kms:Encrypt</code> permission to the new key, Secrets Manager does not re-encrypt existing secret versions with the new key. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/security-encryption.html">
    #         Secret encryption and decryption</a>.</p>
    #          <important>
    #             <p>When you enter commands in a command shell, there is a risk of the command history being accessed or utilities having access to your command parameters. This is a concern if the command includes the value of a secret. Learn how to <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/security_cli-exposure-risks.html">Mitigate the risks of using command-line tools to store Secrets Manager secrets</a>.</p>
    #          </important>
    # @param [Hash, Types::UpdateSecretRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [String] :client_request_token
    #   <p>If you include <code>SecretString</code> or <code>SecretBinary</code>, then Secrets Manager creates 
    #       a new version for the secret, and this parameter specifies the unique identifier for the new 
    #       version.</p>
    #            <note>
    #               <p>If you use the Amazon Web Services CLI or one of the Amazon Web Services SDKs to call this operation, then you can leave this parameter empty. The CLI or SDK generates a random UUID for you and includes it as the value for this parameter in the request. </p>
    #            </note>
    #            <p>If you generate a raw HTTP request to the Secrets Manager service endpoint, then you must generate a <code>ClientRequestToken</code> and include it in the request.</p>
    #            <p>This value helps ensure idempotency. Secrets Manager uses this value to prevent the accidental creation of duplicate versions if there are failures and retries during a rotation. We recommend that you generate a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID-type</a> value to ensure uniqueness of your versions within the specified secret. </p>
    # @option params [String] :description
    #   <p>The description of the secret.</p>
    # @option params [String] :kms_key_id
    #   <p>The ARN, key ID, or alias of the KMS key that Secrets Manager 
    #         uses to encrypt new secret versions as well as any existing versions with the staging labels 
    #         <code>AWSCURRENT</code>, <code>AWSPENDING</code>, or <code>AWSPREVIOUS</code>. If you don't have <code>kms:Encrypt</code> permission to the new key, Secrets Manager does not re-encrypt existing secret versions with the new key. For more information about versions and staging labels, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version">Concepts: Version</a>.</p>
    #            <p>A key alias is always prefixed by <code>alias/</code>, for example <code>alias/aws/secretsmanager</code>.
    #             For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/alias-about.html">About aliases</a>.</p>
    #            <p>If you set this to an empty string, Secrets Manager uses the Amazon Web Services managed key 
    #             <code>aws/secretsmanager</code>. If this key doesn't already exist in your account, then Secrets Manager 
    #             creates it for you automatically. All users and roles in the Amazon Web Services account automatically have access 
    #             to use <code>aws/secretsmanager</code>. Creating <code>aws/secretsmanager</code> can result in a one-time 
    #             significant delay in returning the result.  </p>
    #            <important>
    #               <p>You can only use the Amazon Web Services managed key <code>aws/secretsmanager</code> if you call this
    #           operation using credentials from the same Amazon Web Services account that owns the secret. If the secret is in
    #           a different account, then you must use a customer managed key and provide the ARN of that KMS key in
    #           this field. The user making the call must have permissions to both the secret and the KMS key in
    #           their respective accounts.</p>
    #            </important>
    # @option params [String] :secret_binary
    #   <p>The binary data to encrypt and store in the new
    #         version of the secret. We recommend that you
    #         store your binary data in a file and then pass
    #         the contents of the file as a parameter. </p>
    #            <p>Either <code>SecretBinary</code> or
    #           <code>SecretString</code> must have a value, but not both.</p>
    #            <p>You can't access this parameter in the Secrets Manager console.</p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    # @option params [String] :secret_string
    #   <p>The text data to encrypt and store in the new
    #         version of the secret. We recommend you use a JSON structure of key/value pairs for your secret value. </p>
    #            <p>Either <code>SecretBinary</code> or <code>SecretString</code> must have
    #         a value, but not both. </p>
    #            <p>Sensitive: This field contains sensitive information, so the service does not include it in CloudTrail log entries. If you create your own log entries, you must also avoid logging the information in this field.</p>
    # @example To create a new version of the encrypted secret value
    #   # The following example shows how to create a new version of the secret by updating the SecretString field. Alternatively, you can use the put-secret-value operation.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     secret_string: "{JSON STRING WITH CREDENTIALS}"
    #   }
    #   options = {}
    #   response = client.update_secret(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "aws:arn:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret",
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE"
    #   }
    # @example To update the description of a secret
    #   # The following example shows how to modify the description of a secret.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     description: "This is a new description for the secret.",
    #     client_request_token: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE"
    #   }
    #   options = {}
    #   response = client.update_secret(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example To update the KMS key associated with a secret
    #   # This example shows how to update the KMS customer managed key (CMK) used to encrypt the secret value. The KMS CMK must be in the same region as the secret.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     kms_key_id: "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE"
    #   }
    #   options = {}
    #   response = client.update_secret(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     description: "DescriptionType",
    #     kms_key_id: "KmsKeyIdType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType"
    #   }
    #   options = {}
    #   response = client.update_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType",
    #     version_id: "SecretVersionIdType"
    #   }
    # @return [Types::UpdateSecretResponse]
    def update_secret(params = {}, options = {})
      request = build_request(:update_secret, params)
      request.send_request(options)
    end

    # <p>Modifies the staging labels attached to a version of a secret. Secrets Manager uses staging labels to
    #       track a version as it progresses through the secret rotation process. Each staging label can be 
    #       attached to only one version at a time. To add a staging label to a version when it is already 
    #       attached to another version, Secrets Manager first removes it from the other version first and
    #       then attaches it to this one. For more information about versions and staging labels, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/getting-started.html#term_version">Concepts: Version</a>. </p>
    #          <p>The staging labels that you specify in the <code>VersionStage</code> parameter are added
    #       to the existing list of staging labels for the version. </p>
    #          <p>You can move the <code>AWSCURRENT</code> staging label to this version by including it in this
    #       call.</p>
    #          <note>
    #             <p>Whenever you move <code>AWSCURRENT</code>, Secrets Manager automatically moves the label <code>AWSPREVIOUS</code>
    #         to the version that <code>AWSCURRENT</code> was removed from.</p>
    #          </note>
    #          <p>If this action results in the last label being removed from a version, then the version is
    #       considered to be 'deprecated' and can be deleted by Secrets Manager.</p>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:UpdateSecretVersionStage</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::UpdateSecretVersionStageRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or the name of the secret with the version and staging labelsto modify.</p>
    #            <p>For an ARN, we recommend that you specify a complete ARN rather 
    #         than a partial ARN. See <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/troubleshoot.html#ARN_secretnamehyphen">Finding a secret from a partial ARN</a>.</p>
    # @option params [String] :version_stage
    #   <p>The staging label to add to this version.</p>
    # @option params [String] :remove_from_version_id
    #   <p>The ID of the version that the staging label is to be removed
    #         from. If the staging label you are trying to attach to one version is already attached to a
    #         different version, then you must include this parameter and specify the version that the label
    #         is to be removed from. If the label is attached and you either do not specify this parameter,
    #         or the version ID does not match, then the operation fails.</p>
    # @option params [String] :move_to_version_id
    #   <p>The ID of the version to add the staging label to. To
    #         remove a label from a version, then do not specify this parameter.</p>
    #            <p>If the staging label is already attached to a different version of the secret, then you
    #         must also specify the <code>RemoveFromVersionId</code> parameter. </p>
    # @example To add a staging label attached to a version of a secret
    #   # The following example shows you how to add a staging label to a version of a secret. You can review the results by running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected version.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     version_stage: "STAGINGLABEL1",
    #     move_to_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1"
    #   }
    #   options = {}
    #   response = client.update_secret_version_stage(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example To delete a staging label attached to a version of a secret
    #   # The following example shows you how to delete a staging label that is attached to a version of a secret. You can review the results by running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected version.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     version_stage: "STAGINGLABEL1",
    #     remove_from_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1"
    #   }
    #   options = {}
    #   response = client.update_secret_version_stage(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example To move a staging label from one version of a secret to another
    #   # The following example shows you how to move a staging label that is attached to one version of a secret to a different version. You can review the results by running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected version.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     version_stage: "AWSCURRENT",
    #     remove_from_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1",
    #     move_to_version_id: "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2"
    #   }
    #   options = {}
    #   response = client.update_secret_version_stage(params, options)
    #   response.to_h #=>
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3",
    #     name: "MyTestDatabaseSecret"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType", # required
    #     version_stage: "SecretVersionStageType", # required
    #     remove_from_version_id: "SecretVersionIdType",
    #     move_to_version_id: "SecretVersionIdType"
    #   }
    #   options = {}
    #   response = client.update_secret_version_stage(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "SecretARNType",
    #     name: "SecretNameType"
    #   }
    # @return [Types::UpdateSecretVersionStageResponse]
    def update_secret_version_stage(params = {}, options = {})
      request = build_request(:update_secret_version_stage, params)
      request.send_request(options)
    end

    # <p>Validates that a resource policy does not grant a wide range of principals access to
    #       your secret. A resource-based policy is optional for secrets.</p>
    #          <p>The API performs three checks when validating the policy:</p>
    #          <ul>
    #             <li>
    #                <p>Sends a call to <a href="https://aws.amazon.com/blogs/security/protect-sensitive-data-in-the-cloud-with-automated-reasoning-zelkova/">Zelkova</a>, an automated reasoning engine, to ensure your resource policy does not
    #           allow broad access to your secret, for example policies that use a wildcard for the principal.</p>
    #             </li>
    #             <li>
    #                <p>Checks for correct syntax in a policy.</p>
    #             </li>
    #             <li>
    #                <p>Verifies the policy does not lock out a caller.</p>
    #             </li>
    #          </ul>
    #          <p>Secrets Manager generates a CloudTrail log entry when you call this action. Do not include sensitive information in request parameters because it might be logged. For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/retrieve-ct-entries.html">Logging Secrets Manager events with CloudTrail</a>.</p>
    #          <p>
    #             <b>Required permissions: </b>
    #             <code>secretsmanager:ValidateResourcePolicy</code> and <code>secretsmanager:PutResourcePolicy</code>. 
    #       For more information, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_iam-permissions.html#reference_iam-permissions_actions">
    #       IAM policy actions for Secrets Manager</a> and <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access.html">Authentication 
    #       and access control in Secrets Manager</a>. </p>
    # @param [Hash, Types::ValidateResourcePolicyRequest] params
    # @option params [String] :secret_id
    #   <p>The ARN or name of the secret with the resource-based policy you want to validate.</p>
    # @option params [String] :resource_policy
    #   <p>A JSON-formatted string that contains an Amazon Web Services
    #         resource-based policy. The policy in the string identifies who can access or manage this
    #         secret and its versions. For example policies, see <a href="https://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_examples.html">Permissions policy examples</a>.</p>
    # @example To validate a resource-based policy to a secret
    #   # The following example shows how to validate a resource-based policy to a secret.
    #   params = {
    #     secret_id: "MyTestDatabaseSecret",
    #     resource_policy: "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}"
    #   }
    #   options = {}
    #   response = client.validate_resource_policy(params, options)
    #   response.to_h #=>
    #   {
    #     policy_validation_passed: true,
    #     validation_errors: [
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     secret_id: "SecretIdType",
    #     resource_policy: "NonEmptyResourcePolicyType", # required
    #   }
    #   options = {}
    #   response = client.validate_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_validation_passed: false,
    #     validation_errors: [
    #       {
    #         check_name: "NameType",
    #         error_message: "ErrorMessage"
    #       }
    #     ]
    #   }
    # @return [Types::ValidateResourcePolicyResponse]
    def validate_resource_policy(params = {}, options = {})
      request = build_request(:validate_resource_policy, params)
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
      context[:gem_name] = 'aws-sdk-secretsmanager'
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
