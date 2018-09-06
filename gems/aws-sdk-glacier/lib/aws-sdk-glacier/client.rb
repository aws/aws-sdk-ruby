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
require 'aws-sdk-glacier/plugins/account_id.rb'
require 'aws-sdk-glacier/plugins/api_version.rb'
require 'aws-sdk-glacier/plugins/checksums.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:glacier)

module Aws::Glacier
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :glacier

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
    add_plugin(Aws::Glacier::Plugins::AccountId)
    add_plugin(Aws::Glacier::Plugins::ApiVersion)
    add_plugin(Aws::Glacier::Plugins::Checksums)

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
    # @option options [String] :account_id ("-")
    #   The default Glacier AWS account ID to use for all glacier
    #   operations. The default value of `-` uses the account
    #   your `:credentials` belong to.
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

    # This operation aborts a multipart upload identified by the upload ID.
    #
    # After the Abort Multipart Upload request succeeds, you cannot upload
    # any more parts to the multipart upload or complete the multipart
    # upload. Aborting a completed upload fails. However, aborting an
    # already-aborted upload will succeed, for a short time. For more
    # information about uploading a part and completing a multipart upload,
    # see UploadMultipartPart and CompleteMultipartUpload.
    #
    # This operation is idempotent.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and underlying REST API, see [Working with
    # Archives in Amazon Glacier][2] and [Abort Multipart Upload][3] in the
    # *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-abort-upload.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :upload_id
    #   The upload ID of the multipart upload to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To abort a multipart upload identified by the upload ID
    #
    #   # The example deletes an in-progress multipart upload to a vault named my-vault:
    #
    #   resp = client.abort_multipart_upload({
    #     account_id: "-", 
    #     upload_id: "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ", 
    #     vault_name: "my-vault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_multipart_upload({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     upload_id: "string", # required
    #   })
    #
    # @overload abort_multipart_upload(params = {})
    # @param [Hash] params ({})
    def abort_multipart_upload(params = {}, options = {})
      req = build_request(:abort_multipart_upload, params)
      req.send_request(options)
    end

    # This operation aborts the vault locking process if the vault lock is
    # not in the `Locked` state. If the vault lock is in the `Locked` state
    # when this operation is requested, the operation returns an
    # `AccessDeniedException` error. Aborting the vault locking process
    # removes the vault lock policy from the specified vault.
    #
    # A vault lock is put into the `InProgress` state by calling
    # InitiateVaultLock. A vault lock is put into the `Locked` state by
    # calling CompleteVaultLock. You can get the state of a vault lock by
    # calling GetVaultLock. For more information about the vault locking
    # process, see [Amazon Glacier Vault Lock][1]. For more information
    # about vault lock policies, see [Amazon Glacier Access Control with
    # Vault Lock Policies][2].
    #
    # This operation is idempotent. You can successfully invoke this
    # operation multiple times, if the vault lock is in the `InProgress`
    # state or if there is no policy associated with the vault.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID. This value must match the
    #   AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-') in
    #   the ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To abort a vault lock
    #
    #   # The example aborts the vault locking process if the vault lock is not in the Locked state for the vault named
    #   # examplevault.
    #
    #   resp = client.abort_vault_lock({
    #     account_id: "-", 
    #     vault_name: "examplevault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_vault_lock({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @overload abort_vault_lock(params = {})
    # @param [Hash] params ({})
    def abort_vault_lock(params = {}, options = {})
      req = build_request(:abort_vault_lock, params)
      req.send_request(options)
    end

    # This operation adds the specified tags to a vault. Each tag is
    # composed of a key and a value. Each vault can have up to 10 tags. If
    # your request would cause the tag limit for the vault to be exceeded,
    # the operation throws the `LimitExceededException` error. If a tag
    # already exists on the vault under a specified key, the existing key
    # value will be overwritten. For more information about tags, see
    # [Tagging Amazon Glacier Resources][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [Hash<String,String>] :tags
    #   The tags to add to the vault. Each tag is composed of a key and a
    #   value. The value can be an empty string.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add tags to a vault
    #
    #   # The example adds two tags to a my-vault.
    #
    #   resp = client.add_tags_to_vault({
    #     tags: {
    #       "examplekey1" => "examplevalue1", 
    #       "examplekey2" => "examplevalue2", 
    #     }, 
    #     account_id: "-", 
    #     vault_name: "my-vault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_tags_to_vault({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     tags: {
    #       "TagKey" => "TagValue",
    #     },
    #   })
    #
    # @overload add_tags_to_vault(params = {})
    # @param [Hash] params ({})
    def add_tags_to_vault(params = {}, options = {})
      req = build_request(:add_tags_to_vault, params)
      req.send_request(options)
    end

    # You call this operation to inform Amazon Glacier that all the archive
    # parts have been uploaded and that Amazon Glacier can now assemble the
    # archive from the uploaded parts. After assembling and saving the
    # archive to the vault, Amazon Glacier returns the URI path of the newly
    # created archive resource. Using the URI path, you can then access the
    # archive. After you upload an archive, you should save the archive ID
    # returned to retrieve the archive at a later point. You can also get
    # the vault inventory to obtain a list of archive IDs in a vault. For
    # more information, see InitiateJob.
    #
    # In the request, you must include the computed SHA256 tree hash of the
    # entire archive you have uploaded. For information about computing a
    # SHA256 tree hash, see [Computing Checksums][1]. On the server side,
    # Amazon Glacier also constructs the SHA256 tree hash of the assembled
    # archive. If the values match, Amazon Glacier saves the archive to the
    # vault; otherwise, it returns an error, and the operation fails. The
    # ListParts operation returns a list of parts uploaded for a specific
    # multipart upload. It includes checksum information for each uploaded
    # part that can be used to debug a bad checksum issue.
    #
    # Additionally, Amazon Glacier also checks for any missing content
    # ranges when assembling the archive, if missing content ranges are
    # found, Amazon Glacier returns an error and the operation fails.
    #
    # Complete Multipart Upload is an idempotent operation. After your first
    # successful complete multipart upload, if you call the operation again
    # within a short period, the operation will succeed and return the same
    # archive ID. This is useful in the event you experience a network issue
    # that causes an aborted connection or receive a 500 server error, in
    # which case you can repeat your Complete Multipart Upload request and
    # get the same archive ID without creating duplicate archives. Note,
    # however, that after the multipart upload completes, you cannot call
    # the List Parts operation and the multipart upload will not appear in
    # List Multipart Uploads response, even if idempotent complete is
    # possible.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][2].
    #
    # For conceptual information and underlying REST API, see [Uploading
    # Large Archives in Parts (Multipart Upload)][3] and [Complete Multipart
    # Upload][4] in the *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html
    # [4]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-complete-upload.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :upload_id
    #   The upload ID of the multipart upload.
    #
    # @option params [Integer] :archive_size
    #   The total size, in bytes, of the entire archive. This value should be
    #   the sum of all the sizes of the individual parts that you uploaded.
    #
    # @option params [String] :checksum
    #   The SHA256 tree hash of the entire archive. It is the tree hash of
    #   SHA256 tree hash of the individual parts. If the value you specify in
    #   the request does not match the SHA256 tree hash of the final assembled
    #   archive as computed by Amazon Glacier, Amazon Glacier returns an error
    #   and the request fails.
    #
    # @return [Types::ArchiveCreationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ArchiveCreationOutput#location #location} => String
    #   * {Types::ArchiveCreationOutput#checksum #checksum} => String
    #   * {Types::ArchiveCreationOutput#archive_id #archive_id} => String
    #
    #
    # @example Example: To complete a multipart upload
    #
    #   # The example completes a multipart upload for a 3 MiB archive.
    #
    #   resp = client.complete_multipart_upload({
    #     account_id: "-", 
    #     archive_size: 3145728, 
    #     checksum: "9628195fcdbcbbe76cdde456d4646fa7de5f219fb39823836d81f0cc0e18aa67", 
    #     upload_id: "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ", 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     archive_id: "NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId", 
    #     checksum: "9628195fcdbcbbe76cdde456d4646fa7de5f219fb39823836d81f0cc0e18aa67", 
    #     location: "/111122223333/vaults/my-vault/archives/NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_multipart_upload({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     upload_id: "string", # required
    #     archive_size: 1,
    #     checksum: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.location #=> String
    #   resp.checksum #=> String
    #   resp.archive_id #=> String
    #
    # @overload complete_multipart_upload(params = {})
    # @param [Hash] params ({})
    def complete_multipart_upload(params = {}, options = {})
      req = build_request(:complete_multipart_upload, params)
      req.send_request(options)
    end

    # This operation completes the vault locking process by transitioning
    # the vault lock from the `InProgress` state to the `Locked` state,
    # which causes the vault lock policy to become unchangeable. A vault
    # lock is put into the `InProgress` state by calling InitiateVaultLock.
    # You can obtain the state of the vault lock by calling GetVaultLock.
    # For more information about the vault locking process, [Amazon Glacier
    # Vault Lock][1].
    #
    # This operation is idempotent. This request is always successful if the
    # vault lock is in the `Locked` state and the provided lock ID matches
    # the lock ID originally used to lock the vault.
    #
    # If an invalid lock ID is passed in the request when the vault lock is
    # in the `Locked` state, the operation returns an
    # `AccessDeniedException` error. If an invalid lock ID is passed in the
    # request when the vault lock is in the `InProgress` state, the
    # operation throws an `InvalidParameter` error.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID. This value must match the
    #   AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-') in
    #   the ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :lock_id
    #   The `lockId` value is the lock ID obtained from a InitiateVaultLock
    #   request.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To complete a vault lock
    #
    #   # The example completes the vault locking process by transitioning the vault lock from the InProgress state to the Locked
    #   # state.
    #
    #   resp = client.complete_vault_lock({
    #     account_id: "-", 
    #     lock_id: "AE863rKkWZU53SLW5be4DUcW", 
    #     vault_name: "example-vault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.complete_vault_lock({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     lock_id: "string", # required
    #   })
    #
    # @overload complete_vault_lock(params = {})
    # @param [Hash] params ({})
    def complete_vault_lock(params = {}, options = {})
      req = build_request(:complete_vault_lock, params)
      req.send_request(options)
    end

    # This operation creates a new vault with the specified name. The name
    # of the vault must be unique within a region for an AWS account. You
    # can create up to 1,000 vaults per account. If you need to create more
    # vaults, contact Amazon Glacier.
    #
    # You must use the following guidelines when naming a vault.
    #
    # * Names can be between 1 and 255 characters long.
    #
    # * Allowed characters are a-z, A-Z, 0-9, '\_' (underscore), '-'
    #   (hyphen), and '.' (period).
    #
    # This operation is idempotent.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and underlying REST API, see [Creating a
    # Vault in Amazon Glacier][2] and [Create Vault ][3] in the *Amazon
    # Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/creating-vaults.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-put.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID. This value must match the
    #   AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-') in
    #   the ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Types::CreateVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVaultOutput#location #location} => String
    #
    #
    # @example Example: To create a new vault
    #
    #   # The following example creates a new vault named my-vault.
    #
    #   resp = client.create_vault({
    #     account_id: "-", 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     location: "/111122223333/vaults/my-vault", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vault({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.location #=> String
    #
    # @overload create_vault(params = {})
    # @param [Hash] params ({})
    def create_vault(params = {}, options = {})
      req = build_request(:create_vault, params)
      req.send_request(options)
    end

    # This operation deletes an archive from a vault. Subsequent requests to
    # initiate a retrieval of this archive will fail. Archive retrievals
    # that are in progress for this archive ID may or may not succeed
    # according to the following scenarios:
    #
    # * If the archive retrieval job is actively preparing the data for
    #   download when Amazon Glacier receives the delete archive request,
    #   the archival retrieval operation might fail.
    #
    # * If the archive retrieval job has successfully prepared the archive
    #   for download when Amazon Glacier receives the delete archive
    #   request, you will be able to download the output.
    #
    # This operation is idempotent. Attempting to delete an already-deleted
    # archive does not result in an error.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and underlying REST API, see [Deleting an
    # Archive in Amazon Glacier][2] and [Delete Archive][3] in the *Amazon
    # Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-an-archive.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :archive_id
    #   The ID of the archive to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete an archive
    #
    #   # The example deletes the archive specified by the archive ID.
    #
    #   resp = client.delete_archive({
    #     account_id: "-", 
    #     archive_id: "NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId", 
    #     vault_name: "examplevault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_archive({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     archive_id: "string", # required
    #   })
    #
    # @overload delete_archive(params = {})
    # @param [Hash] params ({})
    def delete_archive(params = {}, options = {})
      req = build_request(:delete_archive, params)
      req.send_request(options)
    end

    # This operation deletes a vault. Amazon Glacier will delete a vault
    # only if there are no archives in the vault as of the last inventory
    # and there have been no writes to the vault since the last inventory.
    # If either of these conditions is not satisfied, the vault deletion
    # fails (that is, the vault is not removed) and Amazon Glacier returns
    # an error. You can use DescribeVault to return the number of archives
    # in a vault, and you can use [Initiate a Job (POST jobs)][1] to
    # initiate a new inventory retrieval for a vault. The inventory contains
    # the archive IDs you use to delete archives using [Delete Archive
    # (DELETE archive)][2].
    #
    # This operation is idempotent.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][3].
    #
    # For conceptual information and underlying REST API, see [Deleting a
    # Vault in Amazon Glacier][4] and [Delete Vault ][5] in the *Amazon
    # Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-delete.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [4]: http://docs.aws.amazon.com/amazonglacier/latest/dev/deleting-vaults.html
    # [5]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-delete.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete a vault
    #
    #   # The example deletes a vault named my-vault:
    #
    #   resp = client.delete_vault({
    #     account_id: "-", 
    #     vault_name: "my-vault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vault({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @overload delete_vault(params = {})
    # @param [Hash] params ({})
    def delete_vault(params = {}, options = {})
      req = build_request(:delete_vault, params)
      req.send_request(options)
    end

    # This operation deletes the access policy associated with the specified
    # vault. The operation is eventually consistent; that is, it might take
    # some time for Amazon Glacier to completely remove the access policy,
    # and you might still see the effect of the policy for a short time
    # after you send the delete request.
    #
    # This operation is idempotent. You can invoke delete multiple times,
    # even if there is no policy associated with the vault. For more
    # information about vault access policies, see [Amazon Glacier Access
    # Control with Vault Access Policies][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete the vault access policy
    #
    #   # The example deletes the access policy associated with the vault named examplevault.
    #
    #   resp = client.delete_vault_access_policy({
    #     account_id: "-", 
    #     vault_name: "examplevault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vault_access_policy({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @overload delete_vault_access_policy(params = {})
    # @param [Hash] params ({})
    def delete_vault_access_policy(params = {}, options = {})
      req = build_request(:delete_vault_access_policy, params)
      req.send_request(options)
    end

    # This operation deletes the notification configuration set for a vault.
    # The operation is eventually consistent; that is, it might take some
    # time for Amazon Glacier to completely disable the notifications and
    # you might still receive some notifications for a short time after you
    # send the delete request.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and underlying REST API, see [Configuring
    # Vault Notifications in Amazon Glacier][2] and [Delete Vault
    # Notification Configuration ][3] in the Amazon Glacier Developer Guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-delete.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To delete the notification configuration set for a vault
    #
    #   # The example deletes the notification configuration set for the vault named examplevault.
    #
    #   resp = client.delete_vault_notifications({
    #     account_id: "-", 
    #     vault_name: "examplevault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vault_notifications({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @overload delete_vault_notifications(params = {})
    # @param [Hash] params ({})
    def delete_vault_notifications(params = {}, options = {})
      req = build_request(:delete_vault_notifications, params)
      req.send_request(options)
    end

    # This operation returns information about a job you previously
    # initiated, including the job initiation date, the user who initiated
    # the job, the job status code/message and the Amazon SNS topic to
    # notify after Amazon Glacier completes the job. For more information
    # about initiating a job, see InitiateJob.
    #
    # <note markdown="1"> This operation enables you to check the status of your job. However,
    # it is strongly recommended that you set up an Amazon SNS topic and
    # specify it in your initiate job request so that Amazon Glacier can
    # notify the topic after it completes the job.
    #
    #  </note>
    #
    # A job ID will not expire for at least 24 hours after Amazon Glacier
    # completes the job.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For more information about using this operation, see the documentation
    # for the underlying REST API [Describe Job][2] in the *Amazon Glacier
    # Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-describe-job-get.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :job_id
    #   The ID of the job to describe.
    #
    # @return [Types::GlacierJobDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GlacierJobDescription#job_id #job_id} => String
    #   * {Types::GlacierJobDescription#job_description #job_description} => String
    #   * {Types::GlacierJobDescription#action #action} => String
    #   * {Types::GlacierJobDescription#archive_id #archive_id} => String
    #   * {Types::GlacierJobDescription#vault_arn #vault_arn} => String
    #   * {Types::GlacierJobDescription#creation_date #creation_date} => Time
    #   * {Types::GlacierJobDescription#completed #completed} => Boolean
    #   * {Types::GlacierJobDescription#status_code #status_code} => String
    #   * {Types::GlacierJobDescription#status_message #status_message} => String
    #   * {Types::GlacierJobDescription#archive_size_in_bytes #archive_size_in_bytes} => Integer
    #   * {Types::GlacierJobDescription#inventory_size_in_bytes #inventory_size_in_bytes} => Integer
    #   * {Types::GlacierJobDescription#sns_topic #sns_topic} => String
    #   * {Types::GlacierJobDescription#completion_date #completion_date} => Time
    #   * {Types::GlacierJobDescription#sha256_tree_hash #sha256_tree_hash} => String
    #   * {Types::GlacierJobDescription#archive_sha256_tree_hash #archive_sha256_tree_hash} => String
    #   * {Types::GlacierJobDescription#retrieval_byte_range #retrieval_byte_range} => String
    #   * {Types::GlacierJobDescription#tier #tier} => String
    #   * {Types::GlacierJobDescription#inventory_retrieval_parameters #inventory_retrieval_parameters} => Types::InventoryRetrievalJobDescription
    #   * {Types::GlacierJobDescription#job_output_path #job_output_path} => String
    #   * {Types::GlacierJobDescription#select_parameters #select_parameters} => Types::SelectParameters
    #   * {Types::GlacierJobDescription#output_location #output_location} => Types::OutputLocation
    #
    #
    # @example Example: To get information about a previously initiated job
    #
    #   # The example returns information about the previously initiated job specified by the job ID.
    #
    #   resp = client.describe_job({
    #     account_id: "-", 
    #     job_id: "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4Cn", 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     action: "InventoryRetrieval", 
    #     completed: false, 
    #     creation_date: Time.parse("2015-07-17T20:23:41.616Z"), 
    #     inventory_retrieval_parameters: {
    #       format: "JSON", 
    #     }, 
    #     job_id: "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW", 
    #     status_code: "InProgress", 
    #     vault_arn: "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     job_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.job_description #=> String
    #   resp.action #=> String, one of "ArchiveRetrieval", "InventoryRetrieval", "Select"
    #   resp.archive_id #=> String
    #   resp.vault_arn #=> String
    #   resp.creation_date #=> Time
    #   resp.completed #=> Boolean
    #   resp.status_code #=> String, one of "InProgress", "Succeeded", "Failed"
    #   resp.status_message #=> String
    #   resp.archive_size_in_bytes #=> Integer
    #   resp.inventory_size_in_bytes #=> Integer
    #   resp.sns_topic #=> String
    #   resp.completion_date #=> Time
    #   resp.sha256_tree_hash #=> String
    #   resp.archive_sha256_tree_hash #=> String
    #   resp.retrieval_byte_range #=> String
    #   resp.tier #=> String
    #   resp.inventory_retrieval_parameters.format #=> String
    #   resp.inventory_retrieval_parameters.start_date #=> Time
    #   resp.inventory_retrieval_parameters.end_date #=> Time
    #   resp.inventory_retrieval_parameters.limit #=> String
    #   resp.inventory_retrieval_parameters.marker #=> String
    #   resp.job_output_path #=> String
    #   resp.select_parameters.input_serialization.csv.file_header_info #=> String, one of "USE", "IGNORE", "NONE"
    #   resp.select_parameters.input_serialization.csv.comments #=> String
    #   resp.select_parameters.input_serialization.csv.quote_escape_character #=> String
    #   resp.select_parameters.input_serialization.csv.record_delimiter #=> String
    #   resp.select_parameters.input_serialization.csv.field_delimiter #=> String
    #   resp.select_parameters.input_serialization.csv.quote_character #=> String
    #   resp.select_parameters.expression_type #=> String, one of "SQL"
    #   resp.select_parameters.expression #=> String
    #   resp.select_parameters.output_serialization.csv.quote_fields #=> String, one of "ALWAYS", "ASNEEDED"
    #   resp.select_parameters.output_serialization.csv.quote_escape_character #=> String
    #   resp.select_parameters.output_serialization.csv.record_delimiter #=> String
    #   resp.select_parameters.output_serialization.csv.field_delimiter #=> String
    #   resp.select_parameters.output_serialization.csv.quote_character #=> String
    #   resp.output_location.s3.bucket_name #=> String
    #   resp.output_location.s3.prefix #=> String
    #   resp.output_location.s3.encryption.encryption_type #=> String, one of "aws:kms", "AES256"
    #   resp.output_location.s3.encryption.kms_key_id #=> String
    #   resp.output_location.s3.encryption.kms_context #=> String
    #   resp.output_location.s3.canned_acl #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"
    #   resp.output_location.s3.access_control_list #=> Array
    #   resp.output_location.s3.access_control_list[0].grantee.type #=> String, one of "AmazonCustomerByEmail", "CanonicalUser", "Group"
    #   resp.output_location.s3.access_control_list[0].grantee.display_name #=> String
    #   resp.output_location.s3.access_control_list[0].grantee.uri #=> String
    #   resp.output_location.s3.access_control_list[0].grantee.id #=> String
    #   resp.output_location.s3.access_control_list[0].grantee.email_address #=> String
    #   resp.output_location.s3.access_control_list[0].permission #=> String, one of "FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"
    #   resp.output_location.s3.tagging #=> Hash
    #   resp.output_location.s3.tagging["string"] #=> String
    #   resp.output_location.s3.user_metadata #=> Hash
    #   resp.output_location.s3.user_metadata["string"] #=> String
    #   resp.output_location.s3.storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"
    #
    # @overload describe_job(params = {})
    # @param [Hash] params ({})
    def describe_job(params = {}, options = {})
      req = build_request(:describe_job, params)
      req.send_request(options)
    end

    # This operation returns information about a vault, including the
    # vault's Amazon Resource Name (ARN), the date the vault was created,
    # the number of archives it contains, and the total size of all the
    # archives in the vault. The number of archives and their total size are
    # as of the last inventory generation. This means that if you add or
    # remove an archive from a vault, and then immediately use Describe
    # Vault, the change in contents will not be immediately reflected. If
    # you want to retrieve the latest inventory of the vault, use
    # InitiateJob. Amazon Glacier generates vault inventories approximately
    # daily. For more information, see [Downloading a Vault Inventory in
    # Amazon Glacier][1].
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][2].
    #
    # For conceptual information and underlying REST API, see [Retrieving
    # Vault Metadata in Amazon Glacier][3] and [Describe Vault ][4] in the
    # *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html
    # [4]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-get.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Types::DescribeVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeVaultOutput#vault_arn #vault_arn} => String
    #   * {Types::DescribeVaultOutput#vault_name #vault_name} => String
    #   * {Types::DescribeVaultOutput#creation_date #creation_date} => Time
    #   * {Types::DescribeVaultOutput#last_inventory_date #last_inventory_date} => Time
    #   * {Types::DescribeVaultOutput#number_of_archives #number_of_archives} => Integer
    #   * {Types::DescribeVaultOutput#size_in_bytes #size_in_bytes} => Integer
    #
    #
    # @example Example: To retrieve information about a vault
    #
    #   # The example retrieves data about a vault named my-vault.
    #
    #   resp = client.describe_vault({
    #     account_id: "-", 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     creation_date: Time.parse("2016-09-23T19:27:18.665Z"), 
    #     number_of_archives: 0, 
    #     size_in_bytes: 0, 
    #     vault_arn: "arn:aws:glacier:us-west-2:111122223333:vaults/my-vault", 
    #     vault_name: "my-vault", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_vault({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vault_arn #=> String
    #   resp.vault_name #=> String
    #   resp.creation_date #=> Time
    #   resp.last_inventory_date #=> Time
    #   resp.number_of_archives #=> Integer
    #   resp.size_in_bytes #=> Integer
    #
    # @overload describe_vault(params = {})
    # @param [Hash] params ({})
    def describe_vault(params = {}, options = {})
      req = build_request(:describe_vault, params)
      req.send_request(options)
    end

    # This operation returns the current data retrieval policy for the
    # account and region specified in the GET request. For more information
    # about data retrieval policies, see [Amazon Glacier Data Retrieval
    # Policies][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID. This value must match the
    #   AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-') in
    #   the ID.
    #
    # @return [Types::GetDataRetrievalPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetDataRetrievalPolicyOutput#policy #policy} => Types::DataRetrievalPolicy
    #
    #
    # @example Example: To get the current data retrieval policy for an account
    #
    #   # The example returns the current data retrieval policy for the account.
    #
    #   resp = client.get_data_retrieval_policy({
    #     account_id: "-", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: {
    #       rules: [
    #         {
    #           bytes_per_hour: 10737418240, 
    #           strategy: "BytesPerHour", 
    #         }, 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_data_retrieval_policy({
    #     account_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.rules #=> Array
    #   resp.policy.rules[0].strategy #=> String
    #   resp.policy.rules[0].bytes_per_hour #=> Integer
    #
    # @overload get_data_retrieval_policy(params = {})
    # @param [Hash] params ({})
    def get_data_retrieval_policy(params = {}, options = {})
      req = build_request(:get_data_retrieval_policy, params)
      req.send_request(options)
    end

    # This operation downloads the output of the job you initiated using
    # InitiateJob. Depending on the job type you specified when you
    # initiated the job, the output will be either the content of an archive
    # or a vault inventory.
    #
    # You can download all the job output or download a portion of the
    # output by specifying a byte range. In the case of an archive retrieval
    # job, depending on the byte range you specify, Amazon Glacier returns
    # the checksum for the portion of the data. You can compute the checksum
    # on the client and verify that the values match to ensure the portion
    # you downloaded is the correct data.
    #
    # A job ID will not expire for at least 24 hours after Amazon Glacier
    # completes the job. That a byte range. For both archive and inventory
    # retrieval jobs, you should verify the downloaded size against the size
    # returned in the headers from the **Get Job Output** response.
    #
    # For archive retrieval jobs, you should also verify that the size is
    # what you expected. If you download a portion of the output, the
    # expected size is based on the range of bytes you specified. For
    # example, if you specify a range of `bytes=0-1048575`, you should
    # verify your download size is 1,048,576 bytes. If you download an
    # entire archive, the expected size is the size of the archive when you
    # uploaded it to Amazon Glacier The expected size is also returned in
    # the headers from the **Get Job Output** response.
    #
    # In the case of an archive retrieval job, depending on the byte range
    # you specify, Amazon Glacier returns the checksum for the portion of
    # the data. To ensure the portion you downloaded is the correct data,
    # compute the checksum on the client, verify that the values match, and
    # verify that the size is what you expected.
    #
    # A job ID does not expire for at least 24 hours after Amazon Glacier
    # completes the job. That is, you can download the job output within the
    # 24 hours period after Amazon Glacier completes the job.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and the underlying REST API, see
    # [Downloading a Vault Inventory][2], [Downloading an Archive][3], and
    # [Get Job Output ][4]
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-inventory.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/downloading-an-archive.html
    # [4]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-job-output-get.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :job_id
    #   The job ID whose data is downloaded.
    #
    # @option params [String] :range
    #   The range of bytes to retrieve from the output. For example, if you
    #   want to download the first 1,048,576 bytes, specify the range as
    #   `bytes=0-1048575`. By default, this operation downloads the entire
    #   output.
    #
    #   If the job output is large, then you can use a range to retrieve a
    #   portion of the output. This allows you to download the entire output
    #   in smaller chunks of bytes. For example, suppose you have 1 GB of job
    #   output you want to download and you decide to download 128 MB chunks
    #   of data at a time, which is a total of eight Get Job Output requests.
    #   You use the following process to download the job output:
    #
    #   1.  Download a 128 MB chunk of output by specifying the appropriate
    #       byte range. Verify that all 128 MB of data was received.
    #
    #   2.  Along with the data, the response includes a SHA256 tree hash of
    #       the payload. You compute the checksum of the payload on the client
    #       and compare it with the checksum you received in the response to
    #       ensure you received all the expected data.
    #
    #   3.  Repeat steps 1 and 2 for all the eight 128 MB chunks of output
    #       data, each time specifying the appropriate byte range.
    #
    #   4.  After downloading all the parts of the job output, you have a list
    #       of eight checksum values. Compute the tree hash of these values to
    #       find the checksum of the entire output. Using the DescribeJob API,
    #       obtain job information of the job that provided you the output.
    #       The response includes the checksum of the entire archive stored in
    #       Amazon Glacier. You compare this value with the checksum you
    #       computed to ensure you have downloaded the entire archive content
    #       with no errors.
    #
    # @return [Types::GetJobOutputOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobOutputOutput#body #body} => IO
    #   * {Types::GetJobOutputOutput#checksum #checksum} => String
    #   * {Types::GetJobOutputOutput#status #status} => Integer
    #   * {Types::GetJobOutputOutput#content_range #content_range} => String
    #   * {Types::GetJobOutputOutput#accept_ranges #accept_ranges} => String
    #   * {Types::GetJobOutputOutput#content_type #content_type} => String
    #   * {Types::GetJobOutputOutput#archive_description #archive_description} => String
    #
    #
    # @example Example: To get the output of a previously initiated job
    #
    #   # The example downloads the output of a previously initiated inventory retrieval job that is identified by the job ID.
    #
    #   resp = client.get_job_output({
    #     account_id: "-", 
    #     job_id: "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW", 
    #     range: "", 
    #     vault_name: "my-vaul", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     accept_ranges: "bytes", 
    #     body: "inventory-data", 
    #     content_type: "application/json", 
    #     status: 200, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_output({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     job_id: "string", # required
    #     range: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.body #=> IO
    #   resp.checksum #=> String
    #   resp.status #=> Integer
    #   resp.content_range #=> String
    #   resp.accept_ranges #=> String
    #   resp.content_type #=> String
    #   resp.archive_description #=> String
    #
    # @overload get_job_output(params = {})
    # @param [Hash] params ({})
    def get_job_output(params = {}, options = {}, &block)
      req = build_request(:get_job_output, params)
      req.send_request(options, &block)
    end

    # This operation retrieves the `access-policy` subresource set on the
    # vault; for more information on setting this subresource, see [Set
    # Vault Access Policy (PUT access-policy)][1]. If there is no access
    # policy set on the vault, the operation returns a `404 Not found`
    # error. For more information about vault access policies, see [Amazon
    # Glacier Access Control with Vault Access Policies][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-SetVaultAccessPolicy.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Types::GetVaultAccessPolicyOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVaultAccessPolicyOutput#policy #policy} => Types::VaultAccessPolicy
    #
    #
    # @example Example: To  get the access-policy set on the vault
    #
    #   # The example retrieves the access-policy set on the vault named example-vault.
    #
    #   resp = client.get_vault_access_policy({
    #     account_id: "-", 
    #     vault_name: "example-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     policy: {
    #       policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-owner-access-rights\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\"}]}", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vault_access_policy({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy.policy #=> String
    #
    # @overload get_vault_access_policy(params = {})
    # @param [Hash] params ({})
    def get_vault_access_policy(params = {}, options = {})
      req = build_request(:get_vault_access_policy, params)
      req.send_request(options)
    end

    # This operation retrieves the following attributes from the
    # `lock-policy` subresource set on the specified vault:
    #
    # * The vault lock policy set on the vault.
    #
    # * The state of the vault lock, which is either `InProgess` or
    #   `Locked`.
    #
    # * When the lock ID expires. The lock ID is used to complete the vault
    #   locking process.
    #
    # * When the vault lock was initiated and put into the `InProgress`
    #   state.
    #
    # A vault lock is put into the `InProgress` state by calling
    # InitiateVaultLock. A vault lock is put into the `Locked` state by
    # calling CompleteVaultLock. You can abort the vault locking process by
    # calling AbortVaultLock. For more information about the vault locking
    # process, [Amazon Glacier Vault Lock][1].
    #
    # If there is no vault lock policy set on the vault, the operation
    # returns a `404 Not found` error. For more information about vault lock
    # policies, [Amazon Glacier Access Control with Vault Lock Policies][2].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Types::GetVaultLockOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVaultLockOutput#policy #policy} => String
    #   * {Types::GetVaultLockOutput#state #state} => String
    #   * {Types::GetVaultLockOutput#expiration_date #expiration_date} => Time
    #   * {Types::GetVaultLockOutput#creation_date #creation_date} => Time
    #
    #
    # @example Example: To retrieve vault lock-policy related attributes that are set on a vault
    #
    #   # The example retrieves the attributes from the lock-policy subresource set on the vault named examplevault.
    #
    #   resp = client.get_vault_lock({
    #     account_id: "-", 
    #     vault_name: "examplevault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     creation_date: Time.parse("exampledate"), 
    #     expiration_date: Time.parse("exampledate"), 
    #     policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-vault-lock\",\"Effect\":\"Deny\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\",\"Condition\":{\"NumericLessThanEquals\":{\"glacier:ArchiveAgeinDays\":\"365\"}}}]}", 
    #     state: "InProgress", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vault_lock({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy #=> String
    #   resp.state #=> String
    #   resp.expiration_date #=> Time
    #   resp.creation_date #=> Time
    #
    # @overload get_vault_lock(params = {})
    # @param [Hash] params ({})
    def get_vault_lock(params = {}, options = {})
      req = build_request(:get_vault_lock, params)
      req.send_request(options)
    end

    # This operation retrieves the `notification-configuration` subresource
    # of the specified vault.
    #
    # For information about setting a notification configuration on a vault,
    # see SetVaultNotifications. If a notification configuration for a vault
    # is not set, the operation returns a `404 Not Found` error. For more
    # information about vault notifications, see [Configuring Vault
    # Notifications in Amazon Glacier][1].
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][2].
    #
    # For conceptual information and underlying REST API, see [Configuring
    # Vault Notifications in Amazon Glacier][1] and [Get Vault Notification
    # Configuration ][3] in the *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-get.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Types::GetVaultNotificationsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVaultNotificationsOutput#vault_notification_config #vault_notification_config} => Types::VaultNotificationConfig
    #
    #
    # @example Example: To get the notification-configuration for the specified vault
    #
    #   # The example retrieves the notification-configuration for the vault named my-vault.
    #
    #   resp = client.get_vault_notifications({
    #     account_id: "-", 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     vault_notification_config: {
    #       events: [
    #         "InventoryRetrievalCompleted", 
    #         "ArchiveRetrievalCompleted", 
    #       ], 
    #       sns_topic: "arn:aws:sns:us-west-2:0123456789012:my-vault", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vault_notifications({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vault_notification_config.sns_topic #=> String
    #   resp.vault_notification_config.events #=> Array
    #   resp.vault_notification_config.events[0] #=> String
    #
    # @overload get_vault_notifications(params = {})
    # @param [Hash] params ({})
    def get_vault_notifications(params = {}, options = {})
      req = build_request(:get_vault_notifications, params)
      req.send_request(options)
    end

    # This operation initiates a job of the specified type, which can be a
    # select, an archival retrieval, or a vault retrieval. For more
    # information about using this operation, see the documentation for the
    # underlying REST API [Initiate a Job][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [Types::JobParameters] :job_parameters
    #   Provides options for specifying job information.
    #
    # @return [Types::InitiateJobOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateJobOutput#location #location} => String
    #   * {Types::InitiateJobOutput#job_id #job_id} => String
    #   * {Types::InitiateJobOutput#job_output_path #job_output_path} => String
    #
    #
    # @example Example: To initiate an inventory-retrieval job
    #
    #   # The example initiates an inventory-retrieval job for the vault named examplevault.
    #
    #   resp = client.initiate_job({
    #     account_id: "-", 
    #     job_parameters: {
    #       description: "My inventory job", 
    #       format: "CSV", 
    #       sns_topic: "arn:aws:sns:us-west-2:111111111111:Glacier-InventoryRetrieval-topic-Example", 
    #       type: "inventory-retrieval", 
    #     }, 
    #     vault_name: "examplevault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_id: " HkF9p6o7yjhFx-K3CGl6fuSm6VzW9T7esGQfco8nUXVYwS0jlb5gq1JZ55yHgt5vP54ZShjoQzQVVh7vEXAMPLEjobID", 
    #     location: "/111122223333/vaults/examplevault/jobs/HkF9p6o7yjhFx-K3CGl6fuSm6VzW9T7esGQfco8nUXVYwS0jlb5gq1JZ55yHgt5vP54ZShjoQzQVVh7vEXAMPLEjobID", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_job({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     job_parameters: {
    #       format: "string",
    #       type: "string",
    #       archive_id: "string",
    #       description: "string",
    #       sns_topic: "string",
    #       retrieval_byte_range: "string",
    #       tier: "string",
    #       inventory_retrieval_parameters: {
    #         start_date: Time.now,
    #         end_date: Time.now,
    #         limit: "string",
    #         marker: "string",
    #       },
    #       select_parameters: {
    #         input_serialization: {
    #           csv: {
    #             file_header_info: "USE", # accepts USE, IGNORE, NONE
    #             comments: "string",
    #             quote_escape_character: "string",
    #             record_delimiter: "string",
    #             field_delimiter: "string",
    #             quote_character: "string",
    #           },
    #         },
    #         expression_type: "SQL", # accepts SQL
    #         expression: "string",
    #         output_serialization: {
    #           csv: {
    #             quote_fields: "ALWAYS", # accepts ALWAYS, ASNEEDED
    #             quote_escape_character: "string",
    #             record_delimiter: "string",
    #             field_delimiter: "string",
    #             quote_character: "string",
    #           },
    #         },
    #       },
    #       output_location: {
    #         s3: {
    #           bucket_name: "string",
    #           prefix: "string",
    #           encryption: {
    #             encryption_type: "aws:kms", # accepts aws:kms, AES256
    #             kms_key_id: "string",
    #             kms_context: "string",
    #           },
    #           canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control
    #           access_control_list: [
    #             {
    #               grantee: {
    #                 type: "AmazonCustomerByEmail", # required, accepts AmazonCustomerByEmail, CanonicalUser, Group
    #                 display_name: "string",
    #                 uri: "string",
    #                 id: "string",
    #                 email_address: "string",
    #               },
    #               permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
    #             },
    #           ],
    #           tagging: {
    #             "string" => "string",
    #           },
    #           user_metadata: {
    #             "string" => "string",
    #           },
    #           storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
    #         },
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.location #=> String
    #   resp.job_id #=> String
    #   resp.job_output_path #=> String
    #
    # @overload initiate_job(params = {})
    # @param [Hash] params ({})
    def initiate_job(params = {}, options = {})
      req = build_request(:initiate_job, params)
      req.send_request(options)
    end

    # This operation initiates a multipart upload. Amazon Glacier creates a
    # multipart upload resource and returns its ID in the response. The
    # multipart upload ID is used in subsequent requests to upload parts of
    # an archive (see UploadMultipartPart).
    #
    # When you initiate a multipart upload, you specify the part size in
    # number of bytes. The part size must be a megabyte (1024 KB) multiplied
    # by a power of 2-for example, 1048576 (1 MB), 2097152 (2 MB), 4194304
    # (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is
    # 1 MB, and the maximum is 4 GB.
    #
    # Every part you upload to this resource (see UploadMultipartPart),
    # except the last one, must have the same size. The last one can be the
    # same size or smaller. For example, suppose you want to upload a 16.2
    # MB file. If you initiate the multipart upload with a part size of 4
    # MB, you will upload four parts of 4 MB each and one part of 0.2 MB.
    #
    # <note markdown="1"> You don't need to know the size of the archive when you start a
    # multipart upload because Amazon Glacier does not require you to
    # specify the overall archive size.
    #
    #  </note>
    #
    # After you complete the multipart upload, Amazon Glacier removes the
    # multipart upload resource referenced by the ID. Amazon Glacier also
    # removes the multipart upload resource if you cancel the multipart
    # upload or it may be removed if there is no activity for a period of 24
    # hours.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and underlying REST API, see [Uploading
    # Large Archives in Parts (Multipart Upload)][2] and [Initiate Multipart
    # Upload][3] in the *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [String] :archive_description
    #   The archive description that you are uploading in parts.
    #
    #   The part size must be a megabyte (1024 KB) multiplied by a power of 2,
    #   for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8
    #   MB), and so on. The minimum allowable part size is 1 MB, and the
    #   maximum is 4 GB (4096 MB).
    #
    # @option params [Integer] :part_size
    #   The size of each part except the last, in bytes. The last part can be
    #   smaller than this part size.
    #
    # @return [Types::InitiateMultipartUploadOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateMultipartUploadOutput#location #location} => String
    #   * {Types::InitiateMultipartUploadOutput#upload_id #upload_id} => String
    #
    #
    # @example Example: To initiate a multipart upload
    #
    #   # The example initiates a multipart upload to a vault named my-vault with a part size of 1 MiB (1024 x 1024 bytes) per
    #   # file.
    #
    #   resp = client.initiate_multipart_upload({
    #     account_id: "-", 
    #     part_size: 1048576, 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     location: "/111122223333/vaults/my-vault/multipart-uploads/19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ", 
    #     upload_id: "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_multipart_upload({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     archive_description: "string",
    #     part_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.location #=> String
    #   resp.upload_id #=> String
    #
    # @overload initiate_multipart_upload(params = {})
    # @param [Hash] params ({})
    def initiate_multipart_upload(params = {}, options = {})
      req = build_request(:initiate_multipart_upload, params)
      req.send_request(options)
    end

    # This operation initiates the vault locking process by doing the
    # following:
    #
    # * Installing a vault lock policy on the specified vault.
    #
    # * Setting the lock state of vault lock to `InProgress`.
    #
    # * Returning a lock ID, which is used to complete the vault locking
    #   process.
    #
    # You can set one vault lock policy for each vault and this policy can
    # be up to 20 KB in size. For more information about vault lock
    # policies, see [Amazon Glacier Access Control with Vault Lock
    # Policies][1].
    #
    # You must complete the vault locking process within 24 hours after the
    # vault lock enters the `InProgress` state. After the 24 hour window
    # ends, the lock ID expires, the vault automatically exits the
    # `InProgress` state, and the vault lock policy is removed from the
    # vault. You call CompleteVaultLock to complete the vault locking
    # process by setting the state of the vault lock to `Locked`.
    #
    # After a vault lock is in the `Locked` state, you cannot initiate a new
    # vault lock for the vault.
    #
    # You can abort the vault locking process by calling AbortVaultLock. You
    # can get the state of the vault lock by calling GetVaultLock. For more
    # information about the vault locking process, [Amazon Glacier Vault
    # Lock][2].
    #
    # If this operation is called when the vault lock is in the `InProgress`
    # state, the operation returns an `AccessDeniedException` error. When
    # the vault lock is in the `InProgress` state you must call
    # AbortVaultLock before you can initiate a new vault lock policy.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock-policy.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID. This value must match the
    #   AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-') in
    #   the ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [Types::VaultLockPolicy] :policy
    #   The vault lock policy as a JSON string, which uses "\\" as an escape
    #   character.
    #
    # @return [Types::InitiateVaultLockOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::InitiateVaultLockOutput#lock_id #lock_id} => String
    #
    #
    # @example Example: To initiate the vault locking process
    #
    #   # The example initiates the vault locking process for the vault named my-vault.
    #
    #   resp = client.initiate_vault_lock({
    #     account_id: "-", 
    #     policy: {
    #       policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-vault-lock\",\"Effect\":\"Deny\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\",\"Condition\":{\"NumericLessThanEquals\":{\"glacier:ArchiveAgeinDays\":\"365\"}}}]}", 
    #     }, 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     lock_id: "AE863rKkWZU53SLW5be4DUcW", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_vault_lock({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     policy: {
    #       policy: "string",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.lock_id #=> String
    #
    # @overload initiate_vault_lock(params = {})
    # @param [Hash] params ({})
    def initiate_vault_lock(params = {}, options = {})
      req = build_request(:initiate_vault_lock, params)
      req.send_request(options)
    end

    # This operation lists jobs for a vault, including jobs that are
    # in-progress and jobs that have recently finished. The List Job
    # operation returns a list of these jobs sorted by job initiation time.
    #
    # <note markdown="1"> Amazon Glacier retains recently completed jobs for a period before
    # deleting them; however, it eventually removes completed jobs. The
    # output of completed jobs can be retrieved. Retaining completed jobs
    # for a period of time after they have completed enables you to get a
    # job output in the event you miss the job completion notification or
    # your first attempt to download it fails. For example, suppose you
    # start an archive retrieval job to download an archive. After the job
    # completes, you start to download the archive but encounter a network
    # error. In this scenario, you can retry and download the archive while
    # the job exists.
    #
    #  </note>
    #
    # The List Jobs operation supports pagination. You should always check
    # the response `Marker` field. If there are no more jobs to list, the
    # `Marker` field is set to `null`. If there are more jobs to list, the
    # `Marker` field is set to a non-null value, which you can use to
    # continue the pagination of the list. To return a list of jobs that
    # begins at a specific job, set the marker request parameter to the
    # `Marker` value for that job that you obtained from a previous List
    # Jobs request.
    #
    # You can set a maximum limit for the number of jobs returned in the
    # response by specifying the `limit` parameter in the request. The
    # default limit is 50. The number of jobs returned might be fewer than
    # the limit, but the number of returned jobs never exceeds the limit.
    #
    # Additionally, you can filter the jobs list returned by specifying the
    # optional `statuscode` parameter or `completed` parameter, or both.
    # Using the `statuscode` parameter, you can specify to return only jobs
    # that match either the `InProgress`, `Succeeded`, or `Failed` status.
    # Using the `completed` parameter, you can specify to return only jobs
    # that were completed (`true`) or jobs that were not completed
    # (`false`).
    #
    # For more information about using this operation, see the documentation
    # for the underlying REST API [List Jobs][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-jobs-get.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [Integer] :limit
    #   The maximum number of jobs to be returned. The default limit is 50.
    #   The number of jobs returned might be fewer than the specified limit,
    #   but the number of returned jobs never exceeds the limit.
    #
    # @option params [String] :marker
    #   An opaque string used for pagination. This value specifies the job at
    #   which the listing of jobs should begin. Get the marker value from a
    #   previous List Jobs response. You only need to include the marker if
    #   you are continuing the pagination of results started in a previous
    #   List Jobs request.
    #
    # @option params [String] :statuscode
    #   The type of job status to return. You can specify the following
    #   values: `InProgress`, `Succeeded`, or `Failed`.
    #
    # @option params [String] :completed
    #   The state of the jobs to return. You can specify `true` or `false`.
    #
    # @return [Types::ListJobsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsOutput#job_list #job_list} => Array&lt;Types::GlacierJobDescription&gt;
    #   * {Types::ListJobsOutput#marker #marker} => String
    #
    #
    # @example Example: To list jobs for a vault
    #
    #   # The example lists jobs for the vault named my-vault.
    #
    #   resp = client.list_jobs({
    #     account_id: "-", 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     job_list: [
    #       {
    #         action: "ArchiveRetrieval", 
    #         archive_id: "kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw", 
    #         archive_sha256_tree_hash: "9628195fcdbcbbe76cdde932d4646fa7de5f219fb39823836d81f0cc0e18aa67", 
    #         archive_size_in_bytes: 3145728, 
    #         completed: false, 
    #         creation_date: Time.parse("2015-07-17T21:16:13.840Z"), 
    #         job_description: "Retrieve archive on 2015-07-17", 
    #         job_id: "l7IL5-EkXyEY9Ws95fClzIbk2O5uLYaFdAYOi-azsX_Z8V6NH4yERHzars8wTKYQMX6nBDI9cMNHzyZJO59-8N9aHWav", 
    #         retrieval_byte_range: "0-3145727", 
    #         sha256_tree_hash: "9628195fcdbcbbe76cdde932d4646fa7de5f219fb39823836d81f0cc0e18aa67", 
    #         sns_topic: "arn:aws:sns:us-west-2:0123456789012:my-vault", 
    #         status_code: "InProgress", 
    #         vault_arn: "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault", 
    #       }, 
    #       {
    #         action: "InventoryRetrieval", 
    #         completed: false, 
    #         creation_date: Time.parse("2015-07-17T20:23:41.616Z"), 
    #         inventory_retrieval_parameters: {
    #           format: "JSON", 
    #         }, 
    #         job_id: "zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW", 
    #         status_code: "InProgress", 
    #         vault_arn: "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     limit: 1,
    #     marker: "string",
    #     statuscode: "string",
    #     completed: "string",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_list #=> Array
    #   resp.job_list[0].job_id #=> String
    #   resp.job_list[0].job_description #=> String
    #   resp.job_list[0].action #=> String, one of "ArchiveRetrieval", "InventoryRetrieval", "Select"
    #   resp.job_list[0].archive_id #=> String
    #   resp.job_list[0].vault_arn #=> String
    #   resp.job_list[0].creation_date #=> Time
    #   resp.job_list[0].completed #=> Boolean
    #   resp.job_list[0].status_code #=> String, one of "InProgress", "Succeeded", "Failed"
    #   resp.job_list[0].status_message #=> String
    #   resp.job_list[0].archive_size_in_bytes #=> Integer
    #   resp.job_list[0].inventory_size_in_bytes #=> Integer
    #   resp.job_list[0].sns_topic #=> String
    #   resp.job_list[0].completion_date #=> Time
    #   resp.job_list[0].sha256_tree_hash #=> String
    #   resp.job_list[0].archive_sha256_tree_hash #=> String
    #   resp.job_list[0].retrieval_byte_range #=> String
    #   resp.job_list[0].tier #=> String
    #   resp.job_list[0].inventory_retrieval_parameters.format #=> String
    #   resp.job_list[0].inventory_retrieval_parameters.start_date #=> Time
    #   resp.job_list[0].inventory_retrieval_parameters.end_date #=> Time
    #   resp.job_list[0].inventory_retrieval_parameters.limit #=> String
    #   resp.job_list[0].inventory_retrieval_parameters.marker #=> String
    #   resp.job_list[0].job_output_path #=> String
    #   resp.job_list[0].select_parameters.input_serialization.csv.file_header_info #=> String, one of "USE", "IGNORE", "NONE"
    #   resp.job_list[0].select_parameters.input_serialization.csv.comments #=> String
    #   resp.job_list[0].select_parameters.input_serialization.csv.quote_escape_character #=> String
    #   resp.job_list[0].select_parameters.input_serialization.csv.record_delimiter #=> String
    #   resp.job_list[0].select_parameters.input_serialization.csv.field_delimiter #=> String
    #   resp.job_list[0].select_parameters.input_serialization.csv.quote_character #=> String
    #   resp.job_list[0].select_parameters.expression_type #=> String, one of "SQL"
    #   resp.job_list[0].select_parameters.expression #=> String
    #   resp.job_list[0].select_parameters.output_serialization.csv.quote_fields #=> String, one of "ALWAYS", "ASNEEDED"
    #   resp.job_list[0].select_parameters.output_serialization.csv.quote_escape_character #=> String
    #   resp.job_list[0].select_parameters.output_serialization.csv.record_delimiter #=> String
    #   resp.job_list[0].select_parameters.output_serialization.csv.field_delimiter #=> String
    #   resp.job_list[0].select_parameters.output_serialization.csv.quote_character #=> String
    #   resp.job_list[0].output_location.s3.bucket_name #=> String
    #   resp.job_list[0].output_location.s3.prefix #=> String
    #   resp.job_list[0].output_location.s3.encryption.encryption_type #=> String, one of "aws:kms", "AES256"
    #   resp.job_list[0].output_location.s3.encryption.kms_key_id #=> String
    #   resp.job_list[0].output_location.s3.encryption.kms_context #=> String
    #   resp.job_list[0].output_location.s3.canned_acl #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control"
    #   resp.job_list[0].output_location.s3.access_control_list #=> Array
    #   resp.job_list[0].output_location.s3.access_control_list[0].grantee.type #=> String, one of "AmazonCustomerByEmail", "CanonicalUser", "Group"
    #   resp.job_list[0].output_location.s3.access_control_list[0].grantee.display_name #=> String
    #   resp.job_list[0].output_location.s3.access_control_list[0].grantee.uri #=> String
    #   resp.job_list[0].output_location.s3.access_control_list[0].grantee.id #=> String
    #   resp.job_list[0].output_location.s3.access_control_list[0].grantee.email_address #=> String
    #   resp.job_list[0].output_location.s3.access_control_list[0].permission #=> String, one of "FULL_CONTROL", "WRITE", "WRITE_ACP", "READ", "READ_ACP"
    #   resp.job_list[0].output_location.s3.tagging #=> Hash
    #   resp.job_list[0].output_location.s3.tagging["string"] #=> String
    #   resp.job_list[0].output_location.s3.user_metadata #=> Hash
    #   resp.job_list[0].output_location.s3.user_metadata["string"] #=> String
    #   resp.job_list[0].output_location.s3.storage_class #=> String, one of "STANDARD", "REDUCED_REDUNDANCY", "STANDARD_IA"
    #   resp.marker #=> String
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # This operation lists in-progress multipart uploads for the specified
    # vault. An in-progress multipart upload is a multipart upload that has
    # been initiated by an InitiateMultipartUpload request, but has not yet
    # been completed or aborted. The list returned in the List Multipart
    # Upload response has no guaranteed order.
    #
    # The List Multipart Uploads operation supports pagination. By default,
    # this operation returns up to 50 multipart uploads in the response. You
    # should always check the response for a `marker` at which to continue
    # the list; if there are no more items the `marker` is `null`. To return
    # a list of multipart uploads that begins at a specific upload, set the
    # `marker` request parameter to the value you obtained from a previous
    # List Multipart Upload request. You can also limit the number of
    # uploads returned in the response by specifying the `limit` parameter
    # in the request.
    #
    # Note the difference between this operation and listing parts
    # (ListParts). The List Multipart Uploads operation lists all multipart
    # uploads for a vault and does not require a multipart upload ID. The
    # List Parts operation requires a multipart upload ID since parts are
    # associated with a single upload.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and the underlying REST API, see [Working
    # with Archives in Amazon Glacier][2] and [List Multipart Uploads ][3]
    # in the *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-uploads.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [String] :marker
    #   An opaque string used for pagination. This value specifies the upload
    #   at which the listing of uploads should begin. Get the marker value
    #   from a previous List Uploads response. You need only include the
    #   marker if you are continuing the pagination of results started in a
    #   previous List Uploads request.
    #
    # @option params [Integer] :limit
    #   Specifies the maximum number of uploads returned in the response body.
    #   If this value is not specified, the List Uploads operation returns up
    #   to 50 uploads.
    #
    # @return [Types::ListMultipartUploadsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListMultipartUploadsOutput#uploads_list #uploads_list} => Array&lt;Types::UploadListElement&gt;
    #   * {Types::ListMultipartUploadsOutput#marker #marker} => String
    #
    #
    # @example Example: To list all the in-progress multipart uploads for a vault
    #
    #   # The example lists all the in-progress multipart uploads for the vault named examplevault.
    #
    #   resp = client.list_multipart_uploads({
    #     account_id: "-", 
    #     vault_name: "examplevault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     marker: "null", 
    #     uploads_list: [
    #       {
    #         archive_description: "archive 1", 
    #         creation_date: Time.parse("2012-03-19T23:20:59.130Z"), 
    #         multipart_upload_id: "xsQdFIRsfJr20CW2AbZBKpRZAFTZSJIMtL2hYf8mvp8dM0m4RUzlaqoEye6g3h3ecqB_zqwB7zLDMeSWhwo65re4C4Ev", 
    #         part_size_in_bytes: 4194304, 
    #         vault_arn: "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault", 
    #       }, 
    #       {
    #         archive_description: "archive 2", 
    #         creation_date: Time.parse("2012-04-01T15:00:00.000Z"), 
    #         multipart_upload_id: "nPyGOnyFcx67qqX7E-0tSGiRi88hHMOwOxR-_jNyM6RjVMFfV29lFqZ3rNsSaWBugg6OP92pRtufeHdQH7ClIpSF6uJc", 
    #         part_size_in_bytes: 4194304, 
    #         vault_arn: "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault", 
    #       }, 
    #       {
    #         archive_description: "archive 3", 
    #         creation_date: Time.parse("2012-03-20T17:03:43.221Z"), 
    #         multipart_upload_id: "qt-RBst_7yO8gVIonIBsAxr2t-db0pE4s8MNeGjKjGdNpuU-cdSAcqG62guwV9r5jh5mLyFPzFEitTpNE7iQfHiu1XoV", 
    #         part_size_in_bytes: 4194304, 
    #         vault_arn: "arn:aws:glacier:us-west-2:012345678901:vaults/examplevault", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_multipart_uploads({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     marker: "string",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.uploads_list #=> Array
    #   resp.uploads_list[0].multipart_upload_id #=> String
    #   resp.uploads_list[0].vault_arn #=> String
    #   resp.uploads_list[0].archive_description #=> String
    #   resp.uploads_list[0].part_size_in_bytes #=> Integer
    #   resp.uploads_list[0].creation_date #=> Time
    #   resp.marker #=> String
    #
    # @overload list_multipart_uploads(params = {})
    # @param [Hash] params ({})
    def list_multipart_uploads(params = {}, options = {})
      req = build_request(:list_multipart_uploads, params)
      req.send_request(options)
    end

    # This operation lists the parts of an archive that have been uploaded
    # in a specific multipart upload. You can make this request at any time
    # during an in-progress multipart upload before you complete the upload
    # (see CompleteMultipartUpload. List Parts returns an error for
    # completed uploads. The list returned in the List Parts response is
    # sorted by part range.
    #
    # The List Parts operation supports pagination. By default, this
    # operation returns up to 50 uploaded parts in the response. You should
    # always check the response for a `marker` at which to continue the
    # list; if there are no more items the `marker` is `null`. To return a
    # list of parts that begins at a specific part, set the `marker` request
    # parameter to the value you obtained from a previous List Parts
    # request. You can also limit the number of parts returned in the
    # response by specifying the `limit` parameter in the request.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and the underlying REST API, see [Working
    # with Archives in Amazon Glacier][2] and [List Parts][3] in the *Amazon
    # Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/working-with-archives.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-list-parts.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :upload_id
    #   The upload ID of the multipart upload.
    #
    # @option params [String] :marker
    #   An opaque string used for pagination. This value specifies the part at
    #   which the listing of parts should begin. Get the marker value from the
    #   response of a previous List Parts response. You need only include the
    #   marker if you are continuing the pagination of results started in a
    #   previous List Parts request.
    #
    # @option params [Integer] :limit
    #   The maximum number of parts to be returned. The default limit is 50.
    #   The number of parts returned might be fewer than the specified limit,
    #   but the number of returned parts never exceeds the limit.
    #
    # @return [Types::ListPartsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPartsOutput#multipart_upload_id #multipart_upload_id} => String
    #   * {Types::ListPartsOutput#vault_arn #vault_arn} => String
    #   * {Types::ListPartsOutput#archive_description #archive_description} => String
    #   * {Types::ListPartsOutput#part_size_in_bytes #part_size_in_bytes} => Integer
    #   * {Types::ListPartsOutput#creation_date #creation_date} => Time
    #   * {Types::ListPartsOutput#parts #parts} => Array&lt;Types::PartListElement&gt;
    #   * {Types::ListPartsOutput#marker #marker} => String
    #
    #
    # @example Example: To list the parts of an archive that have been uploaded in a multipart upload
    #
    #   # The example lists all the parts of a multipart upload.
    #
    #   resp = client.list_parts({
    #     account_id: "-", 
    #     upload_id: "OW2fM5iVylEpFEMM9_HpKowRapC3vn5sSL39_396UW9zLFUWVrnRHaPjUJddQ5OxSHVXjYtrN47NBZ-khxOjyEXAMPLE", 
    #     vault_name: "examplevault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     archive_description: "archive description", 
    #     creation_date: Time.parse("2012-03-20T17:03:43.221Z"), 
    #     marker: "null", 
    #     multipart_upload_id: "OW2fM5iVylEpFEMM9_HpKowRapC3vn5sSL39_396UW9zLFUWVrnRHaPjUJddQ5OxSHVXjYtrN47NBZ-khxOjyEXAMPLE", 
    #     part_size_in_bytes: 4194304, 
    #     parts: [
    #       {
    #         range_in_bytes: "0-4194303", 
    #         sha256_tree_hash: "01d34dabf7be316472c93b1ef80721f5d4", 
    #       }, 
    #       {
    #         range_in_bytes: "4194304-8388607", 
    #         sha256_tree_hash: "0195875365afda349fc21c84c099987164", 
    #       }, 
    #     ], 
    #     vault_arn: "arn:aws:glacier:us-west-2:012345678901:vaults/demo1-vault", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_parts({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     upload_id: "string", # required
    #     marker: "string",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.multipart_upload_id #=> String
    #   resp.vault_arn #=> String
    #   resp.archive_description #=> String
    #   resp.part_size_in_bytes #=> Integer
    #   resp.creation_date #=> Time
    #   resp.parts #=> Array
    #   resp.parts[0].range_in_bytes #=> String
    #   resp.parts[0].sha256_tree_hash #=> String
    #   resp.marker #=> String
    #
    # @overload list_parts(params = {})
    # @param [Hash] params ({})
    def list_parts(params = {}, options = {})
      req = build_request(:list_parts, params)
      req.send_request(options)
    end

    # This operation lists the provisioned capacity units for the specified
    # AWS account.
    #
    # @option params [required, String] :account_id
    #   The AWS account ID of the account that owns the vault. You can either
    #   specify an AWS account ID or optionally a single '-' (hyphen), in
    #   which case Amazon Glacier uses the AWS account ID associated with the
    #   credentials used to sign the request. If you use an account ID, don't
    #   include any hyphens ('-') in the ID.
    #
    # @return [Types::ListProvisionedCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListProvisionedCapacityOutput#provisioned_capacity_list #provisioned_capacity_list} => Array&lt;Types::ProvisionedCapacityDescription&gt;
    #
    #
    # @example Example: To list the provisioned capacity units for an account
    #
    #   # The example lists the provisioned capacity units for an account.
    #
    #   resp = client.list_provisioned_capacity({
    #     account_id: "-", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     provisioned_capacity_list: [
    #       {
    #         capacity_id: "zSaq7NzHFQDANTfQkDen4V7z", 
    #         expiration_date: Time.parse("2016-12-12T00:00:00.000Z"), 
    #         start_date: Time.parse("2016-11-11T20:11:51.095Z"), 
    #       }, 
    #       {
    #         capacity_id: "yXaq7NzHFQNADTfQkDen4V7z", 
    #         expiration_date: Time.parse("2017-01-15T00:00:00.000Z"), 
    #         start_date: Time.parse("2016-12-13T20:11:51.095Z"), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_capacity({
    #     account_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.provisioned_capacity_list #=> Array
    #   resp.provisioned_capacity_list[0].capacity_id #=> String
    #   resp.provisioned_capacity_list[0].start_date #=> Time
    #   resp.provisioned_capacity_list[0].expiration_date #=> Time
    #
    # @overload list_provisioned_capacity(params = {})
    # @param [Hash] params ({})
    def list_provisioned_capacity(params = {}, options = {})
      req = build_request(:list_provisioned_capacity, params)
      req.send_request(options)
    end

    # This operation lists all the tags attached to a vault. The operation
    # returns an empty map if there are no tags. For more information about
    # tags, see [Tagging Amazon Glacier Resources][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @return [Types::ListTagsForVaultOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTagsForVaultOutput#tags #tags} => Hash&lt;String,String&gt;
    #
    #
    # @example Example: To list the tags for a vault
    #
    #   # The example lists all the tags attached to the vault examplevault.
    #
    #   resp = client.list_tags_for_vault({
    #     account_id: "-", 
    #     vault_name: "examplevault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     tags: {
    #       "date" => "july2015", 
    #       "id" => "1234", 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_vault({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.tags #=> Hash
    #   resp.tags["TagKey"] #=> String
    #
    # @overload list_tags_for_vault(params = {})
    # @param [Hash] params ({})
    def list_tags_for_vault(params = {}, options = {})
      req = build_request(:list_tags_for_vault, params)
      req.send_request(options)
    end

    # This operation lists all vaults owned by the calling user's account.
    # The list returned in the response is ASCII-sorted by vault name.
    #
    # By default, this operation returns up to 10 items. If there are more
    # vaults to list, the response `marker` field contains the vault Amazon
    # Resource Name (ARN) at which to continue the list with a new List
    # Vaults request; otherwise, the `marker` field is `null`. To return a
    # list of vaults that begins at a specific vault, set the `marker`
    # request parameter to the vault ARN you obtained from a previous List
    # Vaults request. You can also limit the number of vaults returned in
    # the response by specifying the `limit` parameter in the request.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and underlying REST API, see [Retrieving
    # Vault Metadata in Amazon Glacier][2] and [List Vaults ][3] in the
    # *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/retrieving-vault-info.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vaults-get.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID. This value must match the
    #   AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-') in
    #   the ID.
    #
    # @option params [String] :marker
    #   A string used for pagination. The marker specifies the vault ARN after
    #   which the listing of vaults should begin.
    #
    # @option params [Integer] :limit
    #   The maximum number of vaults to be returned. The default limit is 10.
    #   The number of vaults returned might be fewer than the specified limit,
    #   but the number of returned vaults never exceeds the limit.
    #
    # @return [Types::ListVaultsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVaultsOutput#vault_list #vault_list} => Array&lt;Types::DescribeVaultOutput&gt;
    #   * {Types::ListVaultsOutput#marker #marker} => String
    #
    #
    # @example Example: To list all vaults owned by the calling user's account
    #
    #   # The example lists all vaults owned by the specified AWS account.
    #
    #   resp = client.list_vaults({
    #     account_id: "-", 
    #     limit: , 
    #     marker: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     vault_list: [
    #       {
    #         creation_date: Time.parse("2015-04-06T21:23:45.708Z"), 
    #         last_inventory_date: Time.parse("2015-04-07T00:26:19.028Z"), 
    #         number_of_archives: 1, 
    #         size_in_bytes: 3178496, 
    #         vault_arn: "arn:aws:glacier:us-west-2:0123456789012:vaults/my-vault", 
    #         vault_name: "my-vault", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vaults({
    #     account_id: "string", # required
    #     marker: "string",
    #     limit: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.vault_list #=> Array
    #   resp.vault_list[0].vault_arn #=> String
    #   resp.vault_list[0].vault_name #=> String
    #   resp.vault_list[0].creation_date #=> Time
    #   resp.vault_list[0].last_inventory_date #=> Time
    #   resp.vault_list[0].number_of_archives #=> Integer
    #   resp.vault_list[0].size_in_bytes #=> Integer
    #   resp.marker #=> String
    #
    # @overload list_vaults(params = {})
    # @param [Hash] params ({})
    def list_vaults(params = {}, options = {})
      req = build_request(:list_vaults, params)
      req.send_request(options)
    end

    # This operation purchases a provisioned capacity unit for an AWS
    # account.
    #
    # @option params [required, String] :account_id
    #   The AWS account ID of the account that owns the vault. You can either
    #   specify an AWS account ID or optionally a single '-' (hyphen), in
    #   which case Amazon Glacier uses the AWS account ID associated with the
    #   credentials used to sign the request. If you use an account ID, don't
    #   include any hyphens ('-') in the ID.
    #
    # @return [Types::PurchaseProvisionedCapacityOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PurchaseProvisionedCapacityOutput#capacity_id #capacity_id} => String
    #
    #
    # @example Example: To purchases a provisioned capacity unit for an AWS account
    #
    #   # The example purchases provisioned capacity unit for an AWS account.
    #
    #   resp = client.purchase_provisioned_capacity({
    #     account_id: "-", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     capacity_id: "zSaq7NzHFQDANTfQkDen4V7z", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.purchase_provisioned_capacity({
    #     account_id: "string", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.capacity_id #=> String
    #
    # @overload purchase_provisioned_capacity(params = {})
    # @param [Hash] params ({})
    def purchase_provisioned_capacity(params = {}, options = {})
      req = build_request(:purchase_provisioned_capacity, params)
      req.send_request(options)
    end

    # This operation removes one or more tags from the set of tags attached
    # to a vault. For more information about tags, see [Tagging Amazon
    # Glacier Resources][1]. This operation is idempotent. The operation
    # will be successful, even if there are no tags attached to the vault.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/tagging.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [Array<String>] :tag_keys
    #   A list of tag keys. Each corresponding tag is removed from the vault.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a vault
    #
    #   # The example removes two tags from the vault named examplevault.
    #
    #   resp = client.remove_tags_from_vault({
    #     tag_keys: [
    #       "examplekey1", 
    #       "examplekey2", 
    #     ], 
    #     account_id: "-", 
    #     vault_name: "examplevault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_tags_from_vault({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     tag_keys: ["string"],
    #   })
    #
    # @overload remove_tags_from_vault(params = {})
    # @param [Hash] params ({})
    def remove_tags_from_vault(params = {}, options = {})
      req = build_request(:remove_tags_from_vault, params)
      req.send_request(options)
    end

    # This operation sets and then enacts a data retrieval policy in the
    # region specified in the PUT request. You can set one policy per region
    # for an AWS account. The policy is enacted within a few minutes of a
    # successful PUT operation.
    #
    # The set policy operation does not affect retrieval jobs that were in
    # progress before the policy was enacted. For more information about
    # data retrieval policies, see [Amazon Glacier Data Retrieval
    # Policies][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/data-retrieval-policy.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID. This value must match the
    #   AWS account ID associated with the credentials used to sign the
    #   request. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you specify your account ID, do not include any hyphens ('-') in
    #   the ID.
    #
    # @option params [Types::DataRetrievalPolicy] :policy
    #   The data retrieval policy in JSON format.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To set and then enact a data retrieval policy 
    #
    #   # The example sets and then enacts a data retrieval policy.
    #
    #   resp = client.set_data_retrieval_policy({
    #     policy: {
    #       rules: [
    #         {
    #           bytes_per_hour: 10737418240, 
    #           strategy: "BytesPerHour", 
    #         }, 
    #       ], 
    #     }, 
    #     account_id: "-", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_data_retrieval_policy({
    #     account_id: "string", # required
    #     policy: {
    #       rules: [
    #         {
    #           strategy: "string",
    #           bytes_per_hour: 1,
    #         },
    #       ],
    #     },
    #   })
    #
    # @overload set_data_retrieval_policy(params = {})
    # @param [Hash] params ({})
    def set_data_retrieval_policy(params = {}, options = {})
      req = build_request(:set_data_retrieval_policy, params)
      req.send_request(options)
    end

    # This operation configures an access policy for a vault and will
    # overwrite an existing policy. To configure a vault access policy, send
    # a PUT request to the `access-policy` subresource of the vault. An
    # access policy is specific to a vault and is also called a vault
    # subresource. You can set one access policy per vault and the policy
    # can be up to 20 KB in size. For more information about vault access
    # policies, see [Amazon Glacier Access Control with Vault Access
    # Policies][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/vault-access-policy.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [Types::VaultAccessPolicy] :policy
    #   The vault access policy as a JSON string.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To set the access-policy on a vault
    #
    #   # The example configures an access policy for the vault named examplevault.
    #
    #   resp = client.set_vault_access_policy({
    #     account_id: "-", 
    #     policy: {
    #       policy: "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"Define-owner-access-rights\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::999999999999:root\"},\"Action\":\"glacier:DeleteArchive\",\"Resource\":\"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault\"}]}", 
    #     }, 
    #     vault_name: "examplevault", 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_vault_access_policy({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     policy: {
    #       policy: "string",
    #     },
    #   })
    #
    # @overload set_vault_access_policy(params = {})
    # @param [Hash] params ({})
    def set_vault_access_policy(params = {}, options = {})
      req = build_request(:set_vault_access_policy, params)
      req.send_request(options)
    end

    # This operation configures notifications that will be sent when
    # specific events happen to a vault. By default, you don't get any
    # notifications.
    #
    # To configure vault notifications, send a PUT request to the
    # `notification-configuration` subresource of the vault. The request
    # should include a JSON document that provides an Amazon SNS topic and
    # specific events for which you want Amazon Glacier to send
    # notifications to the topic.
    #
    # Amazon SNS topics must grant permission to the vault to be allowed to
    # publish notifications to the topic. You can configure a vault to
    # publish a notification for the following vault events:
    #
    # * **ArchiveRetrievalCompleted** This event occurs when a job that was
    #   initiated for an archive retrieval is completed (InitiateJob). The
    #   status of the completed job can be "Succeeded" or "Failed". The
    #   notification sent to the SNS topic is the same output as returned
    #   from DescribeJob.
    #
    # * **InventoryRetrievalCompleted** This event occurs when a job that
    #   was initiated for an inventory retrieval is completed (InitiateJob).
    #   The status of the completed job can be "Succeeded" or "Failed".
    #   The notification sent to the SNS topic is the same output as
    #   returned from DescribeJob.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][1].
    #
    # For conceptual information and underlying REST API, see [Configuring
    # Vault Notifications in Amazon Glacier][2] and [Set Vault Notification
    # Configuration ][3] in the *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/configuring-notifications.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-vault-notifications-put.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [Types::VaultNotificationConfig] :vault_notification_config
    #   Provides options for specifying notification configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To configure a vault to post a message to an Amazon SNS topic when jobs complete
    #
    #   # The example sets the examplevault notification configuration.
    #
    #   resp = client.set_vault_notifications({
    #     account_id: "-", 
    #     vault_name: "examplevault", 
    #     vault_notification_config: {
    #       events: [
    #         "ArchiveRetrievalCompleted", 
    #         "InventoryRetrievalCompleted", 
    #       ], 
    #       sns_topic: "arn:aws:sns:us-west-2:012345678901:mytopic", 
    #     }, 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_vault_notifications({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     vault_notification_config: {
    #       sns_topic: "string",
    #       events: ["string"],
    #     },
    #   })
    #
    # @overload set_vault_notifications(params = {})
    # @param [Hash] params ({})
    def set_vault_notifications(params = {}, options = {})
      req = build_request(:set_vault_notifications, params)
      req.send_request(options)
    end

    # This operation adds an archive to a vault. This is a synchronous
    # operation, and for a successful upload, your data is durably
    # persisted. Amazon Glacier returns the archive ID in the
    # `x-amz-archive-id` header of the response.
    #
    # You must use the archive ID to access your data in Amazon Glacier.
    # After you upload an archive, you should save the archive ID returned
    # so that you can retrieve or delete the archive later. Besides saving
    # the archive ID, you can also index it and give it a friendly name to
    # allow for better searching. You can also use the optional archive
    # description field to specify how the archive is referred to in an
    # external index of archives, such as you might create in Amazon
    # DynamoDB. You can also get the vault inventory to obtain a list of
    # archive IDs in a vault. For more information, see InitiateJob.
    #
    # You must provide a SHA256 tree hash of the data you are uploading. For
    # information about computing a SHA256 tree hash, see [Computing
    # Checksums][1].
    #
    # You can optionally specify an archive description of up to 1,024
    # printable ASCII characters. You can get the archive description when
    # you either retrieve the archive or get the vault inventory. For more
    # information, see InitiateJob. Amazon Glacier does not interpret the
    # description in any way. An archive description does not need to be
    # unique. You cannot use the description to retrieve or sort the archive
    # list.
    #
    # Archives are immutable. After you upload an archive, you cannot edit
    # the archive or its description.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][2].
    #
    # For conceptual information and underlying REST API, see [Uploading an
    # Archive in Amazon Glacier][3] and [Upload Archive][4] in the *Amazon
    # Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-an-archive.html
    # [4]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-archive-post.html
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [String] :archive_description
    #   The optional description of the archive you are uploading.
    #
    # @option params [String] :checksum
    #   The SHA256 tree hash of the data being uploaded.
    #
    # @option params [String, IO] :body
    #   The data to upload.
    #
    # @return [Types::ArchiveCreationOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ArchiveCreationOutput#location #location} => String
    #   * {Types::ArchiveCreationOutput#checksum #checksum} => String
    #   * {Types::ArchiveCreationOutput#archive_id #archive_id} => String
    #
    #
    # @example Example: To upload an archive
    #
    #   # The example adds an archive to a vault.
    #
    #   resp = client.upload_archive({
    #     account_id: "-", 
    #     archive_description: "", 
    #     body: "example-data-to-upload", 
    #     checksum: "", 
    #     vault_name: "my-vault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     archive_id: "kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw", 
    #     checksum: "969fb39823836d81f0cc028195fcdbcbbe76cdde932d4646fa7de5f21e18aa67", 
    #     location: "/0123456789012/vaults/my-vault/archives/kKB7ymWJVpPSwhGP6ycSOAekp9ZYe_--zM_mw6k76ZFGEIWQX-ybtRDvc2VkPSDtfKmQrj0IRQLSGsNuDp-AJVlu2ccmDSyDUmZwKbwbpAdGATGDiB3hHO0bjbGehXTcApVud_wyDw", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_archive({
    #     vault_name: "string", # required
    #     account_id: "string", # required
    #     archive_description: "string",
    #     checksum: "string",
    #     body: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.location #=> String
    #   resp.checksum #=> String
    #   resp.archive_id #=> String
    #
    # @overload upload_archive(params = {})
    # @param [Hash] params ({})
    def upload_archive(params = {}, options = {})
      req = build_request(:upload_archive, params)
      req.send_request(options)
    end

    # This operation uploads a part of an archive. You can upload archive
    # parts in any order. You can also upload them in parallel. You can
    # upload up to 10,000 parts for a multipart upload.
    #
    # Amazon Glacier rejects your upload part request if any of the
    # following conditions is true:
    #
    # * **SHA256 tree hash does not match**To ensure that part data is not
    #   corrupted in transmission, you compute a SHA256 tree hash of the
    #   part and include it in your request. Upon receiving the part data,
    #   Amazon Glacier also computes a SHA256 tree hash. If these hash
    #   values don't match, the operation fails. For information about
    #   computing a SHA256 tree hash, see [Computing Checksums][1].
    #
    # * **Part size does not match**The size of each part except the last
    #   must match the size specified in the corresponding
    #   InitiateMultipartUpload request. The size of the last part must be
    #   the same size as, or smaller than, the specified size.
    #
    #   <note markdown="1"> If you upload a part whose size is smaller than the part size you
    #   specified in your initiate multipart upload request and that part is
    #   not the last part, then the upload part request will succeed.
    #   However, the subsequent Complete Multipart Upload request will fail.
    #
    #    </note>
    #
    # * **Range does not align**The byte range value in the request does not
    #   align with the part size specified in the corresponding initiate
    #   request. For example, if you specify a part size of 4194304 bytes (4
    #   MB), then 0 to 4194303 bytes (4 MB - 1) and 4194304 (4 MB) to
    #   8388607 (8 MB - 1) are valid part ranges. However, if you set a
    #   range value of 2 MB to 6 MB, the range does not align with the part
    #   size and the upload will fail.
    #
    # This operation is idempotent. If you upload the same part multiple
    # times, the data included in the most recent request overwrites the
    # previously uploaded data.
    #
    # An AWS account has full permission to perform all operations
    # (actions). However, AWS Identity and Access Management (IAM) users
    # don't have any permissions by default. You must grant them explicit
    # permission to perform specific actions. For more information, see
    # [Access Control Using AWS Identity and Access Management (IAM)][2].
    #
    # For conceptual information and underlying REST API, see [Uploading
    # Large Archives in Parts (Multipart Upload)][3] and [Upload Part ][4]
    # in the *Amazon Glacier Developer Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/amazonglacier/latest/dev/checksum-calculations.html
    # [2]: http://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html
    # [3]: http://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html
    # [4]: http://docs.aws.amazon.com/amazonglacier/latest/dev/api-upload-part.html
    #
    # @option params [required, String] :account_id
    #   The `AccountId` value is the AWS account ID of the account that owns
    #   the vault. You can either specify an AWS account ID or optionally a
    #   single '`-`' (hyphen), in which case Amazon Glacier uses the AWS
    #   account ID associated with the credentials used to sign the request.
    #   If you use an account ID, do not include any hyphens ('-') in the
    #   ID.
    #
    # @option params [required, String] :vault_name
    #   The name of the vault.
    #
    # @option params [required, String] :upload_id
    #   The upload ID of the multipart upload.
    #
    # @option params [String] :checksum
    #   The SHA256 tree hash of the data being uploaded.
    #
    # @option params [String] :range
    #   Identifies the range of bytes in the assembled archive that will be
    #   uploaded in this part. Amazon Glacier uses this information to
    #   assemble the archive in the proper sequence. The format of this header
    #   follows RFC 2616. An example header is Content-Range:bytes
    #   0-4194303/*.
    #
    # @option params [String, IO] :body
    #   The data to upload.
    #
    # @return [Types::UploadMultipartPartOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UploadMultipartPartOutput#checksum #checksum} => String
    #
    #
    # @example Example: To upload the first part of an archive
    #
    #   # The example uploads the first 1 MiB (1024 x 1024 bytes) part of an archive.
    #
    #   resp = client.upload_multipart_part({
    #     account_id: "-", 
    #     body: "part1", 
    #     checksum: "c06f7cd4baacb087002a99a5f48bf953", 
    #     range: "bytes 0-1048575/*", 
    #     upload_id: "19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ", 
    #     vault_name: "examplevault", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     checksum: "c06f7cd4baacb087002a99a5f48bf953", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_multipart_part({
    #     account_id: "string", # required
    #     vault_name: "string", # required
    #     upload_id: "string", # required
    #     checksum: "string",
    #     range: "string",
    #     body: "data",
    #   })
    #
    # @example Response structure
    #
    #   resp.checksum #=> String
    #
    # @overload upload_multipart_part(params = {})
    # @param [Hash] params ({})
    def upload_multipart_part(params = {}, options = {})
      req = build_request(:upload_multipart_part, params)
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
      context[:gem_name] = 'aws-sdk-glacier'
      context[:gem_version] = '1.11.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It makes the maximum number of attempts
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.waiter_until(waiter_name, params)
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. You can pass
    # configuration as the final arguments hash.
    #
    #     # poll for ~25 seconds
    #     client.wait_until(waiter_name, params, {
    #       max_attempts: 5,
    #       delay: 5,
    #     })
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     client.wait_until(waiter_name, params, {
    #
    #       # disable max attempts
    #       max_attempts: nil,
    #
    #       # poll for 1 hour, instead of a number of attempts
    #       before_wait: -> (attempts, response) do
    #         throw :failure if Time.now - started_at > 3600
    #       end
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All of the failure errors extend from
    # {Aws::Waiters::Errors::WaiterFailed}.
    #
    #     begin
    #       client.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # ## Valid Waiters
    #
    # The following table lists the valid waiter names, the operations they call,
    # and the default `:delay` and `:max_attempts` values.
    #
    # | waiter_name      | params            | :delay   | :max_attempts |
    # | ---------------- | ----------------- | -------- | ------------- |
    # | vault_exists     | {#describe_vault} | 3        | 15            |
    # | vault_not_exists | {#describe_vault} | 3        | 15            |
    #
    # @raise [Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    # @raise [Errors::TooManyAttemptsError] Raised when the configured
    #   maximum number of attempts have been made, and the waiter is not
    #   yet successful.
    #
    # @raise [Errors::UnexpectedError] Raised when an error is encounted
    #   while polling for a resource that is not expected.
    #
    # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    #
    # @return [Boolean] Returns `true` if the waiter was successful.
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts
    # @option options [Integer] :delay
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    def wait_until(waiter_name, params = {}, options = {})
      w = waiter(waiter_name, options)
      yield(w.waiter) if block_given? # deprecated
      w.wait(params)
    end

    # @api private
    # @deprecated
    def waiter_names
      waiters.keys
    end

    private

    # @param [Symbol] waiter_name
    # @param [Hash] options ({})
    def waiter(waiter_name, options = {})
      waiter_class = waiters[waiter_name]
      if waiter_class
        waiter_class.new(options.merge(client: self))
      else
        raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
      end
    end

    def waiters
      {
        vault_exists: Waiters::VaultExists,
        vault_not_exists: Waiters::VaultNotExists
      }
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
