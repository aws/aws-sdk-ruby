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
require 'aws-sdk-core/plugins/rest_json'

module Aws::EMRcontainers
  # An API client for Aws::EMRcontainers.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AwsChicagoWebService

    add_plugin(::Aws::EMRcontainers::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJson)

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
    # @option options [Aws::EMRcontainers::EndpointProvider] :endpoint_provider
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

    # <p>Cancels a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or
    #          SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    # @param [Hash, Types::CancelJobRunRequest] params
    # @option params [String] :id
    #   <p>The ID of the job run to cancel.</p>
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster for which the job run will be canceled.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.cancel_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString",
    #     virtual_cluster_id: "ResourceIdString"
    #   }
    # @return [Types::CancelJobRunResponse]
    def cancel_job_run(params = {}, options = {})
      request = build_request(:cancel_job_run, params)
      request.send_request(options)
    end

    # <p>Creates a job template. Job template stores values of StartJobRun API request in a
    #          template and can be used to start a job run. Job template allows two use cases: avoid
    #          repeating recurring StartJobRun API request values, enforcing certain values in StartJobRun
    #          API request.</p>
    # @param [Hash, Types::CreateJobTemplateRequest] params
    # @option params [String] :name
    #   <p>The specified name of the job template.</p>
    # @option params [String] :client_token
    #   <p>The client token of the job template.</p>
    # @option params [Types::JobTemplateData] :job_template_data
    #   <p>The job template data which holds values of StartJobRun API request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags that are associated with the job template.</p>
    # @option params [String] :kms_key_arn
    #   <p>The KMS key ARN used to encrypt the job template.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceNameString", # required
    #     client_token: "ClientToken", # required
    #     job_template_data: { # required
    #       execution_role_arn: "ParametricIAMRoleArn", # required
    #       release_label: "ParametricReleaseLabel", # required
    #       configuration_overrides: {
    #         application_configuration: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "String1024" => "String1024"
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             }
    #           }
    #         ],
    #         monitoring_configuration: {
    #           persistent_app_ui: "TemplateParameter",
    #           cloud_watch_monitoring_configuration: {
    #             log_group_name: "TemplateParameter",
    #             log_stream_name_prefix: "String256"
    #           },
    #           s3_monitoring_configuration: {
    #             log_uri: "UriString"
    #           }
    #         }
    #       },
    #       job_driver: { # required
    #         spark_submit_job_driver: {
    #           entry_point: "EntryPointPath", # required
    #           entry_point_arguments: ["EntryPointArgument"],
    #           spark_submit_parameters: "SparkSubmitParameters"
    #         },
    #         spark_sql_job_driver: {
    #           entry_point: "EntryPointPath",
    #           spark_sql_parameters: "SparkSqlParameters"
    #         }
    #       },
    #       parameter_configuration: {
    #         "TemplateParameterName" => {
    #           type: "NUMBER" # One of: ["NUMBER", "STRING"],
    #           default_value: "String1024"
    #         }
    #       },
    #       job_tags: {
    #         "String128" => "StringEmpty256"
    #       }
    #     },
    #     tags: {
    #       "String128" => "StringEmpty256"
    #     },
    #     kms_key_arn: "KmsKeyArn"
    #   }
    #   options = {}
    #   response = client.create_job_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString",
    #     name: "ResourceNameString",
    #     arn: "JobTemplateArn",
    #     created_at: Time.now
    #   }
    # @return [Types::CreateJobTemplateResponse]
    def create_job_template(params = {}, options = {})
      request = build_request(:create_job_template, params)
      request.send_request(options)
    end

    # <p>Creates a managed endpoint. A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can
    #          communicate with your virtual cluster.</p>
    # @param [Hash, Types::CreateManagedEndpointRequest] params
    # @option params [String] :name
    #   <p>The name of the managed endpoint.</p>
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster for which a managed endpoint is created.</p>
    # @option params [String] :type
    #   <p>The type of the managed endpoint.</p>
    # @option params [String] :release_label
    #   <p>The Amazon EMR release version.</p>
    # @option params [String] :execution_role_arn
    #   <p>The ARN of the execution role.</p>
    # @option params [String] :certificate_arn
    #   <p>The certificate ARN provided by users for the managed endpoint. This field is under
    #            deprecation and will be removed in future releases.</p>
    # @option params [Types::ConfigurationOverrides] :configuration_overrides
    #   <p>The configuration settings that will be used to override existing configurations.</p>
    # @option params [String] :client_token
    #   <p>The client idempotency token for this create call.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags of the managed endpoint. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceNameString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #     type: "EndpointType", # required
    #     release_label: "ReleaseLabel", # required
    #     execution_role_arn: "IAMRoleArn", # required
    #     certificate_arn: "ACMCertArn",
    #     configuration_overrides: {
    #       application_configuration: [
    #         {
    #           classification: "String1024", # required
    #           properties: {
    #             "String1024" => "String1024"
    #           },
    #           configurations: {
    #             # recursive ConfigurationList
    #           }
    #         }
    #       ],
    #       monitoring_configuration: {
    #         managed_logs: {
    #           allow_aws_to_retain_logs: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           encryption_key_arn: "KmsKeyArn"
    #         },
    #         persistent_app_ui: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         cloud_watch_monitoring_configuration: {
    #           log_group_name: "LogGroupName", # required
    #           log_stream_name_prefix: "String256"
    #         },
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString", # required
    #         },
    #         container_log_rotation_configuration: {
    #           rotation_size: "RotationSize", # required
    #           max_files_to_keep: 1, # required
    #         }
    #       }
    #     },
    #     client_token: "ClientToken", # required
    #     tags: {
    #       "String128" => "StringEmpty256"
    #     }
    #   }
    #   options = {}
    #   response = client.create_managed_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString",
    #     name: "ResourceNameString",
    #     arn: "EndpointArn",
    #     virtual_cluster_id: "ResourceIdString"
    #   }
    # @return [Types::CreateManagedEndpointResponse]
    def create_managed_endpoint(params = {}, options = {})
      request = build_request(:create_managed_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates a security configuration. Security configurations in Amazon EMR on EKS are
    #          templates for different security setups. You can use security configurations to configure
    #          the Lake Formation integration setup. You can also create a security configuration
    #          to re-use a security setup each time you create a virtual cluster.</p>
    # @param [Hash, Types::CreateSecurityConfigurationRequest] params
    # @option params [String] :client_token
    #   <p>The client idempotency token to use when creating the security configuration.</p>
    # @option params [String] :name
    #   <p>The name of the security configuration.</p>
    # @option params [Types::SecurityConfigurationData] :security_configuration_data
    #   <p>Security configuration input for the request.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the security configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken", # required
    #     name: "ResourceNameString", # required
    #     security_configuration_data: { # required
    #       authorization_configuration: {
    #         lake_formation_configuration: {
    #           authorized_session_tag_value: "SessionTagValue",
    #           secure_namespace_info: {
    #             cluster_id: "ClusterId",
    #             namespace: "KubernetesNamespace"
    #           },
    #           query_engine_role_arn: "IAMRoleArn"
    #         },
    #         encryption_configuration: {
    #           in_transit_encryption_configuration: {
    #             tls_certificate_configuration: {
    #               certificate_provider_type: "PEM" # One of: ["PEM"],
    #               public_certificate_secret_arn: "SecretsManagerArn",
    #               private_certificate_secret_arn: "SecretsManagerArn"
    #             }
    #           }
    #         }
    #       }
    #     },
    #     tags: {
    #       "String128" => "StringEmpty256"
    #     }
    #   }
    #   options = {}
    #   response = client.create_security_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString",
    #     name: "ResourceNameString",
    #     arn: "SecurityConfigurationArn"
    #   }
    # @return [Types::CreateSecurityConfigurationResponse]
    def create_security_configuration(params = {}, options = {})
      request = build_request(:create_security_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any
    #          additional resource in your system. A single virtual cluster maps to a single Kubernetes
    #          namespace. Given this relationship, you can model virtual clusters the same way you model
    #          Kubernetes namespaces to meet your requirements.</p>
    # @param [Hash, Types::CreateVirtualClusterRequest] params
    # @option params [String] :name
    #   <p>The specified name of the virtual cluster.</p>
    # @option params [Types::ContainerProvider] :container_provider
    #   <p>The container provider of the virtual cluster.</p>
    # @option params [String] :client_token
    #   <p>The client token of the virtual cluster.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to the virtual cluster.</p>
    # @option params [String] :security_configuration_id
    #   <p>The ID of the security configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceNameString", # required
    #     container_provider: { # required
    #       type: "EKS" # One of: ["EKS"], # required
    #       id: "ClusterId", # required
    #       info: {
    #         # One of:
    #         eks_info: {
    #           namespace: "KubernetesNamespace"
    #         }
    #       }
    #     },
    #     client_token: "ClientToken", # required
    #     tags: {
    #       "String128" => "StringEmpty256"
    #     },
    #     security_configuration_id: "ResourceIdString"
    #   }
    #   options = {}
    #   response = client.create_virtual_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString",
    #     name: "ResourceNameString",
    #     arn: "VirtualClusterArn"
    #   }
    # @return [Types::CreateVirtualClusterResponse]
    def create_virtual_cluster(params = {}, options = {})
      request = build_request(:create_virtual_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a job template. Job template stores values of StartJobRun API request in a
    #          template and can be used to start a job run. Job template allows two use cases: avoid
    #          repeating recurring StartJobRun API request values, enforcing certain values in StartJobRun
    #          API request.</p>
    # @param [Hash, Types::DeleteJobTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the job template that will be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_job_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString"
    #   }
    # @return [Types::DeleteJobTemplateResponse]
    def delete_job_template(params = {}, options = {})
      request = build_request(:delete_job_template, params)
      request.send_request(options)
    end

    # <p>Deletes a managed endpoint. A managed endpoint is a gateway that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can
    #          communicate with your virtual cluster.</p>
    # @param [Hash, Types::DeleteManagedEndpointRequest] params
    # @option params [String] :id
    #   <p>The ID of the managed endpoint.</p>
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_managed_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString",
    #     virtual_cluster_id: "ResourceIdString"
    #   }
    # @return [Types::DeleteManagedEndpointResponse]
    def delete_managed_endpoint(params = {}, options = {})
      request = build_request(:delete_managed_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes a virtual cluster. Virtual cluster is a managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual clusters. They do not consume any
    #          additional resource in your system. A single virtual cluster maps to a single Kubernetes
    #          namespace. Given this relationship, you can model virtual clusters the same way you model
    #          Kubernetes namespaces to meet your requirements.</p>
    # @param [Hash, Types::DeleteVirtualClusterRequest] params
    # @option params [String] :id
    #   <p>The ID of the virtual cluster that will be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.delete_virtual_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString"
    #   }
    # @return [Types::DeleteVirtualClusterResponse]
    def delete_virtual_cluster(params = {}, options = {})
      request = build_request(:delete_virtual_cluster, params)
      request.send_request(options)
    end

    # <p>Displays detailed information about a job run. A job run is a unit of work, such as a
    #          Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    # @param [Hash, Types::DescribeJobRunRequest] params
    # @option params [String] :id
    #   <p>The ID of the job run request. </p>
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster for which the job run is submitted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.describe_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_run: {
    #       id: "ResourceIdString",
    #       name: "ResourceNameString",
    #       virtual_cluster_id: "ResourceIdString",
    #       arn: "JobArn",
    #       state: "PENDING" # One of: ["PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"],
    #       client_token: "ClientToken",
    #       execution_role_arn: "IAMRoleArn",
    #       release_label: "ReleaseLabel",
    #       configuration_overrides: {
    #         application_configuration: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "String1024" => "String1024"
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             }
    #           }
    #         ],
    #         monitoring_configuration: {
    #           managed_logs: {
    #             allow_aws_to_retain_logs: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             encryption_key_arn: "KmsKeyArn"
    #           },
    #           persistent_app_ui: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           cloud_watch_monitoring_configuration: {
    #             log_group_name: "LogGroupName", # required
    #             log_stream_name_prefix: "String256"
    #           },
    #           s3_monitoring_configuration: {
    #             log_uri: "UriString", # required
    #           },
    #           container_log_rotation_configuration: {
    #             rotation_size: "RotationSize", # required
    #             max_files_to_keep: 1, # required
    #           }
    #         }
    #       },
    #       job_driver: {
    #         spark_submit_job_driver: {
    #           entry_point: "EntryPointPath", # required
    #           entry_point_arguments: ["EntryPointArgument"],
    #           spark_submit_parameters: "SparkSubmitParameters"
    #         },
    #         spark_sql_job_driver: {
    #           entry_point: "EntryPointPath",
    #           spark_sql_parameters: "SparkSqlParameters"
    #         }
    #       },
    #       created_at: Time.now,
    #       created_by: "RequestIdentityUserArn",
    #       finished_at: Time.now,
    #       state_details: "String256",
    #       failure_reason: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"],
    #       tags: {
    #         "String128" => "StringEmpty256"
    #       },
    #       retry_policy_configuration: {
    #         max_attempts: 1, # required
    #       },
    #       retry_policy_execution: {
    #         current_attempt_count: 1, # required
    #       }
    #     }
    #   }
    # @return [Types::DescribeJobRunResponse]
    def describe_job_run(params = {}, options = {})
      request = build_request(:describe_job_run, params)
      request.send_request(options)
    end

    # <p>Displays detailed information about a specified job template. Job template stores values
    #          of StartJobRun API request in a template and can be used to start a job run. Job template
    #          allows two use cases: avoid repeating recurring StartJobRun API request values, enforcing
    #          certain values in StartJobRun API request.</p>
    # @param [Hash, Types::DescribeJobTemplateRequest] params
    # @option params [String] :id
    #   <p>The ID of the job template that will be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.describe_job_template(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_template: {
    #       name: "ResourceNameString",
    #       id: "ResourceIdString",
    #       arn: "JobTemplateArn",
    #       created_at: Time.now,
    #       created_by: "RequestIdentityUserArn",
    #       tags: {
    #         "String128" => "StringEmpty256"
    #       },
    #       job_template_data: { # required
    #         execution_role_arn: "ParametricIAMRoleArn", # required
    #         release_label: "ParametricReleaseLabel", # required
    #         configuration_overrides: {
    #           application_configuration: [
    #             {
    #               classification: "String1024", # required
    #               properties: {
    #                 "String1024" => "String1024"
    #               },
    #               configurations: {
    #                 # recursive ConfigurationList
    #               }
    #             }
    #           ],
    #           monitoring_configuration: {
    #             persistent_app_ui: "TemplateParameter",
    #             cloud_watch_monitoring_configuration: {
    #               log_group_name: "TemplateParameter",
    #               log_stream_name_prefix: "String256"
    #             },
    #             s3_monitoring_configuration: {
    #               log_uri: "UriString"
    #             }
    #           }
    #         },
    #         job_driver: { # required
    #           spark_submit_job_driver: {
    #             entry_point: "EntryPointPath", # required
    #             entry_point_arguments: ["EntryPointArgument"],
    #             spark_submit_parameters: "SparkSubmitParameters"
    #           },
    #           spark_sql_job_driver: {
    #             entry_point: "EntryPointPath",
    #             spark_sql_parameters: "SparkSqlParameters"
    #           }
    #         },
    #         parameter_configuration: {
    #           "TemplateParameterName" => {
    #             type: "NUMBER" # One of: ["NUMBER", "STRING"],
    #             default_value: "String1024"
    #           }
    #         },
    #         job_tags: {
    #           "String128" => "StringEmpty256"
    #         }
    #       },
    #       kms_key_arn: "KmsKeyArn",
    #       decryption_error: "String2048"
    #     }
    #   }
    # @return [Types::DescribeJobTemplateResponse]
    def describe_job_template(params = {}, options = {})
      request = build_request(:describe_job_template, params)
      request.send_request(options)
    end

    # <p>Displays detailed information about a managed endpoint. A managed endpoint is a gateway
    #          that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can communicate with your virtual cluster.</p>
    # @param [Hash, Types::DescribeManagedEndpointRequest] params
    # @option params [String] :id
    #   <p>This output displays ID of the managed endpoint.</p>
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the endpoint's virtual cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #     virtual_cluster_id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.describe_managed_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint: {
    #       id: "ResourceIdString",
    #       name: "ResourceNameString",
    #       arn: "EndpointArn",
    #       virtual_cluster_id: "ResourceIdString",
    #       type: "EndpointType",
    #       state: "CREATING" # One of: ["CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"],
    #       release_label: "ReleaseLabel",
    #       execution_role_arn: "IAMRoleArn",
    #       certificate_arn: "ACMCertArn",
    #       certificate_authority: {
    #         certificate_arn: "ACMCertArn",
    #         certificate_data: "Base64Encoded"
    #       },
    #       configuration_overrides: {
    #         application_configuration: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "String1024" => "String1024"
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             }
    #           }
    #         ],
    #         monitoring_configuration: {
    #           managed_logs: {
    #             allow_aws_to_retain_logs: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             encryption_key_arn: "KmsKeyArn"
    #           },
    #           persistent_app_ui: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           cloud_watch_monitoring_configuration: {
    #             log_group_name: "LogGroupName", # required
    #             log_stream_name_prefix: "String256"
    #           },
    #           s3_monitoring_configuration: {
    #             log_uri: "UriString", # required
    #           },
    #           container_log_rotation_configuration: {
    #             rotation_size: "RotationSize", # required
    #             max_files_to_keep: 1, # required
    #           }
    #         }
    #       },
    #       server_url: "UriString",
    #       created_at: Time.now,
    #       security_group: "String256",
    #       subnet_ids: ["String256"],
    #       state_details: "String256",
    #       failure_reason: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"],
    #       tags: {
    #         "String128" => "StringEmpty256"
    #       }
    #     }
    #   }
    # @return [Types::DescribeManagedEndpointResponse]
    def describe_managed_endpoint(params = {}, options = {})
      request = build_request(:describe_managed_endpoint, params)
      request.send_request(options)
    end

    # <p>Displays detailed information about a specified security configuration. Security
    #          configurations in Amazon EMR on EKS are templates for different security setups. You
    #          can use security configurations to configure the Lake Formation integration setup.
    #          You can also create a security configuration to re-use a security setup each time you
    #          create a virtual cluster.</p>
    # @param [Hash, Types::DescribeSecurityConfigurationRequest] params
    # @option params [String] :id
    #   <p>The ID of the security configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.describe_security_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_configuration: {
    #       id: "ResourceIdString",
    #       name: "ResourceNameString",
    #       arn: "SecurityConfigurationArn",
    #       created_at: Time.now,
    #       created_by: "RequestIdentityUserArn",
    #       security_configuration_data: {
    #         authorization_configuration: {
    #           lake_formation_configuration: {
    #             authorized_session_tag_value: "SessionTagValue",
    #             secure_namespace_info: {
    #               cluster_id: "ClusterId",
    #               namespace: "KubernetesNamespace"
    #             },
    #             query_engine_role_arn: "IAMRoleArn"
    #           },
    #           encryption_configuration: {
    #             in_transit_encryption_configuration: {
    #               tls_certificate_configuration: {
    #                 certificate_provider_type: "PEM" # One of: ["PEM"],
    #                 public_certificate_secret_arn: "SecretsManagerArn",
    #                 private_certificate_secret_arn: "SecretsManagerArn"
    #               }
    #             }
    #           }
    #         }
    #       },
    #       tags: {
    #         "String128" => "StringEmpty256"
    #       }
    #     }
    #   }
    # @return [Types::DescribeSecurityConfigurationResponse]
    def describe_security_configuration(params = {}, options = {})
      request = build_request(:describe_security_configuration, params)
      request.send_request(options)
    end

    # <p>Displays detailed information about a specified virtual cluster. Virtual cluster is a
    #          managed entity on Amazon EMR on EKS. You can create, describe, list and delete virtual
    #          clusters. They do not consume any additional resource in your system. A single virtual
    #          cluster maps to a single Kubernetes namespace. Given this relationship, you can model
    #          virtual clusters the same way you model Kubernetes namespaces to meet your
    #          requirements.</p>
    # @param [Hash, Types::DescribeVirtualClusterRequest] params
    # @option params [String] :id
    #   <p>The ID of the virtual cluster that will be described.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "ResourceIdString", # required
    #   }
    #   options = {}
    #   response = client.describe_virtual_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_cluster: {
    #       id: "ResourceIdString",
    #       name: "ResourceNameString",
    #       arn: "VirtualClusterArn",
    #       state: "RUNNING" # One of: ["RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"],
    #       container_provider: {
    #         type: "EKS" # One of: ["EKS"], # required
    #         id: "ClusterId", # required
    #         info: {
    #           # One of:
    #           eks_info: {
    #             namespace: "KubernetesNamespace"
    #           }
    #         }
    #       },
    #       created_at: Time.now,
    #       tags: {
    #         "String128" => "StringEmpty256"
    #       },
    #       security_configuration_id: "ResourceIdString"
    #     }
    #   }
    # @return [Types::DescribeVirtualClusterResponse]
    def describe_virtual_cluster(params = {}, options = {})
      request = build_request(:describe_virtual_cluster, params)
      request.send_request(options)
    end

    # <p>Generate a session token to connect to a managed endpoint. </p>
    # @param [Hash, Types::GetManagedEndpointSessionCredentialsRequest] params
    # @option params [String] :endpoint_identifier
    #   <p>The ARN of the managed endpoint for which the request is submitted. </p>
    # @option params [String] :virtual_cluster_identifier
    #   <p>The ARN of the Virtual Cluster which the Managed Endpoint belongs to. </p>
    # @option params [String] :execution_role_arn
    #   <p>The IAM Execution Role ARN that will be used by the job run. </p>
    # @option params [String] :credential_type
    #   <p>Type of the token requested. Currently supported and default value of this field is
    #            “TOKEN.”</p>
    # @option params [Integer] :duration_in_seconds
    #   <p>Duration in seconds for which the session token is valid. The default duration is 15
    #            minutes and the maximum is 12 hours.</p>
    # @option params [String] :log_context
    #   <p>String identifier used to separate sections of the execution logs uploaded to S3.</p>
    # @option params [String] :client_token
    #   <p>The client idempotency token of the job run request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_identifier: "String2048", # required
    #     virtual_cluster_identifier: "String2048", # required
    #     execution_role_arn: "IAMRoleArn", # required
    #     credential_type: "CredentialType", # required
    #     duration_in_seconds: 1,
    #     log_context: "LogContext",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.get_managed_endpoint_session_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString",
    #     credentials: {
    #       # One of:
    #       token: "Token"
    #     },
    #     expires_at: Time.now
    #   }
    # @return [Types::GetManagedEndpointSessionCredentialsResponse]
    def get_managed_endpoint_session_credentials(params = {}, options = {})
      request = build_request(:get_managed_endpoint_session_credentials, params)
      request.send_request(options)
    end

    # <p>Lists job runs based on a set of parameters. A job run is a unit of work, such as a
    #          Spark jar, PySpark script, or SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    # @param [Hash, Types::ListJobRunsRequest] params
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster for which to list the job run. </p>
    # @option params [Time] :created_before
    #   <p>The date and time before which the job runs were submitted.</p>
    # @option params [Time] :created_after
    #   <p>The date and time after which the job runs were submitted.</p>
    # @option params [String] :name
    #   <p>The name of the job run.</p>
    # @option params [Array<String>] :states
    #   <p>The states of the job run.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of job runs that can be listed.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of job runs to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_cluster_id: "ResourceIdString", # required
    #     created_before: Time.now,
    #     created_after: Time.now,
    #     name: "ResourceNameString",
    #     states: ["PENDING" # One of: ["PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"]],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_job_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_runs: [
    #       {
    #         id: "ResourceIdString",
    #         name: "ResourceNameString",
    #         virtual_cluster_id: "ResourceIdString",
    #         arn: "JobArn",
    #         state: "PENDING" # One of: ["PENDING", "SUBMITTED", "RUNNING", "FAILED", "CANCELLED", "CANCEL_PENDING", "COMPLETED"],
    #         client_token: "ClientToken",
    #         execution_role_arn: "IAMRoleArn",
    #         release_label: "ReleaseLabel",
    #         configuration_overrides: {
    #           application_configuration: [
    #             {
    #               classification: "String1024", # required
    #               properties: {
    #                 "String1024" => "String1024"
    #               },
    #               configurations: {
    #                 # recursive ConfigurationList
    #               }
    #             }
    #           ],
    #           monitoring_configuration: {
    #             managed_logs: {
    #               allow_aws_to_retain_logs: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               encryption_key_arn: "KmsKeyArn"
    #             },
    #             persistent_app_ui: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             cloud_watch_monitoring_configuration: {
    #               log_group_name: "LogGroupName", # required
    #               log_stream_name_prefix: "String256"
    #             },
    #             s3_monitoring_configuration: {
    #               log_uri: "UriString", # required
    #             },
    #             container_log_rotation_configuration: {
    #               rotation_size: "RotationSize", # required
    #               max_files_to_keep: 1, # required
    #             }
    #           }
    #         },
    #         job_driver: {
    #           spark_submit_job_driver: {
    #             entry_point: "EntryPointPath", # required
    #             entry_point_arguments: ["EntryPointArgument"],
    #             spark_submit_parameters: "SparkSubmitParameters"
    #           },
    #           spark_sql_job_driver: {
    #             entry_point: "EntryPointPath",
    #             spark_sql_parameters: "SparkSqlParameters"
    #           }
    #         },
    #         created_at: Time.now,
    #         created_by: "RequestIdentityUserArn",
    #         finished_at: Time.now,
    #         state_details: "String256",
    #         failure_reason: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"],
    #         tags: {
    #           "String128" => "StringEmpty256"
    #         },
    #         retry_policy_configuration: {
    #           max_attempts: 1, # required
    #         },
    #         retry_policy_execution: {
    #           current_attempt_count: 1, # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobRunsResponse]
    def list_job_runs(params = {}, options = {})
      request = build_request(:list_job_runs, params)
      request.send_request(options)
    end

    # <p>Lists job templates based on a set of parameters. Job template stores values of
    #          StartJobRun API request in a template and can be used to start a job run. Job template
    #          allows two use cases: avoid repeating recurring StartJobRun API request values, enforcing
    #          certain values in StartJobRun API request.</p>
    # @param [Hash, Types::ListJobTemplatesRequest] params
    # @option params [Time] :created_after
    #   <p>The date and time after which the job templates were created.</p>
    # @option params [Time] :created_before
    #   <p> The date and time before which the job templates were created.</p>
    # @option params [Integer] :max_results
    #   <p> The maximum number of job templates that can be listed.</p>
    # @option params [String] :next_token
    #   <p> The token for the next set of job templates to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_job_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     templates: [
    #       {
    #         name: "ResourceNameString",
    #         id: "ResourceIdString",
    #         arn: "JobTemplateArn",
    #         created_at: Time.now,
    #         created_by: "RequestIdentityUserArn",
    #         tags: {
    #           "String128" => "StringEmpty256"
    #         },
    #         job_template_data: { # required
    #           execution_role_arn: "ParametricIAMRoleArn", # required
    #           release_label: "ParametricReleaseLabel", # required
    #           configuration_overrides: {
    #             application_configuration: [
    #               {
    #                 classification: "String1024", # required
    #                 properties: {
    #                   "String1024" => "String1024"
    #                 },
    #                 configurations: {
    #                   # recursive ConfigurationList
    #                 }
    #               }
    #             ],
    #             monitoring_configuration: {
    #               persistent_app_ui: "TemplateParameter",
    #               cloud_watch_monitoring_configuration: {
    #                 log_group_name: "TemplateParameter",
    #                 log_stream_name_prefix: "String256"
    #               },
    #               s3_monitoring_configuration: {
    #                 log_uri: "UriString"
    #               }
    #             }
    #           },
    #           job_driver: { # required
    #             spark_submit_job_driver: {
    #               entry_point: "EntryPointPath", # required
    #               entry_point_arguments: ["EntryPointArgument"],
    #               spark_submit_parameters: "SparkSubmitParameters"
    #             },
    #             spark_sql_job_driver: {
    #               entry_point: "EntryPointPath",
    #               spark_sql_parameters: "SparkSqlParameters"
    #             }
    #           },
    #           parameter_configuration: {
    #             "TemplateParameterName" => {
    #               type: "NUMBER" # One of: ["NUMBER", "STRING"],
    #               default_value: "String1024"
    #             }
    #           },
    #           job_tags: {
    #             "String128" => "StringEmpty256"
    #           }
    #         },
    #         kms_key_arn: "KmsKeyArn",
    #         decryption_error: "String2048"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListJobTemplatesResponse]
    def list_job_templates(params = {}, options = {})
      request = build_request(:list_job_templates, params)
      request.send_request(options)
    end

    # <p>Lists managed endpoints based on a set of parameters. A managed endpoint is a gateway
    #          that connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR Studio can communicate with your virtual cluster.</p>
    # @param [Hash, Types::ListManagedEndpointsRequest] params
    # @option params [String] :virtual_cluster_id
    #   <p>The ID of the virtual cluster.</p>
    # @option params [Time] :created_before
    #   <p>The date and time before which the endpoints are created.</p>
    # @option params [Time] :created_after
    #   <p> The date and time after which the endpoints are created.</p>
    # @option params [Array<String>] :types
    #   <p>The types of the managed endpoints.</p>
    # @option params [Array<String>] :states
    #   <p>The states of the managed endpoints.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of managed endpoints that can be listed.</p>
    # @option params [String] :next_token
    #   <p> The token for the next set of managed endpoints to return. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     virtual_cluster_id: "ResourceIdString", # required
    #     created_before: Time.now,
    #     created_after: Time.now,
    #     types: ["EndpointType"],
    #     states: ["CREATING" # One of: ["CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"]],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_managed_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints: [
    #       {
    #         id: "ResourceIdString",
    #         name: "ResourceNameString",
    #         arn: "EndpointArn",
    #         virtual_cluster_id: "ResourceIdString",
    #         type: "EndpointType",
    #         state: "CREATING" # One of: ["CREATING", "ACTIVE", "TERMINATING", "TERMINATED", "TERMINATED_WITH_ERRORS"],
    #         release_label: "ReleaseLabel",
    #         execution_role_arn: "IAMRoleArn",
    #         certificate_arn: "ACMCertArn",
    #         certificate_authority: {
    #           certificate_arn: "ACMCertArn",
    #           certificate_data: "Base64Encoded"
    #         },
    #         configuration_overrides: {
    #           application_configuration: [
    #             {
    #               classification: "String1024", # required
    #               properties: {
    #                 "String1024" => "String1024"
    #               },
    #               configurations: {
    #                 # recursive ConfigurationList
    #               }
    #             }
    #           ],
    #           monitoring_configuration: {
    #             managed_logs: {
    #               allow_aws_to_retain_logs: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #               encryption_key_arn: "KmsKeyArn"
    #             },
    #             persistent_app_ui: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #             cloud_watch_monitoring_configuration: {
    #               log_group_name: "LogGroupName", # required
    #               log_stream_name_prefix: "String256"
    #             },
    #             s3_monitoring_configuration: {
    #               log_uri: "UriString", # required
    #             },
    #             container_log_rotation_configuration: {
    #               rotation_size: "RotationSize", # required
    #               max_files_to_keep: 1, # required
    #             }
    #           }
    #         },
    #         server_url: "UriString",
    #         created_at: Time.now,
    #         security_group: "String256",
    #         subnet_ids: ["String256"],
    #         state_details: "String256",
    #         failure_reason: "INTERNAL_ERROR" # One of: ["INTERNAL_ERROR", "USER_ERROR", "VALIDATION_ERROR", "CLUSTER_UNAVAILABLE"],
    #         tags: {
    #           "String128" => "StringEmpty256"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListManagedEndpointsResponse]
    def list_managed_endpoints(params = {}, options = {})
      request = build_request(:list_managed_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists security configurations based on a set of parameters. Security configurations in
    #          Amazon EMR on EKS are templates for different security setups. You can use security
    #          configurations to configure the Lake Formation integration setup. You can also
    #          create a security configuration to re-use a security setup each time you create a virtual
    #          cluster.</p>
    # @param [Hash, Types::ListSecurityConfigurationsRequest] params
    # @option params [Time] :created_after
    #   <p>The date and time after which the security configuration was created.</p>
    # @option params [Time] :created_before
    #   <p>The date and time before which the security configuration was created.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of security configurations the operation can list.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of security configurations to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_security_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_configurations: [
    #       {
    #         id: "ResourceIdString",
    #         name: "ResourceNameString",
    #         arn: "SecurityConfigurationArn",
    #         created_at: Time.now,
    #         created_by: "RequestIdentityUserArn",
    #         security_configuration_data: {
    #           authorization_configuration: {
    #             lake_formation_configuration: {
    #               authorized_session_tag_value: "SessionTagValue",
    #               secure_namespace_info: {
    #                 cluster_id: "ClusterId",
    #                 namespace: "KubernetesNamespace"
    #               },
    #               query_engine_role_arn: "IAMRoleArn"
    #             },
    #             encryption_configuration: {
    #               in_transit_encryption_configuration: {
    #                 tls_certificate_configuration: {
    #                   certificate_provider_type: "PEM" # One of: ["PEM"],
    #                   public_certificate_secret_arn: "SecretsManagerArn",
    #                   private_certificate_secret_arn: "SecretsManagerArn"
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         tags: {
    #           "String128" => "StringEmpty256"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSecurityConfigurationsResponse]
    def list_security_configurations(params = {}, options = {})
      request = build_request(:list_security_configurations, params)
      request.send_request(options)
    end

    # <p>Lists the tags assigned to the resources.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of tagged resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RsiArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "String128" => "StringEmpty256"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists information about the specified virtual cluster. Virtual cluster is a managed
    #          entity on Amazon EMR on EKS. You can create, describe, list and delete virtual
    #          clusters. They do not consume any additional resource in your system. A single virtual
    #          cluster maps to a single Kubernetes namespace. Given this relationship, you can model
    #          virtual clusters the same way you model Kubernetes namespaces to meet your
    #          requirements.</p>
    # @param [Hash, Types::ListVirtualClustersRequest] params
    # @option params [String] :container_provider_id
    #   <p>The container provider ID of the virtual cluster.</p>
    # @option params [String] :container_provider_type
    #   <p>The container provider type of the virtual cluster. Amazon EKS is the only
    #            supported type as of now.</p>
    # @option params [Time] :created_after
    #   <p>The date and time after which the virtual clusters are created.</p>
    # @option params [Time] :created_before
    #   <p>The date and time before which the virtual clusters are created.</p>
    # @option params [Array<String>] :states
    #   <p>The states of the requested virtual clusters.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of virtual clusters that can be listed.</p>
    # @option params [String] :next_token
    #   <p>The token for the next set of virtual clusters to return. </p>
    # @option params [Boolean] :eks_access_entry_integrated
    #   <p>Optional Boolean that specifies whether the operation should return the 
    #            virtual clusters that have the access entry integration enabled or disabled. If not specified,
    #         the operation returns all applicable virtual clusters.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     container_provider_id: "String1024",
    #     container_provider_type: "EKS" # One of: ["EKS"],
    #     created_after: Time.now,
    #     created_before: Time.now,
    #     states: ["RUNNING" # One of: ["RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"]],
    #     max_results: 1,
    #     next_token: "NextToken",
    #     eks_access_entry_integrated: false
    #   }
    #   options = {}
    #   response = client.list_virtual_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     virtual_clusters: [
    #       {
    #         id: "ResourceIdString",
    #         name: "ResourceNameString",
    #         arn: "VirtualClusterArn",
    #         state: "RUNNING" # One of: ["RUNNING", "TERMINATING", "TERMINATED", "ARRESTED"],
    #         container_provider: {
    #           type: "EKS" # One of: ["EKS"], # required
    #           id: "ClusterId", # required
    #           info: {
    #             # One of:
    #             eks_info: {
    #               namespace: "KubernetesNamespace"
    #             }
    #           }
    #         },
    #         created_at: Time.now,
    #         tags: {
    #           "String128" => "StringEmpty256"
    #         },
    #         security_configuration_id: "ResourceIdString"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListVirtualClustersResponse]
    def list_virtual_clusters(params = {}, options = {})
      request = build_request(:list_virtual_clusters, params)
      request.send_request(options)
    end

    # <p>Starts a job run. A job run is a unit of work, such as a Spark jar, PySpark script, or
    #          SparkSQL query, that you submit to Amazon EMR on EKS.</p>
    # @param [Hash, Types::StartJobRunRequest] params
    # @option params [String] :name
    #   <p>The name of the job run.</p>
    # @option params [String] :virtual_cluster_id
    #   <p>The virtual cluster ID for which the job run request is submitted.</p>
    # @option params [String] :client_token
    #   <p>The client idempotency token of the job run request. </p>
    # @option params [String] :execution_role_arn
    #   <p>The execution role ARN for the job run.</p>
    # @option params [String] :release_label
    #   <p>The Amazon EMR release version to use for the job run.</p>
    # @option params [Types::JobDriver] :job_driver
    #   <p>The job driver for the job run.</p>
    # @option params [Types::ConfigurationOverrides] :configuration_overrides
    #   <p>The configuration overrides for the job run.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to job runs.</p>
    # @option params [String] :job_template_id
    #   <p>The job template ID to be used to start the job run.</p>
    # @option params [Hash<String, String>] :job_template_parameters
    #   <p>The values of job template parameters to start a job run.</p>
    # @option params [Types::RetryPolicyConfiguration] :retry_policy_configuration
    #   <p>The retry policy configuration for the job run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "ResourceNameString",
    #     virtual_cluster_id: "ResourceIdString", # required
    #     client_token: "ClientToken", # required
    #     execution_role_arn: "IAMRoleArn",
    #     release_label: "ReleaseLabel",
    #     job_driver: {
    #       spark_submit_job_driver: {
    #         entry_point: "EntryPointPath", # required
    #         entry_point_arguments: ["EntryPointArgument"],
    #         spark_submit_parameters: "SparkSubmitParameters"
    #       },
    #       spark_sql_job_driver: {
    #         entry_point: "EntryPointPath",
    #         spark_sql_parameters: "SparkSqlParameters"
    #       }
    #     },
    #     configuration_overrides: {
    #       application_configuration: [
    #         {
    #           classification: "String1024", # required
    #           properties: {
    #             "String1024" => "String1024"
    #           },
    #           configurations: {
    #             # recursive ConfigurationList
    #           }
    #         }
    #       ],
    #       monitoring_configuration: {
    #         managed_logs: {
    #           allow_aws_to_retain_logs: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #           encryption_key_arn: "KmsKeyArn"
    #         },
    #         persistent_app_ui: "ENABLED" # One of: ["ENABLED", "DISABLED"],
    #         cloud_watch_monitoring_configuration: {
    #           log_group_name: "LogGroupName", # required
    #           log_stream_name_prefix: "String256"
    #         },
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString", # required
    #         },
    #         container_log_rotation_configuration: {
    #           rotation_size: "RotationSize", # required
    #           max_files_to_keep: 1, # required
    #         }
    #       }
    #     },
    #     tags: {
    #       "String128" => "StringEmpty256"
    #     },
    #     job_template_id: "ResourceIdString",
    #     job_template_parameters: {
    #       "TemplateParameterName" => "String1024"
    #     },
    #     retry_policy_configuration: {
    #       max_attempts: 1, # required
    #     }
    #   }
    #   options = {}
    #   response = client.start_job_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ResourceIdString",
    #     name: "ResourceNameString",
    #     arn: "JobArn",
    #     virtual_cluster_id: "ResourceIdString"
    #   }
    # @return [Types::StartJobRunResponse]
    def start_job_run(params = {}, options = {})
      request = build_request(:start_job_run, params)
      request.send_request(options)
    end

    # <p>Assigns tags to resources. A tag is a label that you assign to an Amazon Web Services
    #          resource. Each tag consists of a key and an optional value, both of which you define. Tags
    #          enable you to categorize your Amazon Web Services resources by attributes such as purpose,
    #          owner, or environment. When you have many resources of the same type, you can quickly
    #          identify a specific resource based on the tags you've assigned to it. For example, you can
    #          define a set of tags for your Amazon EMR on EKS clusters to help you track each
    #          cluster's owner and stack level. We recommend that you devise a consistent set of tag keys
    #          for each resource type. You can then search and filter the resources based on the tags that
    #          you add.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of resources.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags assigned to resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RsiArn", # required
    #     tags: { # required
    #       "String128" => "StringEmpty256"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from resources.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of resources.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "RsiArn", # required
    #     tag_keys: ["String128"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
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
      context[:gem_name] = 'aws-sdk-emrcontainers'
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
