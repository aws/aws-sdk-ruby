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
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:workdocs)

module Aws::WorkDocs
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :workdocs

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
    add_plugin(Aws::Plugins::Protocols::RestJson)

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

    # Aborts the upload of the specified document version that was
    # previously initiated by InitiateDocumentVersionUpload. The client
    # should make this call only when it no longer intends to upload the
    # document version, or fails to do so.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [required, String] :version_id
    #   The ID of the version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_document_version_upload({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/AbortDocumentVersionUpload AWS API Documentation
    #
    # @overload abort_document_version_upload(params = {})
    # @param [Hash] params ({})
    def abort_document_version_upload(params = {}, options = {})
      req = build_request(:abort_document_version_upload, params)
      req.send_request(options)
    end

    # Activates the specified user. Only active users can access Amazon
    # WorkDocs.
    #
    # @option params [required, String] :user_id
    #   The ID of the user.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @return [Types::ActivateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ActivateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_user({
    #     user_id: "IdType", # required
    #     authentication_token: "AuthenticationHeaderType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user.id #=> String
    #   resp.user.username #=> String
    #   resp.user.email_address #=> String
    #   resp.user.given_name #=> String
    #   resp.user.surname #=> String
    #   resp.user.organization_id #=> String
    #   resp.user.root_folder_id #=> String
    #   resp.user.recycle_bin_folder_id #=> String
    #   resp.user.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING"
    #   resp.user.type #=> String, one of "USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"
    #   resp.user.created_timestamp #=> Time
    #   resp.user.modified_timestamp #=> Time
    #   resp.user.time_zone_id #=> String
    #   resp.user.locale #=> String, one of "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"
    #   resp.user.storage.storage_utilized_in_bytes #=> Integer
    #   resp.user.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.user.storage.storage_rule.storage_type #=> String, one of "UNLIMITED", "QUOTA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ActivateUser AWS API Documentation
    #
    # @overload activate_user(params = {})
    # @param [Hash] params ({})
    def activate_user(params = {}, options = {})
      req = build_request(:activate_user, params)
      req.send_request(options)
    end

    # Creates a set of permissions for the specified folder or document. The
    # resource permissions are overwritten if the principals already have
    # different permissions.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource.
    #
    # @option params [required, Array<Types::SharePrincipal>] :principals
    #   The users, groups, or organization being granted permission.
    #
    # @option params [Types::NotificationOptions] :notification_options
    #   The notification options.
    #
    # @return [Types::AddResourcePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AddResourcePermissionsResponse#share_results #share_results} => Array&lt;Types::ShareResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_resource_permissions({
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     principals: [ # required
    #       {
    #         id: "IdType", # required
    #         type: "USER", # required, accepts USER, GROUP, INVITE, ANONYMOUS, ORGANIZATION
    #         role: "VIEWER", # required, accepts VIEWER, CONTRIBUTOR, OWNER, COOWNER
    #       },
    #     ],
    #     notification_options: {
    #       send_email: false,
    #       email_message: "MessageType",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.share_results #=> Array
    #   resp.share_results[0].principal_id #=> String
    #   resp.share_results[0].role #=> String, one of "VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"
    #   resp.share_results[0].status #=> String, one of "SUCCESS", "FAILURE"
    #   resp.share_results[0].share_id #=> String
    #   resp.share_results[0].status_message #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/AddResourcePermissions AWS API Documentation
    #
    # @overload add_resource_permissions(params = {})
    # @param [Hash] params ({})
    def add_resource_permissions(params = {}, options = {})
      req = build_request(:add_resource_permissions, params)
      req.send_request(options)
    end

    # Adds a new comment to the specified document version.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [required, String] :version_id
    #   The ID of the document version.
    #
    # @option params [String] :parent_id
    #   The ID of the parent comment.
    #
    # @option params [String] :thread_id
    #   The ID of the root comment in the thread.
    #
    # @option params [required, String] :text
    #   The text of the comment.
    #
    # @option params [String] :visibility
    #   The visibility of the comment. Options are either PRIVATE, where the
    #   comment is visible only to the comment author and document owner and
    #   co-owners, or PUBLIC, where the comment is visible to document owners,
    #   co-owners, and contributors.
    #
    # @option params [Boolean] :notify_collaborators
    #   Set this parameter to TRUE to send an email out to the document
    #   collaborators after the comment is created.
    #
    # @return [Types::CreateCommentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCommentResponse#comment #comment} => Types::Comment
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_comment({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     parent_id: "CommentIdType",
    #     thread_id: "CommentIdType",
    #     text: "CommentTextType", # required
    #     visibility: "PUBLIC", # accepts PUBLIC, PRIVATE
    #     notify_collaborators: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.comment.comment_id #=> String
    #   resp.comment.parent_id #=> String
    #   resp.comment.thread_id #=> String
    #   resp.comment.text #=> String
    #   resp.comment.contributor.id #=> String
    #   resp.comment.contributor.username #=> String
    #   resp.comment.contributor.email_address #=> String
    #   resp.comment.contributor.given_name #=> String
    #   resp.comment.contributor.surname #=> String
    #   resp.comment.contributor.organization_id #=> String
    #   resp.comment.contributor.root_folder_id #=> String
    #   resp.comment.contributor.recycle_bin_folder_id #=> String
    #   resp.comment.contributor.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING"
    #   resp.comment.contributor.type #=> String, one of "USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"
    #   resp.comment.contributor.created_timestamp #=> Time
    #   resp.comment.contributor.modified_timestamp #=> Time
    #   resp.comment.contributor.time_zone_id #=> String
    #   resp.comment.contributor.locale #=> String, one of "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"
    #   resp.comment.contributor.storage.storage_utilized_in_bytes #=> Integer
    #   resp.comment.contributor.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.comment.contributor.storage.storage_rule.storage_type #=> String, one of "UNLIMITED", "QUOTA"
    #   resp.comment.created_timestamp #=> Time
    #   resp.comment.status #=> String, one of "DRAFT", "PUBLISHED", "DELETED"
    #   resp.comment.visibility #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.comment.recipient_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateComment AWS API Documentation
    #
    # @overload create_comment(params = {})
    # @param [Hash] params ({})
    def create_comment(params = {}, options = {})
      req = build_request(:create_comment, params)
      req.send_request(options)
    end

    # Adds one or more custom properties to the specified resource (a
    # folder, document, or version).
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource.
    #
    # @option params [String] :version_id
    #   The ID of the version, if the custom metadata is being added to a
    #   document version.
    #
    # @option params [required, Hash<String,String>] :custom_metadata
    #   Custom metadata in the form of name-value pairs.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_metadata({
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType",
    #     custom_metadata: { # required
    #       "CustomMetadataKeyType" => "CustomMetadataValueType",
    #     },
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateCustomMetadata AWS API Documentation
    #
    # @overload create_custom_metadata(params = {})
    # @param [Hash] params ({})
    def create_custom_metadata(params = {}, options = {})
      req = build_request(:create_custom_metadata, params)
      req.send_request(options)
    end

    # Creates a folder with the specified name and parent folder.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [String] :name
    #   The name of the new folder.
    #
    # @option params [required, String] :parent_folder_id
    #   The ID of the parent folder.
    #
    # @return [Types::CreateFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateFolderResponse#metadata #metadata} => Types::FolderMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_folder({
    #     authentication_token: "AuthenticationHeaderType",
    #     name: "ResourceNameType",
    #     parent_folder_id: "ResourceIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.id #=> String
    #   resp.metadata.name #=> String
    #   resp.metadata.creator_id #=> String
    #   resp.metadata.parent_folder_id #=> String
    #   resp.metadata.created_timestamp #=> Time
    #   resp.metadata.modified_timestamp #=> Time
    #   resp.metadata.resource_state #=> String, one of "ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"
    #   resp.metadata.signature #=> String
    #   resp.metadata.labels #=> Array
    #   resp.metadata.labels[0] #=> String
    #   resp.metadata.size #=> Integer
    #   resp.metadata.latest_version_size #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateFolder AWS API Documentation
    #
    # @overload create_folder(params = {})
    # @param [Hash] params ({})
    def create_folder(params = {}, options = {})
      req = build_request(:create_folder, params)
      req.send_request(options)
    end

    # Adds the specified list of labels to the given resource (a document or
    # folder)
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource.
    #
    # @option params [required, Array<String>] :labels
    #   List of labels to add to the resource.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_labels({
    #     resource_id: "ResourceIdType", # required
    #     labels: ["SharedLabel"], # required
    #     authentication_token: "AuthenticationHeaderType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateLabels AWS API Documentation
    #
    # @overload create_labels(params = {})
    # @param [Hash] params ({})
    def create_labels(params = {}, options = {})
      req = build_request(:create_labels, params)
      req.send_request(options)
    end

    # Configure WorkDocs to use Amazon SNS notifications.
    #
    # The endpoint receives a confirmation message, and must confirm the
    # subscription. For more information, see [Confirm the Subscription][1]
    # in the *Amazon Simple Notification Service Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/sns/latest/dg/SendMessageToHttp.html#SendMessageToHttp.confirm
    #
    # @option params [required, String] :organization_id
    #   The ID of the organization.
    #
    # @option params [required, String] :endpoint
    #   The endpoint to receive the notifications. If the protocol is HTTPS,
    #   the endpoint is a URL that begins with "https://".
    #
    # @option params [required, String] :protocol
    #   The protocol to use. The supported value is https, which delivers
    #   JSON-encoded messages using HTTPS POST.
    #
    # @option params [required, String] :subscription_type
    #   The notification type.
    #
    # @return [Types::CreateNotificationSubscriptionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateNotificationSubscriptionResponse#subscription #subscription} => Types::Subscription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification_subscription({
    #     organization_id: "IdType", # required
    #     endpoint: "SubscriptionEndPointType", # required
    #     protocol: "HTTPS", # required, accepts HTTPS
    #     subscription_type: "ALL", # required, accepts ALL
    #   })
    #
    # @example Response structure
    #
    #   resp.subscription.subscription_id #=> String
    #   resp.subscription.end_point #=> String
    #   resp.subscription.protocol #=> String, one of "HTTPS"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateNotificationSubscription AWS API Documentation
    #
    # @overload create_notification_subscription(params = {})
    # @param [Hash] params ({})
    def create_notification_subscription(params = {}, options = {})
      req = build_request(:create_notification_subscription, params)
      req.send_request(options)
    end

    # Creates a user in a Simple AD or Microsoft AD directory. The status of
    # a newly created user is "ACTIVE". New users can access Amazon
    # WorkDocs.
    #
    # @option params [String] :organization_id
    #   The ID of the organization.
    #
    # @option params [required, String] :username
    #   The login name of the user.
    #
    # @option params [String] :email_address
    #   The email address of the user.
    #
    # @option params [required, String] :given_name
    #   The given name of the user.
    #
    # @option params [required, String] :surname
    #   The surname of the user.
    #
    # @option params [required, String] :password
    #   The password of the user.
    #
    # @option params [String] :time_zone_id
    #   The time zone ID of the user.
    #
    # @option params [Types::StorageRuleType] :storage_rule
    #   The amount of storage for the user.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @return [Types::CreateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user({
    #     organization_id: "IdType",
    #     username: "UsernameType", # required
    #     email_address: "EmailAddressType",
    #     given_name: "UserAttributeValueType", # required
    #     surname: "UserAttributeValueType", # required
    #     password: "PasswordType", # required
    #     time_zone_id: "TimeZoneIdType",
    #     storage_rule: {
    #       storage_allocated_in_bytes: 1,
    #       storage_type: "UNLIMITED", # accepts UNLIMITED, QUOTA
    #     },
    #     authentication_token: "AuthenticationHeaderType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user.id #=> String
    #   resp.user.username #=> String
    #   resp.user.email_address #=> String
    #   resp.user.given_name #=> String
    #   resp.user.surname #=> String
    #   resp.user.organization_id #=> String
    #   resp.user.root_folder_id #=> String
    #   resp.user.recycle_bin_folder_id #=> String
    #   resp.user.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING"
    #   resp.user.type #=> String, one of "USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"
    #   resp.user.created_timestamp #=> Time
    #   resp.user.modified_timestamp #=> Time
    #   resp.user.time_zone_id #=> String
    #   resp.user.locale #=> String, one of "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"
    #   resp.user.storage.storage_utilized_in_bytes #=> Integer
    #   resp.user.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.user.storage.storage_rule.storage_type #=> String, one of "UNLIMITED", "QUOTA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateUser AWS API Documentation
    #
    # @overload create_user(params = {})
    # @param [Hash] params ({})
    def create_user(params = {}, options = {})
      req = build_request(:create_user, params)
      req.send_request(options)
    end

    # Deactivates the specified user, which revokes the user's access to
    # Amazon WorkDocs.
    #
    # @option params [required, String] :user_id
    #   The ID of the user.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_user({
    #     user_id: "IdType", # required
    #     authentication_token: "AuthenticationHeaderType",
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeactivateUser AWS API Documentation
    #
    # @overload deactivate_user(params = {})
    # @param [Hash] params ({})
    def deactivate_user(params = {}, options = {})
      req = build_request(:deactivate_user, params)
      req.send_request(options)
    end

    # Deletes the specified comment from the document version.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [required, String] :version_id
    #   The ID of the document version.
    #
    # @option params [required, String] :comment_id
    #   The ID of the comment.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_comment({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     comment_id: "CommentIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteComment AWS API Documentation
    #
    # @overload delete_comment(params = {})
    # @param [Hash] params ({})
    def delete_comment(params = {}, options = {})
      req = build_request(:delete_comment, params)
      req.send_request(options)
    end

    # Deletes custom metadata from the specified resource.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource, either a document or folder.
    #
    # @option params [String] :version_id
    #   The ID of the version, if the custom metadata is being deleted from a
    #   document version.
    #
    # @option params [Array<String>] :keys
    #   List of properties to remove.
    #
    # @option params [Boolean] :delete_all
    #   Flag to indicate removal of all custom metadata properties from the
    #   specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_metadata({
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType",
    #     keys: ["CustomMetadataKeyType"],
    #     delete_all: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteCustomMetadata AWS API Documentation
    #
    # @overload delete_custom_metadata(params = {})
    # @param [Hash] params ({})
    def delete_custom_metadata(params = {}, options = {})
      req = build_request(:delete_custom_metadata, params)
      req.send_request(options)
    end

    # Permanently deletes the specified document and its associated
    # metadata.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_document({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteDocument AWS API Documentation
    #
    # @overload delete_document(params = {})
    # @param [Hash] params ({})
    def delete_document(params = {}, options = {})
      req = build_request(:delete_document, params)
      req.send_request(options)
    end

    # Permanently deletes the specified folder and its contents.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder({
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteFolder AWS API Documentation
    #
    # @overload delete_folder(params = {})
    # @param [Hash] params ({})
    def delete_folder(params = {}, options = {})
      req = build_request(:delete_folder, params)
      req.send_request(options)
    end

    # Deletes the contents of the specified folder.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder_contents({
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteFolderContents AWS API Documentation
    #
    # @overload delete_folder_contents(params = {})
    # @param [Hash] params ({})
    def delete_folder_contents(params = {}, options = {})
      req = build_request(:delete_folder_contents, params)
      req.send_request(options)
    end

    # Deletes the specified list of labels from a resource.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [Array<String>] :labels
    #   List of labels to delete from the resource.
    #
    # @option params [Boolean] :delete_all
    #   Flag to request removal of all labels from the specified resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_labels({
    #     resource_id: "ResourceIdType", # required
    #     authentication_token: "AuthenticationHeaderType",
    #     labels: ["SharedLabel"],
    #     delete_all: false,
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteLabels AWS API Documentation
    #
    # @overload delete_labels(params = {})
    # @param [Hash] params ({})
    def delete_labels(params = {}, options = {})
      req = build_request(:delete_labels, params)
      req.send_request(options)
    end

    # Deletes the specified subscription from the specified organization.
    #
    # @option params [required, String] :subscription_id
    #   The ID of the subscription.
    #
    # @option params [required, String] :organization_id
    #   The ID of the organization.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_subscription({
    #     subscription_id: "IdType", # required
    #     organization_id: "IdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteNotificationSubscription AWS API Documentation
    #
    # @overload delete_notification_subscription(params = {})
    # @param [Hash] params ({})
    def delete_notification_subscription(params = {}, options = {})
      req = build_request(:delete_notification_subscription, params)
      req.send_request(options)
    end

    # Deletes the specified user from a Simple AD or Microsoft AD directory.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :user_id
    #   The ID of the user.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user({
    #     authentication_token: "AuthenticationHeaderType",
    #     user_id: "IdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteUser AWS API Documentation
    #
    # @overload delete_user(params = {})
    # @param [Hash] params ({})
    def delete_user(params = {}, options = {})
      req = build_request(:delete_user, params)
      req.send_request(options)
    end

    # Describes the user activities in a specified time period.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [Time,DateTime,Date,Integer,String] :start_time
    #   The timestamp that determines the starting time of the activities. The
    #   response includes the activities performed after the specified
    #   timestamp.
    #
    # @option params [Time,DateTime,Date,Integer,String] :end_time
    #   The timestamp that determines the end time of the activities. The
    #   response includes the activities performed before the specified
    #   timestamp.
    #
    # @option params [String] :organization_id
    #   The ID of the organization. This is a mandatory parameter when using
    #   administrative API (SigV4) requests.
    #
    # @option params [String] :user_id
    #   The ID of the user who performed the action. The response includes
    #   activities pertaining to this user. This is an optional parameter and
    #   is only applicable for administrative API (SigV4) requests.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @return [Types::DescribeActivitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeActivitiesResponse#user_activities #user_activities} => Array&lt;Types::Activity&gt;
    #   * {Types::DescribeActivitiesResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activities({
    #     authentication_token: "AuthenticationHeaderType",
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     organization_id: "IdType",
    #     user_id: "IdType",
    #     limit: 1,
    #     marker: "MarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.user_activities #=> Array
    #   resp.user_activities[0].type #=> String, one of "DOCUMENT_CHECKED_IN", "DOCUMENT_CHECKED_OUT", "DOCUMENT_RENAMED", "DOCUMENT_VERSION_UPLOADED", "DOCUMENT_VERSION_DELETED", "DOCUMENT_RECYCLED", "DOCUMENT_RESTORED", "DOCUMENT_REVERTED", "DOCUMENT_SHARED", "DOCUMENT_UNSHARED", "DOCUMENT_SHARE_PERMISSION_CHANGED", "DOCUMENT_SHAREABLE_LINK_CREATED", "DOCUMENT_SHAREABLE_LINK_REMOVED", "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED", "DOCUMENT_MOVED", "DOCUMENT_COMMENT_ADDED", "DOCUMENT_COMMENT_DELETED", "DOCUMENT_ANNOTATION_ADDED", "DOCUMENT_ANNOTATION_DELETED", "FOLDER_CREATED", "FOLDER_DELETED", "FOLDER_RENAMED", "FOLDER_RECYCLED", "FOLDER_RESTORED", "FOLDER_SHARED", "FOLDER_UNSHARED", "FOLDER_SHARE_PERMISSION_CHANGED", "FOLDER_SHAREABLE_LINK_CREATED", "FOLDER_SHAREABLE_LINK_REMOVED", "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED", "FOLDER_MOVED"
    #   resp.user_activities[0].time_stamp #=> Time
    #   resp.user_activities[0].organization_id #=> String
    #   resp.user_activities[0].initiator.id #=> String
    #   resp.user_activities[0].initiator.username #=> String
    #   resp.user_activities[0].initiator.given_name #=> String
    #   resp.user_activities[0].initiator.surname #=> String
    #   resp.user_activities[0].initiator.email_address #=> String
    #   resp.user_activities[0].participants.users #=> Array
    #   resp.user_activities[0].participants.users[0].id #=> String
    #   resp.user_activities[0].participants.users[0].username #=> String
    #   resp.user_activities[0].participants.users[0].given_name #=> String
    #   resp.user_activities[0].participants.users[0].surname #=> String
    #   resp.user_activities[0].participants.users[0].email_address #=> String
    #   resp.user_activities[0].participants.groups #=> Array
    #   resp.user_activities[0].participants.groups[0].id #=> String
    #   resp.user_activities[0].participants.groups[0].name #=> String
    #   resp.user_activities[0].resource_metadata.type #=> String, one of "FOLDER", "DOCUMENT"
    #   resp.user_activities[0].resource_metadata.name #=> String
    #   resp.user_activities[0].resource_metadata.original_name #=> String
    #   resp.user_activities[0].resource_metadata.id #=> String
    #   resp.user_activities[0].resource_metadata.version_id #=> String
    #   resp.user_activities[0].resource_metadata.owner.id #=> String
    #   resp.user_activities[0].resource_metadata.owner.username #=> String
    #   resp.user_activities[0].resource_metadata.owner.given_name #=> String
    #   resp.user_activities[0].resource_metadata.owner.surname #=> String
    #   resp.user_activities[0].resource_metadata.owner.email_address #=> String
    #   resp.user_activities[0].resource_metadata.parent_id #=> String
    #   resp.user_activities[0].original_parent.type #=> String, one of "FOLDER", "DOCUMENT"
    #   resp.user_activities[0].original_parent.name #=> String
    #   resp.user_activities[0].original_parent.original_name #=> String
    #   resp.user_activities[0].original_parent.id #=> String
    #   resp.user_activities[0].original_parent.version_id #=> String
    #   resp.user_activities[0].original_parent.owner.id #=> String
    #   resp.user_activities[0].original_parent.owner.username #=> String
    #   resp.user_activities[0].original_parent.owner.given_name #=> String
    #   resp.user_activities[0].original_parent.owner.surname #=> String
    #   resp.user_activities[0].original_parent.owner.email_address #=> String
    #   resp.user_activities[0].original_parent.parent_id #=> String
    #   resp.user_activities[0].comment_metadata.comment_id #=> String
    #   resp.user_activities[0].comment_metadata.contributor.id #=> String
    #   resp.user_activities[0].comment_metadata.contributor.username #=> String
    #   resp.user_activities[0].comment_metadata.contributor.email_address #=> String
    #   resp.user_activities[0].comment_metadata.contributor.given_name #=> String
    #   resp.user_activities[0].comment_metadata.contributor.surname #=> String
    #   resp.user_activities[0].comment_metadata.contributor.organization_id #=> String
    #   resp.user_activities[0].comment_metadata.contributor.root_folder_id #=> String
    #   resp.user_activities[0].comment_metadata.contributor.recycle_bin_folder_id #=> String
    #   resp.user_activities[0].comment_metadata.contributor.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING"
    #   resp.user_activities[0].comment_metadata.contributor.type #=> String, one of "USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"
    #   resp.user_activities[0].comment_metadata.contributor.created_timestamp #=> Time
    #   resp.user_activities[0].comment_metadata.contributor.modified_timestamp #=> Time
    #   resp.user_activities[0].comment_metadata.contributor.time_zone_id #=> String
    #   resp.user_activities[0].comment_metadata.contributor.locale #=> String, one of "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"
    #   resp.user_activities[0].comment_metadata.contributor.storage.storage_utilized_in_bytes #=> Integer
    #   resp.user_activities[0].comment_metadata.contributor.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.user_activities[0].comment_metadata.contributor.storage.storage_rule.storage_type #=> String, one of "UNLIMITED", "QUOTA"
    #   resp.user_activities[0].comment_metadata.created_timestamp #=> Time
    #   resp.user_activities[0].comment_metadata.comment_status #=> String, one of "DRAFT", "PUBLISHED", "DELETED"
    #   resp.user_activities[0].comment_metadata.recipient_id #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeActivities AWS API Documentation
    #
    # @overload describe_activities(params = {})
    # @param [Hash] params ({})
    def describe_activities(params = {}, options = {})
      req = build_request(:describe_activities, params)
      req.send_request(options)
    end

    # List all the comments for the specified document version.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [required, String] :version_id
    #   The ID of the document version.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. This marker was received from
    #   a previous call.
    #
    # @return [Types::DescribeCommentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCommentsResponse#comments #comments} => Array&lt;Types::Comment&gt;
    #   * {Types::DescribeCommentsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_comments({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     limit: 1,
    #     marker: "MarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.comments #=> Array
    #   resp.comments[0].comment_id #=> String
    #   resp.comments[0].parent_id #=> String
    #   resp.comments[0].thread_id #=> String
    #   resp.comments[0].text #=> String
    #   resp.comments[0].contributor.id #=> String
    #   resp.comments[0].contributor.username #=> String
    #   resp.comments[0].contributor.email_address #=> String
    #   resp.comments[0].contributor.given_name #=> String
    #   resp.comments[0].contributor.surname #=> String
    #   resp.comments[0].contributor.organization_id #=> String
    #   resp.comments[0].contributor.root_folder_id #=> String
    #   resp.comments[0].contributor.recycle_bin_folder_id #=> String
    #   resp.comments[0].contributor.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING"
    #   resp.comments[0].contributor.type #=> String, one of "USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"
    #   resp.comments[0].contributor.created_timestamp #=> Time
    #   resp.comments[0].contributor.modified_timestamp #=> Time
    #   resp.comments[0].contributor.time_zone_id #=> String
    #   resp.comments[0].contributor.locale #=> String, one of "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"
    #   resp.comments[0].contributor.storage.storage_utilized_in_bytes #=> Integer
    #   resp.comments[0].contributor.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.comments[0].contributor.storage.storage_rule.storage_type #=> String, one of "UNLIMITED", "QUOTA"
    #   resp.comments[0].created_timestamp #=> Time
    #   resp.comments[0].status #=> String, one of "DRAFT", "PUBLISHED", "DELETED"
    #   resp.comments[0].visibility #=> String, one of "PUBLIC", "PRIVATE"
    #   resp.comments[0].recipient_id #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeComments AWS API Documentation
    #
    # @overload describe_comments(params = {})
    # @param [Hash] params ({})
    def describe_comments(params = {}, options = {})
      req = build_request(:describe_comments, params)
      req.send_request(options)
    end

    # Retrieves the document versions for the specified document.
    #
    # By default, only active versions are returned.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of versions to return with this call.
    #
    # @option params [String] :include
    #   A comma-separated list of values. Specify "INITIALIZED" to include
    #   incomplete versions.
    #
    # @option params [String] :fields
    #   Specify "SOURCE" to include initialized versions and a URL for the
    #   source document.
    #
    # @return [Types::DescribeDocumentVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDocumentVersionsResponse#document_versions #document_versions} => Array&lt;Types::DocumentVersionMetadata&gt;
    #   * {Types::DescribeDocumentVersionsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_versions({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     marker: "PageMarkerType",
    #     limit: 1,
    #     include: "FieldNamesType",
    #     fields: "FieldNamesType",
    #   })
    #
    # @example Response structure
    #
    #   resp.document_versions #=> Array
    #   resp.document_versions[0].id #=> String
    #   resp.document_versions[0].name #=> String
    #   resp.document_versions[0].content_type #=> String
    #   resp.document_versions[0].size #=> Integer
    #   resp.document_versions[0].signature #=> String
    #   resp.document_versions[0].status #=> String, one of "INITIALIZED", "ACTIVE"
    #   resp.document_versions[0].created_timestamp #=> Time
    #   resp.document_versions[0].modified_timestamp #=> Time
    #   resp.document_versions[0].content_created_timestamp #=> Time
    #   resp.document_versions[0].content_modified_timestamp #=> Time
    #   resp.document_versions[0].creator_id #=> String
    #   resp.document_versions[0].thumbnail #=> Hash
    #   resp.document_versions[0].thumbnail["DocumentThumbnailType"] #=> String
    #   resp.document_versions[0].source #=> Hash
    #   resp.document_versions[0].source["DocumentSourceType"] #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeDocumentVersions AWS API Documentation
    #
    # @overload describe_document_versions(params = {})
    # @param [Hash] params ({})
    def describe_document_versions(params = {}, options = {})
      req = build_request(:describe_document_versions, params)
      req.send_request(options)
    end

    # Describes the contents of the specified folder, including its
    # documents and subfolders.
    #
    # By default, Amazon WorkDocs returns the first 100 active document and
    # folder metadata items. If there are more results, the response
    # includes a marker that you can use to request the next set of results.
    # You can also request initialized documents.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [String] :sort
    #   The sorting criteria.
    #
    # @option params [String] :order
    #   The order for the contents of the folder.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. This marker was received from
    #   a previous call.
    #
    # @option params [String] :type
    #   The type of items.
    #
    # @option params [String] :include
    #   The contents to include. Specify "INITIALIZED" to include
    #   initialized documents.
    #
    # @return [Types::DescribeFolderContentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeFolderContentsResponse#folders #folders} => Array&lt;Types::FolderMetadata&gt;
    #   * {Types::DescribeFolderContentsResponse#documents #documents} => Array&lt;Types::DocumentMetadata&gt;
    #   * {Types::DescribeFolderContentsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder_contents({
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #     sort: "DATE", # accepts DATE, NAME
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     limit: 1,
    #     marker: "PageMarkerType",
    #     type: "ALL", # accepts ALL, DOCUMENT, FOLDER
    #     include: "FieldNamesType",
    #   })
    #
    # @example Response structure
    #
    #   resp.folders #=> Array
    #   resp.folders[0].id #=> String
    #   resp.folders[0].name #=> String
    #   resp.folders[0].creator_id #=> String
    #   resp.folders[0].parent_folder_id #=> String
    #   resp.folders[0].created_timestamp #=> Time
    #   resp.folders[0].modified_timestamp #=> Time
    #   resp.folders[0].resource_state #=> String, one of "ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"
    #   resp.folders[0].signature #=> String
    #   resp.folders[0].labels #=> Array
    #   resp.folders[0].labels[0] #=> String
    #   resp.folders[0].size #=> Integer
    #   resp.folders[0].latest_version_size #=> Integer
    #   resp.documents #=> Array
    #   resp.documents[0].id #=> String
    #   resp.documents[0].creator_id #=> String
    #   resp.documents[0].parent_folder_id #=> String
    #   resp.documents[0].created_timestamp #=> Time
    #   resp.documents[0].modified_timestamp #=> Time
    #   resp.documents[0].latest_version_metadata.id #=> String
    #   resp.documents[0].latest_version_metadata.name #=> String
    #   resp.documents[0].latest_version_metadata.content_type #=> String
    #   resp.documents[0].latest_version_metadata.size #=> Integer
    #   resp.documents[0].latest_version_metadata.signature #=> String
    #   resp.documents[0].latest_version_metadata.status #=> String, one of "INITIALIZED", "ACTIVE"
    #   resp.documents[0].latest_version_metadata.created_timestamp #=> Time
    #   resp.documents[0].latest_version_metadata.modified_timestamp #=> Time
    #   resp.documents[0].latest_version_metadata.content_created_timestamp #=> Time
    #   resp.documents[0].latest_version_metadata.content_modified_timestamp #=> Time
    #   resp.documents[0].latest_version_metadata.creator_id #=> String
    #   resp.documents[0].latest_version_metadata.thumbnail #=> Hash
    #   resp.documents[0].latest_version_metadata.thumbnail["DocumentThumbnailType"] #=> String
    #   resp.documents[0].latest_version_metadata.source #=> Hash
    #   resp.documents[0].latest_version_metadata.source["DocumentSourceType"] #=> String
    #   resp.documents[0].resource_state #=> String, one of "ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"
    #   resp.documents[0].labels #=> Array
    #   resp.documents[0].labels[0] #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeFolderContents AWS API Documentation
    #
    # @overload describe_folder_contents(params = {})
    # @param [Hash] params ({})
    def describe_folder_contents(params = {}, options = {})
      req = build_request(:describe_folder_contents, params)
      req.send_request(options)
    end

    # Describes the groups specified by query.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :search_query
    #   A query to describe groups by group name.
    #
    # @option params [String] :organization_id
    #   The ID of the organization.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return with this call.
    #
    # @return [Types::DescribeGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeGroupsResponse#groups #groups} => Array&lt;Types::GroupMetadata&gt;
    #   * {Types::DescribeGroupsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_groups({
    #     authentication_token: "AuthenticationHeaderType",
    #     search_query: "SearchQueryType", # required
    #     organization_id: "IdType",
    #     marker: "MarkerType",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.groups #=> Array
    #   resp.groups[0].id #=> String
    #   resp.groups[0].name #=> String
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeGroups AWS API Documentation
    #
    # @overload describe_groups(params = {})
    # @param [Hash] params ({})
    def describe_groups(params = {}, options = {})
      req = build_request(:describe_groups, params)
      req.send_request(options)
    end

    # Lists the specified notification subscriptions.
    #
    # @option params [required, String] :organization_id
    #   The ID of the organization.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return with this call.
    #
    # @return [Types::DescribeNotificationSubscriptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeNotificationSubscriptionsResponse#subscriptions #subscriptions} => Array&lt;Types::Subscription&gt;
    #   * {Types::DescribeNotificationSubscriptionsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_subscriptions({
    #     organization_id: "IdType", # required
    #     marker: "PageMarkerType",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.subscriptions #=> Array
    #   resp.subscriptions[0].subscription_id #=> String
    #   resp.subscriptions[0].end_point #=> String
    #   resp.subscriptions[0].protocol #=> String, one of "HTTPS"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeNotificationSubscriptions AWS API Documentation
    #
    # @overload describe_notification_subscriptions(params = {})
    # @param [Hash] params ({})
    def describe_notification_subscriptions(params = {}, options = {})
      req = build_request(:describe_notification_subscriptions, params)
      req.send_request(options)
    end

    # Describes the permissions of a specified resource.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource.
    #
    # @option params [String] :principal_id
    #   The ID of the principal to filter permissions by.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return with this call.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call)
    #
    # @return [Types::DescribeResourcePermissionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeResourcePermissionsResponse#principals #principals} => Array&lt;Types::Principal&gt;
    #   * {Types::DescribeResourcePermissionsResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_permissions({
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     principal_id: "IdType",
    #     limit: 1,
    #     marker: "PageMarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0].id #=> String
    #   resp.principals[0].type #=> String, one of "USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"
    #   resp.principals[0].roles #=> Array
    #   resp.principals[0].roles[0].role #=> String, one of "VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"
    #   resp.principals[0].roles[0].type #=> String, one of "DIRECT", "INHERITED"
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeResourcePermissions AWS API Documentation
    #
    # @overload describe_resource_permissions(params = {})
    # @param [Hash] params ({})
    def describe_resource_permissions(params = {}, options = {})
      req = build_request(:describe_resource_permissions, params)
      req.send_request(options)
    end

    # Describes the current user's special folders; the `RootFolder` and
    # the `RecycleBin`. `RootFolder` is the root of user's files and
    # folders and `RecycleBin` is the root of recycled items. This is not a
    # valid action for SigV4 (administrative API) clients.
    #
    # @option params [required, String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @return [Types::DescribeRootFoldersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRootFoldersResponse#folders #folders} => Array&lt;Types::FolderMetadata&gt;
    #   * {Types::DescribeRootFoldersResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_root_folders({
    #     authentication_token: "AuthenticationHeaderType", # required
    #     limit: 1,
    #     marker: "PageMarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.folders #=> Array
    #   resp.folders[0].id #=> String
    #   resp.folders[0].name #=> String
    #   resp.folders[0].creator_id #=> String
    #   resp.folders[0].parent_folder_id #=> String
    #   resp.folders[0].created_timestamp #=> Time
    #   resp.folders[0].modified_timestamp #=> Time
    #   resp.folders[0].resource_state #=> String, one of "ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"
    #   resp.folders[0].signature #=> String
    #   resp.folders[0].labels #=> Array
    #   resp.folders[0].labels[0] #=> String
    #   resp.folders[0].size #=> Integer
    #   resp.folders[0].latest_version_size #=> Integer
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeRootFolders AWS API Documentation
    #
    # @overload describe_root_folders(params = {})
    # @param [Hash] params ({})
    def describe_root_folders(params = {}, options = {})
      req = build_request(:describe_root_folders, params)
      req.send_request(options)
    end

    # Describes the specified users. You can describe all users or filter
    # the results (for example, by status or organization).
    #
    # By default, Amazon WorkDocs returns the first 24 active or pending
    # users. If there are more results, the response includes a marker that
    # you can use to request the next set of results.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [String] :organization_id
    #   The ID of the organization.
    #
    # @option params [String] :user_ids
    #   The IDs of the users.
    #
    # @option params [String] :query
    #   A query to filter users by user name.
    #
    # @option params [String] :include
    #   The state of the users. Specify "ALL" to include inactive users.
    #
    # @option params [String] :order
    #   The order for the results.
    #
    # @option params [String] :sort
    #   The sorting criteria.
    #
    # @option params [String] :marker
    #   The marker for the next set of results. (You received this marker from
    #   a previous call.)
    #
    # @option params [Integer] :limit
    #   The maximum number of items to return.
    #
    # @option params [String] :fields
    #   A comma-separated list of values. Specify "STORAGE\_METADATA" to
    #   include the user storage quota and utilization information.
    #
    # @return [Types::DescribeUsersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeUsersResponse#users #users} => Array&lt;Types::User&gt;
    #   * {Types::DescribeUsersResponse#total_number_of_users #total_number_of_users} => Integer
    #   * {Types::DescribeUsersResponse#marker #marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_users({
    #     authentication_token: "AuthenticationHeaderType",
    #     organization_id: "IdType",
    #     user_ids: "UserIdsType",
    #     query: "SearchQueryType",
    #     include: "ALL", # accepts ALL, ACTIVE_PENDING
    #     order: "ASCENDING", # accepts ASCENDING, DESCENDING
    #     sort: "USER_NAME", # accepts USER_NAME, FULL_NAME, STORAGE_LIMIT, USER_STATUS, STORAGE_USED
    #     marker: "PageMarkerType",
    #     limit: 1,
    #     fields: "FieldNamesType",
    #   })
    #
    # @example Response structure
    #
    #   resp.users #=> Array
    #   resp.users[0].id #=> String
    #   resp.users[0].username #=> String
    #   resp.users[0].email_address #=> String
    #   resp.users[0].given_name #=> String
    #   resp.users[0].surname #=> String
    #   resp.users[0].organization_id #=> String
    #   resp.users[0].root_folder_id #=> String
    #   resp.users[0].recycle_bin_folder_id #=> String
    #   resp.users[0].status #=> String, one of "ACTIVE", "INACTIVE", "PENDING"
    #   resp.users[0].type #=> String, one of "USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"
    #   resp.users[0].created_timestamp #=> Time
    #   resp.users[0].modified_timestamp #=> Time
    #   resp.users[0].time_zone_id #=> String
    #   resp.users[0].locale #=> String, one of "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"
    #   resp.users[0].storage.storage_utilized_in_bytes #=> Integer
    #   resp.users[0].storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.users[0].storage.storage_rule.storage_type #=> String, one of "UNLIMITED", "QUOTA"
    #   resp.total_number_of_users #=> Integer
    #   resp.marker #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeUsers AWS API Documentation
    #
    # @overload describe_users(params = {})
    # @param [Hash] params ({})
    def describe_users(params = {}, options = {})
      req = build_request(:describe_users, params)
      req.send_request(options)
    end

    # Retrieves details of the current user for whom the authentication
    # token was generated. This is not a valid action for SigV4
    # (administrative API) clients.
    #
    # @option params [required, String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @return [Types::GetCurrentUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetCurrentUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_user({
    #     authentication_token: "AuthenticationHeaderType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.user.id #=> String
    #   resp.user.username #=> String
    #   resp.user.email_address #=> String
    #   resp.user.given_name #=> String
    #   resp.user.surname #=> String
    #   resp.user.organization_id #=> String
    #   resp.user.root_folder_id #=> String
    #   resp.user.recycle_bin_folder_id #=> String
    #   resp.user.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING"
    #   resp.user.type #=> String, one of "USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"
    #   resp.user.created_timestamp #=> Time
    #   resp.user.modified_timestamp #=> Time
    #   resp.user.time_zone_id #=> String
    #   resp.user.locale #=> String, one of "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"
    #   resp.user.storage.storage_utilized_in_bytes #=> Integer
    #   resp.user.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.user.storage.storage_rule.storage_type #=> String, one of "UNLIMITED", "QUOTA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetCurrentUser AWS API Documentation
    #
    # @overload get_current_user(params = {})
    # @param [Hash] params ({})
    def get_current_user(params = {}, options = {})
      req = build_request(:get_current_user, params)
      req.send_request(options)
    end

    # Retrieves details of a document.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [Boolean] :include_custom_metadata
    #   Set this to `TRUE` to include custom metadata in the response.
    #
    # @return [Types::GetDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentResponse#metadata #metadata} => Types::DocumentMetadata
    #   * {Types::GetDocumentResponse#custom_metadata #custom_metadata} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     include_custom_metadata: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.id #=> String
    #   resp.metadata.creator_id #=> String
    #   resp.metadata.parent_folder_id #=> String
    #   resp.metadata.created_timestamp #=> Time
    #   resp.metadata.modified_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.id #=> String
    #   resp.metadata.latest_version_metadata.name #=> String
    #   resp.metadata.latest_version_metadata.content_type #=> String
    #   resp.metadata.latest_version_metadata.size #=> Integer
    #   resp.metadata.latest_version_metadata.signature #=> String
    #   resp.metadata.latest_version_metadata.status #=> String, one of "INITIALIZED", "ACTIVE"
    #   resp.metadata.latest_version_metadata.created_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.modified_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.content_created_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.content_modified_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.creator_id #=> String
    #   resp.metadata.latest_version_metadata.thumbnail #=> Hash
    #   resp.metadata.latest_version_metadata.thumbnail["DocumentThumbnailType"] #=> String
    #   resp.metadata.latest_version_metadata.source #=> Hash
    #   resp.metadata.latest_version_metadata.source["DocumentSourceType"] #=> String
    #   resp.metadata.resource_state #=> String, one of "ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"
    #   resp.metadata.labels #=> Array
    #   resp.metadata.labels[0] #=> String
    #   resp.custom_metadata #=> Hash
    #   resp.custom_metadata["CustomMetadataKeyType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocument AWS API Documentation
    #
    # @overload get_document(params = {})
    # @param [Hash] params ({})
    def get_document(params = {}, options = {})
      req = build_request(:get_document, params)
      req.send_request(options)
    end

    # Retrieves the path information (the hierarchy from the root folder)
    # for the requested document.
    #
    # By default, Amazon WorkDocs returns a maximum of 100 levels upwards
    # from the requested document and only includes the IDs of the parent
    # folders in the path. You can limit the maximum number of levels. You
    # can also request the names of the parent folders.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [Integer] :limit
    #   The maximum number of levels in the hierarchy to return.
    #
    # @option params [String] :fields
    #   A comma-separated list of values. Specify `NAME` to include the names
    #   of the parent folders.
    #
    # @option params [String] :marker
    #   This value is not supported.
    #
    # @return [Types::GetDocumentPathResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentPathResponse#path #path} => Types::ResourcePath
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_path({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "IdType", # required
    #     limit: 1,
    #     fields: "FieldNamesType",
    #     marker: "PageMarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.path.components #=> Array
    #   resp.path.components[0].id #=> String
    #   resp.path.components[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentPath AWS API Documentation
    #
    # @overload get_document_path(params = {})
    # @param [Hash] params ({})
    def get_document_path(params = {}, options = {})
      req = build_request(:get_document_path, params)
      req.send_request(options)
    end

    # Retrieves version metadata for the specified document.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [required, String] :version_id
    #   The version ID of the document.
    #
    # @option params [String] :fields
    #   A comma-separated list of values. Specify "SOURCE" to include a URL
    #   for the source document.
    #
    # @option params [Boolean] :include_custom_metadata
    #   Set this to TRUE to include custom metadata in the response.
    #
    # @return [Types::GetDocumentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDocumentVersionResponse#metadata #metadata} => Types::DocumentVersionMetadata
    #   * {Types::GetDocumentVersionResponse#custom_metadata #custom_metadata} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_version({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     fields: "FieldNamesType",
    #     include_custom_metadata: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.id #=> String
    #   resp.metadata.name #=> String
    #   resp.metadata.content_type #=> String
    #   resp.metadata.size #=> Integer
    #   resp.metadata.signature #=> String
    #   resp.metadata.status #=> String, one of "INITIALIZED", "ACTIVE"
    #   resp.metadata.created_timestamp #=> Time
    #   resp.metadata.modified_timestamp #=> Time
    #   resp.metadata.content_created_timestamp #=> Time
    #   resp.metadata.content_modified_timestamp #=> Time
    #   resp.metadata.creator_id #=> String
    #   resp.metadata.thumbnail #=> Hash
    #   resp.metadata.thumbnail["DocumentThumbnailType"] #=> String
    #   resp.metadata.source #=> Hash
    #   resp.metadata.source["DocumentSourceType"] #=> String
    #   resp.custom_metadata #=> Hash
    #   resp.custom_metadata["CustomMetadataKeyType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentVersion AWS API Documentation
    #
    # @overload get_document_version(params = {})
    # @param [Hash] params ({})
    def get_document_version(params = {}, options = {})
      req = build_request(:get_document_version, params)
      req.send_request(options)
    end

    # Retrieves the metadata of the specified folder.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [Boolean] :include_custom_metadata
    #   Set to TRUE to include custom metadata in the response.
    #
    # @return [Types::GetFolderResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFolderResponse#metadata #metadata} => Types::FolderMetadata
    #   * {Types::GetFolderResponse#custom_metadata #custom_metadata} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_folder({
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #     include_custom_metadata: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.id #=> String
    #   resp.metadata.name #=> String
    #   resp.metadata.creator_id #=> String
    #   resp.metadata.parent_folder_id #=> String
    #   resp.metadata.created_timestamp #=> Time
    #   resp.metadata.modified_timestamp #=> Time
    #   resp.metadata.resource_state #=> String, one of "ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"
    #   resp.metadata.signature #=> String
    #   resp.metadata.labels #=> Array
    #   resp.metadata.labels[0] #=> String
    #   resp.metadata.size #=> Integer
    #   resp.metadata.latest_version_size #=> Integer
    #   resp.custom_metadata #=> Hash
    #   resp.custom_metadata["CustomMetadataKeyType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetFolder AWS API Documentation
    #
    # @overload get_folder(params = {})
    # @param [Hash] params ({})
    def get_folder(params = {}, options = {})
      req = build_request(:get_folder, params)
      req.send_request(options)
    end

    # Retrieves the path information (the hierarchy from the root folder)
    # for the specified folder.
    #
    # By default, Amazon WorkDocs returns a maximum of 100 levels upwards
    # from the requested folder and only includes the IDs of the parent
    # folders in the path. You can limit the maximum number of levels. You
    # can also request the parent folder names.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [Integer] :limit
    #   The maximum number of levels in the hierarchy to return.
    #
    # @option params [String] :fields
    #   A comma-separated list of values. Specify "NAME" to include the
    #   names of the parent folders.
    #
    # @option params [String] :marker
    #   This value is not supported.
    #
    # @return [Types::GetFolderPathResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetFolderPathResponse#path #path} => Types::ResourcePath
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_folder_path({
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "IdType", # required
    #     limit: 1,
    #     fields: "FieldNamesType",
    #     marker: "PageMarkerType",
    #   })
    #
    # @example Response structure
    #
    #   resp.path.components #=> Array
    #   resp.path.components[0].id #=> String
    #   resp.path.components[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetFolderPath AWS API Documentation
    #
    # @overload get_folder_path(params = {})
    # @param [Hash] params ({})
    def get_folder_path(params = {}, options = {})
      req = build_request(:get_folder_path, params)
      req.send_request(options)
    end

    # Creates a new document object and version object.
    #
    # The client specifies the parent folder ID and name of the document to
    # upload. The ID is optionally specified when creating a new version of
    # an existing document. This is the first step to upload a document.
    # Next, upload the document to the URL returned from the call, and then
    # call UpdateDocumentVersion.
    #
    # To cancel the document upload, call AbortDocumentVersionUpload.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [String] :id
    #   The ID of the document.
    #
    # @option params [String] :name
    #   The name of the document.
    #
    # @option params [Time,DateTime,Date,Integer,String] :content_created_timestamp
    #   The timestamp when the content of the document was originally created.
    #
    # @option params [Time,DateTime,Date,Integer,String] :content_modified_timestamp
    #   The timestamp when the content of the document was modified.
    #
    # @option params [String] :content_type
    #   The content type of the document.
    #
    # @option params [Integer] :document_size_in_bytes
    #   The size of the document, in bytes.
    #
    # @option params [required, String] :parent_folder_id
    #   The ID of the parent folder.
    #
    # @return [Types::InitiateDocumentVersionUploadResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateDocumentVersionUploadResponse#metadata #metadata} => Types::DocumentMetadata
    #   * {Types::InitiateDocumentVersionUploadResponse#upload_metadata #upload_metadata} => Types::UploadMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_document_version_upload({
    #     authentication_token: "AuthenticationHeaderType",
    #     id: "ResourceIdType",
    #     name: "ResourceNameType",
    #     content_created_timestamp: Time.now,
    #     content_modified_timestamp: Time.now,
    #     content_type: "DocumentContentType",
    #     document_size_in_bytes: 1,
    #     parent_folder_id: "ResourceIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.metadata.id #=> String
    #   resp.metadata.creator_id #=> String
    #   resp.metadata.parent_folder_id #=> String
    #   resp.metadata.created_timestamp #=> Time
    #   resp.metadata.modified_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.id #=> String
    #   resp.metadata.latest_version_metadata.name #=> String
    #   resp.metadata.latest_version_metadata.content_type #=> String
    #   resp.metadata.latest_version_metadata.size #=> Integer
    #   resp.metadata.latest_version_metadata.signature #=> String
    #   resp.metadata.latest_version_metadata.status #=> String, one of "INITIALIZED", "ACTIVE"
    #   resp.metadata.latest_version_metadata.created_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.modified_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.content_created_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.content_modified_timestamp #=> Time
    #   resp.metadata.latest_version_metadata.creator_id #=> String
    #   resp.metadata.latest_version_metadata.thumbnail #=> Hash
    #   resp.metadata.latest_version_metadata.thumbnail["DocumentThumbnailType"] #=> String
    #   resp.metadata.latest_version_metadata.source #=> Hash
    #   resp.metadata.latest_version_metadata.source["DocumentSourceType"] #=> String
    #   resp.metadata.resource_state #=> String, one of "ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"
    #   resp.metadata.labels #=> Array
    #   resp.metadata.labels[0] #=> String
    #   resp.upload_metadata.upload_url #=> String
    #   resp.upload_metadata.signed_headers #=> Hash
    #   resp.upload_metadata.signed_headers["HeaderNameType"] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/InitiateDocumentVersionUpload AWS API Documentation
    #
    # @overload initiate_document_version_upload(params = {})
    # @param [Hash] params ({})
    def initiate_document_version_upload(params = {}, options = {})
      req = build_request(:initiate_document_version_upload, params)
      req.send_request(options)
    end

    # Removes all the permissions from the specified resource.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_all_resource_permissions({
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/RemoveAllResourcePermissions AWS API Documentation
    #
    # @overload remove_all_resource_permissions(params = {})
    # @param [Hash] params ({})
    def remove_all_resource_permissions(params = {}, options = {})
      req = build_request(:remove_all_resource_permissions, params)
      req.send_request(options)
    end

    # Removes the permission for the specified principal from the specified
    # resource.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :resource_id
    #   The ID of the resource.
    #
    # @option params [required, String] :principal_id
    #   The principal ID of the resource.
    #
    # @option params [String] :principal_type
    #   The principal type of the resource.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_resource_permission({
    #     authentication_token: "AuthenticationHeaderType",
    #     resource_id: "ResourceIdType", # required
    #     principal_id: "IdType", # required
    #     principal_type: "USER", # accepts USER, GROUP, INVITE, ANONYMOUS, ORGANIZATION
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/RemoveResourcePermission AWS API Documentation
    #
    # @overload remove_resource_permission(params = {})
    # @param [Hash] params ({})
    def remove_resource_permission(params = {}, options = {})
      req = build_request(:remove_resource_permission, params)
      req.send_request(options)
    end

    # Updates the specified attributes of a document. The user must have
    # access to both the document and its parent folder, if applicable.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [String] :name
    #   The name of the document.
    #
    # @option params [String] :parent_folder_id
    #   The ID of the parent folder.
    #
    # @option params [String] :resource_state
    #   The resource state of the document. Only ACTIVE and RECYCLED are
    #   supported.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     name: "ResourceNameType",
    #     parent_folder_id: "ResourceIdType",
    #     resource_state: "ACTIVE", # accepts ACTIVE, RESTORING, RECYCLING, RECYCLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateDocument AWS API Documentation
    #
    # @overload update_document(params = {})
    # @param [Hash] params ({})
    def update_document(params = {}, options = {})
      req = build_request(:update_document, params)
      req.send_request(options)
    end

    # Changes the status of the document version to ACTIVE.
    #
    # Amazon WorkDocs also sets its document container to ACTIVE. This is
    # the last step in a document upload, after the client uploads the
    # document to an S3-presigned URL returned by
    # InitiateDocumentVersionUpload.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :document_id
    #   The ID of the document.
    #
    # @option params [required, String] :version_id
    #   The version ID of the document.
    #
    # @option params [String] :version_status
    #   The status of the version.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document_version({
    #     authentication_token: "AuthenticationHeaderType",
    #     document_id: "ResourceIdType", # required
    #     version_id: "DocumentVersionIdType", # required
    #     version_status: "ACTIVE", # accepts ACTIVE
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateDocumentVersion AWS API Documentation
    #
    # @overload update_document_version(params = {})
    # @param [Hash] params ({})
    def update_document_version(params = {}, options = {})
      req = build_request(:update_document_version, params)
      req.send_request(options)
    end

    # Updates the specified attributes of the specified folder. The user
    # must have access to both the folder and its parent folder, if
    # applicable.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :folder_id
    #   The ID of the folder.
    #
    # @option params [String] :name
    #   The name of the folder.
    #
    # @option params [String] :parent_folder_id
    #   The ID of the parent folder.
    #
    # @option params [String] :resource_state
    #   The resource state of the folder. Only ACTIVE and RECYCLED are
    #   accepted values from the API.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_folder({
    #     authentication_token: "AuthenticationHeaderType",
    #     folder_id: "ResourceIdType", # required
    #     name: "ResourceNameType",
    #     parent_folder_id: "ResourceIdType",
    #     resource_state: "ACTIVE", # accepts ACTIVE, RESTORING, RECYCLING, RECYCLED
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateFolder AWS API Documentation
    #
    # @overload update_folder(params = {})
    # @param [Hash] params ({})
    def update_folder(params = {}, options = {})
      req = build_request(:update_folder, params)
      req.send_request(options)
    end

    # Updates the specified attributes of the specified user, and grants or
    # revokes administrative privileges to the Amazon WorkDocs site.
    #
    # @option params [String] :authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when using
    #   administrative API actions, as in accessing the API using AWS
    #   credentials.
    #
    # @option params [required, String] :user_id
    #   The ID of the user.
    #
    # @option params [String] :given_name
    #   The given name of the user.
    #
    # @option params [String] :surname
    #   The surname of the user.
    #
    # @option params [String] :type
    #   The type of the user.
    #
    # @option params [Types::StorageRuleType] :storage_rule
    #   The amount of storage for the user.
    #
    # @option params [String] :time_zone_id
    #   The time zone ID of the user.
    #
    # @option params [String] :locale
    #   The locale of the user.
    #
    # @option params [String] :grant_poweruser_privileges
    #   Boolean value to determine whether the user is granted Poweruser
    #   privileges.
    #
    # @return [Types::UpdateUserResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateUserResponse#user #user} => Types::User
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user({
    #     authentication_token: "AuthenticationHeaderType",
    #     user_id: "IdType", # required
    #     given_name: "UserAttributeValueType",
    #     surname: "UserAttributeValueType",
    #     type: "USER", # accepts USER, ADMIN, POWERUSER, MINIMALUSER, WORKSPACESUSER
    #     storage_rule: {
    #       storage_allocated_in_bytes: 1,
    #       storage_type: "UNLIMITED", # accepts UNLIMITED, QUOTA
    #     },
    #     time_zone_id: "TimeZoneIdType",
    #     locale: "en", # accepts en, fr, ko, de, es, ja, ru, zh_CN, zh_TW, pt_BR, default
    #     grant_poweruser_privileges: "TRUE", # accepts TRUE, FALSE
    #   })
    #
    # @example Response structure
    #
    #   resp.user.id #=> String
    #   resp.user.username #=> String
    #   resp.user.email_address #=> String
    #   resp.user.given_name #=> String
    #   resp.user.surname #=> String
    #   resp.user.organization_id #=> String
    #   resp.user.root_folder_id #=> String
    #   resp.user.recycle_bin_folder_id #=> String
    #   resp.user.status #=> String, one of "ACTIVE", "INACTIVE", "PENDING"
    #   resp.user.type #=> String, one of "USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"
    #   resp.user.created_timestamp #=> Time
    #   resp.user.modified_timestamp #=> Time
    #   resp.user.time_zone_id #=> String
    #   resp.user.locale #=> String, one of "en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"
    #   resp.user.storage.storage_utilized_in_bytes #=> Integer
    #   resp.user.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.user.storage.storage_rule.storage_type #=> String, one of "UNLIMITED", "QUOTA"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateUser AWS API Documentation
    #
    # @overload update_user(params = {})
    # @param [Hash] params ({})
    def update_user(params = {}, options = {})
      req = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-workdocs'
      context[:gem_version] = '1.4.0'
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
