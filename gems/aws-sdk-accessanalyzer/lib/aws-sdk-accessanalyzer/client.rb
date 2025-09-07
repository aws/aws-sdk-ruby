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
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::AccessAnalyzer
  # An API client for Aws::AccessAnalyzer.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AccessAnalyzer

    add_plugin(::Aws::AccessAnalyzer::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    # @option options [Aws::AccessAnalyzer::EndpointProvider] :endpoint_provider
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

    # <p>Retroactively applies the archive rule to existing findings that meet the archive rule criteria.</p>
    # @param [Hash, Types::ApplyArchiveRuleInput] params
    # @option params [String] :analyzer_arn
    #   <p>The Amazon resource name (ARN) of the analyzer.</p>
    # @option params [String] :rule_name
    #   <p>The name of the rule to apply.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     rule_name: "Name", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.apply_archive_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def apply_archive_rule(params = {}, options = {})
      request = build_request(:apply_archive_rule, params)
      request.send_request(options)
    end

    # <p>Cancels the requested policy generation.</p>
    # @param [Hash, Types::CancelPolicyGenerationInput] params
    # @option params [String] :job_id
    #   <p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code> operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel the policy generation request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.cancel_policy_generation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelPolicyGenerationOutput]
    def cancel_policy_generation(params = {}, options = {})
      request = build_request(:cancel_policy_generation, params)
      request.send_request(options)
    end

    # <p>Checks whether the specified access isn't allowed by a policy.</p>
    # @param [Hash, Types::CheckAccessNotGrantedRequest] params
    # @option params [String] :policy_document
    #   <p>The JSON policy document to use as the content for the policy.</p>
    # @option params [Array<Types::Access>] :access
    #   <p>An access object containing the permissions that shouldn't be granted by the specified policy. If only actions are specified, IAM Access Analyzer checks for access to peform at least one of the actions on any resource in the policy. If only resources are specified, then IAM Access Analyzer checks for access to perform any action on at least one of the resources. If both actions and resources are specified, IAM Access Analyzer checks for access to perform at least one of the specified actions on at least one of the specified resources.</p>
    # @option params [String] :policy_type
    #   <p>The type of policy. Identity policies grant permissions to IAM principals. Identity policies include managed and inline policies for IAM roles, users, and groups.</p> <p>Resource policies grant permissions on Amazon Web Services resources. Resource policies include trust policies for IAM roles and bucket policies for Amazon S3 buckets.</p>
    # @example Passing check. Restrictive identity policy.
    #   # Example operation for check_access_not_granted
    #   params = {
    #     access: [
    #       {
    #         actions: [
    #           "s3:PutObject"
    #         ]
    #       }
    #     ],
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Id\":\"123\",\"Statement\":[{\"Sid\":\"AllowJohnDoe\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:user/JohnDoe\"},\"Action\":\"s3:GetObject\",\"Resource\":\"*\"}]}",
    #     policy_type: "RESOURCE_POLICY"
    #   }
    #   options = {}
    #   response = client.check_access_not_granted(params, options)
    #   response.to_h #=>
    #   {
    #     result: "PASS",
    #     message: "The policy document does not grant access to perform the listed actions or resources."
    #   }
    # @example Passing check. Restrictive S3 Bucket resource policy.
    #   # Example operation for check_access_not_granted
    #   params = {
    #     access: [
    #       {
    #         resources: [
    #           "arn:aws:s3:::sensitive-bucket/*"
    #         ]
    #       }
    #     ],
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Id\":\"123\",\"Statement\":[{\"Sid\":\"AllowJohnDoe\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:user/JohnDoe\"},\"Action\":\"s3:PutObject\",\"Resource\":\"arn:aws:s3:::non-sensitive-bucket/*\"}]}",
    #     policy_type: "RESOURCE_POLICY"
    #   }
    #   options = {}
    #   response = client.check_access_not_granted(params, options)
    #   response.to_h #=>
    #   {
    #     result: "PASS",
    #     message: "The policy document does not grant access to perform the listed actions or resources."
    #   }
    # @example Failing check. Permissive S3 Bucket resource policy.
    #   # Example operation for check_access_not_granted
    #   params = {
    #     access: [
    #       {
    #         resources: [
    #           "arn:aws:s3:::my-bucket/*"
    #         ]
    #       }
    #     ],
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Id\":\"123\",\"Statement\":[{\"Sid\":\"AllowJohnDoe\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:user/JohnDoe\"},\"Action\":\"s3:PutObject\",\"Resource\":\"arn:aws:s3:::my-bucket/*\"}]}",
    #     policy_type: "RESOURCE_POLICY"
    #   }
    #   options = {}
    #   response = client.check_access_not_granted(params, options)
    #   response.to_h #=>
    #   {
    #     result: "FAIL",
    #     message: "The policy document grants access to perform one or more of the listed actions or resources.",
    #     reasons: [
    #       {
    #         description: "One or more of the listed actions or resources in the statement with sid: AllowJohnDoe.",
    #         statement_index: 0,
    #         statement_id: "AllowJohnDoe"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_document: "AccessCheckPolicyDocument", # required
    #     access: [ # required
    #       {
    #         actions: ["Action"],
    #         resources: ["Resource"]
    #       }
    #     ],
    #     policy_type: "AccessCheckPolicyType", # required
    #   }
    #   options = {}
    #   response = client.check_access_not_granted(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: "CheckAccessNotGrantedResult",
    #     message: "String",
    #     reasons: [
    #       {
    #         description: "String",
    #         statement_index: 1,
    #         statement_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CheckAccessNotGrantedResponse]
    def check_access_not_granted(params = {}, options = {})
      request = build_request(:check_access_not_granted, params)
      request.send_request(options)
    end

    # <p>Checks whether new access is allowed for an updated policy when compared to the existing policy.</p> <p>You can find examples for reference policies and learn how to set up and run a custom policy check for new access in the <a href="https://github.com/aws-samples/iam-access-analyzer-custom-policy-check-samples">IAM Access Analyzer custom policy checks samples</a> repository on GitHub. The reference policies in this repository are meant to be passed to the <code>existingPolicyDocument</code> request parameter.</p>
    # @param [Hash, Types::CheckNoNewAccessRequest] params
    # @option params [String] :new_policy_document
    #   <p>The JSON policy document to use as the content for the updated policy.</p>
    # @option params [String] :existing_policy_document
    #   <p>The JSON policy document to use as the content for the existing policy.</p>
    # @option params [String] :policy_type
    #   <p>The type of policy to compare. Identity policies grant permissions to IAM principals. Identity policies include managed and inline policies for IAM roles, users, and groups.</p> <p>Resource policies grant permissions on Amazon Web Services resources. Resource policies include trust policies for IAM roles and bucket policies for Amazon S3 buckets. You can provide a generic input such as identity policy or resource policy or a specific input such as managed policy or Amazon S3 bucket policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     new_policy_document: "AccessCheckPolicyDocument", # required
    #     existing_policy_document: "AccessCheckPolicyDocument", # required
    #     policy_type: "AccessCheckPolicyType", # required
    #   }
    #   options = {}
    #   response = client.check_no_new_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: "CheckNoNewAccessResult",
    #     message: "String",
    #     reasons: [
    #       {
    #         description: "String",
    #         statement_index: 1,
    #         statement_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CheckNoNewAccessResponse]
    def check_no_new_access(params = {}, options = {})
      request = build_request(:check_no_new_access, params)
      request.send_request(options)
    end

    # <p>Checks whether a resource policy can grant public access to the specified resource type.</p>
    # @param [Hash, Types::CheckNoPublicAccessRequest] params
    # @option params [String] :policy_document
    #   <p>The JSON policy document to evaluate for public access.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource to evaluate for public access. For example, to check for public access to Amazon S3 buckets, you can choose <code>AWS::S3::Bucket</code> for the resource type.</p> <p>For resource types not supported as valid values, IAM Access Analyzer will return an error.</p>
    # @example Passing check. S3 Bucket policy without public access.
    #   # Example operation for check_no_public_access
    #   params = {
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Bob\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::111122223333:user/JohnDoe\"},\"Action\":[\"s3:GetObject\"]}]}",
    #     resource_type: "AWS::S3::Bucket"
    #   }
    #   options = {}
    #   response = client.check_no_public_access(params, options)
    #   response.to_h #=>
    #   {
    #     result: "PASS",
    #     message: "The resource policy does not grant public access for the given resource type."
    #   }
    # @example Failing check. S3 Bucket policy with public access.
    #   # Example operation for check_no_public_access
    #   params = {
    #     policy_document: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Bob\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Action\":[\"s3:GetObject\"]}]}",
    #     resource_type: "AWS::S3::Bucket"
    #   }
    #   options = {}
    #   response = client.check_no_public_access(params, options)
    #   response.to_h #=>
    #   {
    #     result: "FAIL",
    #     message: "The resource policy grants public access for the given resource type.",
    #     reasons: [
    #       {
    #         description: "Public access granted in the following statement with sid: Bob.",
    #         statement_index: 0,
    #         statement_id: "Bob"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_document: "AccessCheckPolicyDocument", # required
    #     resource_type: "AccessCheckResourceType", # required
    #   }
    #   options = {}
    #   response = client.check_no_public_access(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     result: "CheckNoPublicAccessResult",
    #     message: "String",
    #     reasons: [
    #       {
    #         description: "String",
    #         statement_index: 1,
    #         statement_id: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CheckNoPublicAccessResponse]
    def check_no_public_access(params = {}, options = {})
      request = build_request(:check_no_public_access, params)
      request.send_request(options)
    end

    # <p>Creates an access preview that allows you to preview IAM Access Analyzer findings for your resource before deploying resource permissions.</p>
    # @param [Hash, Types::CreateAccessPreviewInput] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the account analyzer</a> used to generate the access preview. You can only create an access preview for analyzers with an <code>Account</code> type and <code>Active</code> status.</p>
    # @option params [Hash<String, Types::Configuration>] :configurations
    #   <p>Access control configuration for your resource that is used to generate the access preview. The access preview includes findings for external access allowed to the resource with the proposed access control configuration. The configuration must contain exactly one element.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     configurations: { # required
    #       "ConfigurationsMapKey" => {
    #         # One of:
    #         ebs_snapshot: {
    #           user_ids: ["EbsUserId"],
    #           groups: ["EbsGroup"],
    #           kms_key_id: "EbsSnapshotDataEncryptionKeyId"
    #         },
    #         ecr_repository: {
    #           repository_policy: "EcrRepositoryPolicy"
    #         },
    #         iam_role: {
    #           trust_policy: "IamTrustPolicy"
    #         },
    #         efs_file_system: {
    #           file_system_policy: "EfsFileSystemPolicy"
    #         },
    #         kms_key: {
    #           key_policies: {
    #             "PolicyName" => "KmsKeyPolicy"
    #           },
    #           grants: [
    #             {
    #               operations: ["KmsGrantOperation"], # required
    #               grantee_principal: "GranteePrincipal", # required
    #               retiring_principal: "RetiringPrincipal",
    #               constraints: {
    #                 encryption_context_equals: {
    #                   "KmsConstraintsKey" => "KmsConstraintsValue"
    #                 },
    #                 encryption_context_subset: {
    #                   "KmsConstraintsKey" => "KmsConstraintsValue"
    #                 }
    #               },
    #               issuing_account: "IssuingAccount", # required
    #             }
    #           ]
    #         },
    #         rds_db_cluster_snapshot: {
    #           attributes: {
    #             "RdsDbClusterSnapshotAttributeName" => {
    #               # One of:
    #               account_ids: ["RdsDbClusterSnapshotAccountId"]
    #             }
    #           },
    #           kms_key_id: "RdsDbClusterSnapshotKmsKeyId"
    #         },
    #         rds_db_snapshot: {
    #           attributes: {
    #             "RdsDbSnapshotAttributeName" => {
    #               # One of:
    #               account_ids: ["RdsDbSnapshotAccountId"]
    #             }
    #           },
    #           kms_key_id: "RdsDbSnapshotKmsKeyId"
    #         },
    #         secrets_manager_secret: {
    #           kms_key_id: "SecretsManagerSecretKmsId",
    #           secret_policy: "SecretsManagerSecretPolicy"
    #         },
    #         s3_bucket: {
    #           bucket_policy: "S3BucketPolicy",
    #           bucket_acl_grants: [
    #             {
    #               permission: "AclPermission", # required
    #               grantee: { # required
    #                 # One of:
    #                 id: "AclCanonicalId",
    #                 uri: "AclUri"
    #               }
    #             }
    #           ],
    #           bucket_public_access_block: {
    #             ignore_public_acls: false, # required
    #             restrict_public_buckets: false, # required
    #           },
    #           access_points: {
    #             "AccessPointArn" => {
    #               access_point_policy: "AccessPointPolicy",
    #               public_access_block: {
    #                 ignore_public_acls: false, # required
    #                 restrict_public_buckets: false, # required
    #               },
    #               network_origin: {
    #                 # One of:
    #                 vpc_configuration: {
    #                   vpc_id: "VpcId", # required
    #                 },
    #                 internet_configuration: {
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         sns_topic: {
    #           topic_policy: "SnsTopicPolicy"
    #         },
    #         sqs_queue: {
    #           queue_policy: "SqsQueuePolicy"
    #         },
    #         s3_express_directory_bucket: {
    #           bucket_policy: "S3ExpressDirectoryBucketPolicy",
    #           access_points: {
    #             "S3ExpressDirectoryAccessPointArn" => {
    #               access_point_policy: "AccessPointPolicy",
    #               network_origin: {
    #                 # One of:
    #                 vpc_configuration: {
    #                   vpc_id: "VpcId", # required
    #                 },
    #                 internet_configuration: {
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         dynamodb_stream: {
    #           stream_policy: "DynamodbStreamPolicy"
    #         },
    #         dynamodb_table: {
    #           table_policy: "DynamodbTablePolicy"
    #         }
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_access_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "AccessPreviewId", # required
    #   }
    # @return [Types::CreateAccessPreviewOutput]
    def create_access_preview(params = {}, options = {})
      request = build_request(:create_access_preview, params)
      request.send_request(options)
    end

    # <p>Creates an analyzer for your account.</p>
    # @param [Hash, Types::CreateAnalyzerInput] params
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to create.</p>
    # @option params [String] :type
    #   <p>The type of analyzer to create. You can create only one analyzer per account per Region. You can create up to 5 analyzers per organization per Region.</p>
    # @option params [Array<Types::InlineArchiveRule>] :archive_rules
    #   <p>Specifies the archive rules to add for the analyzer. Archive rules automatically archive findings that meet the criteria you define for the rule.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of key-value pairs to apply to the analyzer. You can use the set of Unicode letters, digits, whitespace, <code>_</code>, <code>.</code>, <code>/</code>, <code>=</code>, <code>+</code>, and <code>-</code>.</p> <p>For the tag key, you can specify a value that is 1 to 128 characters in length and cannot be prefixed with <code>aws:</code>.</p> <p>For the tag value, you can specify a value that is 0 to 256 characters in length.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @option params [Types::AnalyzerConfiguration] :configuration
    #   <p>Specifies the configuration of the analyzer. If the analyzer is an unused access analyzer, the specified scope of unused access is used for the configuration. If the analyzer is an internal access analyzer, the specified internal access analysis rules are used for the configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #     type: "Type", # required
    #     archive_rules: [
    #       {
    #         rule_name: "Name", # required
    #         filter: { # required
    #           "String" => {
    #             eq: ["String"],
    #             neq: ["String"],
    #             contains: ["String"],
    #             exists: false
    #           }
    #         }
    #       }
    #     ],
    #     tags: {
    #       "String" => "String"
    #     },
    #     client_token: "String",
    #     configuration: {
    #       # One of:
    #       unused_access: {
    #         unused_access_age: 1,
    #         analysis_rule: {
    #           exclusions: [
    #             {
    #               account_ids: ["String"],
    #               resource_tags: [
    #                 {
    #                   "String" => "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       internal_access: {
    #         analysis_rule: {
    #           inclusions: [
    #             {
    #               account_ids: ["String"],
    #               resource_types: ["ResourceType"],
    #               resource_arns: ["String"]
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_analyzer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "AnalyzerArn"
    #   }
    # @return [Types::CreateAnalyzerOutput]
    def create_analyzer(params = {}, options = {})
      request = build_request(:create_analyzer, params)
      request.send_request(options)
    end

    # <p>Creates an archive rule for the specified analyzer. Archive rules automatically archive new findings that meet the criteria you define when you create the rule.</p> <p>To learn about filter keys that you can use to create an archive rule, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html">IAM Access Analyzer filter keys</a> in the <b>IAM User Guide</b>.</p>
    # @param [Hash, Types::CreateArchiveRuleInput] params
    # @option params [String] :analyzer_name
    #   <p>The name of the created analyzer.</p>
    # @option params [String] :rule_name
    #   <p>The name of the rule to create.</p>
    # @option params [Hash<String, Types::Criterion>] :filter
    #   <p>The criteria for the rule.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #     filter: { # required
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.create_archive_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def create_archive_rule(params = {}, options = {})
      request = build_request(:create_archive_rule, params)
      request.send_request(options)
    end

    # <p>Deletes the specified analyzer. When you delete an analyzer, IAM Access Analyzer is disabled for the account or organization in the current or specific Region. All findings that were generated by the analyzer are deleted. You cannot undo this action.</p>
    # @param [Hash, Types::DeleteAnalyzerInput] params
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to delete.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.delete_analyzer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_analyzer(params = {}, options = {})
      request = build_request(:delete_analyzer, params)
      request.send_request(options)
    end

    # <p>Deletes the specified archive rule.</p>
    # @param [Hash, Types::DeleteArchiveRuleInput] params
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer that associated with the archive rule to delete.</p>
    # @option params [String] :rule_name
    #   <p>The name of the rule to delete.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.delete_archive_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_archive_rule(params = {}, options = {})
      request = build_request(:delete_archive_rule, params)
      request.send_request(options)
    end

    # <p>Creates a recommendation for an unused permissions finding.</p>
    # @param [Hash, Types::GenerateFindingRecommendationRequest] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> used to generate the finding recommendation.</p>
    # @option params [String] :id
    #   <p>The unique ID for the finding recommendation.</p>
    # @example Successfully started generating finding recommendation
    #   # Example operation for generate_finding_recommendation
    #   params = {
    #     analyzer_arn: "arn:aws:access-analyzer:us-east-1:111122223333:analyzer/a",
    #     id: "finding-id"
    #   }
    #   options = {}
    #   response = client.generate_finding_recommendation(params, options)
    #   response.to_h #=>
    #   {}
    # @example Failed field validation for id value
    #   # Example operation for generate_finding_recommendation
    #   params = {
    #     analyzer_arn: "arn:aws:access-analyzer:us-east-1:111122223333:analyzer/a",
    #     id: "!"
    #   }
    #   options = {}
    #   begin
    #     response = client.generate_finding_recommendation(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationException
    #     puts e.data.to_h #=>
    #     {
    #       reason: "fieldValidationFailed",
    #       message: "Invalid id."
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     id: "String", # required
    #   }
    #   options = {}
    #   response = client.generate_finding_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def generate_finding_recommendation(params = {}, options = {})
      request = build_request(:generate_finding_recommendation, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an access preview for the specified analyzer.</p>
    # @param [Hash, Types::GetAccessPreviewInput] params
    # @option params [String] :access_preview_id
    #   <p>The unique ID for the access preview.</p>
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> used to generate the access preview.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_preview_id: "AccessPreviewId", # required
    #     analyzer_arn: "AnalyzerArn", # required
    #   }
    #   options = {}
    #   response = client.get_access_preview(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_preview: { # required
    #       id: "AccessPreviewId", # required
    #       analyzer_arn: "AnalyzerArn", # required
    #       configurations: { # required
    #         "ConfigurationsMapKey" => {
    #           # One of:
    #           ebs_snapshot: {
    #             user_ids: ["EbsUserId"],
    #             groups: ["EbsGroup"],
    #             kms_key_id: "EbsSnapshotDataEncryptionKeyId"
    #           },
    #           ecr_repository: {
    #             repository_policy: "EcrRepositoryPolicy"
    #           },
    #           iam_role: {
    #             trust_policy: "IamTrustPolicy"
    #           },
    #           efs_file_system: {
    #             file_system_policy: "EfsFileSystemPolicy"
    #           },
    #           kms_key: {
    #             key_policies: {
    #               "PolicyName" => "KmsKeyPolicy"
    #             },
    #             grants: [
    #               {
    #                 operations: ["KmsGrantOperation"], # required
    #                 grantee_principal: "GranteePrincipal", # required
    #                 retiring_principal: "RetiringPrincipal",
    #                 constraints: {
    #                   encryption_context_equals: {
    #                     "KmsConstraintsKey" => "KmsConstraintsValue"
    #                   },
    #                   encryption_context_subset: {
    #                     "KmsConstraintsKey" => "KmsConstraintsValue"
    #                   }
    #                 },
    #                 issuing_account: "IssuingAccount", # required
    #               }
    #             ]
    #           },
    #           rds_db_cluster_snapshot: {
    #             attributes: {
    #               "RdsDbClusterSnapshotAttributeName" => {
    #                 # One of:
    #                 account_ids: ["RdsDbClusterSnapshotAccountId"]
    #               }
    #             },
    #             kms_key_id: "RdsDbClusterSnapshotKmsKeyId"
    #           },
    #           rds_db_snapshot: {
    #             attributes: {
    #               "RdsDbSnapshotAttributeName" => {
    #                 # One of:
    #                 account_ids: ["RdsDbSnapshotAccountId"]
    #               }
    #             },
    #             kms_key_id: "RdsDbSnapshotKmsKeyId"
    #           },
    #           secrets_manager_secret: {
    #             kms_key_id: "SecretsManagerSecretKmsId",
    #             secret_policy: "SecretsManagerSecretPolicy"
    #           },
    #           s3_bucket: {
    #             bucket_policy: "S3BucketPolicy",
    #             bucket_acl_grants: [
    #               {
    #                 permission: "AclPermission", # required
    #                 grantee: { # required
    #                   # One of:
    #                   id: "AclCanonicalId",
    #                   uri: "AclUri"
    #                 }
    #               }
    #             ],
    #             bucket_public_access_block: {
    #               ignore_public_acls: false, # required
    #               restrict_public_buckets: false, # required
    #             },
    #             access_points: {
    #               "AccessPointArn" => {
    #                 access_point_policy: "AccessPointPolicy",
    #                 public_access_block: {
    #                   ignore_public_acls: false, # required
    #                   restrict_public_buckets: false, # required
    #                 },
    #                 network_origin: {
    #                   # One of:
    #                   vpc_configuration: {
    #                     vpc_id: "VpcId", # required
    #                   },
    #                   internet_configuration: {
    #                   }
    #                 }
    #               }
    #             }
    #           },
    #           sns_topic: {
    #             topic_policy: "SnsTopicPolicy"
    #           },
    #           sqs_queue: {
    #             queue_policy: "SqsQueuePolicy"
    #           },
    #           s3_express_directory_bucket: {
    #             bucket_policy: "S3ExpressDirectoryBucketPolicy",
    #             access_points: {
    #               "S3ExpressDirectoryAccessPointArn" => {
    #                 access_point_policy: "AccessPointPolicy",
    #                 network_origin: {
    #                   # One of:
    #                   vpc_configuration: {
    #                     vpc_id: "VpcId", # required
    #                   },
    #                   internet_configuration: {
    #                   }
    #                 }
    #               }
    #             }
    #           },
    #           dynamodb_stream: {
    #             stream_policy: "DynamodbStreamPolicy"
    #           },
    #           dynamodb_table: {
    #             table_policy: "DynamodbTablePolicy"
    #           }
    #         }
    #       },
    #       created_at: Time.now, # required
    #       status: "AccessPreviewStatus", # required
    #       status_reason: {
    #         code: "AccessPreviewStatusReasonCode", # required
    #       }
    #     }
    #   }
    # @return [Types::GetAccessPreviewOutput]
    def get_access_preview(params = {}, options = {})
      request = build_request(:get_access_preview, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a resource that was analyzed.</p>
    # @param [Hash, Types::GetAnalyzedResourceInput] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> to retrieve information from.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.get_analyzed_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource: {
    #       resource_arn: "ResourceArn", # required
    #       resource_type: "ResourceType", # required
    #       created_at: Time.now, # required
    #       analyzed_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       is_public: false, # required
    #       actions: ["String"],
    #       shared_via: ["String"],
    #       status: "FindingStatus",
    #       resource_owner_account: "String", # required
    #       error: "String"
    #     }
    #   }
    # @return [Types::GetAnalyzedResourceOutput]
    def get_analyzed_resource(params = {}, options = {})
      request = build_request(:get_analyzed_resource, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified analyzer.</p>
    # @param [Hash, Types::GetAnalyzerInput] params
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #   }
    #   options = {}
    #   response = client.get_analyzer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analyzer: { # required
    #       arn: "AnalyzerArn", # required
    #       name: "Name", # required
    #       type: "Type", # required
    #       created_at: Time.now, # required
    #       last_resource_analyzed: "String",
    #       last_resource_analyzed_at: Time.now,
    #       tags: {
    #         "String" => "String"
    #       },
    #       status: "AnalyzerStatus", # required
    #       status_reason: {
    #         code: "ReasonCode", # required
    #       },
    #       configuration: {
    #         # One of:
    #         unused_access: {
    #           unused_access_age: 1,
    #           analysis_rule: {
    #             exclusions: [
    #               {
    #                 account_ids: ["String"],
    #                 resource_tags: [
    #                   {
    #                     "String" => "String"
    #                   }
    #                 ]
    #               }
    #             ]
    #           }
    #         },
    #         internal_access: {
    #           analysis_rule: {
    #             inclusions: [
    #               {
    #                 account_ids: ["String"],
    #                 resource_types: ["ResourceType"],
    #                 resource_arns: ["String"]
    #               }
    #             ]
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetAnalyzerOutput]
    def get_analyzer(params = {}, options = {})
      request = build_request(:get_analyzer, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an archive rule.</p> <p>To learn about filter keys that you can use to create an archive rule, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html">IAM Access Analyzer filter keys</a> in the <b>IAM User Guide</b>.</p>
    # @param [Hash, Types::GetArchiveRuleInput] params
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to retrieve rules from.</p>
    # @option params [String] :rule_name
    #   <p>The name of the rule to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #   }
    #   options = {}
    #   response = client.get_archive_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_rule: { # required
    #       rule_name: "Name", # required
    #       filter: { # required
    #         "String" => {
    #           eq: ["String"],
    #           neq: ["String"],
    #           contains: ["String"],
    #           exists: false
    #         }
    #       },
    #       created_at: Time.now, # required
    #       updated_at: Time.now, # required
    #     }
    #   }
    # @return [Types::GetArchiveRuleOutput]
    def get_archive_rule(params = {}, options = {})
      request = build_request(:get_archive_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified finding. GetFinding and GetFindingV2 both use <code>access-analyzer:GetFinding</code> in the <code>Action</code> element of an IAM policy statement. You must have permission to perform the <code>access-analyzer:GetFinding</code> action.</p>
    # @param [Hash, Types::GetFindingInput] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> that generated the finding.</p>
    # @option params [String] :id
    #   <p>The ID of the finding to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     id: "FindingId", # required
    #   }
    #   options = {}
    #   response = client.get_finding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     finding: {
    #       id: "FindingId", # required
    #       principal: {
    #         "String" => "String"
    #       },
    #       action: ["String"],
    #       resource: "String",
    #       is_public: false,
    #       resource_type: "ResourceType", # required
    #       condition: { # required
    #         "String" => "String"
    #       },
    #       created_at: Time.now, # required
    #       analyzed_at: Time.now, # required
    #       updated_at: Time.now, # required
    #       status: "FindingStatus", # required
    #       resource_owner_account: "String", # required
    #       error: "String",
    #       sources: [
    #         {
    #           type: "FindingSourceType", # required
    #           detail: {
    #             access_point_arn: "String",
    #             access_point_account: "String"
    #           }
    #         }
    #       ],
    #       resource_control_policy_restriction: "ResourceControlPolicyRestriction"
    #     }
    #   }
    # @return [Types::GetFindingOutput]
    def get_finding(params = {}, options = {})
      request = build_request(:get_finding, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a finding recommendation for the specified analyzer.</p>
    # @param [Hash, Types::GetFindingRecommendationRequest] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> used to generate the finding recommendation.</p>
    # @option params [String] :id
    #   <p>The unique ID for the finding recommendation.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @example Successfully fetched finding recommendation
    #   # Example operation for get_finding_recommendation
    #   params = {
    #     analyzer_arn: "arn:aws:access-analyzer:us-east-1:111122223333:analyzer/a",
    #     id: "finding-id",
    #     max_results: 3,
    #     next_token: "token"
    #   }
    #   options = {}
    #   response = client.get_finding_recommendation(params, options)
    #   response.to_h #=>
    #   {
    #     started_at: Time.parse("2000-01-01T00:00:00Z"),
    #     completed_at: Time.parse("2000-01-01T00:00:01Z"),
    #     resource_arn: "arn:aws:iam::111122223333:role/test",
    #     recommended_steps: [
    #       {
    #     "unusedPermissionsRecommendedStep" => {
    #       "recommendedAction" => DETACH_POLICY,
    #       "existingPolicyId" => policy-id
    #     }
    #   },
    #       {
    #     "unusedPermissionsRecommendedStep" => {
    #       "recommendedAction" => CREATE_POLICY,
    #       "existingPolicyId" => policy-id,
    #       "recommendedPolicy" => policy-content
    #     }
    #   }
    #     ],
    #     recommendation_type: "UnusedPermissionRecommendation",
    #     status: "SUCCEEDED"
    #   }
    # @example In progress finding recommendation
    #   # Example operation for get_finding_recommendation
    #   params = {
    #     analyzer_arn: "arn:aws:access-analyzer:us-east-1:111122223333:analyzer/a",
    #     id: "finding-id",
    #     max_results: 3
    #   }
    #   options = {}
    #   response = client.get_finding_recommendation(params, options)
    #   response.to_h #=>
    #   {
    #     started_at: Time.parse("2000-01-01T00:00:00Z"),
    #     resource_arn: "arn:aws:iam::111122223333:role/test",
    #     recommendation_type: "UnusedPermissionRecommendation",
    #     status: "IN_PROGRESS"
    #   }
    # @example Failed finding recommendation
    #   # Example operation for get_finding_recommendation
    #   params = {
    #     analyzer_arn: "arn:aws:access-analyzer:us-east-1:111122223333:analyzer/a",
    #     id: "finding-id",
    #     max_results: 3
    #   }
    #   options = {}
    #   response = client.get_finding_recommendation(params, options)
    #   response.to_h #=>
    #   {
    #     started_at: Time.parse("2000-01-01T00:00:00Z"),
    #     completed_at: Time.parse("2000-01-01T00:00:01Z"),
    #     error: {
    #       code: "SERVICE_ERROR",
    #       message: "Service error. Please try again."
    #     },
    #     resource_arn: "arn:aws:iam::111122223333:role/test",
    #     recommendation_type: "UnusedPermissionRecommendation",
    #     status: "FAILED"
    #   }
    # @example Failed field validation for id value
    #   # Example operation for get_finding_recommendation
    #   params = {
    #     analyzer_arn: "arn:aws:access-analyzer:us-east-1:111122223333:analyzer/a",
    #     id: "!"
    #   }
    #   options = {}
    #   begin
    #     response = client.get_finding_recommendation(params, options)
    #   rescue Smithy::Client::ServiceError => e
    #     puts e.class #=> ValidationException
    #     puts e.data.to_h #=>
    #     {
    #       reason: "fieldValidationFailed",
    #       message: "Invalid id."
    #     }
    #   end
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     id: "String", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.get_finding_recommendation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     started_at: Time.now, # required
    #     completed_at: Time.now,
    #     next_token: "Token",
    #     error: {
    #       code: "String", # required
    #       message: "String", # required
    #     },
    #     resource_arn: "ResourceArn", # required
    #     recommended_steps: [{
    #       # One of:
    #       unused_permissions_recommended_step: {
    #         policy_updated_at: Time.now,
    #         recommended_action: "RecommendedRemediationAction", # required
    #         recommended_policy: "String",
    #         existing_policy_id: "String"
    #       }
    #     }],
    #     recommendation_type: "RecommendationType", # required
    #     status: "Status", # required
    #   }
    # @return [Types::GetFindingRecommendationResponse]
    def get_finding_recommendation(params = {}, options = {})
      request = build_request(:get_finding_recommendation, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified finding. GetFinding and GetFindingV2 both use <code>access-analyzer:GetFinding</code> in the <code>Action</code> element of an IAM policy statement. You must have permission to perform the <code>access-analyzer:GetFinding</code> action.</p>
    # @param [Hash, Types::GetFindingV2Request] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> that generated the finding.</p>
    # @option params [String] :id
    #   <p>The ID of the finding to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     id: "FindingId", # required
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.get_finding_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analyzed_at: Time.now, # required
    #     created_at: Time.now, # required
    #     error: "String",
    #     id: "FindingId", # required
    #     next_token: "Token",
    #     resource: "String",
    #     resource_type: "ResourceType", # required
    #     resource_owner_account: "String", # required
    #     status: "FindingStatus", # required
    #     updated_at: Time.now, # required
    #     finding_details: [{ # required
    #       # One of:
    #       internal_access_details: {
    #         action: ["String"],
    #         condition: {
    #           "String" => "String"
    #         },
    #         principal: {
    #           "String" => "String"
    #         },
    #         principal_owner_account: "String",
    #         access_type: "InternalAccessType",
    #         principal_type: "PrincipalType",
    #         sources: [
    #           {
    #             type: "FindingSourceType", # required
    #             detail: {
    #               access_point_arn: "String",
    #               access_point_account: "String"
    #             }
    #           }
    #         ],
    #         resource_control_policy_restriction: "ResourceControlPolicyRestriction",
    #         service_control_policy_restriction: "ServiceControlPolicyRestriction"
    #       },
    #       external_access_details: {
    #         action: ["String"],
    #         condition: { # required
    #           "String" => "String"
    #         },
    #         is_public: false,
    #         principal: {
    #           "String" => "String"
    #         },
    #         sources: [
    #           {
    #             type: "FindingSourceType", # required
    #             detail: {
    #               access_point_arn: "String",
    #               access_point_account: "String"
    #             }
    #           }
    #         ],
    #         resource_control_policy_restriction: "ResourceControlPolicyRestriction"
    #       },
    #       unused_permission_details: {
    #         actions: [
    #           {
    #             action: "String", # required
    #             last_accessed: Time.now
    #           }
    #         ],
    #         service_namespace: "String", # required
    #         last_accessed: Time.now
    #       },
    #       unused_iam_user_access_key_details: {
    #         access_key_id: "String", # required
    #         last_accessed: Time.now
    #       },
    #       unused_iam_role_details: {
    #         last_accessed: Time.now
    #       },
    #       unused_iam_user_password_details: {
    #         last_accessed: Time.now
    #       }
    #     }],
    #     finding_type: "FindingType"
    #   }
    # @return [Types::GetFindingV2Response]
    def get_finding_v2(params = {}, options = {})
      request = build_request(:get_finding_v2, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of aggregated finding statistics for an external access or unused access analyzer.</p>
    # @param [Hash, Types::GetFindingsStatisticsRequest] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> used to generate the statistics.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #   }
    #   options = {}
    #   response = client.get_findings_statistics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings_statistics: [{
    #       # One of:
    #       external_access_findings_statistics: {
    #         resource_type_statistics: {
    #           "ResourceType" => {
    #             total_active_public: 1,
    #             total_active_cross_account: 1
    #           }
    #         },
    #         total_active_findings: 1,
    #         total_archived_findings: 1,
    #         total_resolved_findings: 1
    #       },
    #       internal_access_findings_statistics: {
    #         resource_type_statistics: {
    #           "ResourceType" => {
    #             total_active_findings: 1,
    #             total_resolved_findings: 1,
    #             total_archived_findings: 1
    #           }
    #         },
    #         total_active_findings: 1,
    #         total_archived_findings: 1,
    #         total_resolved_findings: 1
    #       },
    #       unused_access_findings_statistics: {
    #         unused_access_type_statistics: [
    #           {
    #             unused_access_type: "String",
    #             total: 1
    #           }
    #         ],
    #         top_accounts: [
    #           {
    #             account: "String",
    #             number_of_active_findings: 1,
    #             details: {
    #               "String" => 1
    #             }
    #           }
    #         ],
    #         total_active_findings: 1,
    #         total_archived_findings: 1,
    #         total_resolved_findings: 1
    #       }
    #     }],
    #     last_updated_at: Time.now
    #   }
    # @return [Types::GetFindingsStatisticsResponse]
    def get_findings_statistics(params = {}, options = {})
      request = build_request(:get_findings_statistics, params)
      request.send_request(options)
    end

    # <p>Retrieves the policy that was generated using <code>StartPolicyGeneration</code>. </p>
    # @param [Hash, Types::GetGeneratedPolicyInput] params
    # @option params [String] :job_id
    #   <p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code> operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel the policy generation request.</p>
    # @option params [Boolean] :include_resource_placeholders
    #   <p>The level of detail that you want to generate. You can specify whether to generate policies with placeholders for resource ARNs for actions that support resource level granularity in policies.</p> <p>For example, in the resource section of a policy, you can receive a placeholder such as <code>"Resource":"arn:aws:s3:::${BucketName}"</code> instead of <code>"*"</code>.</p>
    # @option params [Boolean] :include_service_level_template
    #   <p>The level of detail that you want to generate. You can specify whether to generate service-level policies. </p> <p>IAM Access Analyzer uses <code>iam:servicelastaccessed</code> to identify services that have been used recently to create this service-level template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_id: "JobId", # required
    #     include_resource_placeholders: false,
    #     include_service_level_template: false
    #   }
    #   options = {}
    #   response = client.get_generated_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_details: { # required
    #       job_id: "JobId", # required
    #       status: "JobStatus", # required
    #       started_on: Time.now, # required
    #       completed_on: Time.now,
    #       job_error: {
    #         code: "JobErrorCode", # required
    #         message: "String", # required
    #       }
    #     },
    #     generated_policy_result: { # required
    #       properties: { # required
    #         is_complete: false,
    #         principal_arn: "PrincipalArn", # required
    #         cloud_trail_properties: {
    #           trail_properties: [ # required
    #             {
    #               cloud_trail_arn: "CloudTrailArn", # required
    #               regions: ["String"],
    #               all_regions: false
    #             }
    #           ],
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #         }
    #       },
    #       generated_policies: [
    #         {
    #           policy: "String", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetGeneratedPolicyOutput]
    def get_generated_policy(params = {}, options = {})
      request = build_request(:get_generated_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of access preview findings generated by the specified access preview.</p>
    # @param [Hash, Types::ListAccessPreviewFindingsInput] params
    # @option params [String] :access_preview_id
    #   <p>The unique ID for the access preview.</p>
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> used to generate the access.</p>
    # @option params [Hash<String, Types::Criterion>] :filter
    #   <p>Criteria to filter the returned findings.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_preview_id: "AccessPreviewId", # required
    #     analyzer_arn: "AnalyzerArn", # required
    #     filter: {
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false
    #       }
    #     },
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_preview_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         id: "AccessPreviewFindingId", # required
    #         existing_finding_id: "FindingId",
    #         existing_finding_status: "FindingStatus",
    #         principal: {
    #           "String" => "String"
    #         },
    #         action: ["String"],
    #         condition: {
    #           "String" => "String"
    #         },
    #         resource: "String",
    #         is_public: false,
    #         resource_type: "ResourceType", # required
    #         created_at: Time.now, # required
    #         change_type: "FindingChangeType", # required
    #         status: "FindingStatus", # required
    #         resource_owner_account: "String", # required
    #         error: "String",
    #         sources: [
    #           {
    #             type: "FindingSourceType", # required
    #             detail: {
    #               access_point_arn: "String",
    #               access_point_account: "String"
    #             }
    #           }
    #         ],
    #         resource_control_policy_restriction: "ResourceControlPolicyRestriction"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAccessPreviewFindingsOutput]
    def list_access_preview_findings(params = {}, options = {})
      request = build_request(:list_access_preview_findings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of access previews for the specified analyzer.</p>
    # @param [Hash, Types::ListAccessPreviewsInput] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> used to generate the access preview.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_previews(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_previews: [ # required
    #       {
    #         id: "AccessPreviewId", # required
    #         analyzer_arn: "AnalyzerArn", # required
    #         created_at: Time.now, # required
    #         status: "AccessPreviewStatus", # required
    #         status_reason: {
    #           code: "AccessPreviewStatusReasonCode", # required
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAccessPreviewsOutput]
    def list_access_previews(params = {}, options = {})
      request = build_request(:list_access_previews, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of resources of the specified type that have been analyzed by the specified analyzer.</p>
    # @param [Hash, Types::ListAnalyzedResourcesInput] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> to retrieve a list of analyzed resources from.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     resource_type: "ResourceType",
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_analyzed_resources(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analyzed_resources: [ # required
    #       {
    #         resource_arn: "ResourceArn", # required
    #         resource_owner_account: "String", # required
    #         resource_type: "ResourceType", # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAnalyzedResourcesOutput]
    def list_analyzed_resources(params = {}, options = {})
      request = build_request(:list_analyzed_resources, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of analyzers.</p>
    # @param [Hash, Types::ListAnalyzersInput] params
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :type
    #   <p>The type of analyzer.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "Token",
    #     max_results: 1,
    #     type: "Type"
    #   }
    #   options = {}
    #   response = client.list_analyzers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     analyzers: [ # required
    #       {
    #         arn: "AnalyzerArn", # required
    #         name: "Name", # required
    #         type: "Type", # required
    #         created_at: Time.now, # required
    #         last_resource_analyzed: "String",
    #         last_resource_analyzed_at: Time.now,
    #         tags: {
    #           "String" => "String"
    #         },
    #         status: "AnalyzerStatus", # required
    #         status_reason: {
    #           code: "ReasonCode", # required
    #         },
    #         configuration: {
    #           # One of:
    #           unused_access: {
    #             unused_access_age: 1,
    #             analysis_rule: {
    #               exclusions: [
    #                 {
    #                   account_ids: ["String"],
    #                   resource_tags: [
    #                     {
    #                       "String" => "String"
    #                     }
    #                   ]
    #                 }
    #               ]
    #             }
    #           },
    #           internal_access: {
    #             analysis_rule: {
    #               inclusions: [
    #                 {
    #                   account_ids: ["String"],
    #                   resource_types: ["ResourceType"],
    #                   resource_arns: ["String"]
    #                 }
    #               ]
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListAnalyzersOutput]
    def list_analyzers(params = {}, options = {})
      request = build_request(:list_analyzers, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of archive rules created for the specified analyzer.</p>
    # @param [Hash, Types::ListArchiveRulesInput] params
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to retrieve rules from.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_archive_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     archive_rules: [ # required
    #       {
    #         rule_name: "Name", # required
    #         filter: { # required
    #           "String" => {
    #             eq: ["String"],
    #             neq: ["String"],
    #             contains: ["String"],
    #             exists: false
    #           }
    #         },
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListArchiveRulesOutput]
    def list_archive_rules(params = {}, options = {})
      request = build_request(:list_archive_rules, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of findings generated by the specified analyzer. ListFindings and ListFindingsV2 both use <code>access-analyzer:ListFindings</code> in the <code>Action</code> element of an IAM policy statement. You must have permission to perform the <code>access-analyzer:ListFindings</code> action.</p> <p>To learn about filter keys that you can use to retrieve a list of findings, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html">IAM Access Analyzer filter keys</a> in the <b>IAM User Guide</b>.</p>
    # @param [Hash, Types::ListFindingsInput] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> to retrieve findings from.</p>
    # @option params [Hash<String, Types::Criterion>] :filter
    #   <p>A filter to match for the findings to return.</p>
    # @option params [Types::SortCriteria] :sort
    #   <p>The sort order for the findings returned.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     filter: {
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false
    #       }
    #     },
    #     sort: {
    #       attribute_name: "String",
    #       order_by: "OrderBy"
    #     },
    #     next_token: "Token",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         id: "FindingId", # required
    #         principal: {
    #           "String" => "String"
    #         },
    #         action: ["String"],
    #         resource: "String",
    #         is_public: false,
    #         resource_type: "ResourceType", # required
    #         condition: { # required
    #           "String" => "String"
    #         },
    #         created_at: Time.now, # required
    #         analyzed_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         status: "FindingStatus", # required
    #         resource_owner_account: "String", # required
    #         error: "String",
    #         sources: [
    #           {
    #             type: "FindingSourceType", # required
    #             detail: {
    #               access_point_arn: "String",
    #               access_point_account: "String"
    #             }
    #           }
    #         ],
    #         resource_control_policy_restriction: "ResourceControlPolicyRestriction"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListFindingsOutput]
    def list_findings(params = {}, options = {})
      request = build_request(:list_findings, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of findings generated by the specified analyzer. ListFindings and ListFindingsV2 both use <code>access-analyzer:ListFindings</code> in the <code>Action</code> element of an IAM policy statement. You must have permission to perform the <code>access-analyzer:ListFindings</code> action.</p> <p>To learn about filter keys that you can use to retrieve a list of findings, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-reference-filter-keys.html">IAM Access Analyzer filter keys</a> in the <b>IAM User Guide</b>.</p>
    # @param [Hash, Types::ListFindingsV2Request] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> to retrieve findings from.</p>
    # @option params [Hash<String, Types::Criterion>] :filter
    #   <p>A filter to match for the findings to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @option params [Types::SortCriteria] :sort
    #   <p>The criteria used to sort.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     filter: {
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false
    #       }
    #     },
    #     max_results: 1,
    #     next_token: "Token",
    #     sort: {
    #       attribute_name: "String",
    #       order_by: "OrderBy"
    #     }
    #   }
    #   options = {}
    #   response = client.list_findings_v2(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         analyzed_at: Time.now, # required
    #         created_at: Time.now, # required
    #         error: "String",
    #         id: "FindingId", # required
    #         resource: "String",
    #         resource_type: "ResourceType", # required
    #         resource_owner_account: "String", # required
    #         status: "FindingStatus", # required
    #         updated_at: Time.now, # required
    #         finding_type: "FindingType"
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListFindingsV2Response]
    def list_findings_v2(params = {}, options = {})
      request = build_request(:list_findings_v2, params)
      request.send_request(options)
    end

    # <p>Lists all of the policy generations requested in the last seven days.</p>
    # @param [Hash, Types::ListPolicyGenerationsInput] params
    # @option params [String] :principal_arn
    #   <p>The ARN of the IAM entity (user or role) for which you are generating a policy. Use this with <code>ListGeneratedPolicies</code> to filter the results to only include results for a specific principal.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     principal_arn: "PrincipalArn",
    #     max_results: 1,
    #     next_token: "Token"
    #   }
    #   options = {}
    #   response = client.list_policy_generations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_generations: [ # required
    #       {
    #         job_id: "JobId", # required
    #         principal_arn: "PrincipalArn", # required
    #         status: "JobStatus", # required
    #         started_on: Time.now, # required
    #         completed_on: Time.now
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ListPolicyGenerationsOutput]
    def list_policy_generations(params = {}, options = {})
      request = build_request(:list_policy_generations, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of tags applied to the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to retrieve tags from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts the policy generation request.</p>
    # @param [Hash, Types::StartPolicyGenerationInput] params
    # @option params [Types::PolicyGenerationDetails] :policy_generation_details
    #   <p>Contains the ARN of the IAM entity (user or role) for which you are generating a policy.</p>
    # @option params [Types::CloudTrailDetails] :cloud_trail_details
    #   <p>A <code>CloudTrailDetails</code> object that contains details about a <code>Trail</code> that you want to analyze to generate policies.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect.</p> <p>If you do not specify a client token, one is automatically generated by the Amazon Web Services SDK.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     policy_generation_details: { # required
    #       principal_arn: "PrincipalArn", # required
    #     },
    #     cloud_trail_details: {
    #       trails: [ # required
    #         {
    #           cloud_trail_arn: "CloudTrailArn", # required
    #           regions: ["String"],
    #           all_regions: false
    #         }
    #       ],
    #       access_role: "RoleArn", # required
    #       start_time: Time.now, # required
    #       end_time: Time.now
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.start_policy_generation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #   }
    # @return [Types::StartPolicyGenerationOutput]
    def start_policy_generation(params = {}, options = {})
      request = build_request(:start_policy_generation, params)
      request.send_request(options)
    end

    # <p>Immediately starts a scan of the policies applied to the specified resource.</p>
    # @param [Hash, Types::StartResourceScanInput] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> to use to scan the policies applied to the specified resource.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to scan.</p>
    # @option params [String] :resource_owner_account
    #   <p>The Amazon Web Services account ID that owns the resource. For most Amazon Web Services resources, the owning account is the account in which the resource was created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     resource_arn: "ResourceArn", # required
    #     resource_owner_account: "String"
    #   }
    #   options = {}
    #   response = client.start_resource_scan(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_resource_scan(params = {}, options = {})
      request = build_request(:start_resource_scan, params)
      request.send_request(options)
    end

    # <p>Adds a tag to the specified resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to add the tag to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to remove the tag from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key for the tag to add.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Modifies the configuration of an existing analyzer.</p>
    # @param [Hash, Types::UpdateAnalyzerRequest] params
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to modify.</p>
    # @option params [Types::AnalyzerConfiguration] :configuration
    #   <p>Contains information about the configuration of an analyzer for an Amazon Web Services organization or account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #     configuration: {
    #       # One of:
    #       unused_access: {
    #         unused_access_age: 1,
    #         analysis_rule: {
    #           exclusions: [
    #             {
    #               account_ids: ["String"],
    #               resource_tags: [
    #                 {
    #                   "String" => "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       internal_access: {
    #         analysis_rule: {
    #           inclusions: [
    #             {
    #               account_ids: ["String"],
    #               resource_types: ["ResourceType"],
    #               resource_arns: ["String"]
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_analyzer(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration: {
    #       # One of:
    #       unused_access: {
    #         unused_access_age: 1,
    #         analysis_rule: {
    #           exclusions: [
    #             {
    #               account_ids: ["String"],
    #               resource_tags: [
    #                 {
    #                   "String" => "String"
    #                 }
    #               ]
    #             }
    #           ]
    #         }
    #       },
    #       internal_access: {
    #         analysis_rule: {
    #           inclusions: [
    #             {
    #               account_ids: ["String"],
    #               resource_types: ["ResourceType"],
    #               resource_arns: ["String"]
    #             }
    #           ]
    #         }
    #       }
    #     }
    #   }
    # @return [Types::UpdateAnalyzerResponse]
    def update_analyzer(params = {}, options = {})
      request = build_request(:update_analyzer, params)
      request.send_request(options)
    end

    # <p>Updates the criteria and values for the specified archive rule.</p>
    # @param [Hash, Types::UpdateArchiveRuleInput] params
    # @option params [String] :analyzer_name
    #   <p>The name of the analyzer to update the archive rules for.</p>
    # @option params [String] :rule_name
    #   <p>The name of the rule to update.</p>
    # @option params [Hash<String, Types::Criterion>] :filter
    #   <p>A filter to match for the rules to update. Only rules that match the filter are updated.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_name: "Name", # required
    #     rule_name: "Name", # required
    #     filter: { # required
    #       "String" => {
    #         eq: ["String"],
    #         neq: ["String"],
    #         contains: ["String"],
    #         exists: false
    #       }
    #     },
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_archive_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_archive_rule(params = {}, options = {})
      request = build_request(:update_archive_rule, params)
      request.send_request(options)
    end

    # <p>Updates the status for the specified findings.</p>
    # @param [Hash, Types::UpdateFindingsInput] params
    # @option params [String] :analyzer_arn
    #   <p>The <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-getting-started.html#permission-resources">ARN of the analyzer</a> that generated the findings to update.</p>
    # @option params [String] :status
    #   <p>The state represents the action to take to update the finding Status. Use <code>ARCHIVE</code> to change an Active finding to an Archived finding. Use <code>ACTIVE</code> to change an Archived finding to an Active finding.</p>
    # @option params [Array<String>] :ids
    #   <p>The IDs of the findings to update.</p>
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource identified in the finding.</p>
    # @option params [String] :client_token
    #   <p>A client token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     analyzer_arn: "AnalyzerArn", # required
    #     status: "FindingStatusUpdate", # required
    #     ids: ["FindingId"],
    #     resource_arn: "ResourceArn",
    #     client_token: "String"
    #   }
    #   options = {}
    #   response = client.update_findings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def update_findings(params = {}, options = {})
      request = build_request(:update_findings, params)
      request.send_request(options)
    end

    # <p>Requests the validation of a policy and returns a list of findings. The findings help you identify issues and provide actionable recommendations to resolve the issue and enable you to author functional policies that meet security best practices. </p>
    # @param [Hash, Types::ValidatePolicyInput] params
    # @option params [String] :locale
    #   <p>The locale to use for localizing the findings.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the response.</p>
    # @option params [String] :next_token
    #   <p>A token used for pagination of results returned.</p>
    # @option params [String] :policy_document
    #   <p>The JSON policy document to use as the content for the policy.</p>
    # @option params [String] :policy_type
    #   <p>The type of policy to validate. Identity policies grant permissions to IAM principals. Identity policies include managed and inline policies for IAM roles, users, and groups.</p> <p>Resource policies grant permissions on Amazon Web Services resources. Resource policies include trust policies for IAM roles and bucket policies for Amazon S3 buckets. You can provide a generic input such as identity policy or resource policy or a specific input such as managed policy or Amazon S3 bucket policy. </p> <p>Service control policies (SCPs) are a type of organization policy attached to an Amazon Web Services organization, organizational unit (OU), or an account.</p>
    # @option params [String] :validate_policy_resource_type
    #   <p>The type of resource to attach to your resource policy. Specify a value for the policy validation resource type only if the policy type is <code>RESOURCE_POLICY</code>. For example, to validate a resource policy to attach to an Amazon S3 bucket, you can choose <code>AWS::S3::Bucket</code> for the policy validation resource type.</p> <p>For resource types not supported as valid values, IAM Access Analyzer runs policy checks that apply to all resource policies. For example, to validate a resource policy to attach to a KMS key, do not specify a value for the policy validation resource type and IAM Access Analyzer will run policy checks that apply to all resource policies.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "Locale",
    #     max_results: 1,
    #     next_token: "Token",
    #     policy_document: "PolicyDocument", # required
    #     policy_type: "PolicyType", # required
    #     validate_policy_resource_type: "ValidatePolicyResourceType"
    #   }
    #   options = {}
    #   response = client.validate_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     findings: [ # required
    #       {
    #         finding_details: "String", # required
    #         finding_type: "ValidatePolicyFindingType", # required
    #         issue_code: "IssueCode", # required
    #         learn_more_link: "LearnMoreLink", # required
    #         locations: [ # required
    #           {
    #             path: [{ # required
    #               # One of:
    #               index: 1,
    #               key: "String",
    #               substring: {
    #                 start: 1, # required
    #                 length: 1, # required
    #               },
    #               value: "String"
    #             }],
    #             span: { # required
    #               start: { # required
    #                 line: 1, # required
    #                 column: 1, # required
    #                 offset: 1, # required
    #               },
    #               end: { # required
    #                 line: 1, # required
    #                 column: 1, # required
    #                 offset: 1, # required
    #               }
    #             }
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "Token"
    #   }
    # @return [Types::ValidatePolicyOutput]
    def validate_policy(params = {}, options = {})
      request = build_request(:validate_policy, params)
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
      context[:gem_name] = 'aws-sdk-accessanalyzer'
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
