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

module Aws::Codeartifact
  # An API client for Aws::Codeartifact.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::CodeArtifactControlPlaneService

    add_plugin(::Aws::Codeartifact::Plugins::Endpoint)
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
    # @option options [Aws::Codeartifact::EndpointProvider] :endpoint_provider
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

    # <p>Adds an existing external connection to a repository. One external connection is allowed
    #       per repository.</p>
    #          <note>
    #             <p>A repository can have one or more upstream repositories, or an external connection.</p>
    #          </note>
    # @param [Hash, Types::AssociateExternalConnectionRequest] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the repository.</p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #         The name of the repository to which the external connection is added.
    #       </p>
    # @option params [String] :external_connection
    #   <p>
    #         The name of the external connection to add to the repository. The following values are supported:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>public:npmjs</code> - for the npm public repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:nuget-org</code> - for the NuGet Gallery.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:pypi</code> - for the Python Package Index.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-central</code> - for Maven Central.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-googleandroid</code> - for the Google Android repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-gradleplugins</code> - for the Gradle plugins repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-commonsware</code> - for the CommonsWare Android repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-clojars</code> - for the Clojars repository. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:ruby-gems-org</code> - for RubyGems.org. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:crates-io</code> - for Crates.io. </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     external_connection: "ExternalConnectionName", # required
    #   }
    #   options = {}
    #   response = client.associate_external_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       name: "RepositoryName",
    #       administrator_account: "AccountId",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       arn: "Arn",
    #       description: "Description",
    #       upstreams: [
    #         {
    #           repository_name: "RepositoryName"
    #         }
    #       ],
    #       external_connections: [
    #         {
    #           external_connection_name: "ExternalConnectionName",
    #           package_format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #           status: "Available" # One of: ["Available"]
    #         }
    #       ],
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::AssociateExternalConnectionResult]
    def associate_external_connection(params = {}, options = {})
      request = build_request(:associate_external_connection, params)
      request.send_request(options)
    end

    # <p>
    #         Copies package versions from one repository to another repository in the same domain.
    #       </p>
    #          <note>
    #             <p>
    #         You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #       </p>
    #          </note>
    # @param [Hash, Types::CopyPackageVersionsRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the source and destination repositories.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :source_repository
    #   <p>
    #            The name of the repository that contains the package versions to be copied.
    #          </p>
    # @option params [String] :destination_repository
    #   <p>
    #         The name of the repository into which package versions are copied.
    #       </p>
    # @option params [String] :format
    #   <p>
    #         The format of the package versions to be copied.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package versions to be copied. The package component that specifies its namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when copying package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #         The name of the package that contains the versions to be copied.
    #       </p>
    # @option params [Array<String>] :versions
    #   <p>
    #           The versions of the package to be copied.
    #         </p>
    #            <note>
    #               <p>
    #           You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #         </p>
    #            </note>
    # @option params [Hash<String, String>] :version_revisions
    #   <p>
    #          A list of key-value pairs. The keys are package versions and the values are package version revisions. A <code>CopyPackageVersion</code> operation
    #         succeeds if the specified versions in the source repository match the specified package version revision.
    #       </p>
    #            <note>
    #               <p>
    #           You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #         </p>
    #            </note>
    # @option params [Boolean] :allow_overwrite
    #   <p>
    #          Set to true to overwrite a package version that already exists in the destination repository.
    #          If set to false and the package version already exists in the destination repository,
    #          the package version is returned in the <code>failedVersions</code> field of the response with 
    #          an <code>ALREADY_EXISTS</code> error code.
    #        </p>
    # @option params [Boolean] :include_from_upstream
    #   <p> Set to true to copy packages from repositories that are upstream from the source
    #         repository to the destination repository. The default setting is false. For more information,
    #         see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with
    #           upstream repositories</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     source_repository: "RepositoryName", # required
    #     destination_repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     versions: ["PackageVersion"],
    #     version_revisions: {
    #       "PackageVersion" => "PackageVersionRevision"
    #     },
    #     allow_overwrite: false,
    #     include_from_upstream: false
    #   }
    #   options = {}
    #   response = client.copy_package_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_versions: {
    #       "PackageVersion" => {
    #         revision: "String",
    #         status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #       }
    #     },
    #     failed_versions: {
    #       "PackageVersion" => {
    #         error_code: "ALREADY_EXISTS" # One of: ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"],
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::CopyPackageVersionsResult]
    def copy_package_versions(params = {}, options = {})
      request = build_request(:copy_package_versions, params)
      request.send_request(options)
    end

    # <p>
    #       Creates a domain. CodeArtifact <i>domains</i> make it easier to manage multiple repositories across an
    #         organization. You can use a domain to apply permissions across many
    #         repositories owned by different Amazon Web Services accounts. An asset is stored only once
    #         in a domain, even if it's in multiple repositories. 
    #     </p>
    #          <p>Although you can have multiple domains, we recommend a single production domain that contains all
    #         published artifacts so that your development teams can find and share packages. You can use a second
    #         pre-production domain to test changes to the production domain configuration.
    #       </p>
    # @param [Hash, Types::CreateDomainRequest] params
    # @option params [String] :domain
    #   <p> The name of the domain to create. All domain names in an Amazon Web Services Region that are in the
    #         same Amazon Web Services account must be unique. The domain name is used as the prefix in DNS hostnames. Do
    #         not use sensitive information in a domain name because it is publicly discoverable. </p>
    # @option params [String] :encryption_key
    #   <p> The encryption key for the domain. This is used to encrypt content stored in a domain.
    #         An encryption key can be a key ID, a key Amazon Resource Name (ARN), a key alias, or a key
    #         alias ARN. To specify an <code>encryptionKey</code>, your IAM role must have
    #           <code>kms:DescribeKey</code> and <code>kms:CreateGrant</code> permissions on the encryption
    #         key that is used. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax">DescribeKey</a> in the <i>Key Management Service API Reference</i>
    #         and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">Key Management Service API Permissions
    #           Reference</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #            <important>
    #               <p> CodeArtifact supports only symmetric CMKs. Do not associate an asymmetric CMK with your
    #           domain. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric
    #             keys</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #            </important>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tag key-value pairs for the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     encryption_key: "Arn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: {
    #       name: "DomainName",
    #       owner: "AccountId",
    #       arn: "Arn",
    #       status: "Active" # One of: ["Active", "Deleted"],
    #       created_time: Time.now,
    #       encryption_key: "Arn",
    #       repository_count: 1,
    #       asset_size_bytes: 1,
    #       s3_bucket_arn: "Arn"
    #     }
    #   }
    # @return [Types::CreateDomainResult]
    def create_domain(params = {}, options = {})
      request = build_request(:create_domain, params)
      request.send_request(options)
    end

    # <p>
    #       Creates a package group. For more information about creating package groups, including example CLI commands, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/create-package-group.html">Create a package group</a> in the <i>CodeArtifact User Guide</i>.
    #     </p>
    # @param [Hash, Types::CreatePackageGroupRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain in which you want to create a package group.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :package_group
    #   <p>The pattern of the package group to create. The pattern is also the identifier of the package group. </p>
    # @option params [String] :contact_info
    #   <p>
    #         The contact information for the created package group.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         A description of the package group.
    #       </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tag key-value pairs for the package group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     contact_info: "PackageGroupContactInfo",
    #     description: "Description",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_package_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_group: {
    #       arn: "Arn",
    #       pattern: "PackageGroupPattern",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       created_time: Time.now,
    #       contact_info: "PackageGroupContactInfo",
    #       description: "Description",
    #       origin_configuration: {
    #         restrictions: {
    #           "PackageGroupOriginRestrictionType" => {
    #             mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             effective_mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             inherited_from: {
    #               arn: "Arn",
    #               pattern: "PackageGroupPattern"
    #             },
    #             repositories_count: 1
    #           }
    #         }
    #       },
    #       parent: {
    #         arn: "Arn",
    #         pattern: "PackageGroupPattern"
    #       }
    #     }
    #   }
    # @return [Types::CreatePackageGroupResult]
    def create_package_group(params = {}, options = {})
      request = build_request(:create_package_group, params)
      request.send_request(options)
    end

    # <p>
    #         Creates a repository.
    #       </p>
    # @param [Hash, Types::CreateRepositoryRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the created repository.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>The name of the repository to create. </p>
    # @option params [String] :description
    #   <p>
    #         A description of the created repository.
    #       </p>
    # @option params [Array<Types::UpstreamRepository>] :upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories 
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more 
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>One or more tag key-value pairs for the repository.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     description: "Description",
    #     upstreams: [
    #       {
    #         repository_name: "RepositoryName", # required
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       name: "RepositoryName",
    #       administrator_account: "AccountId",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       arn: "Arn",
    #       description: "Description",
    #       upstreams: [
    #         {
    #           repository_name: "RepositoryName"
    #         }
    #       ],
    #       external_connections: [
    #         {
    #           external_connection_name: "ExternalConnectionName",
    #           package_format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #           status: "Available" # One of: ["Available"]
    #         }
    #       ],
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::CreateRepositoryResult]
    def create_repository(params = {}, options = {})
      request = build_request(:create_repository, params)
      request.send_request(options)
    end

    # <p>
    #          Deletes a domain. You cannot delete a domain that contains repositories. If you want to delete a domain
    #          with repositories, first delete its repositories.
    #       </p>
    # @param [Hash, Types::DeleteDomainRequest] params
    # @option params [String] :domain
    #   <p>
    #            The name of the domain to delete.
    #          </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.delete_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: {
    #       name: "DomainName",
    #       owner: "AccountId",
    #       arn: "Arn",
    #       status: "Active" # One of: ["Active", "Deleted"],
    #       created_time: Time.now,
    #       encryption_key: "Arn",
    #       repository_count: 1,
    #       asset_size_bytes: 1,
    #       s3_bucket_arn: "Arn"
    #     }
    #   }
    # @return [Types::DeleteDomainResult]
    def delete_domain(params = {}, options = {})
      request = build_request(:delete_domain, params)
      request.send_request(options)
    end

    # <p>
    #         Deletes the resource policy set on a domain.
    #       </p>
    # @param [Hash, Types::DeleteDomainPermissionsPolicyRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain associated with the resource policy to be deleted.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :policy_revision
    #   <p>
    #           The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which
    #           prevents others from overwriting your changes to the domain's resource policy.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     policy_revision: "PolicyRevision"
    #   }
    #   options = {}
    #   response = client.delete_domain_permissions_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       resource_arn: "Arn",
    #       revision: "PolicyRevision",
    #       document: "PolicyDocument"
    #     }
    #   }
    # @return [Types::DeleteDomainPermissionsPolicyResult]
    def delete_domain_permissions_policy(params = {}, options = {})
      request = build_request(:delete_domain_permissions_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a package and all associated package versions. A deleted package cannot be restored. To delete one or more package versions, use the
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DeletePackageVersions.html">DeletePackageVersions</a> API.</p>
    # @param [Hash, Types::DeletePackageRequest] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the package to delete.</p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>The name of the repository that contains the package to delete.</p>
    # @option params [String] :format
    #   <p>The format of the requested package to delete.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the package to delete. The package component that specifies its namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when deleting packages of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>The name of the package to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #   }
    #   options = {}
    #   response = client.delete_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deleted_package: {
    #       format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #       namespace: "PackageNamespace",
    #       package: "PackageName",
    #       origin_configuration: {
    #         restrictions: {
    #           publish: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #           upstream: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DeletePackageResult]
    def delete_package(params = {}, options = {})
      request = build_request(:delete_package, params)
      request.send_request(options)
    end

    # <p>Deletes a package group. 
    #       Deleting a package group does not delete packages or package versions associated with the package group. 
    #       When a package group is deleted, the direct child package groups will become children of the package 
    #       group's direct parent package group. Therefore, if any of the child groups are inheriting any settings 
    #       from the parent, those settings could change.</p>
    # @param [Hash, Types::DeletePackageGroupRequest] params
    # @option params [String] :domain
    #   <p>
    #         The domain that contains the package group to be deleted.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :package_group
    #   <p>The pattern of the package group to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_package_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_group: {
    #       arn: "Arn",
    #       pattern: "PackageGroupPattern",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       created_time: Time.now,
    #       contact_info: "PackageGroupContactInfo",
    #       description: "Description",
    #       origin_configuration: {
    #         restrictions: {
    #           "PackageGroupOriginRestrictionType" => {
    #             mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             effective_mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             inherited_from: {
    #               arn: "Arn",
    #               pattern: "PackageGroupPattern"
    #             },
    #             repositories_count: 1
    #           }
    #         }
    #       },
    #       parent: {
    #         arn: "Arn",
    #         pattern: "PackageGroupPattern"
    #       }
    #     }
    #   }
    # @return [Types::DeletePackageGroupResult]
    def delete_package_group(params = {}, options = {})
      request = build_request(:delete_package_group, params)
      request.send_request(options)
    end

    # <p> Deletes one or more versions of a package. A deleted package version cannot be restored
    #       in your repository. If you want to remove a package version from your repository and be able
    #       to restore it later, set its status to <code>Archived</code>. Archived packages cannot be
    #       downloaded from a repository and don't show up with list package APIs (for example,
    #           <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListPackageVersions</a>), but you can restore them using <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html">UpdatePackageVersionsStatus</a>. </p>
    # @param [Hash, Types::DeletePackageVersionsRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the package to delete.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #           The name of the repository that contains the package versions to delete.
    #         </p>
    # @option params [String] :format
    #   <p>
    #           The format of the package versions to delete.
    #         </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package versions to be deleted. The package component that specifies its namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when deleting package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #           The name of the package with the versions to delete.
    #         </p>
    # @option params [Array<String>] :versions
    #   <p>
    #           An array of strings that specify the versions of the package to delete.
    #         </p>
    # @option params [String] :expected_status
    #   <p>
    #           The expected status of the package version to delete.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     versions: ["PackageVersion"], # required
    #     expected_status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   }
    #   options = {}
    #   response = client.delete_package_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_versions: {
    #       "PackageVersion" => {
    #         revision: "String",
    #         status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #       }
    #     },
    #     failed_versions: {
    #       "PackageVersion" => {
    #         error_code: "ALREADY_EXISTS" # One of: ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"],
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::DeletePackageVersionsResult]
    def delete_package_versions(params = {}, options = {})
      request = build_request(:delete_package_versions, params)
      request.send_request(options)
    end

    # <p>
    #          Deletes a repository.
    #        </p>
    # @param [Hash, Types::DeleteRepositoryRequest] params
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository to delete.
    #          </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p> The name of the repository to delete. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.delete_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       name: "RepositoryName",
    #       administrator_account: "AccountId",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       arn: "Arn",
    #       description: "Description",
    #       upstreams: [
    #         {
    #           repository_name: "RepositoryName"
    #         }
    #       ],
    #       external_connections: [
    #         {
    #           external_connection_name: "ExternalConnectionName",
    #           package_format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #           status: "Available" # One of: ["Available"]
    #         }
    #       ],
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::DeleteRepositoryResult]
    def delete_repository(params = {}, options = {})
      request = build_request(:delete_repository, params)
      request.send_request(options)
    end

    # <p>
    #         Deletes the resource policy that is set on a repository. After a resource policy is deleted, the
    #         permissions allowed and denied by the deleted policy are removed. The effect of deleting a resource policy might not be immediate.
    #       </p>
    #          <important>
    #             <p>
    #          Use <code>DeleteRepositoryPermissionsPolicy</code> with caution. After a policy is deleted, Amazon Web Services users, roles, and accounts lose permissions to perform
    #          the repository actions granted by the deleted policy.
    #        </p>
    #          </important>
    # @param [Hash, Types::DeleteRepositoryPermissionsPolicyRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the repository associated with the resource policy to be deleted.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #         The name of the repository that is associated with the resource policy to be deleted
    #       </p>
    # @option params [String] :policy_revision
    #   <p>
    #         The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which
    #         prevents others from accidentally overwriting your changes to the repository's resource policy.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     policy_revision: "PolicyRevision"
    #   }
    #   options = {}
    #   response = client.delete_repository_permissions_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       resource_arn: "Arn",
    #       revision: "PolicyRevision",
    #       document: "PolicyDocument"
    #     }
    #   }
    # @return [Types::DeleteRepositoryPermissionsPolicyResult]
    def delete_repository_permissions_policy(params = {}, options = {})
      request = build_request(:delete_repository_permissions_policy, params)
      request.send_request(options)
    end

    # <p>
    #          Returns a 
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainDescription.html">DomainDescription</a> 
    #       object that contains information about the requested domain.
    #      </p>
    # @param [Hash, Types::DescribeDomainRequest] params
    # @option params [String] :domain
    #   <p>
    #            A string that specifies the name of the requested domain.
    #        </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.describe_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain: {
    #       name: "DomainName",
    #       owner: "AccountId",
    #       arn: "Arn",
    #       status: "Active" # One of: ["Active", "Deleted"],
    #       created_time: Time.now,
    #       encryption_key: "Arn",
    #       repository_count: 1,
    #       asset_size_bytes: 1,
    #       s3_bucket_arn: "Arn"
    #     }
    #   }
    # @return [Types::DescribeDomainResult]
    def describe_domain(params = {}, options = {})
      request = build_request(:describe_domain, params)
      request.send_request(options)
    end

    # <p> Returns a 
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html">PackageDescription</a> 
    #       object that contains information about the requested package.</p>
    # @param [Hash, Types::DescribePackageRequest] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the repository that contains the package.</p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>The name of the repository that contains the requested package. </p>
    # @option params [String] :format
    #   <p>A format that specifies the type of the requested package.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the requested package. The package component that specifies its namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when requesting packages of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>The name of the requested package.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #   }
    #   options = {}
    #   response = client.describe_package(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package: { # required
    #       format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #       namespace: "PackageNamespace",
    #       name: "PackageName",
    #       origin_configuration: {
    #         restrictions: {
    #           publish: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #           upstream: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribePackageResult]
    def describe_package(params = {}, options = {})
      request = build_request(:describe_package, params)
      request.send_request(options)
    end

    # <p>Returns a <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroupDescription.html">PackageGroupDescription</a> object that 
    #     contains information about the requested package group.</p>
    # @param [Hash, Types::DescribePackageGroupRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the package group. 
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :package_group
    #   <p>The pattern of the requested package group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #   }
    #   options = {}
    #   response = client.describe_package_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_group: {
    #       arn: "Arn",
    #       pattern: "PackageGroupPattern",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       created_time: Time.now,
    #       contact_info: "PackageGroupContactInfo",
    #       description: "Description",
    #       origin_configuration: {
    #         restrictions: {
    #           "PackageGroupOriginRestrictionType" => {
    #             mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             effective_mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             inherited_from: {
    #               arn: "Arn",
    #               pattern: "PackageGroupPattern"
    #             },
    #             repositories_count: 1
    #           }
    #         }
    #       },
    #       parent: {
    #         arn: "Arn",
    #         pattern: "PackageGroupPattern"
    #       }
    #     }
    #   }
    # @return [Types::DescribePackageGroupResult]
    def describe_package_group(params = {}, options = {})
      request = build_request(:describe_package_group, params)
      request.send_request(options)
    end

    # <p>
    #        Returns a 
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">PackageVersionDescription</a> 
    #        object that contains information about the requested package version.
    #      </p>
    # @param [Hash, Types::DescribePackageVersionRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p> The name of the repository that contains the package version. </p>
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of the requested package version.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the requested package version. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when requesting package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p> The name of the requested package version. </p>
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #   }
    #   options = {}
    #   response = client.describe_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_version: { # required
    #       format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #       namespace: "PackageNamespace",
    #       package_name: "PackageName",
    #       display_name: "String255",
    #       version: "PackageVersion",
    #       summary: "String",
    #       home_page: "String",
    #       source_code_repository: "String",
    #       published_time: Time.now,
    #       licenses: [
    #         {
    #           name: "String",
    #           url: "String"
    #         }
    #       ],
    #       revision: "PackageVersionRevision",
    #       status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"],
    #       origin: {
    #         domain_entry_point: {
    #           repository_name: "RepositoryName",
    #           external_connection_name: "ExternalConnectionName"
    #         },
    #         origin_type: "INTERNAL" # One of: ["INTERNAL", "EXTERNAL", "UNKNOWN"]
    #       }
    #     }
    #   }
    # @return [Types::DescribePackageVersionResult]
    def describe_package_version(params = {}, options = {})
      request = build_request(:describe_package_version, params)
      request.send_request(options)
    end

    # <p>
    #          Returns a <code>RepositoryDescription</code> object that contains detailed information 
    #         about the requested repository.
    #        </p>
    # @param [Hash, Types::DescribeRepositoryRequest] params
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository to describe.
    #          </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #           A string that specifies the name of the requested repository.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.describe_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       name: "RepositoryName",
    #       administrator_account: "AccountId",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       arn: "Arn",
    #       description: "Description",
    #       upstreams: [
    #         {
    #           repository_name: "RepositoryName"
    #         }
    #       ],
    #       external_connections: [
    #         {
    #           external_connection_name: "ExternalConnectionName",
    #           package_format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #           status: "Available" # One of: ["Available"]
    #         }
    #       ],
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::DescribeRepositoryResult]
    def describe_repository(params = {}, options = {})
      request = build_request(:describe_repository, params)
      request.send_request(options)
    end

    # <p>
    #       Removes an existing external connection from a repository.
    #     </p>
    # @param [Hash, Types::DisassociateExternalConnectionRequest] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the repository from which to remove the external
    #         repository. </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>The name of the repository from which the external connection will be removed. </p>
    # @option params [String] :external_connection
    #   <p>The name of the external connection to be removed from the repository. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     external_connection: "ExternalConnectionName", # required
    #   }
    #   options = {}
    #   response = client.disassociate_external_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       name: "RepositoryName",
    #       administrator_account: "AccountId",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       arn: "Arn",
    #       description: "Description",
    #       upstreams: [
    #         {
    #           repository_name: "RepositoryName"
    #         }
    #       ],
    #       external_connections: [
    #         {
    #           external_connection_name: "ExternalConnectionName",
    #           package_format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #           status: "Available" # One of: ["Available"]
    #         }
    #       ],
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::DisassociateExternalConnectionResult]
    def disassociate_external_connection(params = {}, options = {})
      request = build_request(:disassociate_external_connection, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes the assets in package versions and sets the package versions' status to <code>Disposed</code>.
    #       A disposed package version cannot be restored in your repository because its assets are deleted.
    #     </p>
    #          <p>
    #       To view all disposed package versions in a repository, use <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListPackageVersions</a> and set the 
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html#API_ListPackageVersions_RequestSyntax">status</a> parameter 
    #       to <code>Disposed</code>.
    #     </p>
    #          <p>
    #       To view information about a disposed package version, use <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DescribePackageVersion.html">DescribePackageVersion</a>.
    #     </p>
    # @param [Hash, Types::DisposePackageVersionsRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository you want to dispose.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #         The name of the repository that contains the package versions you want to dispose.
    #       </p>
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of package versions you want to dispose.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package versions to be disposed. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when disposing package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #         The name of the package with the versions you want to dispose.
    #       </p>
    # @option params [Array<String>] :versions
    #   <p>
    #         The versions of the package you want to dispose.
    #       </p>
    # @option params [Hash<String, String>] :version_revisions
    #   <p>
    #         The revisions of the package versions you want to dispose.
    #       </p>
    # @option params [String] :expected_status
    #   <p>
    #         The expected status of the package version to dispose.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     versions: ["PackageVersion"], # required
    #     version_revisions: {
    #       "PackageVersion" => "PackageVersionRevision"
    #     },
    #     expected_status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #   }
    #   options = {}
    #   response = client.dispose_package_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_versions: {
    #       "PackageVersion" => {
    #         revision: "String",
    #         status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #       }
    #     },
    #     failed_versions: {
    #       "PackageVersion" => {
    #         error_code: "ALREADY_EXISTS" # One of: ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"],
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::DisposePackageVersionsResult]
    def dispose_package_versions(params = {}, options = {})
      request = build_request(:dispose_package_versions, params)
      request.send_request(options)
    end

    # <p>Returns the most closely associated package group to the specified package. This API does not require that the package exist 
    #     in any repository in the domain. As such, <code>GetAssociatedPackageGroup</code> can be used to see which package group's origin configuration 
    #     applies to a package before that package is in a repository. This can be helpful to check if public packages are blocked without ingesting them.</p>
    #          <p>For information package group association and matching, see 
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html">Package group 
    #         definition syntax and matching behavior</a> in the <i>CodeArtifact User Guide</i>.</p>
    # @param [Hash, Types::GetAssociatedPackageGroupRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the package from which to get the associated package group.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :format
    #   <p>
    #         The format of the package from which to get the associated package group.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package from which to get the associated package group. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when getting associated package groups from packages of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #         The package from which to get the associated package group.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #   }
    #   options = {}
    #   response = client.get_associated_package_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_group: {
    #       arn: "Arn",
    #       pattern: "PackageGroupPattern",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       created_time: Time.now,
    #       contact_info: "PackageGroupContactInfo",
    #       description: "Description",
    #       origin_configuration: {
    #         restrictions: {
    #           "PackageGroupOriginRestrictionType" => {
    #             mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             effective_mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             inherited_from: {
    #               arn: "Arn",
    #               pattern: "PackageGroupPattern"
    #             },
    #             repositories_count: 1
    #           }
    #         }
    #       },
    #       parent: {
    #         arn: "Arn",
    #         pattern: "PackageGroupPattern"
    #       }
    #     },
    #     association_type: "STRONG" # One of: ["STRONG", "WEAK"]
    #   }
    # @return [Types::GetAssociatedPackageGroupResult]
    def get_associated_package_group(params = {}, options = {})
      request = build_request(:get_associated_package_group, params)
      request.send_request(options)
    end

    # <p>
    #         Generates a temporary authorization token for accessing repositories in the domain. 
    #         This API requires the <code>codeartifact:GetAuthorizationToken</code> and <code>sts:GetServiceBearerToken</code> permissions. 
    #         For more information about authorization tokens, see 
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/tokens-authentication.html">CodeArtifact authentication and tokens</a>.
    #       </p>
    #          <note>
    #             <p>CodeArtifact authorization tokens are valid for a period of 12 hours when created with the <code>login</code> command. 
    #          You can call <code>login</code> periodically to refresh the token. When 
    #          you create an authorization token with the <code>GetAuthorizationToken</code> API, you can set a custom authorization period, 
    #          up to a maximum of 12 hours, with the <code>durationSeconds</code> parameter.</p>
    #             <p>The authorization period begins after <code>login</code> 
    #          or <code>GetAuthorizationToken</code> is called. If <code>login</code> or <code>GetAuthorizationToken</code> is called while 
    #          assuming a role, the token lifetime is independent of the maximum session duration 
    #          of the role. For example, if you call <code>sts assume-role</code> and specify a session duration of 15 minutes, then 
    #          generate a CodeArtifact authorization token, the token will be valid for the full authorization period 
    #          even though this is longer than the 15-minute session duration.</p>
    #             <p>See 
    #          <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM Roles</a> 
    #          for more information on controlling session duration. </p>
    #          </note>
    # @param [Hash, Types::GetAuthorizationTokenRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that is in scope for the generated authorization token.
    #          </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [Integer] :duration_seconds
    #   <p>The time, in seconds, that the generated authorization token is valid. Valid values are 
    #       <code>0</code> and any number between <code>900</code> (15 minutes) and <code>43200</code> (12 hours). 
    #       A value of <code>0</code> will set the expiration of the authorization token to the same expiration of 
    #       the user's role's temporary credentials.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     duration_seconds: 1
    #   }
    #   options = {}
    #   response = client.get_authorization_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authorization_token: "String",
    #     expiration: Time.now
    #   }
    # @return [Types::GetAuthorizationTokenResult]
    def get_authorization_token(params = {}, options = {})
      request = build_request(:get_authorization_token, params)
      request.send_request(options)
    end

    # <p>
    #         Returns the resource policy attached to the specified domain.
    #       </p>
    #          <note>
    #             <p>
    #          The policy is a resource-based policy, not an identity-based policy. For more information, see
    #          <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html">Identity-based policies
    #            and resource-based policies </a> in the <i>IAM User Guide</i>.
    #        </p>
    #          </note>
    # @param [Hash, Types::GetDomainPermissionsPolicyRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain to which the resource policy is attached.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId"
    #   }
    #   options = {}
    #   response = client.get_domain_permissions_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       resource_arn: "Arn",
    #       revision: "PolicyRevision",
    #       document: "PolicyDocument"
    #     }
    #   }
    # @return [Types::GetDomainPermissionsPolicyResult]
    def get_domain_permissions_policy(params = {}, options = {})
      request = build_request(:get_domain_permissions_policy, params)
      request.send_request(options)
    end

    # <p>
    #       Returns an asset (or file) that is in a package. For example, for a Maven package version, use 
    #       <code>GetPackageVersionAsset</code> to download a <code>JAR</code> file, a <code>POM</code> file, 
    #       or any other assets in the package version.
    #     </p>
    # @param [Hash, Types::GetPackageVersionAssetRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version with the requested asset.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #         The repository that contains the package version with the requested asset.
    #       </p>
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of the package version with the requested asset file.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package version with the requested asset file. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when requesting assets from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #         The name of the package that contains the requested asset.
    #       </p>
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    # @option params [String] :asset
    #   <p>
    #         The name of the requested asset.
    #       </p>
    # @option params [String] :package_version_revision
    #   <p>
    #           The name of the package version revision that contains the requested asset.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #     asset: "AssetName", # required
    #     package_version_revision: "PackageVersionRevision"
    #   }
    #   options = {}
    #   response = client.get_package_version_asset(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     asset: File.read("source_file"),
    #     asset_name: "AssetName",
    #     package_version: "PackageVersion",
    #     package_version_revision: "PackageVersionRevision"
    #   }
    # @return [Types::GetPackageVersionAssetResult]
    def get_package_version_asset(params = {}, options = {})
      request = build_request(:get_package_version_asset, params)
      request.send_request(options)
    end

    # <p>
    #          Gets the readme file or descriptive text for a package version.
    #       </p>
    #          <p>
    #        The returned text might contain formatting. For example, it might contain formatting for Markdown or reStructuredText.
    #      </p>
    # @param [Hash, Types::GetPackageVersionReadmeRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version with the requested readme file.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #         The repository that contains the package with the requested readme file.
    #       </p>
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of the package version with the requested readme file.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package version with the requested readme file. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when requesting the readme from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #         The name of the package version that contains the requested readme file.
    #       </p>
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #   }
    #   options = {}
    #   response = client.get_package_version_readme(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #     namespace: "PackageNamespace",
    #     package: "PackageName",
    #     version: "PackageVersion",
    #     version_revision: "PackageVersionRevision",
    #     readme: "String"
    #   }
    # @return [Types::GetPackageVersionReadmeResult]
    def get_package_version_readme(params = {}, options = {})
      request = build_request(:get_package_version_readme, params)
      request.send_request(options)
    end

    # <p>
    #       Returns the endpoint of a repository for a specific package format. A repository has one endpoint for each 
    #       package format:
    #     </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>cargo</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>generic</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>maven</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>npm</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>nuget</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>pypi</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ruby</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>swift</code>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::GetRepositoryEndpointRequest] params
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository.
    #        </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #            The name of the repository.
    #        </p>
    # @option params [String] :format
    #   <p>
    #         Returns which endpoint of a repository to return. A repository has one endpoint for each 
    #         package format.
    #       </p>
    # @option params [String] :endpoint_type
    #   <p>A string that specifies the type of endpoint.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     endpoint_type: "dualstack" # One of: ["dualstack", "ipv4"]
    #   }
    #   options = {}
    #   response = client.get_repository_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository_endpoint: "String"
    #   }
    # @return [Types::GetRepositoryEndpointResult]
    def get_repository_endpoint(params = {}, options = {})
      request = build_request(:get_repository_endpoint, params)
      request.send_request(options)
    end

    # <p>
    #         Returns the resource policy that is set on a repository.
    #       </p>
    # @param [Hash, Types::GetRepositoryPermissionsPolicyRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain containing the repository whose associated resource policy is to be retrieved.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #           The name of the repository whose associated resource policy is to be retrieved.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #   }
    #   options = {}
    #   response = client.get_repository_permissions_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       resource_arn: "Arn",
    #       revision: "PolicyRevision",
    #       document: "PolicyDocument"
    #     }
    #   }
    # @return [Types::GetRepositoryPermissionsPolicyResult]
    def get_repository_permissions_policy(params = {}, options = {})
      request = build_request(:get_repository_permissions_policy, params)
      request.send_request(options)
    end

    # <p>Lists the repositories in the added repositories list of the specified restriction type for a package group. For more information about restriction types 
    #       and added repository lists, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html">Package group origin controls</a> in the <i>CodeArtifact User Guide</i>.
    #     </p>
    # @param [Hash, Types::ListAllowedRepositoriesForGroupRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the package group from which to list allowed repositories.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :package_group
    #   <p>The pattern of the package group from which to list allowed repositories.</p>
    # @option params [String] :origin_restriction_type
    #   <p>The origin configuration restriction type of which to list allowed repositories.</p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     origin_restriction_type: "EXTERNAL_UPSTREAM" # One of: ["EXTERNAL_UPSTREAM", "INTERNAL_UPSTREAM", "PUBLISH"], # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_allowed_repositories_for_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     allowed_repositories: ["RepositoryName"],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAllowedRepositoriesForGroupResult]
    def list_allowed_repositories_for_group(params = {}, options = {})
      request = build_request(:list_allowed_repositories_for_group, params)
      request.send_request(options)
    end

    # <p>Returns a list of packages associated with the requested package group. For information package group association and matching, see 
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html">Package group 
    #         definition syntax and matching behavior</a> in the <i>CodeArtifact User Guide</i>.</p>
    # @param [Hash, Types::ListAssociatedPackagesRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the package group from which to list associated packages.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :package_group
    #   <p>
    #         The pattern of the package group from which to list associated packages.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @option params [Boolean] :preview
    #   <p>
    #         When this flag is included, <code>ListAssociatedPackages</code> will return a list of packages that would be associated with a package 
    #         group, even if it does not exist.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     preview: false
    #   }
    #   options = {}
    #   response = client.list_associated_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     packages: [
    #       {
    #         format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #         namespace: "PackageNamespace",
    #         package: "PackageName",
    #         association_type: "STRONG" # One of: ["STRONG", "WEAK"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListAssociatedPackagesResult]
    def list_associated_packages(params = {}, options = {})
      request = build_request(:list_associated_packages, params)
      request.send_request(options)
    end

    # <p> Returns a list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">DomainSummary</a> objects for all domains owned by the Amazon Web Services account that makes
    #       this call. Each returned <code>DomainSummary</code> object contains information about a
    #       domain. </p>
    # @param [Hash, Types::ListDomainsRequest] params
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domains: [
    #       {
    #         name: "DomainName",
    #         owner: "AccountId",
    #         arn: "Arn",
    #         status: "Active" # One of: ["Active", "Deleted"],
    #         created_time: Time.now,
    #         encryption_key: "Arn"
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListDomainsResult]
    def list_domains(params = {}, options = {})
      request = build_request(:list_domains, params)
      request.send_request(options)
    end

    # <p>Returns a list of package groups in the requested domain.</p>
    # @param [Hash, Types::ListPackageGroupsRequest] params
    # @option params [String] :domain
    #   <p>
    #         The domain for which you want to list package groups.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @option params [String] :prefix
    #   <p>
    #         A prefix for which to search package groups. When included, <code>ListPackageGroups</code> will return only
    #         package groups with patterns that match the prefix.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     prefix: "PackageGroupPatternPrefix"
    #   }
    #   options = {}
    #   response = client.list_package_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_groups: [
    #       {
    #         arn: "Arn",
    #         pattern: "PackageGroupPattern",
    #         domain_name: "DomainName",
    #         domain_owner: "AccountId",
    #         created_time: Time.now,
    #         contact_info: "PackageGroupContactInfo",
    #         description: "Description",
    #         origin_configuration: {
    #           restrictions: {
    #             "PackageGroupOriginRestrictionType" => {
    #               mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #               effective_mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #               inherited_from: {
    #                 arn: "Arn",
    #                 pattern: "PackageGroupPattern"
    #               },
    #               repositories_count: 1
    #             }
    #           }
    #         },
    #         parent: {
    #           arn: "Arn",
    #           pattern: "PackageGroupPattern"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPackageGroupsResult]
    def list_package_groups(params = {}, options = {})
      request = build_request(:list_package_groups, params)
      request.send_request(options)
    end

    # <p>
    #        Returns a list of 
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html">AssetSummary</a> 
    #        objects for assets in a package version.
    #      </p>
    # @param [Hash, Types::ListPackageVersionAssetsRequest] params
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository associated with the package version assets.
    #          </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #         The name of the repository that contains the package that contains the requested package version assets.
    #       </p>
    # @option params [String] :format
    #   <p>
    #         The format of the package that contains the requested package version assets.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package version that contains the requested package version assets. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required requesting assets from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #            The name of the package that contains the requested package version assets.
    #          </p>
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_package_version_assets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #     namespace: "PackageNamespace",
    #     package: "PackageName",
    #     version: "PackageVersion",
    #     version_revision: "PackageVersionRevision",
    #     next_token: "PaginationToken",
    #     assets: [
    #       {
    #         name: "AssetName", # required
    #         size: 1,
    #         hashes: {
    #           "HashAlgorithm" => "HashValue"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListPackageVersionAssetsResult]
    def list_package_version_assets(params = {}, options = {})
      request = build_request(:list_package_version_assets, params)
      request.send_request(options)
    end

    # <p>
    #          Returns the direct dependencies for a package version. The dependencies are returned as 
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html">PackageDependency</a> 
    #           objects. CodeArtifact extracts the dependencies for a package version from the metadata file for the package 
    #           format (for example, the <code>package.json</code> file for npm packages and the <code>pom.xml</code> file 
    #         for Maven). Any package version dependencies that are not listed in the configuration file are not returned.
    #       </p>
    # @param [Hash, Types::ListPackageVersionDependenciesRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the requested package version dependencies.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #         The name of the repository that contains the requested package version.
    #       </p>
    # @option params [String] :format
    #   <p>
    #         The format of the package with the requested dependencies.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package version with the requested dependencies. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when listing dependencies from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python and NuGet package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #         The name of the package versions' package.
    #       </p>
    # @option params [String] :package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_package_version_dependencies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #     namespace: "PackageNamespace",
    #     package: "PackageName",
    #     version: "PackageVersion",
    #     version_revision: "PackageVersionRevision",
    #     next_token: "PaginationToken",
    #     dependencies: [
    #       {
    #         namespace: "PackageNamespace",
    #         package: "PackageName",
    #         dependency_type: "String",
    #         version_requirement: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListPackageVersionDependenciesResult]
    def list_package_version_dependencies(params = {}, options = {})
      request = build_request(:list_package_version_dependencies, params)
      request.send_request(options)
    end

    # <p>
    #         Returns a list of 
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html">PackageVersionSummary</a> 
    #         objects for package versions in a repository that match the request parameters. Package versions of all statuses will be returned by default when calling <code>list-package-versions</code> with no  <code>--status</code> parameter.
    #       </p>
    # @param [Hash, Types::ListPackageVersionsRequest] params
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the repository that contains the requested package versions.
    #          </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #            The name of the repository that contains the requested package versions.
    #          </p>
    # @option params [String] :format
    #   <p>
    #         The format of the package versions you want to list.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package that contains the requested package versions. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when deleting package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #         The name of the package for which you want to request package versions.
    #       </p>
    # @option params [String] :status
    #   <p>
    #         A string that filters the requested package versions by status.
    #       </p>
    # @option params [String] :sort_by
    #   <p>
    #         How to sort the requested list of package versions.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @option params [String] :origin_type
    #   <p>The <code>originType</code> used to filter package versions. 
    #         Only package versions with the provided <code>originType</code> will be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"],
    #     sort_by: "PUBLISHED_TIME" # One of: ["PUBLISHED_TIME"],
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     origin_type: "INTERNAL" # One of: ["INTERNAL", "EXTERNAL", "UNKNOWN"]
    #   }
    #   options = {}
    #   response = client.list_package_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     default_display_version: "PackageVersion",
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #     namespace: "PackageNamespace",
    #     package: "PackageName",
    #     versions: [
    #       {
    #         version: "PackageVersion", # required
    #         revision: "PackageVersionRevision",
    #         status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"], # required
    #         origin: {
    #           domain_entry_point: {
    #             repository_name: "RepositoryName",
    #             external_connection_name: "ExternalConnectionName"
    #           },
    #           origin_type: "INTERNAL" # One of: ["INTERNAL", "EXTERNAL", "UNKNOWN"]
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPackageVersionsResult]
    def list_package_versions(params = {}, options = {})
      request = build_request(:list_package_versions, params)
      request.send_request(options)
    end

    # <p>
    #         Returns a list of 
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html">PackageSummary</a> 
    #         objects for packages in a repository that match the request parameters.
    #       </p>
    # @param [Hash, Types::ListPackagesRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain that contains the repository that contains the requested packages.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #            The name of the repository that contains the requested packages.
    #          </p>
    # @option params [String] :format
    #   <p>The format used to filter requested packages. Only packages from the provided format will be returned.</p>
    # @option params [String] :namespace
    #   <p>The namespace prefix used to filter requested packages. 
    #         Only packages with a namespace that starts with the provided string value are returned. 
    #         Note that although this option is called <code>--namespace</code> and not <code>--namespace-prefix</code>, it has prefix-matching behavior.</p>
    #            <p>Each package format uses namespace as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package_prefix
    #   <p>
    #         A prefix used to filter requested packages. Only packages with names that start with 
    #         <code>packagePrefix</code> are returned.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @option params [String] :publish
    #   <p>The value of the <code>Publish</code> package origin control restriction used to filter requested packages. 
    #         Only packages with the provided restriction are returned. 
    #         For more information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>.</p>
    # @option params [String] :upstream
    #   <p>The value of the <code>Upstream</code> package origin control restriction used to filter requested packages. 
    #         Only packages with the provided restriction are returned. For more information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #     namespace: "PackageNamespace",
    #     package_prefix: "PackageName",
    #     max_results: 1,
    #     next_token: "PaginationToken",
    #     publish: "ALLOW" # One of: ["ALLOW", "BLOCK"],
    #     upstream: "ALLOW" # One of: ["ALLOW", "BLOCK"]
    #   }
    #   options = {}
    #   response = client.list_packages(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     packages: [
    #       {
    #         format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #         namespace: "PackageNamespace",
    #         package: "PackageName",
    #         origin_configuration: {
    #           restrictions: {
    #             publish: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #             upstream: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPackagesResult]
    def list_packages(params = {}, options = {})
      request = build_request(:list_packages, params)
      request.send_request(options)
    end

    # <p>
    #        Returns a list of 
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html">RepositorySummary</a> 
    #        objects. Each <code>RepositorySummary</code> contains information about a repository in the specified Amazon Web Services account and that matches the input 
    #        parameters.
    #      </p>
    # @param [Hash, Types::ListRepositoriesRequest] params
    # @option params [String] :repository_prefix
    #   <p> A prefix used to filter returned repositories. Only repositories with names that start
    #         with <code>repositoryPrefix</code> are returned.</p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     repository_prefix: "RepositoryName",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_repositories(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repositories: [
    #       {
    #         name: "RepositoryName",
    #         administrator_account: "AccountId",
    #         domain_name: "DomainName",
    #         domain_owner: "AccountId",
    #         arn: "Arn",
    #         description: "Description",
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRepositoriesResult]
    def list_repositories(params = {}, options = {})
      request = build_request(:list_repositories, params)
      request.send_request(options)
    end

    # <p>
    #        Returns a list of 
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html">RepositorySummary</a> 
    #        objects. Each <code>RepositorySummary</code> contains information about a repository in the specified domain and that matches the input 
    #        parameters.
    #      </p>
    # @param [Hash, Types::ListRepositoriesInDomainRequest] params
    # @option params [String] :domain
    #   <p>
    #            The name of the domain that contains the returned list of repositories.
    #          </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :administrator_account
    #   <p>
    #            Filter the list of repositories to only include those that are managed by the Amazon Web Services account ID.
    #          </p>
    # @option params [String] :repository_prefix
    #   <p>
    #         A prefix used to filter returned repositories. Only repositories with names that start with 
    #         <code>repositoryPrefix</code> are returned.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     administrator_account: "AccountId",
    #     repository_prefix: "RepositoryName",
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_repositories_in_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repositories: [
    #       {
    #         name: "RepositoryName",
    #         administrator_account: "AccountId",
    #         domain_name: "DomainName",
    #         domain_owner: "AccountId",
    #         arn: "Arn",
    #         description: "Description",
    #         created_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRepositoriesInDomainResult]
    def list_repositories_in_domain(params = {}, options = {})
      request = build_request(:list_repositories_in_domain, params)
      request.send_request(options)
    end

    # <p>Returns a list of direct children of the specified package group.</p>
    #          <p>For information package group hierarchy, see 
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html">Package group 
    #         definition syntax and matching behavior</a> in the <i>CodeArtifact User Guide</i>.</p>
    # @param [Hash, Types::ListSubPackageGroupsRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain which contains the package group from which to list sub package groups.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :package_group
    #   <p>
    #         The pattern of the package group from which to list sub package groups.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    # @option params [String] :next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     max_results: 1,
    #     next_token: "PaginationToken"
    #   }
    #   options = {}
    #   response = client.list_sub_package_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_groups: [
    #       {
    #         arn: "Arn",
    #         pattern: "PackageGroupPattern",
    #         domain_name: "DomainName",
    #         domain_owner: "AccountId",
    #         created_time: Time.now,
    #         contact_info: "PackageGroupContactInfo",
    #         description: "Description",
    #         origin_configuration: {
    #           restrictions: {
    #             "PackageGroupOriginRestrictionType" => {
    #               mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #               effective_mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #               inherited_from: {
    #                 arn: "Arn",
    #                 pattern: "PackageGroupPattern"
    #               },
    #               repositories_count: 1
    #             }
    #           }
    #         },
    #         parent: {
    #           arn: "Arn",
    #           pattern: "PackageGroupPattern"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListSubPackageGroupsResult]
    def list_sub_package_groups(params = {}, options = {})
      request = build_request(:list_sub_package_groups, params)
      request.send_request(options)
    end

    # <p>Gets information about Amazon Web Services tags for a specified Amazon Resource Name (ARN) in CodeArtifact.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates a new package version containing one or more assets (or files).</p>
    #          <p>The <code>unfinished</code> flag can be used to keep the package version in the
    #       <code>Unfinished</code> state until all of its assets have been uploaded (see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status">Package version status</a> in the <i>CodeArtifact user guide</i>). To set
    #       the package version’s status to <code>Published</code>, omit the <code>unfinished</code> flag
    #       when uploading the final asset, or set the status using <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageVersionsStatus.html">UpdatePackageVersionStatus</a>. Once a package version’s status is set to
    #       <code>Published</code>, it cannot change back to <code>Unfinished</code>.</p>
    #          <note>
    #             <p>Only generic packages can be published using this API. For more information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html">Using generic
    #       packages</a> in the <i>CodeArtifact User Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::PublishPackageVersionRequest] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the repository that contains the package version to publish.</p>
    # @option params [String] :domain_owner
    #   <p>The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces.</p>
    # @option params [String] :repository
    #   <p>The name of the repository that the package version will be published to.</p>
    # @option params [String] :format
    #   <p>A format that specifies the type of the package version with the requested asset file.</p>
    #            <p>The only supported value is <code>generic</code>.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the package version to publish.</p>
    # @option params [String] :package
    #   <p>The name of the package version to publish.</p>
    # @option params [String] :package_version
    #   <p>The package version to publish (for example, <code>3.5.2</code>).</p>
    # @option params [String] :asset_content
    #   <p>The content of the asset to publish.</p>
    # @option params [String] :asset_name
    #   <p>The name of the asset to publish. Asset names can include Unicode letters and numbers, and
    #         the following special characters: <code>~ ! @ ^ & ( ) - ` _ + [ ] { } ; , .
    #           `</code>
    #            </p>
    # @option params [String] :asset_sha256
    #   <p>The SHA256 hash of the <code>assetContent</code> to publish. This value must be calculated
    #         by the caller and provided with the request (see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html#publishing-generic-packages">Publishing a generic package</a> in the <i>CodeArtifact User
    #             Guide</i>).</p>
    #            <p>This value is used as an integrity check to verify that the <code>assetContent</code> has
    #         not changed after it was originally sent.</p>
    # @option params [Boolean] :unfinished
    #   <p>Specifies whether the package version should remain in the <code>unfinished</code>
    #         state. If omitted, the package version status will be set to <code>Published</code> (see
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status">Package version status</a> in the <i>CodeArtifact User Guide</i>).</p>
    #            <p>Valid values: <code>unfinished</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     package_version: "PackageVersion", # required
    #     asset_content: File.read("source_file"), # required
    #     asset_name: "AssetName", # required
    #     asset_sha256: "SHA256", # required
    #     unfinished: false
    #   }
    #   options = {}
    #   response = client.publish_package_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #     namespace: "PackageNamespace",
    #     package: "PackageName",
    #     version: "PackageVersion",
    #     version_revision: "PackageVersionRevision",
    #     status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"],
    #     asset: {
    #       name: "AssetName", # required
    #       size: 1,
    #       hashes: {
    #         "HashAlgorithm" => "HashValue"
    #       }
    #     }
    #   }
    # @return [Types::PublishPackageVersionResult]
    def publish_package_version(params = {}, options = {})
      request = build_request(:publish_package_version, params)
      request.send_request(options)
    end

    # <p>
    #         Sets a resource policy on a domain that specifies permissions to access it.
    #       </p>
    #          <p>
    #        When you call <code>PutDomainPermissionsPolicy</code>, the resource policy on the domain is ignored when evaluting permissions. 
    #        This ensures that the owner of a domain cannot lock themselves out of the domain, which would prevent them from being 
    #        able to update the resource policy.
    #      </p>
    # @param [Hash, Types::PutDomainPermissionsPolicyRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain on which to set the resource policy.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :policy_revision
    #   <p>
    #           The current revision of the resource policy to be set. This revision is used for optimistic locking, which
    #           prevents others from overwriting your changes to the domain's resource policy.
    #         </p>
    # @option params [String] :policy_document
    #   <p> A valid displayable JSON Aspen policy string to be set as the access control resource
    #         policy on the provided domain. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     policy_revision: "PolicyRevision",
    #     policy_document: "PolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_domain_permissions_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       resource_arn: "Arn",
    #       revision: "PolicyRevision",
    #       document: "PolicyDocument"
    #     }
    #   }
    # @return [Types::PutDomainPermissionsPolicyResult]
    def put_domain_permissions_policy(params = {}, options = {})
      request = build_request(:put_domain_permissions_policy, params)
      request.send_request(options)
    end

    # <p>Sets the package origin configuration for a package.</p>
    #          <p>The package origin configuration determines how new versions of a package can be added to a repository. You can allow or block direct 
    #     publishing of new package versions, or ingestion and retaining of new package versions from an external connection or upstream source. 
    #     For more information about package origin controls and configuration, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/package-origin-controls.html">Editing package origin controls</a> in the <i>CodeArtifact User Guide</i>.</p>
    #          <p>
    #             <code>PutPackageOriginConfiguration</code> can be called on a package that doesn't yet exist in the repository. When called 
    #       on a package that does not exist, a package is created in the repository with no versions and the requested restrictions are set on the package. 
    #       This can be used to preemptively block ingesting or retaining any versions from external connections or upstream repositories, or to block 
    #       publishing any versions of the package into the repository before connecting any package managers or publishers to the repository.</p>
    # @param [Hash, Types::PutPackageOriginConfigurationRequest] params
    # @option params [String] :domain
    #   <p>The name of the domain that contains the repository that contains the package.</p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>The name of the repository that contains the package.</p>
    # @option params [String] :format
    #   <p>A format that specifies the type of the package to be updated.</p>
    # @option params [String] :namespace
    #   <p>The namespace of the package to be updated. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>The name of the package to be updated.</p>
    # @option params [Types::PackageOriginRestrictions] :restrictions
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a> 
    #         object that contains information about the <code>upstream</code> and <code>publish</code> package origin restrictions. 
    #         The <code>upstream</code> restriction determines if new package versions can be ingested or retained from external connections or upstream repositories. 
    #       The <code>publish</code> restriction determines if new package versions can be published directly to the repository.</p>
    #            <p>You must include both the desired <code>upstream</code> and <code>publish</code> restrictions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     restrictions: { # required
    #       publish: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #       upstream: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_package_origin_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origin_configuration: {
    #       restrictions: {
    #         publish: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #         upstream: "ALLOW" # One of: ["ALLOW", "BLOCK"], # required
    #       }
    #     }
    #   }
    # @return [Types::PutPackageOriginConfigurationResult]
    def put_package_origin_configuration(params = {}, options = {})
      request = build_request(:put_package_origin_configuration, params)
      request.send_request(options)
    end

    # <p>
    #         Sets the resource policy on a repository that specifies permissions to access it.
    #       </p>
    #          <p>
    #        When you call <code>PutRepositoryPermissionsPolicy</code>, the resource policy on the repository is ignored when evaluting permissions. 
    #        This ensures that the owner of a repository cannot lock themselves out of the repository, which would prevent them from being 
    #        able to update the resource policy.
    #      </p>
    # @param [Hash, Types::PutRepositoryPermissionsPolicyRequest] params
    # @option params [String] :domain
    #   <p>
    #           The name of the domain containing the repository to set the resource policy on.
    #         </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p> The name of the repository to set the resource policy on. </p>
    # @option params [String] :policy_revision
    #   <p>
    #           Sets the revision of the resource policy that specifies permissions to access the repository. 
    #           This revision is used for optimistic locking, which prevents others from overwriting your 
    #           changes to the repository's resource policy.
    #         </p>
    # @option params [String] :policy_document
    #   <p> A valid displayable JSON Aspen policy string to be set as the access control resource
    #         policy on the provided repository. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     policy_revision: "PolicyRevision",
    #     policy_document: "PolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_repository_permissions_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: {
    #       resource_arn: "Arn",
    #       revision: "PolicyRevision",
    #       document: "PolicyDocument"
    #     }
    #   }
    # @return [Types::PutRepositoryPermissionsPolicyResult]
    def put_repository_permissions_policy(params = {}, options = {})
      request = build_request(:put_repository_permissions_policy, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for a resource in CodeArtifact.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags you want to modify or add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResult]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from a resource in CodeArtifact.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResult]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a package group. This API cannot be used to update a package group's origin configuration or pattern. To update a 
    #       package group's origin configuration, use <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdatePackageGroupOriginConfiguration.html">UpdatePackageGroupOriginConfiguration</a>.</p>
    # @param [Hash, Types::UpdatePackageGroupRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain which contains the package group to be updated.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :package_group
    #   <p>
    #         The pattern of the package group to be updated.
    #       </p>
    # @option params [String] :contact_info
    #   <p>
    #         Contact information which you want to update the requested package group with.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         The description you want to update the requested package group with.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     contact_info: "PackageGroupContactInfo",
    #     description: "Description"
    #   }
    #   options = {}
    #   response = client.update_package_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_group: {
    #       arn: "Arn",
    #       pattern: "PackageGroupPattern",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       created_time: Time.now,
    #       contact_info: "PackageGroupContactInfo",
    #       description: "Description",
    #       origin_configuration: {
    #         restrictions: {
    #           "PackageGroupOriginRestrictionType" => {
    #             mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             effective_mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             inherited_from: {
    #               arn: "Arn",
    #               pattern: "PackageGroupPattern"
    #             },
    #             repositories_count: 1
    #           }
    #         }
    #       },
    #       parent: {
    #         arn: "Arn",
    #         pattern: "PackageGroupPattern"
    #       }
    #     }
    #   }
    # @return [Types::UpdatePackageGroupResult]
    def update_package_group(params = {}, options = {})
      request = build_request(:update_package_group, params)
      request.send_request(options)
    end

    # <p>Updates the package origin configuration for a package group.</p>
    #          <p>The package origin configuration determines how new versions of a package can be added to a repository. You can allow or block direct 
    #       publishing of new package versions, or ingestion and retaining of new package versions from an external connection or upstream source. 
    #       For more information about package group origin controls and configuration, see 
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-origin-controls.html">Package group origin controls</a> 
    #       in the <i>CodeArtifact User Guide</i>.</p>
    # @param [Hash, Types::UpdatePackageGroupOriginConfigurationRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain which contains the package group for which to update the origin configuration.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :package_group
    #   <p>
    #         The pattern of the package group for which to update the origin configuration.
    #       </p>
    # @option params [Hash<String, String>] :restrictions
    #   <p>
    #           The origin configuration settings that determine how package versions can enter repositories.
    #         </p>
    # @option params [Array<Types::PackageGroupAllowedRepository>] :add_allowed_repositories
    #   <p>The repository name and restrictions to add to the allowed repository list of the specified package group.</p>
    # @option params [Array<Types::PackageGroupAllowedRepository>] :remove_allowed_repositories
    #   <p>The repository name and restrictions to remove from the allowed repository list of the specified package group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     package_group: "PackageGroupPattern", # required
    #     restrictions: {
    #       "PackageGroupOriginRestrictionType" => "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"]
    #     },
    #     add_allowed_repositories: [
    #       {
    #         repository_name: "RepositoryName",
    #         origin_restriction_type: "EXTERNAL_UPSTREAM" # One of: ["EXTERNAL_UPSTREAM", "INTERNAL_UPSTREAM", "PUBLISH"]
    #       }
    #     ],
    #     remove_allowed_repositories: [
    #       {
    #         repository_name: "RepositoryName",
    #         origin_restriction_type: "EXTERNAL_UPSTREAM" # One of: ["EXTERNAL_UPSTREAM", "INTERNAL_UPSTREAM", "PUBLISH"]
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_package_group_origin_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     package_group: {
    #       arn: "Arn",
    #       pattern: "PackageGroupPattern",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       created_time: Time.now,
    #       contact_info: "PackageGroupContactInfo",
    #       description: "Description",
    #       origin_configuration: {
    #         restrictions: {
    #           "PackageGroupOriginRestrictionType" => {
    #             mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             effective_mode: "ALLOW" # One of: ["ALLOW", "ALLOW_SPECIFIC_REPOSITORIES", "BLOCK", "INHERIT"],
    #             inherited_from: {
    #               arn: "Arn",
    #               pattern: "PackageGroupPattern"
    #             },
    #             repositories_count: 1
    #           }
    #         }
    #       },
    #       parent: {
    #         arn: "Arn",
    #         pattern: "PackageGroupPattern"
    #       }
    #     },
    #     allowed_repository_updates: {
    #       "PackageGroupOriginRestrictionType" => {
    #         "PackageGroupAllowedRepositoryUpdateType" => ["RepositoryName"]
    #       }
    #     }
    #   }
    # @return [Types::UpdatePackageGroupOriginConfigurationResult]
    def update_package_group_origin_configuration(params = {}, options = {})
      request = build_request(:update_package_group_origin_configuration, params)
      request.send_request(options)
    end

    # <p>
    #       Updates the status of one or more versions of a package. Using <code>UpdatePackageVersionsStatus</code>, 
    #       you can update the status of package versions to <code>Archived</code>, <code>Published</code>, or <code>Unlisted</code>. 
    #       To set the status of a package version to <code>Disposed</code>, use 
    #       <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DisposePackageVersions.html">DisposePackageVersions</a>.
    #     </p>
    # @param [Hash, Types::UpdatePackageVersionsStatusRequest] params
    # @option params [String] :domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package versions with a status to be updated.
    #       </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #         The repository that contains the package versions with the status you want to update. 
    #       </p>
    # @option params [String] :format
    #   <p>
    #         A format that specifies the type of the package with the statuses to update.
    #       </p>
    # @option params [String] :namespace
    #   <p>The namespace of the package version to be updated. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    # @option params [String] :package
    #   <p>
    #         The name of the package with the version statuses to update.
    #       </p>
    # @option params [Array<String>] :versions
    #   <p>
    #         An array of strings that specify the versions of the package with the statuses to update.
    #       </p>
    # @option params [Hash<String, String>] :version_revisions
    #   <p> A map of package versions and package version revisions. The map <code>key</code> is the
    #         package version (for example, <code>3.5.2</code>), and the map <code>value</code> is the
    #         package version revision. </p>
    # @option params [String] :expected_status
    #   <p> The package version’s expected status before it is updated. If
    #           <code>expectedStatus</code> is provided, the package version's status is updated only if its
    #         status at the time <code>UpdatePackageVersionsStatus</code> is called matches
    #           <code>expectedStatus</code>. </p>
    # @option params [String] :target_status
    #   <p>
    #         The status you want to change the package version status to.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"], # required
    #     namespace: "PackageNamespace",
    #     package: "PackageName", # required
    #     versions: ["PackageVersion"], # required
    #     version_revisions: {
    #       "PackageVersion" => "PackageVersionRevision"
    #     },
    #     expected_status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"],
    #     target_status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"], # required
    #   }
    #   options = {}
    #   response = client.update_package_versions_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful_versions: {
    #       "PackageVersion" => {
    #         revision: "String",
    #         status: "Published" # One of: ["Published", "Unfinished", "Unlisted", "Archived", "Disposed", "Deleted"]
    #       }
    #     },
    #     failed_versions: {
    #       "PackageVersion" => {
    #         error_code: "ALREADY_EXISTS" # One of: ["ALREADY_EXISTS", "MISMATCHED_REVISION", "MISMATCHED_STATUS", "NOT_ALLOWED", "NOT_FOUND", "SKIPPED"],
    #         error_message: "ErrorMessage"
    #       }
    #     }
    #   }
    # @return [Types::UpdatePackageVersionsStatusResult]
    def update_package_versions_status(params = {}, options = {})
      request = build_request(:update_package_versions_status, params)
      request.send_request(options)
    end

    # <p>
    #          Update the properties of a repository.
    #        </p>
    # @param [Hash, Types::UpdateRepositoryRequest] params
    # @option params [String] :domain
    #   <p>
    #            The name of the domain associated with the repository to update.
    #          </p>
    # @option params [String] :domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    # @option params [String] :repository
    #   <p>
    #            The name of the repository to update.
    #          </p>
    # @option params [String] :description
    #   <p>
    #            An updated repository description.
    #          </p>
    # @option params [Array<Types::UpstreamRepository>] :upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories 
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more 
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainName", # required
    #     domain_owner: "AccountId",
    #     repository: "RepositoryName", # required
    #     description: "Description",
    #     upstreams: [
    #       {
    #         repository_name: "RepositoryName", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_repository(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     repository: {
    #       name: "RepositoryName",
    #       administrator_account: "AccountId",
    #       domain_name: "DomainName",
    #       domain_owner: "AccountId",
    #       arn: "Arn",
    #       description: "Description",
    #       upstreams: [
    #         {
    #           repository_name: "RepositoryName"
    #         }
    #       ],
    #       external_connections: [
    #         {
    #           external_connection_name: "ExternalConnectionName",
    #           package_format: "npm" # One of: ["npm", "pypi", "maven", "nuget", "generic", "ruby", "swift", "cargo"],
    #           status: "Available" # One of: ["Available"]
    #         }
    #       ],
    #       created_time: Time.now
    #     }
    #   }
    # @return [Types::UpdateRepositoryResult]
    def update_repository(params = {}, options = {})
      request = build_request(:update_repository, params)
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
      context[:gem_name] = 'aws-sdk-codeartifact'
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
