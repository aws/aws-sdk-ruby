# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/auth'
require_relative 'plugins/endpoint'
require 'aws-sdk-core/plugins/sigv4'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_output'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'smithy-client/plugins/anonymous_auth'

module Aws::Lambda
  # An API client for Aws::Lambda.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SERVICE

    add_plugin(Aws::Lambda::Plugins::Auth)
    add_plugin(Aws::Lambda::Plugins::Endpoint)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableOutput)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Smithy::Client::Plugins::AnonymousAuth)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [Aws::Lambda::AuthResolver] :auth_resolver
    #  The auth resolver used to resolve authentication. Any object that responds to `#resolve(parameters)`.
    # @option options [Hash] :auth_schemes
    #  The auth schemes used to resolve authentication. The key is the scheme name as a String,
    #  and the value is an initialized auth scheme class.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [identity(properties)] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity(properties)`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::Lambda::EndpointProvider] :endpoint_provider
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
    # @option options [Symbol] :log_level (info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set,
    #  logging is disabled.
    # @option options [String, Class] :protocol (restJson1)
    #  The protocol to use for request serialization and response deserialization.
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Output#error error accessor}.
    # @option options [String] :region
    #  TODO
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options [String, Class] :retry_strategy (standard)
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
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [Boolean] :stub_responses
    #  When true, the client will return stubbed responses instead of networking requests.
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

    # @example To add permissions to a layer version
    #   # The following example grants permission for the account 223456789012 to use version 1 of a layer named my-layer.
    #   params = {
    #     layer_name: "my-layer",
    #     version_number: 1,
    #     statement_id: "xaccount",
    #     action: "lambda:GetLayerVersion",
    #     principal: "223456789012"
    #   }
    #   options = {}
    #   output = client.add_layer_version_permission(params, options)
    #   output.to_h #=>
    #   {
    #     statement: "{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::223456789012:root\"},\"Action\":\"lambda:GetLayerVersion\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:layer:my-layer:1\"}",
    #     revision_id: "35d87451-f796-4a3f-a618-95a3671b0a0c"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #     statement_id: "StatementId", # required
    #     action: "LayerPermissionAllowedAction", # required
    #     principal: "LayerPermissionAllowedPrincipal", # required
    #     organization_id: "OrganizationId",
    #     revision_id: "String"
    #   }
    #   options = {}
    #   output = client.add_layer_version_permission(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     statement: "String",
    #     revision_id: "String"
    #   }
    def add_layer_version_permission(params = {}, options = {})
      input = build_input(:add_layer_version_permission, params)
      input.send_request(options)
    end

    # @example To grant Amazon S3 permission to invoke a function
    #   # The following example adds permission for Amazon S3 to invoke a Lambda function named my-function for notifications from a bucket named my-bucket-1xpuxmplzrlbh in account 123456789012.
    #   params = {
    #     function_name: "my-function",
    #     statement_id: "s3",
    #     action: "lambda:InvokeFunction",
    #     principal: "s3.amazonaws.com",
    #     source_arn: "arn:aws:s3:::my-bucket-1xpuxmplzrlbh/*",
    #     source_account: "123456789012"
    #   }
    #   options = {}
    #   output = client.add_permission(params, options)
    #   output.to_h #=>
    #   {
    #     statement: "{\"Sid\":\"s3\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"s3.amazonaws.com\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"123456789012\"},\"ArnLike\":{\"AWS:SourceArn\":\"arn:aws:s3:::my-bucket-1xpuxmplzrlbh\"}}}"
    #   }
    # @example To grant another account permission to invoke a function
    #   # The following example adds permission for account 223456789012 invoke a Lambda function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     statement_id: "xaccount",
    #     action: "lambda:InvokeFunction",
    #     principal: "223456789012"
    #   }
    #   options = {}
    #   output = client.add_permission(params, options)
    #   output.to_h #=>
    #   {
    #     statement: "{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::223456789012:root\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function\"}"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     statement_id: "StatementId", # required
    #     action: "Action", # required
    #     principal: "Principal", # required
    #     source_arn: "Arn",
    #     source_account: "SourceOwner",
    #     event_source_token: "EventSourceToken",
    #     qualifier: "Qualifier",
    #     revision_id: "String",
    #     principal_org_id: "PrincipalOrgID",
    #     function_url_auth_type: "NONE" # One of: ["NONE", "AWS_IAM"]
    #   }
    #   options = {}
    #   output = client.add_permission(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     statement: "String"
    #   }
    def add_permission(params = {}, options = {})
      input = build_input(:add_permission, params)
      input.send_request(options)
    end

    # @example To create an alias for a Lambda function
    #   # The following example creates an alias named LIVE that points to version 1 of the my-function Lambda function.
    #   params = {
    #     function_name: "my-function",
    #     name: "LIVE",
    #     function_version: "1",
    #     description: "alias for live version of function"
    #   }
    #   options = {}
    #   output = client.create_alias(params, options)
    #   output.to_h #=>
    #   {
    #     function_version: "1",
    #     name: "LIVE",
    #     alias_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:LIVE",
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6",
    #     description: "alias for live version of function"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version", # required
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     }
    #   }
    #   options = {}
    #   output = client.create_alias(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     alias_arn: "FunctionArn",
    #     name: "Alias",
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     },
    #     revision_id: "String"
    #   }
    def create_alias(params = {}, options = {})
      input = build_input(:create_alias, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     description: "Description",
    #     allowed_publishers: { # required
    #       signing_profile_version_arns: ["Arn"], # required
    #     },
    #     code_signing_policies: {
    #       untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   output = client.create_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     code_signing_config: { # required
    #       code_signing_config_id: "CodeSigningConfigId", # required
    #       code_signing_config_arn: "CodeSigningConfigArn", # required
    #       description: "Description",
    #       allowed_publishers: { # required
    #         signing_profile_version_arns: ["Arn"], # required
    #       },
    #       code_signing_policies: { # required
    #         untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #       },
    #       last_modified: "Timestamp", # required
    #     }
    #   }
    def create_code_signing_config(params = {}, options = {})
      input = build_input(:create_code_signing_config, params)
      input.send_request(options)
    end

    # @example To create a mapping between an event source and an AWS Lambda function
    #   # The following example creates a mapping between an SQS queue and the my-function Lambda function.
    #   params = {
    #     event_source_arn: "arn:aws:sqs:us-west-2:123456789012:my-queue",
    #     function_name: "my-function",
    #     batch_size: 5
    #   }
    #   options = {}
    #   output = client.create_event_source_mapping(params, options)
    #   output.to_h #=>
    #   {
    #     uuid: "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE",
    #     state_transition_reason: "USER_INITIATED",
    #     last_modified: Time.parse(1569284520.333),
    #     batch_size: 5,
    #     state: "Creating",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     event_source_arn: "arn:aws:sqs:us-west-2:123456789012:my-queue"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "Arn",
    #     function_name: "FunctionName", # required
    #     enabled: false,
    #     batch_size: 1,
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     tumbling_window_in_seconds: 1,
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    #   options = {}
    #   output = client.create_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     uuid: "String",
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     event_source_arn: "Arn",
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     function_arn: "FunctionArn",
    #     last_modified: Time.now,
    #     last_processing_result: "String",
    #     state: "String",
    #     state_transition_reason: "String",
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    def create_event_source_mapping(params = {}, options = {})
      input = build_input(:create_event_source_mapping, params)
      input.send_request(options)
    end

    # @example To create a function
    #   # The following example creates a function with a deployment package in Amazon S3 and enables X-Ray tracing and environment variable encryption.
    #   params = {
    #     function_name: "my-function",
    #     runtime: nodejs12.x,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     handler: "index.handler",
    #     code: {
    #       s3_bucket: "my-bucket-1xpuxmplzrlbh",
    #       s3_key: "function.zip"
    #     },
    #     description: "Process image objects from Amazon S3.",
    #     timeout: 15,
    #     memory_size: 256,
    #     publish: true,
    #     environment: {
    #       variables: {
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh",
    #         "PREFIX" => "inbound"
    #       }
    #     },
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     tracing_config: {
    #       mode: Active
    #     },
    #     tags: {
    #       "DEPARTMENT" => "Assets"
    #     }
    #   }
    #   options = {}
    #   output = client.create_function(params, options)
    #   output.to_h #=>
    #   {
    #     function_name: "my-function",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     runtime: nodejs12.x,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     handler: "index.handler",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     timeout: 15,
    #     memory_size: 256,
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     version: "1",
    #     environment: {
    #       variables: {
    #         "PREFIX" => "inbound",
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #       }
    #     },
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     tracing_config: {
    #       mode: Active
    #     },
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     state: Active,
    #     last_update_status: Successful
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     role: "RoleArn", # required
    #     handler: "Handler",
    #     code: { # required
    #       zip_file: "data",
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       image_uri: "String",
    #       source_kms_key_arn: "KMSKeyArn"
    #     },
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     publish: false,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     layers: ["LayerVersionArn"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
    #     image_config: {
    #       entry_point: ["String"],
    #       command: ["String"],
    #       working_directory: "WorkingDirectory"
    #     },
    #     code_signing_config_arn: "CodeSigningConfigArn",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"]
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     }
    #   }
    #   options = {}
    #   output = client.create_function(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     }
    #   }
    def create_function(params = {}, options = {})
      input = build_input(:create_function, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "FunctionUrlQualifier",
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    #   options = {}
    #   output = client.create_function_url_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_url: "FunctionUrl", # required
    #     function_arn: "FunctionArn", # required
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     creation_time: "Timestamp", # required
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    def create_function_url_config(params = {}, options = {})
      input = build_input(:create_function_url_config, params)
      input.send_request(options)
    end

    # @example To delete a Lambda function alias
    #   # The following example deletes an alias named BLUE from a function named my-function
    #   params = {
    #     function_name: "my-function",
    #     name: "BLUE"
    #   }
    #   options = {}
    #   output = client.delete_alias(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   }
    #   options = {}
    #   output = client.delete_alias(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_alias(params = {}, options = {})
      input = build_input(:delete_alias, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #   }
    #   options = {}
    #   output = client.delete_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_code_signing_config(params = {}, options = {})
      input = build_input(:delete_code_signing_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "String", # required
    #   }
    #   options = {}
    #   output = client.delete_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     uuid: "String",
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     event_source_arn: "Arn",
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     function_arn: "FunctionArn",
    #     last_modified: Time.now,
    #     last_processing_result: "String",
    #     state: "String",
    #     state_transition_reason: "String",
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    def delete_event_source_mapping(params = {}, options = {})
      input = build_input(:delete_event_source_mapping, params)
      input.send_request(options)
    end

    # @example To delete a version of a Lambda function
    #   # The following example deletes version 1 of a Lambda function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   output = client.delete_function(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   output = client.delete_function(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_function(params = {}, options = {})
      input = build_input(:delete_function, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   output = client.delete_function_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_function_code_signing_config(params = {}, options = {})
      input = build_input(:delete_function_code_signing_config, params)
      input.send_request(options)
    end

    # @example To remove the reserved concurrent execution limit from a function
    #   # The following example deletes the reserved concurrent execution limit from a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   output = client.delete_function_concurrency(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   output = client.delete_function_concurrency(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_function_concurrency(params = {}, options = {})
      input = build_input(:delete_function_concurrency, params)
      input.send_request(options)
    end

    # @example To delete an asynchronous invocation configuration
    #   # The following example deletes the asynchronous invocation configuration for the GREEN alias of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "GREEN"
    #   }
    #   options = {}
    #   output = client.delete_function_event_invoke_config(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   output = client.delete_function_event_invoke_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_function_event_invoke_config(params = {}, options = {})
      input = build_input(:delete_function_event_invoke_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "FunctionUrlQualifier"
    #   }
    #   options = {}
    #   output = client.delete_function_url_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_function_url_config(params = {}, options = {})
      input = build_input(:delete_function_url_config, params)
      input.send_request(options)
    end

    # @example To delete a version of a Lambda layer
    #   # The following example deletes version 2 of a layer named my-layer.
    #   params = {
    #     layer_name: "my-layer",
    #     version_number: 2
    #   }
    #   options = {}
    #   output = client.delete_layer_version(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   }
    #   options = {}
    #   output = client.delete_layer_version(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_layer_version(params = {}, options = {})
      input = build_input(:delete_layer_version, params)
      input.send_request(options)
    end

    # @example To delete a provisioned concurrency configuration
    #   # The following example deletes the provisioned concurrency configuration for the GREEN alias of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "GREEN"
    #   }
    #   options = {}
    #   output = client.delete_provisioned_concurrency_config(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #   }
    #   options = {}
    #   output = client.delete_provisioned_concurrency_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def delete_provisioned_concurrency_config(params = {}, options = {})
      input = build_input(:delete_provisioned_concurrency_config, params)
      input.send_request(options)
    end

    # @example To get account settings
    #   # This operation takes no parameters and returns details about storage and concurrency quotas in the current Region.
    #   params = {}
    #   options = {}
    #   output = client.get_account_settings(params, options)
    #   output.to_h #=>
    #   {
    #     account_limit: {
    #       code_size_unzipped: 262144000,
    #       unreserved_concurrent_executions: 1000,
    #       concurrent_executions: 1000,
    #       code_size_zipped: 52428800,
    #       total_code_size: 80530636800
    #     },
    #     account_usage: {
    #       function_count: 4,
    #       total_code_size: 9426
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   output = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     account_limit: {
    #       total_code_size: 1,
    #       code_size_unzipped: 1,
    #       code_size_zipped: 1,
    #       concurrent_executions: 1,
    #       unreserved_concurrent_executions: 1
    #     },
    #     account_usage: {
    #       total_code_size: 1,
    #       function_count: 1
    #     }
    #   }
    def get_account_settings(params = {}, options = {})
      input = build_input(:get_account_settings, params)
      input.send_request(options)
    end

    # @example To get a Lambda function alias
    #   # The following example returns details about an alias named BLUE for a function named my-function
    #   params = {
    #     function_name: "my-function",
    #     name: "BLUE"
    #   }
    #   options = {}
    #   output = client.get_alias(params, options)
    #   output.to_h #=>
    #   {
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:BLUE",
    #     name: "BLUE",
    #     function_version: "3",
    #     revision_id: "594f41fb-xmpl-4c20-95c7-6ca5f2a92c93",
    #     description: "Production environment BLUE."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #   }
    #   options = {}
    #   output = client.get_alias(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     alias_arn: "FunctionArn",
    #     name: "Alias",
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     },
    #     revision_id: "String"
    #   }
    def get_alias(params = {}, options = {})
      input = build_input(:get_alias, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #   }
    #   options = {}
    #   output = client.get_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     code_signing_config: { # required
    #       code_signing_config_id: "CodeSigningConfigId", # required
    #       code_signing_config_arn: "CodeSigningConfigArn", # required
    #       description: "Description",
    #       allowed_publishers: { # required
    #         signing_profile_version_arns: ["Arn"], # required
    #       },
    #       code_signing_policies: { # required
    #         untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #       },
    #       last_modified: "Timestamp", # required
    #     }
    #   }
    def get_code_signing_config(params = {}, options = {})
      input = build_input(:get_code_signing_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "String", # required
    #   }
    #   options = {}
    #   output = client.get_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     uuid: "String",
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     event_source_arn: "Arn",
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     function_arn: "FunctionArn",
    #     last_modified: Time.now,
    #     last_processing_result: "String",
    #     state: "String",
    #     state_transition_reason: "String",
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    def get_event_source_mapping(params = {}, options = {})
      input = build_input(:get_event_source_mapping, params)
      input.send_request(options)
    end

    # @example To get a Lambda function
    #   # The following example returns code and configuration details for version 1 of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   output = client.get_function(params, options)
    #   output.to_h #=>
    #   {
    #     configuration: {
    #       function_name: "my-function",
    #       function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #       runtime: nodejs12.x,
    #       role: "arn:aws:iam::123456789012:role/lambda-role",
    #       handler: "index.handler",
    #       code_size: 5797206,
    #       description: "Process image objects from Amazon S3.",
    #       timeout: 15,
    #       memory_size: 256,
    #       last_modified: "2020-04-10T19:06:32.563+0000",
    #       code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #       version: "$LATEST",
    #       environment: {
    #         variables: {
    #           "PREFIX" => "inbound",
    #           "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #         }
    #       },
    #       kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #       tracing_config: {
    #         mode: Active
    #       },
    #       revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #       state: Active,
    #       last_update_status: Successful
    #     },
    #     code: {
    #       repository_type: "S3",
    #       location: "https://awslambda-us-west-2-tasks.s3.us-west-2.amazonaws.com/snapshots/123456789012/my-function-e7d9d1ed-xmpl-4f79-904a-4b87f2681f30?versionId=sH3TQwBOaUy..."
    #     },
    #     tags: {
    #       "DEPARTMENT" => "Assets"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   output = client.get_function(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     configuration: {
    #       function_name: "NamespacedFunctionName",
    #       function_arn: "NameSpacedFunctionArn",
    #       runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #       role: "RoleArn",
    #       handler: "Handler",
    #       code_size: 1,
    #       description: "Description",
    #       timeout: 1,
    #       memory_size: 1,
    #       last_modified: "Timestamp",
    #       code_sha256: "String",
    #       version: "Version",
    #       vpc_config: {
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #         vpc_id: "VpcId",
    #         ipv6_allowed_for_dual_stack: false
    #       },
    #       dead_letter_config: {
    #         target_arn: "ResourceArn"
    #       },
    #       environment: {
    #         variables: {
    #           "EnvironmentVariableName" => "EnvironmentVariableValue"
    #         },
    #         error: {
    #           error_code: "String",
    #           message: "SensitiveString"
    #         }
    #       },
    #       kms_key_arn: "KMSKeyArn",
    #       tracing_config: {
    #         mode: "Active" # One of: ["Active", "PassThrough"]
    #       },
    #       master_arn: "FunctionArn",
    #       revision_id: "String",
    #       layers: [
    #         {
    #           arn: "LayerVersionArn",
    #           code_size: 1,
    #           signing_profile_version_arn: "Arn",
    #           signing_job_arn: "Arn"
    #         }
    #       ],
    #       state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #       state_reason: "StateReason",
    #       state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #       last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #       last_update_status_reason: "LastUpdateStatusReason",
    #       last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #       file_system_configs: [
    #         {
    #           arn: "FileSystemArn", # required
    #           local_mount_path: "LocalMountPath", # required
    #         }
    #       ],
    #       package_type: "Zip" # One of: ["Zip", "Image"],
    #       image_config_response: {
    #         image_config: {
    #           entry_point: ["String"],
    #           command: ["String"],
    #           working_directory: "WorkingDirectory"
    #         },
    #         error: {
    #           error_code: "String",
    #           message: "SensitiveString"
    #         }
    #       },
    #       signing_profile_version_arn: "Arn",
    #       signing_job_arn: "Arn",
    #       architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #       ephemeral_storage: {
    #         size: 1, # required
    #       },
    #       snap_start: {
    #         apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #         optimization_status: "On" # One of: ["On", "Off"]
    #       },
    #       runtime_version_config: {
    #         runtime_version_arn: "RuntimeVersionArn",
    #         error: {
    #           error_code: "String",
    #           message: "SensitiveString"
    #         }
    #       },
    #       logging_config: {
    #         log_format: "JSON" # One of: ["JSON", "Text"],
    #         application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #         system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #         log_group: "LogGroup"
    #       }
    #     },
    #     code: {
    #       repository_type: "String",
    #       location: "String",
    #       image_uri: "String",
    #       resolved_image_uri: "String",
    #       source_kms_key_arn: "String"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     tags_error: {
    #       error_code: "TagsErrorCode", # required
    #       message: "TagsErrorMessage", # required
    #     },
    #     concurrency: {
    #       reserved_concurrent_executions: 1
    #     }
    #   }
    def get_function(params = {}, options = {})
      input = build_input(:get_function, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   output = client.get_function_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     function_name: "FunctionName", # required
    #   }
    def get_function_code_signing_config(params = {}, options = {})
      input = build_input(:get_function_code_signing_config, params)
      input.send_request(options)
    end

    # @example To get the reserved concurrency setting for a function
    #   # The following example returns the reserved concurrency setting for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   output = client.get_function_concurrency(params, options)
    #   output.to_h #=>
    #   {
    #     reserved_concurrent_executions: 250
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   output = client.get_function_concurrency(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     reserved_concurrent_executions: 1
    #   }
    def get_function_concurrency(params = {}, options = {})
      input = build_input(:get_function_concurrency, params)
      input.send_request(options)
    end

    # @example To get a Lambda function's event source mapping
    #   # The following example returns and configuration details for version 1 of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   output = client.get_function_configuration(params, options)
    #   output.to_h #=>
    #   {
    #     function_name: "my-function",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     runtime: nodejs12.x,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     handler: "index.handler",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     timeout: 15,
    #     memory_size: 256,
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     version: "$LATEST",
    #     environment: {
    #       variables: {
    #         "PREFIX" => "inbound",
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #       }
    #     },
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     tracing_config: {
    #       mode: Active
    #     },
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     state: Active,
    #     last_update_status: Successful
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   output = client.get_function_configuration(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     }
    #   }
    def get_function_configuration(params = {}, options = {})
      input = build_input(:get_function_configuration, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   output = client.get_function_event_invoke_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     last_modified: Time.now,
    #     function_arn: "FunctionArn",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    def get_function_event_invoke_config(params = {}, options = {})
      input = build_input(:get_function_event_invoke_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "UnqualifiedFunctionName", # required
    #   }
    #   options = {}
    #   output = client.get_function_recursion_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     recursive_loop: "Allow" # One of: ["Allow", "Terminate"]
    #   }
    def get_function_recursion_config(params = {}, options = {})
      input = build_input(:get_function_recursion_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "FunctionUrlQualifier"
    #   }
    #   options = {}
    #   output = client.get_function_url_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_url: "FunctionUrl", # required
    #     function_arn: "FunctionArn", # required
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     creation_time: "Timestamp", # required
    #     last_modified_time: "Timestamp", # required
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    def get_function_url_config(params = {}, options = {})
      input = build_input(:get_function_url_config, params)
      input.send_request(options)
    end

    # @example To get information about a Lambda layer version
    #   # The following example returns information for version 1 of a layer named my-layer.
    #   params = {
    #     layer_name: "my-layer",
    #     version_number: 1
    #   }
    #   options = {}
    #   output = client.get_layer_version(params, options)
    #   output.to_h #=>
    #   {
    #     content: {
    #       location: "https://awslambda-us-east-2-layers.s3.us-east-2.amazonaws.com/snapshots/123456789012/my-layer-4aaa2fbb-ff77-4b0a-ad92-5b78a716a96a?versionId=27iWyA73cCAYqyH...",
    #       code_sha256: "tv9jJO+rPbXUUXuRKi7CwHzKtLDkDRJLB3cC3Z/ouXo=",
    #       code_size: 169
    #     },
    #     layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer",
    #     layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer:1",
    #     description: "My Python layer",
    #     created_date: "2018-11-14T23:03:52.894+0000",
    #     version: 1,
    #     license_info: "MIT",
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   }
    #   options = {}
    #   output = client.get_layer_version(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     content: {
    #       location: "String",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "String",
    #       signing_job_arn: "String"
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
    #   }
    def get_layer_version(params = {}, options = {})
      input = build_input(:get_layer_version, params)
      input.send_request(options)
    end

    # @example To get information about a Lambda layer version
    #   # The following example returns information about the layer version with the specified Amazon Resource Name (ARN).
    #   params = {
    #     arn: "arn:aws:lambda:ca-central-1:123456789012:layer:blank-python-lib:3"
    #   }
    #   options = {}
    #   output = client.get_layer_version_by_arn(params, options)
    #   output.to_h #=>
    #   {
    #     content: {
    #       location: "https://awslambda-us-east-2-layers.s3.us-east-2.amazonaws.com/snapshots/123456789012/blank-python-lib-e5212378-xmpl-44ee-8398-9d8ec5113949?versionId=WbZnvf...",
    #       code_sha256: "6x+xmpl/M3BnQUk7gS9sGmfeFsR/npojXoA3fZUv4eU=",
    #       code_size: 9529009
    #     },
    #     layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-python-lib",
    #     layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-python-lib:3",
    #     description: "Dependencies for the blank-python sample app.",
    #     created_date: "2020-03-31T00:35:18.949+0000",
    #     version: 3,
    #     compatible_runtimes: [
    #       python3.8
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "LayerVersionArn", # required
    #   }
    #   options = {}
    #   output = client.get_layer_version_by_arn(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     content: {
    #       location: "String",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "String",
    #       signing_job_arn: "String"
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
    #   }
    def get_layer_version_by_arn(params = {}, options = {})
      input = build_input(:get_layer_version_by_arn, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #   }
    #   options = {}
    #   output = client.get_layer_version_policy(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     policy: "String",
    #     revision_id: "String"
    #   }
    def get_layer_version_policy(params = {}, options = {})
      input = build_input(:get_layer_version_policy, params)
      input.send_request(options)
    end

    # @example To retrieve a Lambda function policy
    #   # The following example returns the resource-based policy for version 1 of a Lambda function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   output = client.get_policy(params, options)
    #   output.to_h #=>
    #   {
    #     policy: "{\"Version\":\"2012-10-17\",\"Id\":\"default\",\"Statement\":[{\"Sid\":\"xaccount\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::123456789012:root\"},\"Action\":\"lambda:InvokeFunction\",\"Resource\":\"arn:aws:lambda:us-east-2:123456789012:function:my-function:1\"}]}",
    #     revision_id: "4843f2f6-7c59-4fda-b484-afd0bc0e22b8"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   output = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     policy: "String",
    #     revision_id: "String"
    #   }
    def get_policy(params = {}, options = {})
      input = build_input(:get_policy, params)
      input.send_request(options)
    end

    # @example To get a provisioned concurrency configuration
    #   # The following example returns details for the provisioned concurrency configuration for the BLUE alias of the specified function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "BLUE"
    #   }
    #   options = {}
    #   output = client.get_provisioned_concurrency_config(params, options)
    #   output.to_h #=>
    #   {
    #     requested_provisioned_concurrent_executions: 100,
    #     available_provisioned_concurrent_executions: 100,
    #     allocated_provisioned_concurrent_executions: 100,
    #     status: READY,
    #     last_modified: "2019-12-31T20:28:49+0000"
    #   }
    # @example To view a provisioned concurrency configuration
    #   # The following example displays details for the provisioned concurrency configuration for the BLUE alias of the specified function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "BLUE"
    #   }
    #   options = {}
    #   output = client.get_provisioned_concurrency_config(params, options)
    #   output.to_h #=>
    #   {
    #     requested_provisioned_concurrent_executions: 100,
    #     available_provisioned_concurrent_executions: 100,
    #     allocated_provisioned_concurrent_executions: 100,
    #     status: READY,
    #     last_modified: "2019-12-31T20:28:49+0000"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #   }
    #   options = {}
    #   output = client.get_provisioned_concurrency_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     requested_provisioned_concurrent_executions: 1,
    #     available_provisioned_concurrent_executions: 1,
    #     allocated_provisioned_concurrent_executions: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "READY", "FAILED"],
    #     status_reason: "String",
    #     last_modified: "Timestamp"
    #   }
    def get_provisioned_concurrency_config(params = {}, options = {})
      input = build_input(:get_provisioned_concurrency_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   output = client.get_runtime_management_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     update_runtime_on: "Auto" # One of: ["Auto", "Manual", "FunctionUpdate"],
    #     runtime_version_arn: "RuntimeVersionArn",
    #     function_arn: "NameSpacedFunctionArn"
    #   }
    def get_runtime_management_config(params = {}, options = {})
      input = build_input(:get_runtime_management_config, params)
      input.send_request(options)
    end

    # @example To invoke a Lambda function
    #   # The following example invokes version 1 of a function named my-function with an empty event payload.
    #   params = {
    #     function_name: "my-function",
    #     payload: "{}",
    #     qualifier: "1"
    #   }
    #   options = {}
    #   output = client.invoke(params, options)
    #   output.to_h #=>
    #   {
    #     status_code: 200,
    #     payload: "200 SUCCESS"
    #   }
    # @example To invoke a Lambda function asynchronously
    #   # The following example invokes version 1 of a function named my-function asynchronously.
    #   params = {
    #     function_name: "my-function",
    #     payload: "{}",
    #     invocation_type: Event,
    #     qualifier: "1"
    #   }
    #   options = {}
    #   output = client.invoke(params, options)
    #   output.to_h #=>
    #   {
    #     status_code: 202,
    #     payload: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "Event" # One of: ["Event", "RequestResponse", "DryRun"],
    #     log_type: "None" # One of: ["None", "Tail"],
    #     client_context: "String",
    #     payload: "data",
    #     qualifier: "Qualifier"
    #   }
    #   options = {}
    #   output = client.invoke(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     status_code: 1,
    #     function_error: "String",
    #     log_result: "String",
    #     payload: "data",
    #     executed_version: "Version"
    #   }
    def invoke(params = {}, options = {})
      input = build_input(:invoke, params)
      input.send_request(options)
    end

    # @example To invoke a Lambda function asynchronously
    #   # The following example invokes a Lambda function asynchronously
    #   params = {
    #     function_name: "my-function",
    #     invoke_args: "{}"
    #   }
    #   options = {}
    #   output = client.invoke_async(params, options)
    #   output.to_h #=>
    #   {
    #     status: 202
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     invoke_args: File.read("source_file"), # required
    #   }
    #   options = {}
    #   output = client.invoke_async(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     status: 1
    #   }
    def invoke_async(params = {}, options = {})
      input = build_input(:invoke_async, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     invocation_type: "RequestResponse" # One of: ["RequestResponse", "DryRun"],
    #     log_type: "None" # One of: ["None", "Tail"],
    #     client_context: "String",
    #     qualifier: "Qualifier",
    #     payload: "data"
    #   }
    #   options = {}
    #   output = client.invoke_with_response_stream(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     status_code: 1,
    #     executed_version: "Version",
    #     event_stream: {
    #       # One of:
    #       payload_chunk: {
    #         payload: "data"
    #       },
    #       invoke_complete: {
    #         error_code: "String",
    #         error_details: "String",
    #         log_result: "String"
    #       }
    #     },
    #     response_stream_content_type: "String"
    #   }
    def invoke_with_response_stream(params = {}, options = {})
      input = build_input(:invoke_with_response_stream, params)
      input.send_request(options)
    end

    # @example To list a function's aliases
    #   # The following example returns a list of aliases for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   output = client.list_aliases(params, options)
    #   output.to_h #=>
    #   {
    #     aliases: [
    #       {
    #         alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:BETA",
    #         revision_id: "a410117f-xmpl-494e-8035-7e204bb7933b",
    #         function_version: "2",
    #         name: "BLUE",
    #         description: "Production environment BLUE.",
    #         routing_config: {
    #           additional_version_weights: {
    #             "1" => 0.7
    #           }
    #         }
    #       },
    #       {
    #         alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:LIVE",
    #         revision_id: "21d40116-xmpl-40ba-9360-3ea284da1bb5",
    #         function_version: "1",
    #         name: "GREEN",
    #         description: "Production environment GREEN."
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     function_version: "Version",
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_aliases(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     next_marker: "String",
    #     aliases: [
    #       {
    #         alias_arn: "FunctionArn",
    #         name: "Alias",
    #         function_version: "Version",
    #         description: "Description",
    #         routing_config: {
    #           additional_version_weights: {
    #             "AdditionalVersion" => 1.0
    #           }
    #         },
    #         revision_id: "String"
    #       }
    #     ]
    #   }
    def list_aliases(params = {}, options = {})
      input = build_input(:list_aliases, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_code_signing_configs(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     next_marker: "String",
    #     code_signing_configs: [
    #       {
    #         code_signing_config_id: "CodeSigningConfigId", # required
    #         code_signing_config_arn: "CodeSigningConfigArn", # required
    #         description: "Description",
    #         allowed_publishers: { # required
    #           signing_profile_version_arns: ["Arn"], # required
    #         },
    #         code_signing_policies: { # required
    #           untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #         },
    #         last_modified: "Timestamp", # required
    #       }
    #     ]
    #   }
    def list_code_signing_configs(params = {}, options = {})
      input = build_input(:list_code_signing_configs, params)
      input.send_request(options)
    end

    # @example To list the event source mappings for a function
    #   # The following example returns a list of the event source mappings for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   output = client.list_event_source_mappings(params, options)
    #   output.to_h #=>
    #   {
    #     event_source_mappings: [
    #       {
    #         uuid: "a1b2c3d4-5678-90ab-cdef-11111EXAMPLE",
    #         state_transition_reason: "USER_INITIATED",
    #         last_modified: Time.parse(1569284520.333),
    #         batch_size: 5,
    #         state: "Enabled",
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         event_source_arn: "arn:aws:sqs:us-west-2:123456789012:mySQSqueue"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     event_source_arn: "Arn",
    #     function_name: "FunctionName",
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_event_source_mappings(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     next_marker: "String",
    #     event_source_mappings: [
    #       {
    #         uuid: "String",
    #         starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #         starting_position_timestamp: Time.now,
    #         batch_size: 1,
    #         maximum_batching_window_in_seconds: 1,
    #         parallelization_factor: 1,
    #         event_source_arn: "Arn",
    #         filter_criteria: {
    #           filters: [
    #             {
    #               pattern: "Pattern"
    #             }
    #           ]
    #         },
    #         function_arn: "FunctionArn",
    #         last_modified: Time.now,
    #         last_processing_result: "String",
    #         state: "String",
    #         state_transition_reason: "String",
    #         destination_config: {
    #           on_success: {
    #             destination: "DestinationArn"
    #           },
    #           on_failure: {
    #             destination: "DestinationArn"
    #           }
    #         },
    #         topics: ["Topic"],
    #         queues: ["Queue"],
    #         source_access_configurations: [
    #           {
    #             type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
    #             uri: "URI"
    #           }
    #         ],
    #         self_managed_event_source: {
    #           endpoints: {
    #             "EndPointType" => ["Endpoint"]
    #           }
    #         },
    #         maximum_record_age_in_seconds: 1,
    #         bisect_batch_on_function_error: false,
    #         maximum_retry_attempts: 1,
    #         tumbling_window_in_seconds: 1,
    #         function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #         amazon_managed_kafka_event_source_config: {
    #           consumer_group_id: "URI"
    #         },
    #         self_managed_kafka_event_source_config: {
    #           consumer_group_id: "URI"
    #         },
    #         scaling_config: {
    #           maximum_concurrency: 1
    #         },
    #         document_db_event_source_config: {
    #           database_name: "DatabaseName",
    #           collection_name: "CollectionName",
    #           full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         filter_criteria_error: {
    #           error_code: "FilterCriteriaErrorCode",
    #           message: "FilterCriteriaErrorMessage"
    #         },
    #         event_source_mapping_arn: "EventSourceMappingArn",
    #         metrics_config: {
    #           metrics: ["EventCount" # One of: ["EventCount"]]
    #         },
    #         provisioned_poller_config: {
    #           minimum_pollers: 1,
    #           maximum_pollers: 1
    #         }
    #       }
    #     ]
    #   }
    def list_event_source_mappings(params = {}, options = {})
      input = build_input(:list_event_source_mappings, params)
      input.send_request(options)
    end

    # @example To view a list of asynchronous invocation configurations
    #   # The following example returns a list of asynchronous invocation configurations for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   output = client.list_function_event_invoke_configs(params, options)
    #   output.to_h #=>
    #   {
    #     function_event_invoke_configs: [
    #       {
    #         last_modified: Time.parse(1577824406.719),
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:GREEN",
    #         maximum_retry_attempts: 2,
    #         maximum_event_age_in_seconds: 1800
    #       },
    #       {
    #         last_modified: Time.parse(1577824396.653),
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE",
    #         maximum_retry_attempts: 0,
    #         maximum_event_age_in_seconds: 3600
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_function_event_invoke_configs(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_event_invoke_configs: [
    #       {
    #         last_modified: Time.now,
    #         function_arn: "FunctionArn",
    #         maximum_retry_attempts: 1,
    #         maximum_event_age_in_seconds: 1,
    #         destination_config: {
    #           on_success: {
    #             destination: "DestinationArn"
    #           },
    #           on_failure: {
    #             destination: "DestinationArn"
    #           }
    #         }
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    def list_function_event_invoke_configs(params = {}, options = {})
      input = build_input(:list_function_event_invoke_configs, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_function_url_configs(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_url_configs: [ # required
    #       {
    #         function_url: "FunctionUrl", # required
    #         function_arn: "FunctionArn", # required
    #         creation_time: "Timestamp", # required
    #         last_modified_time: "Timestamp", # required
    #         cors: {
    #           allow_credentials: false,
    #           allow_headers: ["Header"],
    #           allow_methods: ["Method"],
    #           allow_origins: ["Origin"],
    #           expose_headers: ["Header"],
    #           max_age: 1
    #         },
    #         auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #         invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    def list_function_url_configs(params = {}, options = {})
      input = build_input(:list_function_url_configs, params)
      input.send_request(options)
    end

    # @example To get a list of Lambda functions
    #   # This operation returns a list of Lambda functions.
    #   params = {}
    #   options = {}
    #   output = client.list_functions(params, options)
    #   output.to_h #=>
    #   {
    #     next_marker: "",
    #     functions: [
    #       {
    #         tracing_config: {
    #           mode: PassThrough
    #         },
    #         version: "$LATEST",
    #         code_sha256: "dBG9m8SGdmlEjw/JYXlhhvCrAv5TxvXsbL/RMr0fT/I=",
    #         function_name: "helloworld",
    #         memory_size: 128,
    #         revision_id: "1718e831-badf-4253-9518-d0644210af7b",
    #         code_size: 294,
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:helloworld",
    #         handler: "helloworld.handler",
    #         role: "arn:aws:iam::123456789012:role/service-role/MyTestFunction-role-zgur6bf4",
    #         timeout: 3,
    #         last_modified: "2019-09-23T18:32:33.857+0000",
    #         runtime: nodejs10.x,
    #         description: ""
    #       },
    #       {
    #         tracing_config: {
    #           mode: PassThrough
    #         },
    #         version: "$LATEST",
    #         code_sha256: "sU0cJ2/hOZevwV/lTxCuQqK3gDZP3i8gUoqUUVRmY6E=",
    #         function_name: "my-function",
    #         vpc_config: {
    #           subnet_ids: [
    #           ],
    #           vpc_id: "",
    #           security_group_ids: [
    #           ]
    #         },
    #         memory_size: 256,
    #         revision_id: "93017fc9-59cb-41dc-901b-4845ce4bf668",
    #         code_size: 266,
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         handler: "index.handler",
    #         role: "arn:aws:iam::123456789012:role/service-role/helloWorldPython-role-uy3l9qyq",
    #         timeout: 3,
    #         last_modified: "2019-10-01T16:47:28.490+0000",
    #         runtime: nodejs10.x,
    #         description: ""
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     master_region: "MasterRegion",
    #     function_version: "ALL" # One of: ["ALL"],
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_functions(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     next_marker: "String",
    #     functions: [
    #       {
    #         function_name: "NamespacedFunctionName",
    #         function_arn: "NameSpacedFunctionArn",
    #         runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #         role: "RoleArn",
    #         handler: "Handler",
    #         code_size: 1,
    #         description: "Description",
    #         timeout: 1,
    #         memory_size: 1,
    #         last_modified: "Timestamp",
    #         code_sha256: "String",
    #         version: "Version",
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #           vpc_id: "VpcId",
    #           ipv6_allowed_for_dual_stack: false
    #         },
    #         dead_letter_config: {
    #           target_arn: "ResourceArn"
    #         },
    #         environment: {
    #           variables: {
    #             "EnvironmentVariableName" => "EnvironmentVariableValue"
    #           },
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         tracing_config: {
    #           mode: "Active" # One of: ["Active", "PassThrough"]
    #         },
    #         master_arn: "FunctionArn",
    #         revision_id: "String",
    #         layers: [
    #           {
    #             arn: "LayerVersionArn",
    #             code_size: 1,
    #             signing_profile_version_arn: "Arn",
    #             signing_job_arn: "Arn"
    #           }
    #         ],
    #         state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #         state_reason: "StateReason",
    #         state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #         last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #         last_update_status_reason: "LastUpdateStatusReason",
    #         last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #         file_system_configs: [
    #           {
    #             arn: "FileSystemArn", # required
    #             local_mount_path: "LocalMountPath", # required
    #           }
    #         ],
    #         package_type: "Zip" # One of: ["Zip", "Image"],
    #         image_config_response: {
    #           image_config: {
    #             entry_point: ["String"],
    #             command: ["String"],
    #             working_directory: "WorkingDirectory"
    #           },
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn",
    #         architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         ephemeral_storage: {
    #           size: 1, # required
    #         },
    #         snap_start: {
    #           apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #           optimization_status: "On" # One of: ["On", "Off"]
    #         },
    #         runtime_version_config: {
    #           runtime_version_arn: "RuntimeVersionArn",
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         logging_config: {
    #           log_format: "JSON" # One of: ["JSON", "Text"],
    #           application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #           log_group: "LogGroup"
    #         }
    #       }
    #     ]
    #   }
    def list_functions(params = {}, options = {})
      input = build_input(:list_functions, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_functions_by_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     next_marker: "String",
    #     function_arns: ["FunctionArn"]
    #   }
    def list_functions_by_code_signing_config(params = {}, options = {})
      input = build_input(:list_functions_by_code_signing_config, params)
      input.send_request(options)
    end

    # @example To list versions of a layer
    #   # The following example displays information about the versions for the layer named blank-java-lib
    #   params = {
    #     layer_name: "blank-java-lib"
    #   }
    #   options = {}
    #   output = client.list_layer_versions(params, options)
    #   output.to_h #=>
    #   {
    #     layer_versions: [
    #       {
    #         layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-java-lib:7",
    #         version: 7,
    #         description: "Dependencies for the blank-java sample app.",
    #         created_date: "2020-03-18T23:38:42.284+0000",
    #         compatible_runtimes: [
    #           java8
    #         ]
    #       },
    #       {
    #         layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:blank-java-lib:6",
    #         version: 6,
    #         description: "Dependencies for the blank-java sample app.",
    #         created_date: "2020-03-17T07:24:21.960+0000",
    #         compatible_runtimes: [
    #           java8
    #         ]
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compatible_runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     layer_name: "LayerName", # required
    #     marker: "String",
    #     max_items: 1,
    #     compatible_architecture: "x86_64" # One of: ["x86_64", "arm64"]
    #   }
    #   options = {}
    #   output = client.list_layer_versions(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     next_marker: "String",
    #     layer_versions: [
    #       {
    #         layer_version_arn: "LayerVersionArn",
    #         version: 1,
    #         description: "Description",
    #         created_date: "Timestamp",
    #         compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #         license_info: "LicenseInfo",
    #         compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
    #       }
    #     ]
    #   }
    def list_layer_versions(params = {}, options = {})
      input = build_input(:list_layer_versions, params)
      input.send_request(options)
    end

    # @example To list the layers that are compatible with your function's runtime
    #   # The following example returns information about layers that are compatible with the Python 3.7 runtime.
    #   params = {
    #     compatible_runtime: python3.7
    #   }
    #   options = {}
    #   output = client.list_layers(params, options)
    #   output.to_h #=>
    #   {
    #     layers: [
    #       {
    #         layer_name: "my-layer",
    #         layer_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer",
    #         latest_matching_version: {
    #           layer_version_arn: "arn:aws:lambda:us-east-2:123456789012:layer:my-layer:2",
    #           version: 2,
    #           description: "My layer",
    #           created_date: "2018-11-15T00:37:46.592+0000",
    #           compatible_runtimes: [
    #             python3.6,
    #             python3.7
    #           ]
    #         }
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     compatible_runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     marker: "String",
    #     max_items: 1,
    #     compatible_architecture: "x86_64" # One of: ["x86_64", "arm64"]
    #   }
    #   options = {}
    #   output = client.list_layers(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     next_marker: "String",
    #     layers: [
    #       {
    #         layer_name: "LayerName",
    #         layer_arn: "LayerArn",
    #         latest_matching_version: {
    #           layer_version_arn: "LayerVersionArn",
    #           version: 1,
    #           description: "Description",
    #           created_date: "Timestamp",
    #           compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #           license_info: "LicenseInfo",
    #           compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
    #         }
    #       }
    #     ]
    #   }
    def list_layers(params = {}, options = {})
      input = build_input(:list_layers, params)
      input.send_request(options)
    end

    # @example To get a list of provisioned concurrency configurations
    #   # The following example returns a list of provisioned concurrency configurations for a function named my-function.
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   output = client.list_provisioned_concurrency_configs(params, options)
    #   output.to_h #=>
    #   {
    #     provisioned_concurrency_configs: [
    #       {
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:GREEN",
    #         requested_provisioned_concurrent_executions: 100,
    #         available_provisioned_concurrent_executions: 100,
    #         allocated_provisioned_concurrent_executions: 100,
    #         status: READY,
    #         last_modified: "2019-12-31T20:29:00+0000"
    #       },
    #       {
    #         function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:BLUE",
    #         requested_provisioned_concurrent_executions: 100,
    #         available_provisioned_concurrent_executions: 100,
    #         allocated_provisioned_concurrent_executions: 100,
    #         status: READY,
    #         last_modified: "2019-12-31T20:28:49+0000"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_provisioned_concurrency_configs(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     provisioned_concurrency_configs: [
    #       {
    #         function_arn: "FunctionArn",
    #         requested_provisioned_concurrent_executions: 1,
    #         available_provisioned_concurrent_executions: 1,
    #         allocated_provisioned_concurrent_executions: 1,
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "READY", "FAILED"],
    #         status_reason: "String",
    #         last_modified: "Timestamp"
    #       }
    #     ],
    #     next_marker: "String"
    #   }
    def list_provisioned_concurrency_configs(params = {}, options = {})
      input = build_input(:list_provisioned_concurrency_configs, params)
      input.send_request(options)
    end

    # @example To retrieve the list of tags for a Lambda function
    #   # The following example displays the tags attached to the my-function Lambda function.
    #   params = {
    #     resource: "arn:aws:lambda:us-west-2:123456789012:function:my-function"
    #   }
    #   options = {}
    #   output = client.list_tags(params, options)
    #   output.to_h #=>
    #   {
    #     tags: {
    #       "Category" => "Web Tools",
    #       "Department" => "Sales"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #   }
    #   options = {}
    #   output = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    def list_tags(params = {}, options = {})
      input = build_input(:list_tags, params)
      input.send_request(options)
    end

    # @example To list versions of a function
    #   # The following example returns a list of versions of a function named my-function
    #   params = {
    #     function_name: "my-function"
    #   }
    #   options = {}
    #   output = client.list_versions_by_function(params, options)
    #   output.to_h #=>
    #   {
    #     versions: [
    #       {
    #         function_name: "my-function",
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         runtime: nodejs12.x,
    #         role: "arn:aws:iam::123456789012:role/lambda-role",
    #         handler: "index.handler",
    #         code_size: 5797206,
    #         description: "Process image objects from Amazon S3.",
    #         timeout: 15,
    #         memory_size: 256,
    #         last_modified: "2020-04-10T19:06:32.563+0000",
    #         code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #         version: "$LATEST",
    #         environment: {
    #           variables: {
    #             "PREFIX" => "inbound",
    #             "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #           }
    #         },
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #         tracing_config: {
    #           mode: Active
    #         },
    #         revision_id: "850ca006-2d98-4ff4-86db-8766e9d32fe9"
    #       },
    #       {
    #         function_name: "my-function",
    #         function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #         runtime: nodejs12.x,
    #         role: "arn:aws:iam::123456789012:role/lambda-role",
    #         handler: "index.handler",
    #         code_size: 5797206,
    #         description: "Process image objects from Amazon S3.",
    #         timeout: 5,
    #         memory_size: 256,
    #         last_modified: "2020-04-10T19:06:32.563+0000",
    #         code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #         version: "1",
    #         environment: {
    #           variables: {
    #             "PREFIX" => "inbound",
    #             "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #           }
    #         },
    #         kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #         tracing_config: {
    #           mode: Active
    #         },
    #         revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "NamespacedFunctionName", # required
    #     marker: "String",
    #     max_items: 1
    #   }
    #   options = {}
    #   output = client.list_versions_by_function(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     next_marker: "String",
    #     versions: [
    #       {
    #         function_name: "NamespacedFunctionName",
    #         function_arn: "NameSpacedFunctionArn",
    #         runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #         role: "RoleArn",
    #         handler: "Handler",
    #         code_size: 1,
    #         description: "Description",
    #         timeout: 1,
    #         memory_size: 1,
    #         last_modified: "Timestamp",
    #         code_sha256: "String",
    #         version: "Version",
    #         vpc_config: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"],
    #           vpc_id: "VpcId",
    #           ipv6_allowed_for_dual_stack: false
    #         },
    #         dead_letter_config: {
    #           target_arn: "ResourceArn"
    #         },
    #         environment: {
    #           variables: {
    #             "EnvironmentVariableName" => "EnvironmentVariableValue"
    #           },
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         kms_key_arn: "KMSKeyArn",
    #         tracing_config: {
    #           mode: "Active" # One of: ["Active", "PassThrough"]
    #         },
    #         master_arn: "FunctionArn",
    #         revision_id: "String",
    #         layers: [
    #           {
    #             arn: "LayerVersionArn",
    #             code_size: 1,
    #             signing_profile_version_arn: "Arn",
    #             signing_job_arn: "Arn"
    #           }
    #         ],
    #         state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #         state_reason: "StateReason",
    #         state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #         last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #         last_update_status_reason: "LastUpdateStatusReason",
    #         last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #         file_system_configs: [
    #           {
    #             arn: "FileSystemArn", # required
    #             local_mount_path: "LocalMountPath", # required
    #           }
    #         ],
    #         package_type: "Zip" # One of: ["Zip", "Image"],
    #         image_config_response: {
    #           image_config: {
    #             entry_point: ["String"],
    #             command: ["String"],
    #             working_directory: "WorkingDirectory"
    #           },
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn",
    #         architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #         ephemeral_storage: {
    #           size: 1, # required
    #         },
    #         snap_start: {
    #           apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #           optimization_status: "On" # One of: ["On", "Off"]
    #         },
    #         runtime_version_config: {
    #           runtime_version_arn: "RuntimeVersionArn",
    #           error: {
    #             error_code: "String",
    #             message: "SensitiveString"
    #           }
    #         },
    #         logging_config: {
    #           log_format: "JSON" # One of: ["JSON", "Text"],
    #           application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #           system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #           log_group: "LogGroup"
    #         }
    #       }
    #     ]
    #   }
    def list_versions_by_function(params = {}, options = {})
      input = build_input(:list_versions_by_function, params)
      input.send_request(options)
    end

    # @example To create a Lambda layer version
    #   # The following example creates a new Python library layer version. The command retrieves the layer content a file named layer.zip in the specified S3 bucket.
    #   params = {
    #     layer_name: "my-layer",
    #     description: "My Python layer",
    #     content: {
    #       s3_bucket: "lambda-layers-us-west-2-123456789012",
    #       s3_key: "layer.zip"
    #     },
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ],
    #     license_info: "MIT"
    #   }
    #   options = {}
    #   output = client.publish_layer_version(params, options)
    #   output.to_h #=>
    #   {
    #     content: {
    #       location: "https://awslambda-us-west-2-layers.s3.us-west-2.amazonaws.com/snapshots/123456789012/my-layer-4aaa2fbb-ff77-4b0a-ad92-5b78a716a96a?versionId=27iWyA73cCAYqyH...",
    #       code_sha256: "tv9jJO+rPbXUUXuRKi7CwHzKtLDkDRJLB3cC3Z/ouXo=",
    #       code_size: 169
    #     },
    #     layer_arn: "arn:aws:lambda:us-west-2:123456789012:layer:my-layer",
    #     layer_version_arn: "arn:aws:lambda:us-west-2:123456789012:layer:my-layer:1",
    #     description: "My Python layer",
    #     created_date: "2018-11-14T23:03:52.894+0000",
    #     version: 1,
    #     license_info: "MIT",
    #     compatible_runtimes: [
    #       python3.6,
    #       python3.7
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     description: "Description",
    #     content: { # required
    #       s3_bucket: "S3Bucket",
    #       s3_key: "S3Key",
    #       s3_object_version: "S3ObjectVersion",
    #       zip_file: "data"
    #     },
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
    #   }
    #   options = {}
    #   output = client.publish_layer_version(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     content: {
    #       location: "String",
    #       code_sha256: "String",
    #       code_size: 1,
    #       signing_profile_version_arn: "String",
    #       signing_job_arn: "String"
    #     },
    #     layer_arn: "LayerArn",
    #     layer_version_arn: "LayerVersionArn",
    #     description: "Description",
    #     created_date: "Timestamp",
    #     version: 1,
    #     compatible_runtimes: ["nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"]],
    #     license_info: "LicenseInfo",
    #     compatible_architectures: ["x86_64" # One of: ["x86_64", "arm64"]]
    #   }
    def publish_layer_version(params = {}, options = {})
      input = build_input(:publish_layer_version, params)
      input.send_request(options)
    end

    # @example To publish a version of a Lambda function
    #   # This operation publishes a version of a Lambda function
    #   params = {
    #     function_name: "myFunction",
    #     code_sha256: "",
    #     description: ""
    #   }
    #   options = {}
    #   output = client.publish_version(params, options)
    #   output.to_h #=>
    #   {
    #     function_name: "my-function",
    #     function_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     runtime: nodejs12.x,
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     handler: "index.handler",
    #     code_size: 5797206,
    #     description: "Process image objects from Amazon S3.",
    #     timeout: 5,
    #     memory_size: 256,
    #     last_modified: "2020-04-10T19:06:32.563+0000",
    #     code_sha256: "YFgDgEKG3ugvF1+pX64gV6tu9qNuIYNUdgJm8nCxsm4=",
    #     version: "1",
    #     environment: {
    #       variables: {
    #         "PREFIX" => "inbound",
    #         "BUCKET" => "my-bucket-1xpuxmplzrlbh"
    #       }
    #     },
    #     kms_key_arn: "arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966",
    #     tracing_config: {
    #       mode: Active
    #     },
    #     revision_id: "b75dcd81-xmpl-48a8-a75a-93ba8b5b9727",
    #     state: Active,
    #     last_update_status: Successful
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     code_sha256: "String",
    #     description: "Description",
    #     revision_id: "String"
    #   }
    #   options = {}
    #   output = client.publish_version(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     }
    #   }
    def publish_version(params = {}, options = {})
      input = build_input(:publish_version, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     function_name: "FunctionName", # required
    #   }
    #   options = {}
    #   output = client.put_function_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     function_name: "FunctionName", # required
    #   }
    def put_function_code_signing_config(params = {}, options = {})
      input = build_input(:put_function_code_signing_config, params)
      input.send_request(options)
    end

    # @example To configure a reserved concurrency limit for a function
    #   # The following example configures 100 reserved concurrent executions for the my-function function.
    #   params = {
    #     function_name: "my-function",
    #     reserved_concurrent_executions: 100
    #   }
    #   options = {}
    #   output = client.put_function_concurrency(params, options)
    #   output.to_h #=>
    #   {
    #     reserved_concurrent_executions: 100
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     reserved_concurrent_executions: 1, # required
    #   }
    #   options = {}
    #   output = client.put_function_concurrency(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     reserved_concurrent_executions: 1
    #   }
    def put_function_concurrency(params = {}, options = {})
      input = build_input(:put_function_concurrency, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   output = client.put_function_event_invoke_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     last_modified: Time.now,
    #     function_arn: "FunctionArn",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    def put_function_event_invoke_config(params = {}, options = {})
      input = build_input(:put_function_event_invoke_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "UnqualifiedFunctionName", # required
    #     recursive_loop: "Allow" # One of: ["Allow", "Terminate"], # required
    #   }
    #   options = {}
    #   output = client.put_function_recursion_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     recursive_loop: "Allow" # One of: ["Allow", "Terminate"]
    #   }
    def put_function_recursion_config(params = {}, options = {})
      input = build_input(:put_function_recursion_config, params)
      input.send_request(options)
    end

    # @example To allocate provisioned concurrency
    #   # The following example allocates 100 provisioned concurrency for the BLUE alias of the specified function.
    #   params = {
    #     function_name: "my-function",
    #     qualifier: "BLUE",
    #     provisioned_concurrent_executions: 100
    #   }
    #   options = {}
    #   output = client.put_provisioned_concurrency_config(params, options)
    #   output.to_h #=>
    #   {
    #     requested_provisioned_concurrent_executions: 100,
    #     allocated_provisioned_concurrent_executions: 0,
    #     status: IN_PROGRESS,
    #     last_modified: "2019-11-21T19:32:12+0000"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier", # required
    #     provisioned_concurrent_executions: 1, # required
    #   }
    #   options = {}
    #   output = client.put_provisioned_concurrency_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     requested_provisioned_concurrent_executions: 1,
    #     available_provisioned_concurrent_executions: 1,
    #     allocated_provisioned_concurrent_executions: 1,
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "READY", "FAILED"],
    #     status_reason: "String",
    #     last_modified: "Timestamp"
    #   }
    def put_provisioned_concurrency_config(params = {}, options = {})
      input = build_input(:put_provisioned_concurrency_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #     update_runtime_on: "Auto" # One of: ["Auto", "Manual", "FunctionUpdate"], # required
    #     runtime_version_arn: "RuntimeVersionArn"
    #   }
    #   options = {}
    #   output = client.put_runtime_management_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     update_runtime_on: "Auto" # One of: ["Auto", "Manual", "FunctionUpdate"], # required
    #     function_arn: "FunctionArn", # required
    #     runtime_version_arn: "RuntimeVersionArn"
    #   }
    def put_runtime_management_config(params = {}, options = {})
      input = build_input(:put_runtime_management_config, params)
      input.send_request(options)
    end

    # @example To delete layer-version permissions
    #   # The following example deletes permission for an account to configure a layer version.
    #   params = {
    #     layer_name: "my-layer",
    #     version_number: 1,
    #     statement_id: "xaccount"
    #   }
    #   options = {}
    #   output = client.remove_layer_version_permission(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     layer_name: "LayerName", # required
    #     version_number: 1, # required
    #     statement_id: "StatementId", # required
    #     revision_id: "String"
    #   }
    #   options = {}
    #   output = client.remove_layer_version_permission(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def remove_layer_version_permission(params = {}, options = {})
      input = build_input(:remove_layer_version_permission, params)
      input.send_request(options)
    end

    # @example To remove a Lambda function's permissions
    #   # The following example removes a permissions statement named xaccount from the PROD alias of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     statement_id: "xaccount",
    #     qualifier: "PROD"
    #   }
    #   options = {}
    #   output = client.remove_permission(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     statement_id: "NamespacedStatementId", # required
    #     qualifier: "Qualifier",
    #     revision_id: "String"
    #   }
    #   options = {}
    #   output = client.remove_permission(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def remove_permission(params = {}, options = {})
      input = build_input(:remove_permission, params)
      input.send_request(options)
    end

    # @example To add tags to an existing Lambda function
    #   # The following example adds a tag with the key name DEPARTMENT and a value of 'Department A' to the specified Lambda function.
    #   params = {
    #     resource: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     tags: {
    #       "DEPARTMENT" => "Department A"
    #     }
    #   }
    #   options = {}
    #   output = client.tag_resource(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   output = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def tag_resource(params = {}, options = {})
      input = build_input(:tag_resource, params)
      input.send_request(options)
    end

    # @example To remove tags from an existing Lambda function
    #   # The following example removes the tag with the key name DEPARTMENT tag from the my-function Lambda function.
    #   params = {
    #     resource: "arn:aws:lambda:us-west-2:123456789012:function:my-function",
    #     tag_keys: [
    #       "DEPARTMENT"
    #     ]
    #   }
    #   options = {}
    #   output = client.untag_resource(params, options)
    #   output.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource: "TaggableResource", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   output = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {}
    def untag_resource(params = {}, options = {})
      input = build_input(:untag_resource, params)
      input.send_request(options)
    end

    # @example To update a function alias
    #   # The following example updates the alias named BLUE to send 30% of traffic to version 2 and 70% to version 1.
    #   params = {
    #     function_name: "my-function",
    #     name: "BLUE",
    #     function_version: "2",
    #     routing_config: {
    #       additional_version_weights: {
    #         "1" => 0.7
    #       }
    #     }
    #   }
    #   options = {}
    #   output = client.update_alias(params, options)
    #   output.to_h #=>
    #   {
    #     function_version: "2",
    #     name: "BLUE",
    #     alias_arn: "arn:aws:lambda:us-west-2:123456789012:function:my-function:BLUE",
    #     revision_id: "594f41fb-xmpl-4c20-95c7-6ca5f2a92c93",
    #     description: "Production environment BLUE.",
    #     routing_config: {
    #       additional_version_weights: {
    #         "1" => 0.7
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     name: "Alias", # required
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     },
    #     revision_id: "String"
    #   }
    #   options = {}
    #   output = client.update_alias(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     alias_arn: "FunctionArn",
    #     name: "Alias",
    #     function_version: "Version",
    #     description: "Description",
    #     routing_config: {
    #       additional_version_weights: {
    #         "AdditionalVersion" => 1.0
    #       }
    #     },
    #     revision_id: "String"
    #   }
    def update_alias(params = {}, options = {})
      input = build_input(:update_alias, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     code_signing_config_arn: "CodeSigningConfigArn", # required
    #     description: "Description",
    #     allowed_publishers: {
    #       signing_profile_version_arns: ["Arn"], # required
    #     },
    #     code_signing_policies: {
    #       untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #     }
    #   }
    #   options = {}
    #   output = client.update_code_signing_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     code_signing_config: { # required
    #       code_signing_config_id: "CodeSigningConfigId", # required
    #       code_signing_config_arn: "CodeSigningConfigArn", # required
    #       description: "Description",
    #       allowed_publishers: { # required
    #         signing_profile_version_arns: ["Arn"], # required
    #       },
    #       code_signing_policies: { # required
    #         untrusted_artifact_on_deployment: "Warn" # One of: ["Warn", "Enforce"]
    #       },
    #       last_modified: "Timestamp", # required
    #     }
    #   }
    def update_code_signing_config(params = {}, options = {})
      input = build_input(:update_code_signing_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     uuid: "String", # required
    #     function_name: "FunctionName",
    #     enabled: false,
    #     batch_size: 1,
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     maximum_batching_window_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     parallelization_factor: 1,
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
    #         uri: "URI"
    #       }
    #     ],
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    #   options = {}
    #   output = client.update_event_source_mapping(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     uuid: "String",
    #     starting_position: "TRIM_HORIZON" # One of: ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"],
    #     starting_position_timestamp: Time.now,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     event_source_arn: "Arn",
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: "Pattern"
    #         }
    #       ]
    #     },
    #     function_arn: "FunctionArn",
    #     last_modified: Time.now,
    #     last_processing_result: "String",
    #     state: "String",
    #     state_transition_reason: "String",
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     },
    #     topics: ["Topic"],
    #     queues: ["Queue"],
    #     source_access_configurations: [
    #       {
    #         type: "BASIC_AUTH" # One of: ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"],
    #         uri: "URI"
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         "EndPointType" => ["Endpoint"]
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: ["ReportBatchItemFailures" # One of: ["ReportBatchItemFailures"]],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: "URI"
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: "DatabaseName",
    #       collection_name: "CollectionName",
    #       full_document: "UpdateLookup" # One of: ["UpdateLookup", "Default"]
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     filter_criteria_error: {
    #       error_code: "FilterCriteriaErrorCode",
    #       message: "FilterCriteriaErrorMessage"
    #     },
    #     event_source_mapping_arn: "EventSourceMappingArn",
    #     metrics_config: {
    #       metrics: ["EventCount" # One of: ["EventCount"]]
    #     },
    #     provisioned_poller_config: {
    #       minimum_pollers: 1,
    #       maximum_pollers: 1
    #     }
    #   }
    def update_event_source_mapping(params = {}, options = {})
      input = build_input(:update_event_source_mapping, params)
      input.send_request(options)
    end

    # @example To update a Lambda function's code
    #   # The following example replaces the code of the unpublished ($LATEST) version of a function named my-function with the contents of the specified zip file in Amazon S3.
    #   params = {
    #     function_name: "my-function",
    #     s3_bucket: "my-bucket-1xpuxmplzrlbh",
    #     s3_key: "function.zip"
    #   }
    #   options = {}
    #   output = client.update_function_code(params, options)
    #   output.to_h #=>
    #   {
    #     tracing_config: {
    #       mode: PassThrough
    #     },
    #     code_sha256: "PFn4S+er27qk+UuZSTKEQfNKG/XNn7QJs90mJgq6oH8=",
    #     function_name: "my-function",
    #     code_size: 308,
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6",
    #     memory_size: 128,
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function",
    #     version: "$LATEST",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     timeout: 3,
    #     last_modified: "2019-08-14T22:26:11.234+0000",
    #     handler: "index.handler",
    #     runtime: nodejs12.x,
    #     description: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     zip_file: "data",
    #     s3_bucket: "S3Bucket",
    #     s3_key: "S3Key",
    #     s3_object_version: "S3ObjectVersion",
    #     image_uri: "String",
    #     publish: false,
    #     dry_run: false,
    #     revision_id: "String",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     source_kms_key_arn: "KMSKeyArn"
    #   }
    #   options = {}
    #   output = client.update_function_code(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     }
    #   }
    def update_function_code(params = {}, options = {})
      input = build_input(:update_function_code, params)
      input.send_request(options)
    end

    # @example To update a Lambda function's configuration
    #   # The following example modifies the memory size to be 256 MB for the unpublished ($LATEST) version of a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     memory_size: 256
    #   }
    #   options = {}
    #   output = client.update_function_configuration(params, options)
    #   output.to_h #=>
    #   {
    #     tracing_config: {
    #       mode: PassThrough
    #     },
    #     code_sha256: "PFn4S+er27qk+UuZSTKEQfNKG/XNn7QJs90mJgq6oH8=",
    #     function_name: "my-function",
    #     code_size: 308,
    #     revision_id: "873282ed-xmpl-4dc8-a069-d0c647e470c6",
    #     memory_size: 256,
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function",
    #     version: "$LATEST",
    #     role: "arn:aws:iam::123456789012:role/lambda-role",
    #     timeout: 3,
    #     last_modified: "2019-08-14T22:26:11.234+0000",
    #     handler: "index.handler",
    #     runtime: nodejs12.x,
    #     description: ""
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     role: "RoleArn",
    #     handler: "Handler",
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       }
    #     },
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     revision_id: "String",
    #     layers: ["LayerVersionArn"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
    #     image_config: {
    #       entry_point: ["String"],
    #       command: ["String"],
    #       working_directory: "WorkingDirectory"
    #     },
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"]
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     }
    #   }
    #   options = {}
    #   output = client.update_function_configuration(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_name: "NamespacedFunctionName",
    #     function_arn: "NameSpacedFunctionArn",
    #     runtime: "nodejs" # One of: ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "dotnet8", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x", "python3.10", "java17", "ruby3.2", "ruby3.3", "ruby3.4", "python3.11", "nodejs20.x", "provided.al2023", "python3.12", "java21", "python3.13", "nodejs22.x"],
    #     role: "RoleArn",
    #     handler: "Handler",
    #     code_size: 1,
    #     description: "Description",
    #     timeout: 1,
    #     memory_size: 1,
    #     last_modified: "Timestamp",
    #     code_sha256: "String",
    #     version: "Version",
    #     vpc_config: {
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_id: "VpcId",
    #       ipv6_allowed_for_dual_stack: false
    #     },
    #     dead_letter_config: {
    #       target_arn: "ResourceArn"
    #     },
    #     environment: {
    #       variables: {
    #         "EnvironmentVariableName" => "EnvironmentVariableValue"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     kms_key_arn: "KMSKeyArn",
    #     tracing_config: {
    #       mode: "Active" # One of: ["Active", "PassThrough"]
    #     },
    #     master_arn: "FunctionArn",
    #     revision_id: "String",
    #     layers: [
    #       {
    #         arn: "LayerVersionArn",
    #         code_size: 1,
    #         signing_profile_version_arn: "Arn",
    #         signing_job_arn: "Arn"
    #       }
    #     ],
    #     state: "Pending" # One of: ["Pending", "Active", "Inactive", "Failed"],
    #     state_reason: "StateReason",
    #     state_reason_code: "Idle" # One of: ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     last_update_status: "Successful" # One of: ["Successful", "Failed", "InProgress"],
    #     last_update_status_reason: "LastUpdateStatusReason",
    #     last_update_status_reason_code: "EniLimitExceeded" # One of: ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"],
    #     file_system_configs: [
    #       {
    #         arn: "FileSystemArn", # required
    #         local_mount_path: "LocalMountPath", # required
    #       }
    #     ],
    #     package_type: "Zip" # One of: ["Zip", "Image"],
    #     image_config_response: {
    #       image_config: {
    #         entry_point: ["String"],
    #         command: ["String"],
    #         working_directory: "WorkingDirectory"
    #       },
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     signing_profile_version_arn: "Arn",
    #     signing_job_arn: "Arn",
    #     architectures: ["x86_64" # One of: ["x86_64", "arm64"]],
    #     ephemeral_storage: {
    #       size: 1, # required
    #     },
    #     snap_start: {
    #       apply_on: "PublishedVersions" # One of: ["PublishedVersions", "None"],
    #       optimization_status: "On" # One of: ["On", "Off"]
    #     },
    #     runtime_version_config: {
    #       runtime_version_arn: "RuntimeVersionArn",
    #       error: {
    #         error_code: "String",
    #         message: "SensitiveString"
    #       }
    #     },
    #     logging_config: {
    #       log_format: "JSON" # One of: ["JSON", "Text"],
    #       application_log_level: "TRACE" # One of: ["TRACE", "DEBUG", "INFO", "WARN", "ERROR", "FATAL"],
    #       system_log_level: "DEBUG" # One of: ["DEBUG", "INFO", "WARN"],
    #       log_group: "LogGroup"
    #     }
    #   }
    def update_function_configuration(params = {}, options = {})
      input = build_input(:update_function_configuration, params)
      input.send_request(options)
    end

    # @example To update an asynchronous invocation configuration
    #   # The following example adds an on-failure destination to the existing asynchronous invocation configuration for a function named my-function.
    #   params = {
    #     function_name: "my-function",
    #     destination_config: {
    #       on_failure: {
    #         destination: "arn:aws:sqs:us-east-2:123456789012:destination"
    #       }
    #     }
    #   }
    #   options = {}
    #   output = client.update_function_event_invoke_config(params, options)
    #   output.to_h #=>
    #   {
    #     last_modified: Time.parse(1573687896.493),
    #     function_arn: "arn:aws:lambda:us-east-2:123456789012:function:my-function:$LATEST",
    #     maximum_retry_attempts: 0,
    #     maximum_event_age_in_seconds: 3600,
    #     destination_config: {
    #       on_success: {
    #       },
    #       on_failure: {
    #         destination: "arn:aws:sqs:us-east-2:123456789012:destination"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "Qualifier",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    #   options = {}
    #   output = client.update_function_event_invoke_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     last_modified: Time.now,
    #     function_arn: "FunctionArn",
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: "DestinationArn"
    #       },
    #       on_failure: {
    #         destination: "DestinationArn"
    #       }
    #     }
    #   }
    def update_function_event_invoke_config(params = {}, options = {})
      input = build_input(:update_function_event_invoke_config, params)
      input.send_request(options)
    end

    # @example Request syntax with placeholder values
    #   params = {
    #     function_name: "FunctionName", # required
    #     qualifier: "FunctionUrlQualifier",
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"],
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    #   options = {}
    #   output = client.update_function_url_config(params, options)
    # @example Response structure with placeholder values
    #   output.to_h #=>
    #   {
    #     function_url: "FunctionUrl", # required
    #     function_arn: "FunctionArn", # required
    #     auth_type: "NONE" # One of: ["NONE", "AWS_IAM"], # required
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: ["Header"],
    #       allow_methods: ["Method"],
    #       allow_origins: ["Origin"],
    #       expose_headers: ["Header"],
    #       max_age: 1
    #     },
    #     creation_time: "Timestamp", # required
    #     last_modified_time: "Timestamp", # required
    #     invoke_mode: "BUFFERED" # One of: ["BUFFERED", "RESPONSE_STREAM"]
    #   }
    def update_function_url_config(params = {}, options = {})
      input = build_input(:update_function_url_config, params)
      input.send_request(options)
    end

    private

    def build_input(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        params: params,
        config: config,
      )
      context[:gem_name] = 'aws-sdk-lambda'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Input.new(handlers: handlers, context: context)
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def protocols
        {"restJson1" => Aws::Core::RestJson::Protocol}
      end

      # @api private
      def errors_module
        Errors
      end
    end
  end
end
