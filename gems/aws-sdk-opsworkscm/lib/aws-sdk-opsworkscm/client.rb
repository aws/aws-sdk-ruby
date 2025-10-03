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
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::OpsWorksCM
  # An API client for Aws::OpsWorksCM.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::OpsWorksCMV20161101

    add_plugin(::Aws::OpsWorksCM::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
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
    #  Custom Endpoint
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::OpsWorksCM::EndpointProvider)
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

    # <p> Associates a new node with the server. For more information about how to disassociate a node, see <a>DisassociateNode</a>.</p>
    #          <p>
    #       On a Chef server: This command is an alternative to  <code>knife bootstrap</code>.</p>
    #          <p>
    #         Example (Chef): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>CHEF_ORGANIZATION</i>,Value=default" "Name=<i>CHEF_AUTOMATE_NODE_PUBLIC_KEY</i>,Value=<i>public-key-pem</i>"</code>
    #          </p>
    #          <p>
    #       On a Puppet server, this command is an alternative to the <code>puppet cert sign</code> command that signs a Puppet node CSR.
    #     </p>
    #          <p>
    #         Example (Puppet): <code>aws opsworks-cm associate-node --server-name <i>MyServer</i> --node-name <i>MyManagedNode</i> --engine-attributes "Name=<i>PUPPET_NODE_CSR</i>,Value=<i>csr-pem</i>"</code>
    #          </p>
    #          <p>
    #       A node can can only be associated with servers that are in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #       The AssociateNode API call can be integrated into Auto Scaling configurations, CloudFormation templates, or the user data 
    #       of a server's instance.
    #     </p>
    # @param [Hash, Types::AssociateNodeRequest] params
    # @option params [String] :server_name
    #   <p>The name of the server with which to associate the node.
    #       </p>
    # @option params [String] :node_name
    #   <p>The name of the node.
    #       </p>
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   <p>Engine attributes used for associating the node.
    #       </p>
    #            <p class="title">
    #               <b>Attributes accepted in a AssociateNode request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_ORGANIZATION</code>: The Chef organization
    #             with which the node is associated. By default only one organization
    #             named <code>default</code> can exist.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_NODE_PUBLIC_KEY</code>: A PEM-formatted public key. This key is required for the <code>chef-client</code> agent to access the Chef API.
    #       </p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Attributes accepted in a AssociateNode request for Puppet</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_NODE_CSR</code>: A PEM-formatted certificate-signing request (CSR) that is created by the node.
    #       </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_name: "ServerName", # required
    #     node_name: "NodeName", # required
    #     engine_attributes: [ # required
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.associate_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_association_status_token: "NodeAssociationStatusToken"
    #   }
    # @return [Types::AssociateNodeResponse]
    def associate_node(params = {}, options = {})
      request = build_request(:associate_node, params)
      request.send_request(options)
    end

    # <p>
    #       Creates an application-level backup of a server. While the
    #       server is in the <code>BACKING_UP</code> state, the server cannot be
    #       changed, and no additional backup can be created.
    #     </p>
    #          <p>
    #       Backups can be created for servers in <code>RUNNING</code>, <code>HEALTHY</code>, and <code>UNHEALTHY</code> states. 
    #       By default, you can create a maximum of 50
    #       manual backups.
    #     </p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       A <code>LimitExceededException</code> is thrown when the maximum number of manual backups is reached.
    #       An <code>InvalidStateException</code> is thrown when the server is not in any of the following states: RUNNING, HEALTHY, or UNHEALTHY.
    #       A <code>ResourceNotFoundException</code> is thrown when the server is not found.
    #       A <code>ValidationException</code> is thrown when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::CreateBackupRequest] params
    # @option params [String] :server_name
    #   <p>The name of the server that you want to back up.
    #       </p>
    # @option params [String] :description
    #   <p>
    #         A user-defined description of the backup.
    #       </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map that contains tag keys and tag values to attach to an OpsWorks CM server backup.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the 
    #           following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the 
    #           following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for tag-supported OpsWorks CM resources.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_name: "ServerName", # required
    #     description: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backup: {
    #       backup_arn: "String",
    #       backup_id: "BackupId",
    #       backup_type: "AUTOMATED" # One of: ["AUTOMATED", "MANUAL"],
    #       created_at: Time.now,
    #       description: "String",
    #       engine: "String",
    #       engine_model: "String",
    #       engine_version: "String",
    #       instance_profile_arn: "String",
    #       instance_type: "String",
    #       key_pair: "String",
    #       preferred_backup_window: "TimeWindowDefinition",
    #       preferred_maintenance_window: "TimeWindowDefinition",
    #       s3_data_size: 1,
    #       s3_data_url: "String",
    #       s3_log_url: "String",
    #       security_group_ids: ["String"],
    #       server_name: "ServerName",
    #       service_role_arn: "String",
    #       status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "OK", "FAILED", "DELETING"],
    #       status_description: "String",
    #       subnet_ids: ["String"],
    #       tools_version: "String",
    #       user_arn: "String"
    #     }
    #   }
    # @return [Types::CreateBackupResponse]
    def create_backup(params = {}, options = {})
      request = build_request(:create_backup, params)
      request.send_request(options)
    end

    # <p>
    #       Creates and immedately starts a new server. The server is ready to use when it is in the <code>HEALTHY</code> state. By 
    #       default, you can create a maximum of 10 servers.
    #     </p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       A <code>LimitExceededException</code> is thrown when you have created the maximum number of servers (10). A 
    #       <code>ResourceAlreadyExistsException</code>
    #       is thrown when a server with the same name already exists in the account. A <code>ResourceNotFoundException</code> is thrown when 
    #       you
    #       specify a backup ID that is not valid or is for a backup that does not exist. A <code>ValidationException</code> is thrown when 
    #       parameters
    #       of the request are not valid.
    #     </p>
    #          <p>
    #       If you do not specify a security group by adding the <code>SecurityGroupIds</code> parameter, OpsWorks creates a new 
    #       security group.
    #     </p>
    #          <p>
    #             <i>Chef Automate:</i> The default security group opens the Chef server to the world on TCP port 443. If 
    #       a KeyName is present, OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.
    #     </p>
    #          <p>
    #             <i>Puppet Enterprise:</i> The default security group opens TCP ports 22, 443, 4433, 8140, 8142, 8143, and 8170. If a KeyName is present, OpsWorks enables SSH access. SSH is also open to the world on TCP port 22.
    #     </p>
    #          <p>By default, your server is accessible from any IP address. We
    #       recommend that you update your security group rules to allow
    #       access from known IP addresses and address ranges only. To edit security group rules, open Security Groups
    #       in the navigation pane of the EC2 management console.
    #     </p>
    #          <p>To specify your own domain for a server, and provide your own self-signed or CA-signed certificate and private key, 
    #       specify values for <code>CustomDomain</code>, 
    #       <code>CustomCertificate</code>, and <code>CustomPrivateKey</code>.</p>
    # @param [Hash, Types::CreateServerRequest] params
    # @option params [Boolean] :associate_public_ip_address
    #   <p>
    #           Associate a public IP address with a server that you are launching. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
    #         </p>
    # @option params [String] :custom_domain
    #   <p>An optional public endpoint of a server, such as <code>https://aws.my-company.com</code>. To access the server, create a CNAME DNS record in your preferred DNS service that points the custom 
    #         domain to the endpoint that is generated when the server is created (the value of the CreateServer Endpoint attribute). You cannot access the server by using the 
    #         generated <code>Endpoint</code> value if the server is using a custom domain. If you specify a custom domain, you must also specify values for <code>CustomCertificate</code> 
    #         and <code>CustomPrivateKey</code>.</p>
    # @option params [String] :custom_certificate
    #   <p>A PEM-formatted HTTPS certificate. The value can be be a single, self-signed certificate, or a certificate chain. If you specify a 
    #         custom certificate, you must also specify values for <code>CustomDomain</code> and <code>CustomPrivateKey</code>. The following are requirements for the <code>CustomCertificate</code> value:</p>
    #            <ul>
    #               <li>
    #                  <p>You can provide either a self-signed, custom certificate, or the full certificate chain.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must be a valid X509 certificate, or a certificate chain in PEM format.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must be valid at the time of upload. A certificate can't be used before its validity period begins (the certificate's <code>NotBefore</code> date), or after it expires 
    #           (the certificate's <code>NotAfter</code> date).</p>
    #               </li>
    #               <li>
    #                  <p>The certificate’s common name or subject alternative names (SANs), if present, must match the value of <code>CustomDomain</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The certificate must match the value of <code>CustomPrivateKey</code>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :custom_private_key
    #   <p>A private key in PEM format for connecting to the server by using HTTPS. The private key must not be encrypted; it cannot be protected by a password or passphrase. 
    #         If you specify a custom private key, you must also specify values for <code>CustomDomain</code> and <code>CustomCertificate</code>.</p>
    # @option params [Boolean] :disable_automated_backup
    #   <p>
    #           Enable or disable scheduled backups. Valid values are <code>true</code> or <code>false</code>. The default value is <code>true</code>.
    #         </p>
    # @option params [String] :engine
    #   <p>
    #           The configuration management engine to use. Valid values include <code>ChefAutomate</code> and <code>Puppet</code>.
    #         </p>
    # @option params [String] :engine_model
    #   <p>
    #           The engine model of the server. Valid values in this release include <code>Monolithic</code> for Puppet and <code>Single</code> for Chef.
    #         </p>
    # @option params [String] :engine_version
    #   <p>
    #           The major release version of the engine that you want to use. For a Chef server, the valid value for EngineVersion 
    #           is currently <code>2</code>. For a Puppet server, valid values are <code>2019</code> or <code>2017</code>.
    #         </p>
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   <p>Optional engine attributes on a specified server.
    #       </p>
    #            <p class="title">
    #               <b>Attributes accepted in a Chef createServer request:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_PIVOTAL_KEY</code>: A
    #         base64-encoded RSA public key. The corresponding private key is required to
    #         access the Chef API. When no CHEF_AUTOMATE_PIVOTAL_KEY is set, a private key is
    #         generated and returned in the response.
    #         </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CHEF_AUTOMATE_ADMIN_PASSWORD</code>:
    #         The password for the administrative user in the Chef Automate web-based dashboard. The
    #         password length is a minimum of eight characters, and a maximum of 32. The
    #         password can contain letters, numbers, and special characters
    #         (!/@#$%^&+=_). The password must contain at least one lower case letter, one upper
    #         case letter, one number, and one special character. When no CHEF_AUTOMATE_ADMIN_PASSWORD is set, one is
    #         generated and returned in the response.</p>
    #               </li>
    #            </ul>
    #            <p class="title">
    #               <b>Attributes accepted in a Puppet createServer request:</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_ADMIN_PASSWORD</code>: To work with the Puppet Enterprise console, a password must use ASCII characters.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_R10K_REMOTE</code>: The r10k remote is the URL of your control repository 
    #           (for example, ssh://git@your.git-repo.com:user/control-repo.git). Specifying an r10k remote opens TCP port 8170.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUPPET_R10K_PRIVATE_KEY</code>: If you are using a private Git repository, add 
    #           PUPPET_R10K_PRIVATE_KEY to specify a PEM-encoded private SSH key.</p>
    #               </li>
    #            </ul>
    # @option params [Integer] :backup_retention_count
    #   <p>
    #           The number of automated backups that you want to keep. Whenever a new backup is created, OpsWorks CM deletes the oldest backups if this number is exceeded.
    #           The default value is <code>1</code>.
    #         </p>
    # @option params [String] :server_name
    #   <p>
    #           The name of the server. The server name must be unique within your Amazon Web Services account, within each region.
    #           Server names must start with a letter; then letters, numbers, or hyphens (-) are allowed, up to a maximum of 40 characters.
    #         </p>
    # @option params [String] :instance_profile_arn
    #   <p>
    #           The ARN of the instance profile that your Amazon EC2
    #           instances use. The OpsWorks console typically creates
    #           the instance profile for you</p>
    # @option params [String] :instance_type
    #   <p>
    #           The Amazon EC2 instance type to use. For example, <code>m5.large</code>.
    #         </p>
    # @option params [String] :key_pair
    #   <p>
    #           The Amazon EC2 key pair to set for the instance. This parameter is optional; if desired, you may specify this parameter to connect to your instances by using SSH.
    #         </p>
    # @option params [String] :preferred_maintenance_window
    #   <p>
    #         The start time for a one-hour period each week during which OpsWorks CM performs maintenance on the instance.
    #         Valid values must be specified in the following format: <code>DDD:HH:MM</code>. <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC).
    #         The default value is a random one-hour period on Tuesday, Wednesday, or Friday. See <code>TimeWindowDefinition</code> for more information.
    #       </p>
    #            <p>
    #               <b>Example:</b>
    #               <code>Mon:08:00</code>,
    #         which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)
    #       </p>
    # @option params [String] :preferred_backup_window
    #   <p>
    #         The start time for a one-hour period during which OpsWorks CM backs up application-level data on your server
    #         if automated backups are enabled. Valid values must be specified in one of the following formats:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>HH:MM</code> for daily backups</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DDD:HH:MM</code> for weekly backups</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>MM</code> must be specified as <code>00</code>. The specified time is in coordinated universal time (UTC). The default value is a random, daily start time.</p>
    #            <p>
    #               <b>Example:</b>
    #               <code>08:00</code>, which represents a daily start time of 08:00 UTC.</p>
    #            <p>
    #               <b>Example:</b>
    #               <code>Mon:08:00</code>, which represents a start time of every Monday at 08:00 UTC. (8:00 a.m.)</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>
    #         A list of security group IDs to attach to the Amazon EC2 instance. If you add this parameter, the specified security groups
    #         must be within the VPC that is specified by <code>SubnetIds</code>.
    #       </p>
    #            <p>
    #         If you do not specify this parameter, OpsWorks CM creates one new security group that uses TCP ports 22 and 443, open to
    #         0.0.0.0/0 (everyone).
    #       </p>
    # @option params [String] :service_role_arn
    #   <p>
    #         The service role that the OpsWorks CM service backend uses to work with your account.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>
    #         The IDs of subnets in which to launch the server EC2 instance.
    #       </p>
    #            <p>
    #         Amazon EC2-Classic customers: This field is required. All servers must run within a VPC. The VPC must have "Auto Assign Public IP" enabled.
    #       </p>
    #            <p>
    #         EC2-VPC customers: This field is optional. If you do not specify subnet IDs, your EC2 instances are created in a default subnet that 
    #         is selected by Amazon EC2. If you specify subnet IDs, the VPC must have "Auto Assign Public IP" enabled.
    #       </p>
    #            <p>For more information about supported Amazon EC2 platforms, see
    #         <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported Platforms</a>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map that contains tag keys and tag values to attach to an OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : / @</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for any OpsWorks CM server.</p>
    #               </li>
    #            </ul>
    # @option params [String] :backup_id
    #   <p>
    #         If you specify this field, OpsWorks CM creates the server by using the backup represented by BackupId.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     associate_public_ip_address: false,
    #     custom_domain: "CustomDomain",
    #     custom_certificate: "CustomCertificate",
    #     custom_private_key: "CustomPrivateKey",
    #     disable_automated_backup: false,
    #     engine: "String", # required
    #     engine_model: "String",
    #     engine_version: "String",
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue"
    #       }
    #     ],
    #     backup_retention_count: 1,
    #     server_name: "ServerName", # required
    #     instance_profile_arn: "InstanceProfileArn", # required
    #     instance_type: "String", # required
    #     key_pair: "KeyPair",
    #     preferred_maintenance_window: "TimeWindowDefinition",
    #     preferred_backup_window: "TimeWindowDefinition",
    #     security_group_ids: ["String"],
    #     service_role_arn: "ServiceRoleArn", # required
    #     subnet_ids: ["String"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     backup_id: "BackupId"
    #   }
    #   options = {}
    #   response = client.create_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server: {
    #       associate_public_ip_address: false,
    #       backup_retention_count: 1,
    #       server_name: "String",
    #       created_at: Time.now,
    #       cloud_formation_stack_arn: "String",
    #       custom_domain: "CustomDomain",
    #       disable_automated_backup: false,
    #       endpoint: "String",
    #       engine: "String",
    #       engine_model: "String",
    #       engine_attributes: [
    #         {
    #           name: "EngineAttributeName",
    #           value: "EngineAttributeValue"
    #         }
    #       ],
    #       engine_version: "String",
    #       instance_profile_arn: "String",
    #       instance_type: "String",
    #       key_pair: "String",
    #       maintenance_status: "SUCCESS" # One of: ["SUCCESS", "FAILED"],
    #       preferred_maintenance_window: "TimeWindowDefinition",
    #       preferred_backup_window: "TimeWindowDefinition",
    #       security_group_ids: ["String"],
    #       service_role_arn: "String",
    #       status: "BACKING_UP" # One of: ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"],
    #       status_reason: "String",
    #       subnet_ids: ["String"],
    #       server_arn: "String"
    #     }
    #   }
    # @return [Types::CreateServerResponse]
    def create_server(params = {}, options = {})
      request = build_request(:create_server, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes a backup. You can delete both manual and automated backups. This operation is asynchronous.
    #     </p>
    #          <p>
    #       An <code>InvalidStateException</code> is thrown when a backup deletion is already in progress.
    #       A <code>ResourceNotFoundException</code> is thrown when the backup does not exist.
    #       A <code>ValidationException</code> is thrown when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::DeleteBackupRequest] params
    # @option params [String] :backup_id
    #   <p>The ID of the backup to delete. Run the DescribeBackups command to get a list of backup IDs.
    #         Backup IDs are in the format <code>ServerName-yyyyMMddHHmmssSSS</code>.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId", # required
    #   }
    #   options = {}
    #   response = client.delete_backup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteBackupResponse]
    def delete_backup(params = {}, options = {})
      request = build_request(:delete_backup, params)
      request.send_request(options)
    end

    # <p>
    #       Deletes the server and the underlying CloudFormation stacks
    #       (including the server's EC2 instance). When you run this command, the server state is updated
    #       to <code>DELETING</code>. After the server is deleted, it is no longer returned by
    #       <code>DescribeServer</code> requests. If the CloudFormation stack cannot be deleted, the server cannot be deleted.
    #     </p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       An <code>InvalidStateException</code> is thrown when a server deletion is already in progress.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    #          <p>
    #     </p>
    # @param [Hash, Types::DeleteServerRequest] params
    # @option params [String] :server_name
    #   <p>The ID of the server to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_name: "ServerName", # required
    #   }
    #   options = {}
    #   response = client.delete_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteServerResponse]
    def delete_server(params = {}, options = {})
      request = build_request(:delete_server, params)
      request.send_request(options)
    end

    # <p>
    #       Describes your OpsWorks CM account attributes.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    # @param [Hash, Types::DescribeAccountAttributesRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.describe_account_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: [
    #       {
    #         name: "String",
    #         maximum: 1,
    #         used: 1
    #       }
    #     ]
    #   }
    # @return [Types::DescribeAccountAttributesResponse]
    def describe_account_attributes(params = {}, options = {})
      request = build_request(:describe_account_attributes, params)
      request.send_request(options)
    end

    # <p>
    #       Describes backups. The results are ordered by time, with newest backups first.
    #       If you do not specify a BackupId or ServerName, the command returns all backups.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #          <p>
    #       A <code>ResourceNotFoundException</code> is thrown when the backup does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::DescribeBackupsRequest] params
    # @option params [String] :backup_id
    #   <p>Describes a single backup.
    #       </p>
    # @option params [String] :server_name
    #   <p>Returns backups for the server with the specified ServerName.
    #       </p>
    # @option params [String] :next_token
    #   <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
    # @option params [Integer] :max_results
    #   <p>This is not currently implemented for <code>DescribeBackups</code> requests.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId",
    #     server_name: "ServerName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_backups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     backups: [
    #       {
    #         backup_arn: "String",
    #         backup_id: "BackupId",
    #         backup_type: "AUTOMATED" # One of: ["AUTOMATED", "MANUAL"],
    #         created_at: Time.now,
    #         description: "String",
    #         engine: "String",
    #         engine_model: "String",
    #         engine_version: "String",
    #         instance_profile_arn: "String",
    #         instance_type: "String",
    #         key_pair: "String",
    #         preferred_backup_window: "TimeWindowDefinition",
    #         preferred_maintenance_window: "TimeWindowDefinition",
    #         s3_data_size: 1,
    #         s3_data_url: "String",
    #         s3_log_url: "String",
    #         security_group_ids: ["String"],
    #         server_name: "ServerName",
    #         service_role_arn: "String",
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "OK", "FAILED", "DELETING"],
    #         status_description: "String",
    #         subnet_ids: ["String"],
    #         tools_version: "String",
    #         user_arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeBackupsResponse]
    def describe_backups(params = {}, options = {})
      request = build_request(:describe_backups, params)
      request.send_request(options)
    end

    # <p>
    #       Describes events for a specified server. Results are ordered by time, with newest events first.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #          <p>
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::DescribeEventsRequest] params
    # @option params [String] :server_name
    #   <p>The name of the server for which you want to view events.</p>
    # @option params [String] :next_token
    #   <p>NextToken is a string that is returned in some command responses. It indicates that
    #         not all entries have been returned, and that you must run at least one more request to get remaining
    #         items. To get remaining results, call <code>DescribeEvents</code> again, and assign the token from the previous
    #         results as the value of the <code>nextToken</code> parameter. If there are no more results,
    #         the response object's <code>nextToken</code> parameter value is <code>null</code>.
    #         Setting a <code>nextToken</code> value that was not returned in
    #         your previous results causes an <code>InvalidNextTokenException</code> to occur.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #         of results to be returned with a single call. If the number of available results exceeds
    #         this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>
    #         request parameter to get the next set of results.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_name: "ServerName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server_events: [
    #       {
    #         created_at: Time.now,
    #         server_name: "String",
    #         message: "String",
    #         log_url: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeEventsResponse]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>
    #       Returns the current status of an existing association or disassociation request.
    #     </p>
    #          <p>
    #       A <code>ResourceNotFoundException</code> is thrown when no recent association or disassociation request with the specified token is found,
    #       or when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::DescribeNodeAssociationStatusRequest] params
    # @option params [String] :node_association_status_token
    #   <p>The token returned in either the AssociateNodeResponse or the DisassociateNodeResponse.
    #       </p>
    # @option params [String] :server_name
    #   <p>The name of the server from which to disassociate the node.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     node_association_status_token: "NodeAssociationStatusToken", # required
    #     server_name: "ServerName", # required
    #   }
    #   options = {}
    #   response = client.describe_node_association_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_association_status: "SUCCESS" # One of: ["SUCCESS", "FAILED", "IN_PROGRESS"],
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeNodeAssociationStatusResponse]
    def describe_node_association_status(params = {}, options = {})
      request = build_request(:describe_node_association_status, params)
      request.send_request(options)
    end

    # <p>
    #       Lists all configuration management servers that are identified with your account.
    #       Only the stored results from Amazon DynamoDB
    #       are returned. OpsWorks CM does not query other services.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #          <p>
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::DescribeServersRequest] params
    # @option params [String] :server_name
    #   <p>Describes the server with the specified ServerName.</p>
    # @option params [String] :next_token
    #   <p>This is not currently implemented for <code>DescribeServers</code> requests.
    #       </p>
    # @option params [Integer] :max_results
    #   <p>This is not currently implemented for <code>DescribeServers</code> requests.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_name: "ServerName",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     servers: [
    #       {
    #         associate_public_ip_address: false,
    #         backup_retention_count: 1,
    #         server_name: "String",
    #         created_at: Time.now,
    #         cloud_formation_stack_arn: "String",
    #         custom_domain: "CustomDomain",
    #         disable_automated_backup: false,
    #         endpoint: "String",
    #         engine: "String",
    #         engine_model: "String",
    #         engine_attributes: [
    #           {
    #             name: "EngineAttributeName",
    #             value: "EngineAttributeValue"
    #           }
    #         ],
    #         engine_version: "String",
    #         instance_profile_arn: "String",
    #         instance_type: "String",
    #         key_pair: "String",
    #         maintenance_status: "SUCCESS" # One of: ["SUCCESS", "FAILED"],
    #         preferred_maintenance_window: "TimeWindowDefinition",
    #         preferred_backup_window: "TimeWindowDefinition",
    #         security_group_ids: ["String"],
    #         service_role_arn: "String",
    #         status: "BACKING_UP" # One of: ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"],
    #         status_reason: "String",
    #         subnet_ids: ["String"],
    #         server_arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeServersResponse]
    def describe_servers(params = {}, options = {})
      request = build_request(:describe_servers, params)
      request.send_request(options)
    end

    # <p>
    #       Disassociates a node from an OpsWorks CM server, and removes the node from the server's managed nodes. After a node is disassociated,
    #       the node key pair is no longer valid for accessing the configuration manager's API. For more information about how to associate a node, see <a>AssociateNode</a>.
    #     </p>
    #          <p>A node can can only be disassociated from a server that is in a <code>HEALTHY</code> state. Otherwise, an <code>InvalidStateException</code> is thrown.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::DisassociateNodeRequest] params
    # @option params [String] :server_name
    #   <p>The name of the server from which to disassociate the node.
    #       </p>
    # @option params [String] :node_name
    #   <p>The name of the client node.
    #       </p>
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   <p>Engine attributes that are used for disassociating the node. No attributes are required for Puppet.
    #       </p>
    #            <p class="title">
    #               <b>Attributes required in a DisassociateNode request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_ORGANIZATION</code>: The Chef organization
    #             with which the node was associated. By default only one organization
    #             named <code>default</code> can exist.
    #         </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_name: "ServerName", # required
    #     node_name: "NodeName", # required
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.disassociate_node(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     node_association_status_token: "NodeAssociationStatusToken"
    #   }
    # @return [Types::DisassociateNodeResponse]
    def disassociate_node(params = {}, options = {})
      request = build_request(:disassociate_node, params)
      request.send_request(options)
    end

    # <p>
    #       Exports a specified server engine attribute as a base64-encoded string. For example, you can export user data that you can 
    #       use in EC2 to associate nodes with a server.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    #          <p>
    #       A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist.
    #       An <code>InvalidStateException</code> is thrown when the server is in any of the following states: CREATING, TERMINATED,
    #       FAILED or DELETING.
    #     </p>
    # @param [Hash, Types::ExportServerEngineAttributeRequest] params
    # @option params [String] :export_attribute_name
    #   <p>The name of the export attribute. Currently, the supported export attribute is <code>Userdata</code>. 
    #         This exports a user data script that includes parameters and values provided in the <code>InputAttributes</code> list.</p>
    # @option params [String] :server_name
    #   <p>The name of the server from which you are exporting the attribute.</p>
    # @option params [Array<Types::EngineAttribute>] :input_attributes
    #   <p>The list of engine attributes. The list type is <code>EngineAttribute</code>. An <code>EngineAttribute</code> list item 
    #         is a pair that includes an attribute name and its value. For the <code>Userdata</code> ExportAttributeName, the following are 
    #         supported engine attribute names.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RunList</b> In Chef, a list of roles or recipes that are run in the specified order. 
    #           In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>OrganizationName</b> In Chef, an organization name. OpsWorks for Chef Automate 
    #           always creates the organization <code>default</code>. In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NodeEnvironment</b> In Chef, a node environment (for example, development, staging, or one-box). 
    #           In Puppet, this parameter is ignored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>NodeClientVersion</b> In Chef, the version of the Chef engine (three numbers separated 
    #           by dots, such as 13.8.5). If this attribute is empty, OpsWorks for Chef Automate uses the most current version. In Puppet, 
    #           this parameter is ignored.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     export_attribute_name: "String", # required
    #     server_name: "ServerName", # required
    #     input_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.export_server_engine_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engine_attribute: {
    #       name: "EngineAttributeName",
    #       value: "EngineAttributeValue"
    #     },
    #     server_name: "ServerName"
    #   }
    # @return [Types::ExportServerEngineAttributeResponse]
    def export_server_engine_attribute(params = {}, options = {})
      request = build_request(:export_server_engine_attribute, params)
      request.send_request(options)
    end

    # <p>Returns a list of tags that are applied to the specified OpsWorks for Chef Automate or
    #       OpsWorks for Puppet Enterprise servers or backups.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of an OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server for which you want to show applied tags. For example, 
    #           <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    # @option params [String] :next_token
    #   <p>NextToken is a string that is returned in some command responses. It indicates that
    #           not all entries have been returned, and that you must run at least one more request to get remaining
    #           items. To get remaining results, call <code>ListTagsForResource</code> again, and assign the token from the previous
    #           results as the value of the <code>nextToken</code> parameter. If there are no more results,
    #           the response object's <code>nextToken</code> parameter value is <code>null</code>.
    #           Setting a <code>nextToken</code> value that was not returned in
    #           your previous results causes an <code>InvalidNextTokenException</code> to occur.</p>
    # @option params [Integer] :max_results
    #   <p>To receive a paginated response, use this parameter to specify the maximum number
    #           of results to be returned with a single call. If the number of available results exceeds
    #           this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code>
    #           request parameter to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AWSOpsWorksCMResourceArn", # required
    #     next_token: "NextToken",
    #     max_results: 1
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
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>
    #       Restores a backup to a server that is in a <code>CONNECTION_LOST</code>, <code>HEALTHY</code>, <code>RUNNING</code>, <code>UNHEALTHY</code>, or <code>TERMINATED</code> state.
    #       When you run RestoreServer, the server's EC2 instance is deleted, and a new EC2 instance is configured. RestoreServer maintains
    #       the existing server endpoint, so configuration management of the server's client devices (nodes) should continue to work.
    #     </p>
    #          <p>Restoring from a backup is performed by creating a new EC2 instance. If restoration is successful, and the server is in a <code>HEALTHY</code> state, 
    #       OpsWorks CM switches traffic over to the new instance. After restoration is finished, the old EC2 instance is maintained in a 
    #       <code>Running</code> or <code>Stopped</code> state, but is eventually terminated.</p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       An <code>InvalidStateException</code> is thrown when the server is not in a valid state. A <code>ResourceNotFoundException</code> is thrown
    #       when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::RestoreServerRequest] params
    # @option params [String] :backup_id
    #   <p> The ID of the backup that you want to use to restore a server.
    #       </p>
    # @option params [String] :server_name
    #   <p> The name of the server that you want to restore.
    #       </p>
    # @option params [String] :instance_type
    #   <p> The type of instance to restore. Valid values must be specified in the following format: <code>^([cm][34]|t2).*</code>
    #         For example, <code>m5.large</code>. Valid values are <code>m5.large</code>, <code>r5.xlarge</code>, and <code>r5.2xlarge</code>. If you do not specify this parameter,
    #         RestoreServer uses the instance type from the specified backup.
    #       </p>
    # @option params [String] :key_pair
    #   <p> The name of the key pair to set on the new EC2 instance. This can be helpful
    #         if the administrator no longer has the SSH key.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     backup_id: "BackupId", # required
    #     server_name: "ServerName", # required
    #     instance_type: "String",
    #     key_pair: "KeyPair"
    #   }
    #   options = {}
    #   response = client.restore_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server: {
    #       associate_public_ip_address: false,
    #       backup_retention_count: 1,
    #       server_name: "String",
    #       created_at: Time.now,
    #       cloud_formation_stack_arn: "String",
    #       custom_domain: "CustomDomain",
    #       disable_automated_backup: false,
    #       endpoint: "String",
    #       engine: "String",
    #       engine_model: "String",
    #       engine_attributes: [
    #         {
    #           name: "EngineAttributeName",
    #           value: "EngineAttributeValue"
    #         }
    #       ],
    #       engine_version: "String",
    #       instance_profile_arn: "String",
    #       instance_type: "String",
    #       key_pair: "String",
    #       maintenance_status: "SUCCESS" # One of: ["SUCCESS", "FAILED"],
    #       preferred_maintenance_window: "TimeWindowDefinition",
    #       preferred_backup_window: "TimeWindowDefinition",
    #       security_group_ids: ["String"],
    #       service_role_arn: "String",
    #       status: "BACKING_UP" # One of: ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"],
    #       status_reason: "String",
    #       subnet_ids: ["String"],
    #       server_arn: "String"
    #     }
    #   }
    # @return [Types::RestoreServerResponse]
    def restore_server(params = {}, options = {})
      request = build_request(:restore_server, params)
      request.send_request(options)
    end

    # <p>
    #       Manually starts server maintenance. This command can be useful if an earlier maintenance attempt failed, and the underlying
    #       cause of maintenance failure has been resolved. The server is in an <code>UNDER_MAINTENANCE</code> state while maintenance is in progress.
    #     </p>
    #          <p>
    #       Maintenance can only be started on servers in <code>HEALTHY</code> and <code>UNHEALTHY</code> states. Otherwise, an <code>InvalidStateException</code> is thrown.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is raised when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::StartMaintenanceRequest] params
    # @option params [String] :server_name
    #   <p>The name of the server on which to run maintenance.
    #       </p>
    # @option params [Array<Types::EngineAttribute>] :engine_attributes
    #   <p>Engine attributes that are specific to the server on which you want to run maintenance.</p>
    #            <p class="title">
    #               <b>Attributes accepted in a StartMaintenance request for Chef</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CHEF_MAJOR_UPGRADE</code>: If a Chef Automate server is eligible for upgrade to Chef Automate 2, 
    #           add this engine attribute to a <code>StartMaintenance</code> request and set the value to <code>true</code> to upgrade the server to Chef Automate 2. For more information, see 
    #           <a href="https://docs.aws.amazon.com/opsworks/latest/userguide/opscm-a2upgrade.html">Upgrade an OpsWorks for Chef Automate Server to Chef Automate 2</a>.
    #         </p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_name: "ServerName", # required
    #     engine_attributes: [
    #       {
    #         name: "EngineAttributeName",
    #         value: "EngineAttributeValue"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_maintenance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server: {
    #       associate_public_ip_address: false,
    #       backup_retention_count: 1,
    #       server_name: "String",
    #       created_at: Time.now,
    #       cloud_formation_stack_arn: "String",
    #       custom_domain: "CustomDomain",
    #       disable_automated_backup: false,
    #       endpoint: "String",
    #       engine: "String",
    #       engine_model: "String",
    #       engine_attributes: [
    #         {
    #           name: "EngineAttributeName",
    #           value: "EngineAttributeValue"
    #         }
    #       ],
    #       engine_version: "String",
    #       instance_profile_arn: "String",
    #       instance_type: "String",
    #       key_pair: "String",
    #       maintenance_status: "SUCCESS" # One of: ["SUCCESS", "FAILED"],
    #       preferred_maintenance_window: "TimeWindowDefinition",
    #       preferred_backup_window: "TimeWindowDefinition",
    #       security_group_ids: ["String"],
    #       service_role_arn: "String",
    #       status: "BACKING_UP" # One of: ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"],
    #       status_reason: "String",
    #       subnet_ids: ["String"],
    #       server_arn: "String"
    #     }
    #   }
    # @return [Types::StartMaintenanceResponse]
    def start_maintenance(params = {}, options = {})
      request = build_request(:start_maintenance, params)
      request.send_request(options)
    end

    # <p>Applies tags to an OpsWorks for Chef Automate or OpsWorks for Puppet Enterprise server, or to server backups.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of a resource to which you want to apply tags. For example, 
    #         <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A map that contains tag keys and tag values to attach to OpsWorks CM servers or backups.</p>
    #            <ul>
    #               <li>
    #                  <p>The key cannot be empty.</p>
    #               </li>
    #               <li>
    #                  <p>The key can be a maximum of 127 characters, and can contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>The value can be a maximum 255 characters, and contain only Unicode letters, numbers, or separators, or the following special characters: <code>+ - = . _ : /</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Leading and trailing white spaces are trimmed from both the key and value.</p>
    #               </li>
    #               <li>
    #                  <p>A maximum of 50 user-applied tags is allowed for any OpsWorks CM server or backup.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AWSOpsWorksCMResourceArn", # required
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
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes specified tags from an OpsWorks CM server or backup.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Number (ARN) of a resource from which you want to remove tags. For example, 
    #         <code>arn:aws:opsworks-cm:us-west-2:123456789012:server/test-owcm-server/EXAMPLE-66b0-4196-8274-d1a2bEXAMPLE</code>.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of tags that you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AWSOpsWorksCMResourceArn", # required
    #     tag_keys: ["TagKey"], # required
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

    # <p>
    #       Updates settings for a server.
    #     </p>
    #          <p>
    #       This operation is synchronous.
    #     </p>
    # @param [Hash, Types::UpdateServerRequest] params
    # @option params [Boolean] :disable_automated_backup
    #   <p>Setting DisableAutomatedBackup to <code>true</code> disables automated or scheduled backups. 
    #         Automated backups are enabled by default.
    #       </p>
    # @option params [Integer] :backup_retention_count
    #   <p>Sets the number of automated backups that you want to keep.
    #         </p>
    # @option params [String] :server_name
    #   <p>The name of the server to update.
    #       </p>
    # @option params [String] :preferred_maintenance_window
    #   <p>
    #               <code>DDD:HH:MM</code> (weekly start time) or
    #       <code>HH:MM</code> (daily start time).
    #       </p>
    #            <p>
    #         Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>,
    #         <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
    # @option params [String] :preferred_backup_window
    #   <p>
    #               <code>DDD:HH:MM</code> (weekly start time) or
    #       <code>HH:MM</code> (daily start time).
    #       </p>
    #            <p>
    #         Time windows always use coordinated universal time (UTC). Valid strings for day of week (<code>DDD</code>) are: <code>Mon</code>, <code>Tue</code>, <code>Wed</code>,
    #         <code>Thr</code>, <code>Fri</code>, <code>Sat</code>, or <code>Sun</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     disable_automated_backup: false,
    #     backup_retention_count: 1,
    #     server_name: "ServerName", # required
    #     preferred_maintenance_window: "TimeWindowDefinition",
    #     preferred_backup_window: "TimeWindowDefinition"
    #   }
    #   options = {}
    #   response = client.update_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server: {
    #       associate_public_ip_address: false,
    #       backup_retention_count: 1,
    #       server_name: "String",
    #       created_at: Time.now,
    #       cloud_formation_stack_arn: "String",
    #       custom_domain: "CustomDomain",
    #       disable_automated_backup: false,
    #       endpoint: "String",
    #       engine: "String",
    #       engine_model: "String",
    #       engine_attributes: [
    #         {
    #           name: "EngineAttributeName",
    #           value: "EngineAttributeValue"
    #         }
    #       ],
    #       engine_version: "String",
    #       instance_profile_arn: "String",
    #       instance_type: "String",
    #       key_pair: "String",
    #       maintenance_status: "SUCCESS" # One of: ["SUCCESS", "FAILED"],
    #       preferred_maintenance_window: "TimeWindowDefinition",
    #       preferred_backup_window: "TimeWindowDefinition",
    #       security_group_ids: ["String"],
    #       service_role_arn: "String",
    #       status: "BACKING_UP" # One of: ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"],
    #       status_reason: "String",
    #       subnet_ids: ["String"],
    #       server_arn: "String"
    #     }
    #   }
    # @return [Types::UpdateServerResponse]
    def update_server(params = {}, options = {})
      request = build_request(:update_server, params)
      request.send_request(options)
    end

    # <p>
    #       Updates engine-specific attributes on a specified server. The server
    #       enters the <code>MODIFYING</code> state when this operation
    #       is in progress. Only one update can occur at a time.
    #       You can use this command to reset a Chef server's public key (<code>CHEF_PIVOTAL_KEY</code>) or a Puppet server's 
    #       admin password (<code>PUPPET_ADMIN_PASSWORD</code>).
    #     </p>
    #          <p>
    #       This operation is asynchronous.
    #     </p>
    #          <p>
    #       This operation can only be called for servers in <code>HEALTHY</code> or <code>UNHEALTHY</code> states. 
    #       Otherwise, an <code>InvalidStateException</code> is raised.
    #       A <code>ResourceNotFoundException</code> is thrown when the server does not exist. A <code>ValidationException</code> is 
    #       raised when parameters of the request are not valid.
    #     </p>
    # @param [Hash, Types::UpdateServerEngineAttributesRequest] params
    # @option params [String] :server_name
    #   <p>The name of the server to update.
    #       </p>
    # @option params [String] :attribute_name
    #   <p>The name of the engine attribute to update.
    #       </p>
    # @option params [String] :attribute_value
    #   <p>The value to set for the attribute.
    #       </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     server_name: "ServerName", # required
    #     attribute_name: "AttributeName", # required
    #     attribute_value: "AttributeValue"
    #   }
    #   options = {}
    #   response = client.update_server_engine_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     server: {
    #       associate_public_ip_address: false,
    #       backup_retention_count: 1,
    #       server_name: "String",
    #       created_at: Time.now,
    #       cloud_formation_stack_arn: "String",
    #       custom_domain: "CustomDomain",
    #       disable_automated_backup: false,
    #       endpoint: "String",
    #       engine: "String",
    #       engine_model: "String",
    #       engine_attributes: [
    #         {
    #           name: "EngineAttributeName",
    #           value: "EngineAttributeValue"
    #         }
    #       ],
    #       engine_version: "String",
    #       instance_profile_arn: "String",
    #       instance_type: "String",
    #       key_pair: "String",
    #       maintenance_status: "SUCCESS" # One of: ["SUCCESS", "FAILED"],
    #       preferred_maintenance_window: "TimeWindowDefinition",
    #       preferred_backup_window: "TimeWindowDefinition",
    #       security_group_ids: ["String"],
    #       service_role_arn: "String",
    #       status: "BACKING_UP" # One of: ["BACKING_UP", "CONNECTION_LOST", "CREATING", "DELETING", "MODIFYING", "FAILED", "HEALTHY", "RUNNING", "RESTORING", "SETUP", "UNDER_MAINTENANCE", "UNHEALTHY", "TERMINATED"],
    #       status_reason: "String",
    #       subnet_ids: ["String"],
    #       server_arn: "String"
    #     }
    #   }
    # @return [Types::UpdateServerEngineAttributesResponse]
    def update_server_engine_attributes(params = {}, options = {})
      request = build_request(:update_server_engine_attributes, params)
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
      context[:gem_name] = 'aws-sdk-opsworkscm'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        node_associated: Waiters::NodeAssociated
      }
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
