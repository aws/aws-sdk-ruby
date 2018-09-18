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

Aws::Plugins::GlobalConfiguration.add_identifier(:secretsmanager)

module Aws::SecretsManager
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :secretsmanager

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

    # Disables automatic scheduled rotation and cancels the rotation of a
    # secret if one is currently in progress.
    #
    # To re-enable scheduled rotation, call RotateSecret with
    # `AutomaticallyRotateAfterDays` set to a value greater than 0. This
    # will immediately rotate your secret and then enable the automatic
    # schedule.
    #
    # <note markdown="1"> If you cancel a rotation that is in progress, it can leave the
    # `VersionStage` labels in an unexpected state. Depending on what step
    # of the rotation was in progress, you might need to remove the staging
    # label `AWSPENDING` from the partially created version, specified by
    # the `VersionId` response value. You should also evaluate the partially
    # rotated new version to see if it should be deleted, which you can do
    # by removing all staging labels from the new version's `VersionStage`
    # field.
    #
    #  </note>
    #
    # To successfully start a rotation, the staging label `AWSPENDING` must
    # be in one of the following states:
    #
    # * Not be attached to any version at all
    #
    # * Attached to the same version as the staging label `AWSCURRENT`
    #
    # If the staging label `AWSPENDING` is attached to a different version
    # than the version with `AWSCURRENT` then the attempt to rotate fails.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:CancelRotateSecret
    #
    # ^
    #
    # **Related operations**
    #
    # * To configure rotation for a secret or to manually trigger a
    #   rotation, use RotateSecret.
    #
    # * To get the rotation configuration details for a secret, use
    #   DescribeSecret.
    #
    # * To list all of the currently available secrets, use ListSecrets.
    #
    # * To list all of the versions currently associated with a secret, use
    #   ListSecretVersionIds.
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret for which you want to cancel a rotation request.
    #   You can specify either the Amazon Resource Name (ARN) or the friendly
    #   name of the secret.
    #
    # @return [Types::CancelRotateSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelRotateSecretResponse#arn #arn} => String
    #   * {Types::CancelRotateSecretResponse#name #name} => String
    #   * {Types::CancelRotateSecretResponse#version_id #version_id} => String
    #
    #
    # @example Example: To cancel scheduled rotation for a secret
    #
    #   # The following example shows how to cancel rotation for a secret. The operation sets the RotationEnabled field to false
    #   # and cancels all scheduled rotations. To resume scheduled rotations, you must re-enable rotation by calling the
    #   # rotate-secret operation.
    #
    #   resp = client.cancel_rotate_secret({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "Name", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_rotate_secret({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CancelRotateSecret AWS API Documentation
    #
    # @overload cancel_rotate_secret(params = {})
    # @param [Hash] params ({})
    def cancel_rotate_secret(params = {}, options = {})
      req = build_request(:cancel_rotate_secret, params)
      req.send_request(options)
    end

    # Creates a new secret. A secret in Secrets Manager consists of both the
    # protected secret data and the important information needed to manage
    # the secret.
    #
    # Secrets Manager stores the encrypted secret data in one of a
    # collection of "versions" associated with the secret. Each version
    # contains a copy of the encrypted secret data. Each version is
    # associated with one or more "staging labels" that identify where the
    # version is in the rotation cycle. The `SecretVersionsToStages` field
    # of the secret contains the mapping of staging labels to the active
    # versions of the secret. Versions without a staging label are
    # considered deprecated and are not included in the list.
    #
    # You provide the secret data to be encrypted by putting text in either
    # the `SecretString` parameter or binary data in the `SecretBinary`
    # parameter, but not both. If you include `SecretString` or
    # `SecretBinary` then Secrets Manager also creates an initial secret
    # version and automatically attaches the staging label `AWSCURRENT` to
    # the new version.
    #
    # <note markdown="1"> * If you call an operation that needs to encrypt or decrypt the
    #   `SecretString` or `SecretBinary` for a secret in the same account as
    #   the calling user and that secret doesn't specify a AWS KMS
    #   encryption key, Secrets Manager uses the account's default AWS
    #   managed customer master key (CMK) with the alias
    #   `aws/secretsmanager`. If this key doesn't already exist in your
    #   account then Secrets Manager creates it for you automatically. All
    #   users in the same AWS account automatically have access to use the
    #   default CMK. Note that if an Secrets Manager API call results in AWS
    #   having to create the account's AWS-managed CMK, it can result in a
    #   one-time significant delay in returning the result.
    #
    # * If the secret is in a different AWS account from the credentials
    #   calling an API that requires encryption or decryption of the secret
    #   value then you must create and use a custom AWS KMS CMK because you
    #   can't access the default CMK for the account using credentials from
    #   a different AWS account. Store the ARN of the CMK in the secret when
    #   you create the secret or when you update it by including it in the
    #   `KMSKeyId`. If you call an API that must encrypt or decrypt
    #   `SecretString` or `SecretBinary` using credentials from a different
    #   account then the AWS KMS key policy must grant cross-account access
    #   to that other account's user or role for both the
    #   kms:GenerateDataKey and kms:Decrypt operations.
    #
    #  </note>
    #
    #
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:CreateSecret
    #
    # * kms:GenerateDataKey - needed only if you use a customer-managed AWS
    #   KMS key to encrypt the secret. You do not need this permission to
    #   use the account's default AWS managed CMK for Secrets Manager.
    #
    # * kms:Decrypt - needed only if you use a customer-managed AWS KMS key
    #   to encrypt the secret. You do not need this permission to use the
    #   account's default AWS managed CMK for Secrets Manager.
    #
    # **Related operations**
    #
    # * To delete a secret, use DeleteSecret.
    #
    # * To modify an existing secret, use UpdateSecret.
    #
    # * To create a new version of a secret, use PutSecretValue.
    #
    # * To retrieve the encrypted secure string and secure binary values,
    #   use GetSecretValue.
    #
    # * To retrieve all other details for a secret, use DescribeSecret. This
    #   does not include the encrypted secure string and secure binary
    #   values.
    #
    # * To retrieve the list of secret versions associated with the current
    #   secret, use DescribeSecret and examine the `SecretVersionsToStages`
    #   response value.
    #
    # @option params [required, String] :name
    #   Specifies the friendly name of the new secret.
    #
    #   The secret name must be ASCII letters, digits, or the following
    #   characters : /\_+=.@-
    #
    # @option params [String] :client_request_token
    #   (Optional) If you include `SecretString` or `SecretBinary`, then an
    #   initial version is created as part of the secret, and this parameter
    #   specifies a unique identifier for the new version.
    #
    #   <note markdown="1"> If you use the AWS CLI or one of the AWS SDK to call this operation,
    #   then you can leave this parameter empty. The CLI or SDK generates a
    #   random UUID for you and includes it as the value for this parameter in
    #   the request. If you don't use the SDK and instead generate a raw HTTP
    #   request to the Secrets Manager service endpoint, then you must
    #   generate a `ClientRequestToken` yourself for the new version and
    #   include that value in the request.
    #
    #    </note>
    #
    #   This value helps ensure idempotency. Secrets Manager uses this value
    #   to prevent the accidental creation of duplicate versions if there are
    #   failures and retries during a rotation. We recommend that you generate
    #   a [UUID-type][1] value to ensure uniqueness of your versions within
    #   the specified secret.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are the same as those in
    #     the request, then the request is ignored (the operation is
    #     idempotent).
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are different from those in
    #     the request then the request fails because you cannot modify an
    #     existing version. Instead, use PutSecretValue to create a new
    #     version.
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String] :description
    #   (Optional) Specifies a user-provided description of the secret.
    #
    # @option params [String] :kms_key_id
    #   (Optional) Specifies the ARN, Key ID, or alias of the AWS KMS customer
    #   master key (CMK) to be used to encrypt the `SecretString` or
    #   `SecretBinary` values in the versions stored in this secret.
    #
    #   You can specify any of the supported ways to identify a AWS KMS key
    #   ID. If you need to reference a CMK in a different account, you can use
    #   only the key ARN or the alias ARN.
    #
    #   If you don't specify this value, then Secrets Manager defaults to
    #   using the AWS account's default CMK (the one named
    #   `aws/secretsmanager`). If a AWS KMS CMK with that name doesn't yet
    #   exist, then Secrets Manager creates it for you automatically the first
    #   time it needs to encrypt a version's `SecretString` or `SecretBinary`
    #   fields.
    #
    #   You can use the account's default CMK to encrypt and decrypt only if
    #   you call this operation using credentials from the same account that
    #   owns the secret. If the secret is in a different account, then you
    #   must create a custom CMK and specify the ARN in this field.
    #
    # @option params [String, IO] :secret_binary
    #   (Optional) Specifies binary data that you want to encrypt and store in
    #   the new version of the secret. To use this parameter in the
    #   command-line tools, we recommend that you store your binary data in a
    #   file and then use the appropriate technique for your tool to pass the
    #   contents of the file as a parameter.
    #
    #   Either `SecretString` or `SecretBinary` must have a value, but not
    #   both. They cannot both be empty.
    #
    #   This parameter is not available using the Secrets Manager console. It
    #   can be accessed only by using the AWS CLI or one of the AWS SDKs.
    #
    # @option params [String] :secret_string
    #   (Optional) Specifies text data that you want to encrypt and store in
    #   this new version of the secret.
    #
    #   Either `SecretString` or `SecretBinary` must have a value, but not
    #   both. They cannot both be empty.
    #
    #   If you create a secret by using the Secrets Manager console then
    #   Secrets Manager puts the protected secret text in only the
    #   `SecretString` parameter. The Secrets Manager console stores the
    #   information as a JSON structure of key/value pairs that the Lambda
    #   rotation function knows how to parse.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For information on how to
    #   format a JSON parameter for the various command line tool
    #   environments, see [Using JSON for Parameters][1] in the *AWS CLI User
    #   Guide*. For example:
    #
    #   `[\{"username":"bob"\},\{"password":"abc123xyz456"\}]`
    #
    #   If your command-line tool or SDK requires quotation marks around the
    #   parameter, you should use single quotes to avoid confusion with the
    #   double quotes required in the JSON text.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #
    # @option params [Array<Types::Tag>] :tags
    #   (Optional) Specifies a list of user-defined tags that are attached to
    #   the secret. Each tag is a "Key" and "Value" pair of strings. This
    #   operation only appends tags to the existing list of tags. To remove
    #   tags, you must use UntagResource.
    #
    #   * Secrets Manager tag key names are case sensitive. A tag with the key
    #     "ABC" is a different tag from one with key "abc".
    #
    #   * If you check tags in IAM policy `Condition` elements as part of your
    #     security strategy, then adding or removing a tag can change
    #     permissions. If the successful completion of this operation would
    #     result in you losing your permissions for this secret, then this
    #     operation is blocked and returns an `Access Denied` error.
    #
    #   This parameter requires a JSON text string argument. For information
    #   on how to format a JSON parameter for the various command line tool
    #   environments, see [Using JSON for Parameters][1] in the *AWS CLI User
    #   Guide*. For example:
    #
    #   `[\{"Key":"CostCenter","Value":"12345"\},\{"Key":"environment","Value":"production"\}]`
    #
    #   If your command-line tool or SDK requires quotation marks around the
    #   parameter, you should use single quotes to avoid confusion with the
    #   double quotes required in the JSON text.
    #
    #   The following basic restrictions apply to tags:
    #
    #   * Maximum number of tags per secret—50
    #
    #   * Maximum key length—127 Unicode characters in UTF-8
    #
    #   * Maximum value length—255 Unicode characters in UTF-8
    #
    #   * Tag keys and values are case sensitive.
    #
    #   * Do not use the `aws:` prefix in your tag names or values because it
    #     is reserved for AWS use. You can't edit or delete tag names or
    #     values with this prefix. Tags with this prefix do not count against
    #     your tags per secret limit.
    #
    #   * If your tagging schema will be used across multiple services and
    #     resources, remember that other services might have restrictions on
    #     allowed characters. Generally allowed characters are: letters,
    #     spaces, and numbers representable in UTF-8, plus the following
    #     special characters: + - = . \_ : / @.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #
    # @return [Types::CreateSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSecretResponse#arn #arn} => String
    #   * {Types::CreateSecretResponse#name #name} => String
    #   * {Types::CreateSecretResponse#version_id #version_id} => String
    #
    #
    # @example Example: To create a basic secret
    #
    #   # The following example shows how to create a secret. The credentials stored in the encrypted secret value are retrieved
    #   # from a file on disk named mycreds.json.
    #
    #   resp = client.create_secret({
    #     client_request_token: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     description: "My test database secret created with the CLI", 
    #     name: "MyTestDatabaseSecret", 
    #     secret_string: "{\"username\":\"david\",\"password\":\"BnQw!XDWgaEeT9XGTT29\"}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_secret({
    #     name: "NameType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     description: "DescriptionType",
    #     kms_key_id: "KmsKeyIdType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #     tags: [
    #       {
    #         key: "TagKeyType",
    #         value: "TagValueType",
    #       },
    #     ],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/CreateSecret AWS API Documentation
    #
    # @overload create_secret(params = {})
    # @param [Hash] params ({})
    def create_secret(params = {}, options = {})
      req = build_request(:create_secret, params)
      req.send_request(options)
    end

    # Deletes the resource-based permission policy that's attached to the
    # secret.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:DeleteResourcePolicy
    #
    # ^
    #
    # **Related operations**
    #
    # * To attach a resource policy to a secret, use PutResourcePolicy.
    #
    # * To retrieve the current resource-based policy that's attached to a
    #   secret, use GetResourcePolicy.
    #
    # * To list all of the currently available secrets, use ListSecrets.
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret that you want to delete the attached
    #   resource-based policy for. You can specify either the Amazon Resource
    #   Name (ARN) or the friendly name of the secret.
    #
    # @return [Types::DeleteResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteResourcePolicyResponse#arn #arn} => String
    #   * {Types::DeleteResourcePolicyResponse#name #name} => String
    #
    #
    # @example Example: To delete the resource-based policy attached to a secret
    #
    #   # The following example shows how to delete the resource-based policy that is attached to a secret.
    #
    #   resp = client.delete_resource_policy({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseMasterSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteResourcePolicy AWS API Documentation
    #
    # @overload delete_resource_policy(params = {})
    # @param [Hash] params ({})
    def delete_resource_policy(params = {}, options = {})
      req = build_request(:delete_resource_policy, params)
      req.send_request(options)
    end

    # Deletes an entire secret and all of its versions. You can optionally
    # include a recovery window during which you can restore the secret. If
    # you don't specify a recovery window value, the operation defaults to
    # 30 days. Secrets Manager attaches a `DeletionDate` stamp to the secret
    # that specifies the end of the recovery window. At the end of the
    # recovery window, Secrets Manager deletes the secret permanently.
    #
    # At any time before recovery window ends, you can use RestoreSecret to
    # remove the `DeletionDate` and cancel the deletion of the secret.
    #
    # You cannot access the encrypted secret information in any secret that
    # is scheduled for deletion. If you need to access that information, you
    # must cancel the deletion with RestoreSecret and then retrieve the
    # information.
    #
    # <note markdown="1"> * There is no explicit operation to delete a version of a secret.
    #   Instead, remove all staging labels from the `VersionStage` field of
    #   a version. That marks the version as deprecated and allows Secrets
    #   Manager to delete it as needed. Versions that do not have any
    #   staging labels do not show up in ListSecretVersionIds unless you
    #   specify `IncludeDeprecated`.
    #
    # * The permanent secret deletion at the end of the waiting period is
    #   performed as a background task with low priority. There is no
    #   guarantee of a specific time after the recovery window for the
    #   actual delete operation to occur.
    #
    #  </note>
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:DeleteSecret
    #
    # ^
    #
    # **Related operations**
    #
    # * To create a secret, use CreateSecret.
    #
    # * To cancel deletion of a version of a secret before the recovery
    #   window has expired, use RestoreSecret.
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret that you want to delete. You can specify either
    #   the Amazon Resource Name (ARN) or the friendly name of the secret.
    #
    # @option params [Integer] :recovery_window_in_days
    #   (Optional) Specifies the number of days that Secrets Manager waits
    #   before it can delete the secret. You can't use both this parameter
    #   and the `ForceDeleteWithoutRecovery` parameter in the same API call.
    #
    #   This value can range from 7 to 30 days. The default value is 30.
    #
    # @option params [Boolean] :force_delete_without_recovery
    #   (Optional) Specifies that the secret is to be deleted without any
    #   recovery window. You can't use both this parameter and the
    #   `RecoveryWindowInDays` parameter in the same API call.
    #
    #   An asynchronous background process performs the actual deletion, so
    #   there can be a short delay before the operation completes. If you
    #   write code to delete and then immediately recreate a secret with the
    #   same name, ensure that your code includes appropriate back off and
    #   retry logic.
    #
    #   Use this parameter with caution. This parameter causes the operation
    #   to skip the normal waiting period before the permanent deletion that
    #   AWS would normally impose with the `RecoveryWindowInDays` parameter.
    #   If you delete a secret with the `ForceDeleteWithouRecovery` parameter,
    #   then you have no opportunity to recover the secret. It is permanently
    #   lost.
    #
    # @return [Types::DeleteSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DeleteSecretResponse#arn #arn} => String
    #   * {Types::DeleteSecretResponse#name #name} => String
    #   * {Types::DeleteSecretResponse#deletion_date #deletion_date} => Time
    #
    #
    # @example Example: To delete a secret
    #
    #   # The following example shows how to delete a secret. The secret stays in your account in a deprecated and inaccessible
    #   # state until the recovery window ends. After the date and time in the DeletionDate response field has passed, you can no
    #   # longer recover this secret with restore-secret.
    #
    #   resp = client.delete_secret({
    #     recovery_window_in_days: 7, 
    #     secret_id: "MyTestDatabaseSecret1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     deletion_date: Time.parse("1524085349.095"), 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_secret({
    #     secret_id: "SecretIdType", # required
    #     recovery_window_in_days: 1,
    #     force_delete_without_recovery: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.deletion_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DeleteSecret AWS API Documentation
    #
    # @overload delete_secret(params = {})
    # @param [Hash] params ({})
    def delete_secret(params = {}, options = {})
      req = build_request(:delete_secret, params)
      req.send_request(options)
    end

    # Retrieves the details of a secret. It does not include the encrypted
    # fields. Only those fields that are populated with a value are returned
    # in the response.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:DescribeSecret
    #
    # ^
    #
    # **Related operations**
    #
    # * To create a secret, use CreateSecret.
    #
    # * To modify a secret, use UpdateSecret.
    #
    # * To retrieve the encrypted secret information in a version of the
    #   secret, use GetSecretValue.
    #
    # * To list all of the secrets in the AWS account, use ListSecrets.
    #
    # @option params [required, String] :secret_id
    #   The identifier of the secret whose details you want to retrieve. You
    #   can specify either the Amazon Resource Name (ARN) or the friendly name
    #   of the secret.
    #
    # @return [Types::DescribeSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSecretResponse#arn #arn} => String
    #   * {Types::DescribeSecretResponse#name #name} => String
    #   * {Types::DescribeSecretResponse#description #description} => String
    #   * {Types::DescribeSecretResponse#kms_key_id #kms_key_id} => String
    #   * {Types::DescribeSecretResponse#rotation_enabled #rotation_enabled} => Boolean
    #   * {Types::DescribeSecretResponse#rotation_lambda_arn #rotation_lambda_arn} => String
    #   * {Types::DescribeSecretResponse#rotation_rules #rotation_rules} => Types::RotationRulesType
    #   * {Types::DescribeSecretResponse#last_rotated_date #last_rotated_date} => Time
    #   * {Types::DescribeSecretResponse#last_changed_date #last_changed_date} => Time
    #   * {Types::DescribeSecretResponse#last_accessed_date #last_accessed_date} => Time
    #   * {Types::DescribeSecretResponse#deleted_date #deleted_date} => Time
    #   * {Types::DescribeSecretResponse#tags #tags} => Array&lt;Types::Tag&gt;
    #   * {Types::DescribeSecretResponse#version_ids_to_stages #version_ids_to_stages} => Hash&lt;String,Array&lt;String&gt;&gt;
    #
    #
    # @example Example: To retrieve the details of a secret
    #
    #   # The following example shows how to get the details about a secret.
    #
    #   resp = client.describe_secret({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     description: "My test database secret", 
    #     kms_key_id: "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE1-90ab-cdef-fedc-ba987KMSKEY1", 
    #     last_accessed_date: Time.parse("1523923200"), 
    #     last_changed_date: Time.parse(1523477145.729), 
    #     last_rotated_date: Time.parse(1525747253.72), 
    #     name: "MyTestDatabaseSecret", 
    #     rotation_enabled: true, 
    #     rotation_lambda_arn: "arn:aws:lambda:us-west-2:123456789012:function:MyTestRotationLambda", 
    #     rotation_rules: {
    #       automatically_after_days: 30, 
    #     }, 
    #     tags: [
    #       {
    #         key: "SecondTag", 
    #         value: "AnotherValue", 
    #       }, 
    #       {
    #         key: "FirstTag", 
    #         value: "SomeValue", 
    #       }, 
    #     ], 
    #     version_ids_to_stages: {
    #       "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => [
    #         "AWSPREVIOUS", 
    #       ], 
    #       "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => [
    #         "AWSCURRENT", 
    #       ], 
    #     }, 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_secret({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.kms_key_id #=> String
    #   resp.rotation_enabled #=> Boolean
    #   resp.rotation_lambda_arn #=> String
    #   resp.rotation_rules.automatically_after_days #=> Integer
    #   resp.last_rotated_date #=> Time
    #   resp.last_changed_date #=> Time
    #   resp.last_accessed_date #=> Time
    #   resp.deleted_date #=> Time
    #   resp.tags #=> Array
    #   resp.tags[0].key #=> String
    #   resp.tags[0].value #=> String
    #   resp.version_ids_to_stages #=> Hash
    #   resp.version_ids_to_stages["SecretVersionIdType"] #=> Array
    #   resp.version_ids_to_stages["SecretVersionIdType"][0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/DescribeSecret AWS API Documentation
    #
    # @overload describe_secret(params = {})
    # @param [Hash] params ({})
    def describe_secret(params = {}, options = {})
      req = build_request(:describe_secret, params)
      req.send_request(options)
    end

    # Generates a random password of the specified complexity. This
    # operation is intended for use in the Lambda rotation function. Per
    # best practice, we recommend that you specify the maximum length and
    # include every character type that the system you are generating a
    # password for can support.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:GetRandomPassword
    #
    # ^
    #
    # @option params [Integer] :password_length
    #   The desired length of the generated password. The default value if you
    #   do not include this parameter is 32 characters.
    #
    # @option params [String] :exclude_characters
    #   A string that includes characters that should not be included in the
    #   generated password. The default is that all characters from the
    #   included sets can be used.
    #
    # @option params [Boolean] :exclude_numbers
    #   Specifies that the generated password should not include digits. The
    #   default if you do not include this switch parameter is that digits can
    #   be included.
    #
    # @option params [Boolean] :exclude_punctuation
    #   Specifies that the generated password should not include punctuation
    #   characters. The default if you do not include this switch parameter is
    #   that punctuation characters can be included.
    #
    #   The following are the punctuation characters that *can* be included in
    #   the generated password if you don't explicitly exclude them with
    #   `ExcludeCharacters` or `ExcludePunctuation`\:
    #
    #   `` ! " # $ % & ' ( ) * + , - . / : ; < = > ? @ [ \ ] ^ _ ` \{ | \} ~
    #   ``
    #
    # @option params [Boolean] :exclude_uppercase
    #   Specifies that the generated password should not include uppercase
    #   letters. The default if you do not include this switch parameter is
    #   that uppercase letters can be included.
    #
    # @option params [Boolean] :exclude_lowercase
    #   Specifies that the generated password should not include lowercase
    #   letters. The default if you do not include this switch parameter is
    #   that lowercase letters can be included.
    #
    # @option params [Boolean] :include_space
    #   Specifies that the generated password can include the space character.
    #   The default if you do not include this switch parameter is that the
    #   space character is not included.
    #
    # @option params [Boolean] :require_each_included_type
    #   A boolean value that specifies whether the generated password must
    #   include at least one of every allowed character type. The default
    #   value is `True` and the operation requires at least one of every
    #   character type.
    #
    # @return [Types::GetRandomPasswordResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRandomPasswordResponse#random_password #random_password} => String
    #
    #
    # @example Example: To generate a random password
    #
    #   # The following example shows how to request a randomly generated password. This example includes the optional flags to
    #   # require spaces and at least one character of each included type. It specifies a length of 20 characters.
    #
    #   resp = client.get_random_password({
    #     include_space: true, 
    #     password_length: 20, 
    #     require_each_included_type: true, 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     random_password: "N+Z43a,>vx7j O8^*<8i3", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_random_password({
    #     password_length: 1,
    #     exclude_characters: "ExcludeCharactersType",
    #     exclude_numbers: false,
    #     exclude_punctuation: false,
    #     exclude_uppercase: false,
    #     exclude_lowercase: false,
    #     include_space: false,
    #     require_each_included_type: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.random_password #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetRandomPassword AWS API Documentation
    #
    # @overload get_random_password(params = {})
    # @param [Hash] params ({})
    def get_random_password(params = {}, options = {})
      req = build_request(:get_random_password, params)
      req.send_request(options)
    end

    # Retrieves the JSON text of the resource-based policy document that's
    # attached to the specified secret. The JSON request string input and
    # response output are shown formatted with white space and line breaks
    # for better readability. Submit your input as a single line JSON
    # string.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:GetResourcePolicy
    #
    # ^
    #
    # **Related operations**
    #
    # * To attach a resource policy to a secret, use PutResourcePolicy.
    #
    # * To delete the resource-based policy that's attached to a secret,
    #   use DeleteResourcePolicy.
    #
    # * To list all of the currently available secrets, use ListSecrets.
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret that you want to retrieve the attached
    #   resource-based policy for. You can specify either the Amazon Resource
    #   Name (ARN) or the friendly name of the secret.
    #
    # @return [Types::GetResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetResourcePolicyResponse#arn #arn} => String
    #   * {Types::GetResourcePolicyResponse#name #name} => String
    #   * {Types::GetResourcePolicyResponse#resource_policy #resource_policy} => String
    #
    #
    # @example Example: To retrieve the resource-based policy attached to a secret
    #
    #   # The following example shows how to retrieve the resource-based policy that is attached to a secret.
    #
    #   resp = client.get_resource_policy({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     resource_policy: "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.resource_policy #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetResourcePolicy AWS API Documentation
    #
    # @overload get_resource_policy(params = {})
    # @param [Hash] params ({})
    def get_resource_policy(params = {}, options = {})
      req = build_request(:get_resource_policy, params)
      req.send_request(options)
    end

    # Retrieves the contents of the encrypted fields `SecretString` or
    # `SecretBinary` from the specified version of a secret, whichever
    # contains content.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:GetSecretValue
    #
    # * kms:Decrypt - required only if you use a customer-managed AWS KMS
    #   key to encrypt the secret. You do not need this permission to use
    #   the account's default AWS managed CMK for Secrets Manager.
    #
    # **Related operations**
    #
    # * To create a new version of the secret with different encrypted
    #   information, use PutSecretValue.
    #
    # * To retrieve the non-encrypted details for the secret, use
    #   DescribeSecret.
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret containing the version that you want to retrieve.
    #   You can specify either the Amazon Resource Name (ARN) or the friendly
    #   name of the secret.
    #
    # @option params [String] :version_id
    #   Specifies the unique identifier of the version of the secret that you
    #   want to retrieve. If you specify this parameter then don't specify
    #   `VersionStage`. If you don't specify either a `VersionStage` or
    #   `VersionId` then the default is to perform the operation on the
    #   version with the `VersionStage` value of `AWSCURRENT`.
    #
    #   This value is typically a [UUID-type][1] value with 32 hexadecimal
    #   digits.
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String] :version_stage
    #   Specifies the secret version that you want to retrieve by the staging
    #   label attached to the version.
    #
    #   Staging labels are used to keep track of different versions during the
    #   rotation process. If you use this parameter then don't specify
    #   `VersionId`. If you don't specify either a `VersionStage` or
    #   `VersionId`, then the default is to perform the operation on the
    #   version with the `VersionStage` value of `AWSCURRENT`.
    #
    # @return [Types::GetSecretValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSecretValueResponse#arn #arn} => String
    #   * {Types::GetSecretValueResponse#name #name} => String
    #   * {Types::GetSecretValueResponse#version_id #version_id} => String
    #   * {Types::GetSecretValueResponse#secret_binary #secret_binary} => String
    #   * {Types::GetSecretValueResponse#secret_string #secret_string} => String
    #   * {Types::GetSecretValueResponse#version_stages #version_stages} => Array&lt;String&gt;
    #   * {Types::GetSecretValueResponse#created_date #created_date} => Time
    #
    #
    # @example Example: To retrieve the encrypted secret value of a secret
    #
    #   # The following example shows how to retrieve the secret string value from the version of the secret that has the
    #   # AWSPREVIOUS staging label attached. If you want to retrieve the AWSCURRENT version of the secret, then you can omit the
    #   # VersionStage parameter because it defaults to AWSCURRENT.
    #
    #   resp = client.get_secret_value({
    #     secret_id: "MyTestDatabaseSecret", 
    #     version_stage: "AWSPREVIOUS", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     created_date: Time.parse(1523477145.713), 
    #     name: "MyTestDatabaseSecret", 
    #     secret_string: "{\n  \"username\":\"david\",\n  \"password\":\"BnQw&XDWgaEeT9XGTT29\"\n}\n", 
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     version_stages: [
    #       "AWSPREVIOUS", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_secret_value({
    #     secret_id: "SecretIdType", # required
    #     version_id: "SecretVersionIdType",
    #     version_stage: "SecretVersionStageType",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #   resp.secret_binary #=> String
    #   resp.secret_string #=> String
    #   resp.version_stages #=> Array
    #   resp.version_stages[0] #=> String
    #   resp.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/GetSecretValue AWS API Documentation
    #
    # @overload get_secret_value(params = {})
    # @param [Hash] params ({})
    def get_secret_value(params = {}, options = {})
      req = build_request(:get_secret_value, params)
      req.send_request(options)
    end

    # Lists all of the versions attached to the specified secret. The output
    # does not include the `SecretString` or `SecretBinary` fields. By
    # default, the list includes only versions that have at least one
    # staging label in `VersionStage` attached.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter when calling any of
    # the `List*` operations. These operations can occasionally return an
    # empty or shorter than expected list of results even when there are
    # more results available. When this happens, the `NextToken` response
    # parameter contains a value to pass to the next call to the same API to
    # request the next part of the list.
    #
    #  </note>
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:ListSecretVersionIds
    #
    # ^
    #
    # **Related operations**
    #
    # * To list the secrets in an account, use ListSecrets.
    #
    # ^
    #
    # @option params [required, String] :secret_id
    #   The identifier for the secret containing the versions you want to
    #   list. You can specify either the Amazon Resource Name (ARN) or the
    #   friendly name of the secret.
    #
    # @option params [Integer] :max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, it defaults to a
    #   value that's specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to get
    #   the next part of the results. Note that Secrets Manager might return
    #   fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @option params [String] :next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @option params [Boolean] :include_deprecated
    #   (Optional) Specifies that you want the results to include versions
    #   that do not have any staging labels attached to them. Such versions
    #   are considered deprecated and are subject to deletion by Secrets
    #   Manager as needed.
    #
    # @return [Types::ListSecretVersionIdsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecretVersionIdsResponse#versions #versions} => Array&lt;Types::SecretVersionsListEntry&gt;
    #   * {Types::ListSecretVersionIdsResponse#next_token #next_token} => String
    #   * {Types::ListSecretVersionIdsResponse#arn #arn} => String
    #   * {Types::ListSecretVersionIdsResponse#name #name} => String
    #
    #
    # @example Example: To list all of the secret versions associated with a secret
    #
    #   # The following example shows how to retrieve a list of all of the versions of a secret, including those without any
    #   # staging labels.
    #
    #   resp = client.list_secret_version_ids({
    #     include_deprecated: true, 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     versions: [
    #       {
    #         created_date: Time.parse(1523477145.713), 
    #         version_id: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE", 
    #         version_stages: [
    #           "AWSPREVIOUS", 
    #         ], 
    #       }, 
    #       {
    #         created_date: Time.parse(1523486221.391), 
    #         version_id: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE", 
    #         version_stages: [
    #           "AWSCURRENT", 
    #         ], 
    #       }, 
    #       {
    #         created_date: Time.parse(1511974462.36), 
    #         version_id: "EXAMPLE3-90ab-cdef-fedc-ba987EXAMPLE;", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_secret_version_ids({
    #     secret_id: "SecretIdType", # required
    #     max_results: 1,
    #     next_token: "NextTokenType",
    #     include_deprecated: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.versions #=> Array
    #   resp.versions[0].version_id #=> String
    #   resp.versions[0].version_stages #=> Array
    #   resp.versions[0].version_stages[0] #=> String
    #   resp.versions[0].last_accessed_date #=> Time
    #   resp.versions[0].created_date #=> Time
    #   resp.next_token #=> String
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecretVersionIds AWS API Documentation
    #
    # @overload list_secret_version_ids(params = {})
    # @param [Hash] params ({})
    def list_secret_version_ids(params = {}, options = {})
      req = build_request(:list_secret_version_ids, params)
      req.send_request(options)
    end

    # Lists all of the secrets that are stored by Secrets Manager in the AWS
    # account. To list the versions currently stored for a specific secret,
    # use ListSecretVersionIds. The encrypted fields `SecretString` and
    # `SecretBinary` are not included in the output. To get that
    # information, call the GetSecretValue operation.
    #
    # <note markdown="1"> Always check the `NextToken` response parameter when calling any of
    # the `List*` operations. These operations can occasionally return an
    # empty or shorter than expected list of results even when there are
    # more results available. When this happens, the `NextToken` response
    # parameter contains a value to pass to the next call to the same API to
    # request the next part of the list.
    #
    #  </note>
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:ListSecrets
    #
    # ^
    #
    # **Related operations**
    #
    # * To list the versions attached to a secret, use ListSecretVersionIds.
    #
    # ^
    #
    # @option params [Integer] :max_results
    #   (Optional) Limits the number of results that you want to include in
    #   the response. If you don't include this parameter, it defaults to a
    #   value that's specific to the operation. If additional items exist
    #   beyond the maximum you specify, the `NextToken` response element is
    #   present and has a value (isn't null). Include that value as the
    #   `NextToken` request parameter in the next call to the operation to get
    #   the next part of the results. Note that Secrets Manager might return
    #   fewer results than the maximum even when there are more results
    #   available. You should check `NextToken` after every operation to
    #   ensure that you receive all of the results.
    #
    # @option params [String] :next_token
    #   (Optional) Use this parameter in a request if you receive a
    #   `NextToken` response in a previous request that indicates that
    #   there's more output available. In a subsequent call, set it to the
    #   value of the previous call's `NextToken` response to indicate where
    #   the output should continue from.
    #
    # @return [Types::ListSecretsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSecretsResponse#secret_list #secret_list} => Array&lt;Types::SecretListEntry&gt;
    #   * {Types::ListSecretsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To list the secrets in your account
    #
    #   # The following example shows how to list all of the secrets in your account.
    #
    #   resp = client.list_secrets({
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     secret_list: [
    #       {
    #         arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #         description: "My test database secret", 
    #         last_changed_date: Time.parse(1523477145.729), 
    #         name: "MyTestDatabaseSecret", 
    #         secret_versions_to_stages: {
    #           "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE" => [
    #             "AWSCURRENT", 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret1-d4e5f6", 
    #         description: "Another secret created for a different database", 
    #         last_changed_date: Time.parse(1523482025.685), 
    #         name: "MyTestDatabaseSecret1", 
    #         secret_versions_to_stages: {
    #           "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE" => [
    #             "AWSCURRENT", 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_secrets({
    #     max_results: 1,
    #     next_token: "NextTokenType",
    #   })
    #
    # @example Response structure
    #
    #   resp.secret_list #=> Array
    #   resp.secret_list[0].arn #=> String
    #   resp.secret_list[0].name #=> String
    #   resp.secret_list[0].description #=> String
    #   resp.secret_list[0].kms_key_id #=> String
    #   resp.secret_list[0].rotation_enabled #=> Boolean
    #   resp.secret_list[0].rotation_lambda_arn #=> String
    #   resp.secret_list[0].rotation_rules.automatically_after_days #=> Integer
    #   resp.secret_list[0].last_rotated_date #=> Time
    #   resp.secret_list[0].last_changed_date #=> Time
    #   resp.secret_list[0].last_accessed_date #=> Time
    #   resp.secret_list[0].deleted_date #=> Time
    #   resp.secret_list[0].tags #=> Array
    #   resp.secret_list[0].tags[0].key #=> String
    #   resp.secret_list[0].tags[0].value #=> String
    #   resp.secret_list[0].secret_versions_to_stages #=> Hash
    #   resp.secret_list[0].secret_versions_to_stages["SecretVersionIdType"] #=> Array
    #   resp.secret_list[0].secret_versions_to_stages["SecretVersionIdType"][0] #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/ListSecrets AWS API Documentation
    #
    # @overload list_secrets(params = {})
    # @param [Hash] params ({})
    def list_secrets(params = {}, options = {})
      req = build_request(:list_secrets, params)
      req.send_request(options)
    end

    # Attaches the contents of the specified resource-based permission
    # policy to a secret. A resource-based policy is optional.
    # Alternatively, you can use IAM identity-based policies that specify
    # the secret's Amazon Resource Name (ARN) in the policy statement's
    # `Resources` element. You can also use a combination of both
    # identity-based and resource-based policies. The affected users and
    # roles receive the permissions that are permitted by all of the
    # relevant policies. For more information, see [Using Resource-Based
    # Policies for AWS Secrets Manager][1]. For the complete description of
    # the AWS policy syntax and grammar, see [IAM JSON Policy Reference][2]
    # in the *IAM User Guide*.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:PutResourcePolicy
    #
    # ^
    #
    # **Related operations**
    #
    # * To retrieve the resource policy that's attached to a secret, use
    #   GetResourcePolicy.
    #
    # * To delete the resource-based policy that's attached to a secret,
    #   use DeleteResourcePolicy.
    #
    # * To list all of the currently available secrets, use ListSecrets.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/secretsmanager/latest/userguide/auth-and-access_resource-based-policies.html
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret that you want to attach the resource-based policy
    #   to. You can specify either the ARN or the friendly name of the secret.
    #
    # @option params [required, String] :resource_policy
    #   A JSON-formatted string that's constructed according to the grammar
    #   and syntax for an AWS resource-based policy. The policy in the string
    #   identifies who can access or manage this secret and its versions. For
    #   information on how to format a JSON parameter for the various command
    #   line tool environments, see [Using JSON for Parameters][1] in the *AWS
    #   CLI User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #
    # @return [Types::PutResourcePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutResourcePolicyResponse#arn #arn} => String
    #   * {Types::PutResourcePolicyResponse#name #name} => String
    #
    #
    # @example Example: To add a resource-based policy to a secret
    #
    #   # The following example shows how to add a resource-based policy to a secret.
    #
    #   resp = client.put_resource_policy({
    #     resource_policy: "{\n\"Version\":\"2012-10-17\",\n\"Statement\":[{\n\"Effect\":\"Allow\",\n\"Principal\":{\n\"AWS\":\"arn:aws:iam::123456789012:root\"\n},\n\"Action\":\"secretsmanager:GetSecretValue\",\n\"Resource\":\"*\"\n}]\n}", 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy({
    #     secret_id: "SecretIdType", # required
    #     resource_policy: "NonEmptyResourcePolicyType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutResourcePolicy AWS API Documentation
    #
    # @overload put_resource_policy(params = {})
    # @param [Hash] params ({})
    def put_resource_policy(params = {}, options = {})
      req = build_request(:put_resource_policy, params)
      req.send_request(options)
    end

    # Stores a new encrypted secret value in the specified secret. To do
    # this, the operation creates a new version and attaches it to the
    # secret. The version can contain a new `SecretString` value or a new
    # `SecretBinary` value. You can also specify the staging labels that are
    # initially attached to the new version.
    #
    # <note markdown="1"> The Secrets Manager console uses only the `SecretString` field. To add
    # binary data to a secret with the `SecretBinary` field you must use the
    # AWS CLI or one of the AWS SDKs.
    #
    #  </note>
    #
    # * If this operation creates the first version for the secret then
    #   Secrets Manager automatically attaches the staging label
    #   `AWSCURRENT` to the new version.
    #
    # * If another version of this secret already exists, then this
    #   operation does not automatically move any staging labels other than
    #   those that you explicitly specify in the `VersionStages` parameter.
    #
    # * If this operation moves the staging label `AWSCURRENT` from another
    #   version to this version (because you included it in the
    #   `StagingLabels` parameter) then Secrets Manager also automatically
    #   moves the staging label `AWSPREVIOUS` to the version that
    #   `AWSCURRENT` was removed from.
    #
    # * This operation is idempotent. If a version with a `VersionId` with
    #   the same value as the `ClientRequestToken` parameter already exists
    #   and you specify the same secret data, the operation succeeds but
    #   does nothing. However, if the secret data is different, then the
    #   operation fails because you cannot modify an existing version; you
    #   can only create new ones.
    #
    # <note markdown="1"> * If you call an operation that needs to encrypt or decrypt the
    #   `SecretString` or `SecretBinary` for a secret in the same account as
    #   the calling user and that secret doesn't specify a AWS KMS
    #   encryption key, Secrets Manager uses the account's default AWS
    #   managed customer master key (CMK) with the alias
    #   `aws/secretsmanager`. If this key doesn't already exist in your
    #   account then Secrets Manager creates it for you automatically. All
    #   users in the same AWS account automatically have access to use the
    #   default CMK. Note that if an Secrets Manager API call results in AWS
    #   having to create the account's AWS-managed CMK, it can result in a
    #   one-time significant delay in returning the result.
    #
    # * If the secret is in a different AWS account from the credentials
    #   calling an API that requires encryption or decryption of the secret
    #   value then you must create and use a custom AWS KMS CMK because you
    #   can't access the default CMK for the account using credentials from
    #   a different AWS account. Store the ARN of the CMK in the secret when
    #   you create the secret or when you update it by including it in the
    #   `KMSKeyId`. If you call an API that must encrypt or decrypt
    #   `SecretString` or `SecretBinary` using credentials from a different
    #   account then the AWS KMS key policy must grant cross-account access
    #   to that other account's user or role for both the
    #   kms:GenerateDataKey and kms:Decrypt operations.
    #
    #  </note>
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:PutSecretValue
    #
    # * kms:GenerateDataKey - needed only if you use a customer-managed AWS
    #   KMS key to encrypt the secret. You do not need this permission to
    #   use the account's default AWS managed CMK for Secrets Manager.
    #
    # **Related operations**
    #
    # * To retrieve the encrypted value you store in the version of a
    #   secret, use GetSecretValue.
    #
    # * To create a secret, use CreateSecret.
    #
    # * To get the details for a secret, use DescribeSecret.
    #
    # * To list the versions attached to a secret, use ListSecretVersionIds.
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret to which you want to add a new version. You can
    #   specify either the Amazon Resource Name (ARN) or the friendly name of
    #   the secret. The secret must already exist.
    #
    # @option params [String] :client_request_token
    #   (Optional) Specifies a unique identifier for the new version of the
    #   secret.
    #
    #   <note markdown="1"> If you use the AWS CLI or one of the AWS SDK to call this operation,
    #   then you can leave this parameter empty. The CLI or SDK generates a
    #   random UUID for you and includes that in the request. If you don't
    #   use the SDK and instead generate a raw HTTP request to the Secrets
    #   Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for new versions and include that value
    #   in the request.
    #
    #    </note>
    #
    #   This value helps ensure idempotency. Secrets Manager uses this value
    #   to prevent the accidental creation of duplicate versions if there are
    #   failures and retries during the Lambda rotation function's
    #   processing. We recommend that you generate a [UUID-type][1] value to
    #   ensure uniqueness within the specified secret.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` or `SecretBinary` values are the same as those in the
    #     request then the request is ignored (the operation is idempotent).
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are different from those in
    #     the request then the request fails because you cannot modify an
    #     existing secret version. You can only create new versions to store
    #     new secret values.
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String, IO] :secret_binary
    #   (Optional) Specifies binary data that you want to encrypt and store in
    #   the new version of the secret. To use this parameter in the
    #   command-line tools, we recommend that you store your binary data in a
    #   file and then use the appropriate technique for your tool to pass the
    #   contents of the file as a parameter. Either `SecretBinary` or
    #   `SecretString` must have a value, but not both. They cannot both be
    #   empty.
    #
    #   This parameter is not accessible if the secret using the Secrets
    #   Manager console.
    #
    # @option params [String] :secret_string
    #   (Optional) Specifies text data that you want to encrypt and store in
    #   this new version of the secret. Either `SecretString` or
    #   `SecretBinary` must have a value, but not both. They cannot both be
    #   empty.
    #
    #   If you create this secret by using the Secrets Manager console then
    #   Secrets Manager puts the protected secret text in only the
    #   `SecretString` parameter. The Secrets Manager console stores the
    #   information as a JSON structure of key/value pairs that the default
    #   Lambda rotation function knows how to parse.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For information on how to
    #   format a JSON parameter for the various command line tool
    #   environments, see [Using JSON for Parameters][1] in the *AWS CLI User
    #   Guide*.
    #
    #   For example:
    #
    #   `[\{"username":"bob"\},\{"password":"abc123xyz456"\}]`
    #
    #   If your command-line tool or SDK requires quotation marks around the
    #   parameter, you should use single quotes to avoid confusion with the
    #   double quotes required in the JSON text.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #
    # @option params [Array<String>] :version_stages
    #   (Optional) Specifies a list of staging labels that are attached to
    #   this version of the secret. These staging labels are used to track the
    #   versions through the rotation process by the Lambda rotation function.
    #
    #   A staging label must be unique to a single version of the secret. If
    #   you specify a staging label that's already associated with a
    #   different version of the same secret then that staging label is
    #   automatically removed from the other version and attached to this
    #   version.
    #
    #   If you do not specify a value for `VersionStages` then Secrets Manager
    #   automatically moves the staging label `AWSCURRENT` to this new
    #   version.
    #
    # @return [Types::PutSecretValueResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSecretValueResponse#arn #arn} => String
    #   * {Types::PutSecretValueResponse#name #name} => String
    #   * {Types::PutSecretValueResponse#version_id #version_id} => String
    #   * {Types::PutSecretValueResponse#version_stages #version_stages} => Array&lt;String&gt;
    #
    #
    # @example Example: To store a secret value in a new version of a secret
    #
    #   # The following example shows how to create a new version of the secret. Alternatively, you can use the update-secret
    #   # command.
    #
    #   resp = client.put_secret_value({
    #     client_request_token: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE", 
    #     secret_id: "MyTestDatabaseSecret", 
    #     secret_string: "{\"username\":\"david\",\"password\":\"BnQw!XDWgaEeT9XGTT29\"}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     version_id: "EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE", 
    #     version_stages: [
    #       "AWSCURRENT", 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_secret_value({
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #     version_stages: ["SecretVersionStageType"],
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #   resp.version_stages #=> Array
    #   resp.version_stages[0] #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/PutSecretValue AWS API Documentation
    #
    # @overload put_secret_value(params = {})
    # @param [Hash] params ({})
    def put_secret_value(params = {}, options = {})
      req = build_request(:put_secret_value, params)
      req.send_request(options)
    end

    # Cancels the scheduled deletion of a secret by removing the
    # `DeletedDate` time stamp. This makes the secret accessible to query
    # once again.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:RestoreSecret
    #
    # ^
    #
    # **Related operations**
    #
    # * To delete a secret, use DeleteSecret.
    #
    # ^
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret that you want to restore from a previously
    #   scheduled deletion. You can specify either the Amazon Resource Name
    #   (ARN) or the friendly name of the secret.
    #
    # @return [Types::RestoreSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RestoreSecretResponse#arn #arn} => String
    #   * {Types::RestoreSecretResponse#name #name} => String
    #
    #
    # @example Example: To restore a previously deleted secret
    #
    #   # The following example shows how to restore a secret that you previously scheduled for deletion.
    #
    #   resp = client.restore_secret({
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.restore_secret({
    #     secret_id: "SecretIdType", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RestoreSecret AWS API Documentation
    #
    # @overload restore_secret(params = {})
    # @param [Hash] params ({})
    def restore_secret(params = {}, options = {})
      req = build_request(:restore_secret, params)
      req.send_request(options)
    end

    # Configures and starts the asynchronous process of rotating this
    # secret. If you include the configuration parameters, the operation
    # sets those values for the secret and then immediately starts a
    # rotation. If you do not include the configuration parameters, the
    # operation starts a rotation with the values already stored in the
    # secret. After the rotation completes, the protected service and its
    # clients all use the new version of the secret.
    #
    # This required configuration information includes the ARN of an AWS
    # Lambda function and the time between scheduled rotations. The Lambda
    # rotation function creates a new version of the secret and creates or
    # updates the credentials on the protected service to match. After
    # testing the new credentials, the function marks the new secret with
    # the staging label `AWSCURRENT` so that your clients all immediately
    # begin to use the new version. For more information about rotating
    # secrets and how to configure a Lambda function to rotate the secrets
    # for your protected service, see [Rotating Secrets in AWS Secrets
    # Manager][1] in the *AWS Secrets Manager User Guide*.
    #
    # Secrets Manager schedules the next rotation when the previous one is
    # complete. Secrets Manager schedules the date by adding the rotation
    # interval (number of days) to the actual date of the last rotation. The
    # service chooses the hour within that 24-hour date window randomly. The
    # minute is also chosen somewhat randomly, but weighted towards the top
    # of the hour and influenced by a variety of factors that help
    # distribute load.
    #
    # The rotation function must end with the versions of the secret in one
    # of two states:
    #
    # * The `AWSPENDING` and `AWSCURRENT` staging labels are attached to the
    #   same version of the secret, or
    #
    # * The `AWSPENDING` staging label is not attached to any version of the
    #   secret.
    #
    # If instead the `AWSPENDING` staging label is present but is not
    # attached to the same version as `AWSCURRENT` then any later invocation
    # of `RotateSecret` assumes that a previous rotation request is still in
    # progress and returns an error.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:RotateSecret
    #
    # * lambda:InvokeFunction (on the function specified in the secret's
    #   metadata)
    #
    # **Related operations**
    #
    # * To list the secrets in your account, use ListSecrets.
    #
    # * To get the details for a version of a secret, use DescribeSecret.
    #
    # * To create a new version of a secret, use CreateSecret.
    #
    # * To attach staging labels to or remove staging labels from a version
    #   of a secret, use UpdateSecretVersionStage.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/secretsmanager/latest/userguide/rotating-secrets.html
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret that you want to rotate. You can specify either
    #   the Amazon Resource Name (ARN) or the friendly name of the secret.
    #
    # @option params [String] :client_request_token
    #   (Optional) Specifies a unique identifier for the new version of the
    #   secret that helps ensure idempotency.
    #
    #   If you use the AWS CLI or one of the AWS SDK to call this operation,
    #   then you can leave this parameter empty. The CLI or SDK generates a
    #   random UUID for you and includes that in the request for this
    #   parameter. If you don't use the SDK and instead generate a raw HTTP
    #   request to the Secrets Manager service endpoint, then you must
    #   generate a `ClientRequestToken` yourself for new versions and include
    #   that value in the request.
    #
    #   You only need to specify your own value if you are implementing your
    #   own retry logic and want to ensure that a given secret is not created
    #   twice. We recommend that you generate a [UUID-type][1] value to ensure
    #   uniqueness within the specified secret.
    #
    #   Secrets Manager uses this value to prevent the accidental creation of
    #   duplicate versions if there are failures and retries during the
    #   function's processing. This value becomes the `VersionId` of the new
    #   version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String] :rotation_lambda_arn
    #   (Optional) Specifies the ARN of the Lambda function that can rotate
    #   the secret.
    #
    # @option params [Types::RotationRulesType] :rotation_rules
    #   A structure that defines the rotation configuration for this secret.
    #
    # @return [Types::RotateSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RotateSecretResponse#arn #arn} => String
    #   * {Types::RotateSecretResponse#name #name} => String
    #   * {Types::RotateSecretResponse#version_id #version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rotate_secret({
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     rotation_lambda_arn: "RotationLambdaARNType",
    #     rotation_rules: {
    #       automatically_after_days: 1,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/RotateSecret AWS API Documentation
    #
    # @overload rotate_secret(params = {})
    # @param [Hash] params ({})
    def rotate_secret(params = {}, options = {})
      req = build_request(:rotate_secret, params)
      req.send_request(options)
    end

    # Attaches one or more tags, each consisting of a key name and a value,
    # to the specified secret. Tags are part of the secret's overall
    # metadata, and are not associated with any specific version of the
    # secret. This operation only appends tags to the existing list of tags.
    # To remove tags, you must use UntagResource.
    #
    # The following basic restrictions apply to tags:
    #
    # * Maximum number of tags per secret—50
    #
    # * Maximum key length—127 Unicode characters in UTF-8
    #
    # * Maximum value length—255 Unicode characters in UTF-8
    #
    # * Tag keys and values are case sensitive.
    #
    # * Do not use the `aws:` prefix in your tag names or values because it
    #   is reserved for AWS use. You can't edit or delete tag names or
    #   values with this prefix. Tags with this prefix do not count against
    #   your tags per secret limit.
    #
    # * If your tagging schema will be used across multiple services and
    #   resources, remember that other services might have restrictions on
    #   allowed characters. Generally allowed characters are: letters,
    #   spaces, and numbers representable in UTF-8, plus the following
    #   special characters: + - = . \_ : / @.
    #
    # If you use tags as part of your security strategy, then adding or
    # removing a tag can change permissions. If successfully completing this
    # operation would result in you losing your permissions for this secret,
    # then the operation is blocked and returns an Access Denied error.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:TagResource
    #
    # ^
    #
    # **Related operations**
    #
    # * To remove one or more tags from the collection attached to a secret,
    #   use UntagResource.
    #
    # * To view the list of tags attached to a secret, use DescribeSecret.
    #
    # @option params [required, String] :secret_id
    #   The identifier for the secret that you want to attach tags to. You can
    #   specify either the Amazon Resource Name (ARN) or the friendly name of
    #   the secret.
    #
    # @option params [required, Array<Types::Tag>] :tags
    #   The tags to attach to the secret. Each element in the list consists of
    #   a `Key` and a `Value`.
    #
    #   This parameter to the API requires a JSON text string argument. For
    #   information on how to format a JSON parameter for the various command
    #   line tool environments, see [Using JSON for Parameters][1] in the *AWS
    #   CLI User Guide*. For the AWS CLI, you can also use the syntax: `--Tags
    #   Key="Key1",Value="Value1",Key="Key2",Value="Value2"[,…]`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To add tags to a secret
    #
    #   # The following example shows how to attach two tags each with a Key and Value to a secret. There is no output from this
    #   # API. To see the result, use the DescribeSecret operation.
    #
    #   resp = client.tag_resource({
    #     secret_id: "MyExampleSecret", 
    #     tags: [
    #       {
    #         key: "FirstTag", 
    #         value: "SomeValue", 
    #       }, 
    #       {
    #         key: "SecondTag", 
    #         value: "AnotherValue", 
    #       }, 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource({
    #     secret_id: "SecretIdType", # required
    #     tags: [ # required
    #       {
    #         key: "TagKeyType",
    #         value: "TagValueType",
    #       },
    #     ],
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/TagResource AWS API Documentation
    #
    # @overload tag_resource(params = {})
    # @param [Hash] params ({})
    def tag_resource(params = {}, options = {})
      req = build_request(:tag_resource, params)
      req.send_request(options)
    end

    # Removes one or more tags from the specified secret.
    #
    # This operation is idempotent. If a requested tag is not attached to
    # the secret, no error is returned and the secret metadata is unchanged.
    #
    # If you use tags as part of your security strategy, then removing a tag
    # can change permissions. If successfully completing this operation
    # would result in you losing your permissions for this secret, then the
    # operation is blocked and returns an Access Denied error.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:UntagResource
    #
    # ^
    #
    # **Related operations**
    #
    # * To add one or more tags to the collection attached to a secret, use
    #   TagResource.
    #
    # * To view the list of tags attached to a secret, use DescribeSecret.
    #
    # @option params [required, String] :secret_id
    #   The identifier for the secret that you want to remove tags from. You
    #   can specify either the Amazon Resource Name (ARN) or the friendly name
    #   of the secret.
    #
    # @option params [required, Array<String>] :tag_keys
    #   A list of tag key names to remove from the secret. You don't specify
    #   the value. Both the key and its associated value are removed.
    #
    #   This parameter to the API requires a JSON text string argument. For
    #   information on how to format a JSON parameter for the various command
    #   line tool environments, see [Using JSON for Parameters][1] in the *AWS
    #   CLI User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    #
    # @example Example: To remove tags from a secret
    #
    #   # The following example shows how to remove two tags from a secret's metadata. For each, both the tag and the associated
    #   # value are removed. There is no output from this API. To see the result, use the DescribeSecret operation.
    #
    #   resp = client.untag_resource({
    #     secret_id: "MyTestDatabaseSecret", 
    #     tag_keys: [
    #       "FirstTag", 
    #       "SecondTag", 
    #     ], 
    #   })
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource({
    #     secret_id: "SecretIdType", # required
    #     tag_keys: ["TagKeyType"], # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UntagResource AWS API Documentation
    #
    # @overload untag_resource(params = {})
    # @param [Hash] params ({})
    def untag_resource(params = {}, options = {})
      req = build_request(:untag_resource, params)
      req.send_request(options)
    end

    # Modifies many of the details of the specified secret. If you include a
    # `ClientRequestToken` and *either* `SecretString` or `SecretBinary`
    # then it also creates a new version attached to the secret.
    #
    # To modify the rotation configuration of a secret, use RotateSecret
    # instead.
    #
    # <note markdown="1"> The Secrets Manager console uses only the `SecretString` parameter and
    # therefore limits you to encrypting and storing only a text string. To
    # encrypt and store binary data as part of the version of a secret, you
    # must use either the AWS CLI or one of the AWS SDKs.
    #
    #  </note>
    #
    # * If a version with a `VersionId` with the same value as the
    #   `ClientRequestToken` parameter already exists, the operation results
    #   in an error. You cannot modify an existing version, you can only
    #   create a new version.
    #
    # * If you include `SecretString` or `SecretBinary` to create a new
    #   secret version, Secrets Manager automatically attaches the staging
    #   label `AWSCURRENT` to the new version.
    #
    # <note markdown="1"> * If you call an operation that needs to encrypt or decrypt the
    #   `SecretString` or `SecretBinary` for a secret in the same account as
    #   the calling user and that secret doesn't specify a AWS KMS
    #   encryption key, Secrets Manager uses the account's default AWS
    #   managed customer master key (CMK) with the alias
    #   `aws/secretsmanager`. If this key doesn't already exist in your
    #   account then Secrets Manager creates it for you automatically. All
    #   users in the same AWS account automatically have access to use the
    #   default CMK. Note that if an Secrets Manager API call results in AWS
    #   having to create the account's AWS-managed CMK, it can result in a
    #   one-time significant delay in returning the result.
    #
    # * If the secret is in a different AWS account from the credentials
    #   calling an API that requires encryption or decryption of the secret
    #   value then you must create and use a custom AWS KMS CMK because you
    #   can't access the default CMK for the account using credentials from
    #   a different AWS account. Store the ARN of the CMK in the secret when
    #   you create the secret or when you update it by including it in the
    #   `KMSKeyId`. If you call an API that must encrypt or decrypt
    #   `SecretString` or `SecretBinary` using credentials from a different
    #   account then the AWS KMS key policy must grant cross-account access
    #   to that other account's user or role for both the
    #   kms:GenerateDataKey and kms:Decrypt operations.
    #
    #  </note>
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:UpdateSecret
    #
    # * kms:GenerateDataKey - needed only if you use a custom AWS KMS key to
    #   encrypt the secret. You do not need this permission to use the
    #   account's AWS managed CMK for Secrets Manager.
    #
    # * kms:Decrypt - needed only if you use a custom AWS KMS key to encrypt
    #   the secret. You do not need this permission to use the account's
    #   AWS managed CMK for Secrets Manager.
    #
    # **Related operations**
    #
    # * To create a new secret, use CreateSecret.
    #
    # * To add only a new version to an existing secret, use PutSecretValue.
    #
    # * To get the details for a secret, use DescribeSecret.
    #
    # * To list the versions contained in a secret, use
    #   ListSecretVersionIds.
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret that you want to modify or to which you want to
    #   add a new version. You can specify either the Amazon Resource Name
    #   (ARN) or the friendly name of the secret.
    #
    # @option params [String] :client_request_token
    #   (Optional) If you want to add a new version to the secret, this
    #   parameter specifies a unique identifier for the new version that helps
    #   ensure idempotency.
    #
    #   If you use the AWS CLI or one of the AWS SDK to call this operation,
    #   then you can leave this parameter empty. The CLI or SDK generates a
    #   random UUID for you and includes that in the request. If you don't
    #   use the SDK and instead generate a raw HTTP request to the Secrets
    #   Manager service endpoint, then you must generate a
    #   `ClientRequestToken` yourself for new versions and include that value
    #   in the request.
    #
    #   You typically only need to interact with this value if you implement
    #   your own retry logic and want to ensure that a given secret is not
    #   created twice. We recommend that you generate a [UUID-type][1] value
    #   to ensure uniqueness within the specified secret.
    #
    #   Secrets Manager uses this value to prevent the accidental creation of
    #   duplicate versions if there are failures and retries during the Lambda
    #   rotation function's processing.
    #
    #   * If the `ClientRequestToken` value isn't already associated with a
    #     version of the secret then a new version of the secret is created.
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are the same as those in
    #     the request then the request is ignored (the operation is
    #     idempotent).
    #
    #   * If a version with this value already exists and that version's
    #     `SecretString` and `SecretBinary` values are different from the
    #     request then an error occurs because you cannot modify an existing
    #     secret value.
    #
    #   This value becomes the `VersionId` of the new version.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    #
    #
    #   [1]: https://wikipedia.org/wiki/Universally_unique_identifier
    #
    # @option params [String] :description
    #   (Optional) Specifies an updated user-provided description of the
    #   secret.
    #
    # @option params [String] :kms_key_id
    #   (Optional) Specifies an updated ARN or alias of the AWS KMS customer
    #   master key (CMK) to be used to encrypt the protected text in new
    #   versions of this secret.
    #
    #   You can only use the account's default CMK to encrypt and decrypt if
    #   you call this operation using credentials from the same account that
    #   owns the secret. If the secret is in a different account, then you
    #   must create a custom CMK and provide the ARN of that CMK in this
    #   field. The user making the call must have permissions to both the
    #   secret and the CMK in their respective accounts.
    #
    # @option params [String, IO] :secret_binary
    #   (Optional) Specifies updated binary data that you want to encrypt and
    #   store in the new version of the secret. To use this parameter in the
    #   command-line tools, we recommend that you store your binary data in a
    #   file and then use the appropriate technique for your tool to pass the
    #   contents of the file as a parameter. Either `SecretBinary` or
    #   `SecretString` must have a value, but not both. They cannot both be
    #   empty.
    #
    #   This parameter is not accessible using the Secrets Manager console.
    #
    # @option params [String] :secret_string
    #   (Optional) Specifies updated text data that you want to encrypt and
    #   store in this new version of the secret. Either `SecretBinary` or
    #   `SecretString` must have a value, but not both. They cannot both be
    #   empty.
    #
    #   If you create this secret by using the Secrets Manager console then
    #   Secrets Manager puts the protected secret text in only the
    #   `SecretString` parameter. The Secrets Manager console stores the
    #   information as a JSON structure of key/value pairs that the default
    #   Lambda rotation function knows how to parse.
    #
    #   For storing multiple values, we recommend that you use a JSON text
    #   string argument and specify key/value pairs. For information on how to
    #   format a JSON parameter for the various command line tool
    #   environments, see [Using JSON for Parameters][1] in the *AWS CLI User
    #   Guide*. For example:
    #
    #   `[\{"username":"bob"\},\{"password":"abc123xyz456"\}]`
    #
    #   If your command-line tool or SDK requires quotation marks around the
    #   parameter, you should use single quotes to avoid confusion with the
    #   double quotes required in the JSON text. You can also 'escape' the
    #   double quote character in the embedded JSON text by prefacing each
    #   with a backslash. For example, the following string is surrounded by
    #   double-quotes. All of the embedded double quotes are escaped:
    #
    #   `"[\{"username":"bob"\},\{"password":"abc123xyz456"\}]"`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#cli-using-param-json
    #
    # @return [Types::UpdateSecretResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecretResponse#arn #arn} => String
    #   * {Types::UpdateSecretResponse#name #name} => String
    #   * {Types::UpdateSecretResponse#version_id #version_id} => String
    #
    #
    # @example Example: To update the description of a secret
    #
    #   # The following example shows how to modify the description of a secret.
    #
    #   resp = client.update_secret({
    #     client_request_token: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE", 
    #     description: "This is a new description for the secret.", 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Example: To update the KMS key associated with a secret
    #
    #   # This example shows how to update the KMS customer managed key (CMK) used to encrypt the secret value. The KMS CMK must
    #   # be in the same region as the secret.
    #
    #   resp = client.update_secret({
    #     kms_key_id: "arn:aws:kms:us-west-2:123456789012:key/EXAMPLE2-90ab-cdef-fedc-ba987EXAMPLE", 
    #     secret_id: "MyTestDatabaseSecret", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Example: To create a new version of the encrypted secret value
    #
    #   # The following example shows how to create a new version of the secret by updating the SecretString field. Alternatively,
    #   # you can use the put-secret-value operation.
    #
    #   resp = client.update_secret({
    #     secret_id: "MyTestDatabaseSecret", 
    #     secret_string: "{JSON STRING WITH CREDENTIALS}", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "aws:arn:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #     version_id: "EXAMPLE1-90ab-cdef-fedc-ba987EXAMPLE", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_secret({
    #     secret_id: "SecretIdType", # required
    #     client_request_token: "ClientRequestTokenType",
    #     description: "DescriptionType",
    #     kms_key_id: "KmsKeyIdType",
    #     secret_binary: "data",
    #     secret_string: "SecretStringType",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #   resp.version_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecret AWS API Documentation
    #
    # @overload update_secret(params = {})
    # @param [Hash] params ({})
    def update_secret(params = {}, options = {})
      req = build_request(:update_secret, params)
      req.send_request(options)
    end

    # Modifies the staging labels attached to a version of a secret. Staging
    # labels are used to track a version as it progresses through the secret
    # rotation process. You can attach a staging label to only one version
    # of a secret at a time. If a staging label to be added is already
    # attached to another version, then it is moved--removed from the other
    # version first and then attached to this one. For more information
    # about staging labels, see [Staging Labels][1] in the *AWS Secrets
    # Manager User Guide*.
    #
    # The staging labels that you specify in the `VersionStage` parameter
    # are added to the existing list of staging labels--they don't replace
    # it.
    #
    # You can move the `AWSCURRENT` staging label to this version by
    # including it in this call.
    #
    # <note markdown="1"> Whenever you move `AWSCURRENT`, Secrets Manager automatically moves
    # the label `AWSPREVIOUS` to the version that `AWSCURRENT` was removed
    # from.
    #
    #  </note>
    #
    # If this action results in the last label being removed from a version,
    # then the version is considered to be 'deprecated' and can be deleted
    # by Secrets Manager.
    #
    # **Minimum permissions**
    #
    # To run this command, you must have the following permissions:
    #
    # * secretsmanager:UpdateSecretVersionStage
    #
    # ^
    #
    # **Related operations**
    #
    # * To get the list of staging labels that are currently associated with
    #   a version of a secret, use ` DescribeSecret ` and examine the
    #   `SecretVersionsToStages` response value.
    #
    # ^
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/secretsmanager/latest/userguide/terms-concepts.html#term_staging-label
    #
    # @option params [required, String] :secret_id
    #   Specifies the secret with the version whose list of staging labels you
    #   want to modify. You can specify either the Amazon Resource Name (ARN)
    #   or the friendly name of the secret.
    #
    # @option params [required, String] :version_stage
    #   The list of staging labels to add to this version.
    #
    # @option params [String] :remove_from_version_id
    #   Specifies the secret version ID of the version that the staging labels
    #   are to be removed from. If the staging label you are trying to attach
    #   to one version is already attached to a different version, then you
    #   must include this parameter and specify the version that the label is
    #   to be removed from. If the label is attached and you either do not
    #   specify this parameter, or the version ID does not match, then the
    #   operation fails.
    #
    # @option params [String] :move_to_version_id
    #   (Optional) The secret version ID that you want to add the staging
    #   labels to. If you want to remove a label from a version, then do not
    #   specify this parameter.
    #
    #   If any of the staging labels are already attached to a different
    #   version of the secret, then you must also specify the
    #   `RemoveFromVersionId` parameter.
    #
    # @return [Types::UpdateSecretVersionStageResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateSecretVersionStageResponse#arn #arn} => String
    #   * {Types::UpdateSecretVersionStageResponse#name #name} => String
    #
    #
    # @example Example: To add a staging label attached to a version of a secret
    #
    #   # The following example shows you how to add a staging label to a version of a secret. You can review the results by
    #   # running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected version.
    #
    #   resp = client.update_secret_version_stage({
    #     move_to_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     secret_id: "MyTestDatabaseSecret", 
    #     version_stage: "STAGINGLABEL1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Example: To delete a staging label attached to a version of a secret
    #
    #   # The following example shows you how to delete a staging label that is attached to a version of a secret. You can review
    #   # the results by running the operation ListSecretVersionIds and viewing the VersionStages response field for the affected
    #   # version.
    #
    #   resp = client.update_secret_version_stage({
    #     remove_from_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     secret_id: "MyTestDatabaseSecret", 
    #     version_stage: "STAGINGLABEL1", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Example: To move a staging label from one version of a secret to another
    #
    #   # The following example shows you how to move a staging label that is attached to one version of a secret to a different
    #   # version. You can review the results by running the operation ListSecretVersionIds and viewing the VersionStages response
    #   # field for the affected version.
    #
    #   resp = client.update_secret_version_stage({
    #     move_to_version_id: "EXAMPLE2-90ab-cdef-fedc-ba987SECRET2", 
    #     remove_from_version_id: "EXAMPLE1-90ab-cdef-fedc-ba987SECRET1", 
    #     secret_id: "MyTestDatabaseSecret", 
    #     version_stage: "AWSCURRENT", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     arn: "arn:aws:secretsmanager:us-west-2:123456789012:secret:MyTestDatabaseSecret-a1b2c3", 
    #     name: "MyTestDatabaseSecret", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_secret_version_stage({
    #     secret_id: "SecretIdType", # required
    #     version_stage: "SecretVersionStageType", # required
    #     remove_from_version_id: "SecretVersionIdType",
    #     move_to_version_id: "SecretVersionIdType",
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #   resp.name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/secretsmanager-2017-10-17/UpdateSecretVersionStage AWS API Documentation
    #
    # @overload update_secret_version_stage(params = {})
    # @param [Hash] params ({})
    def update_secret_version_stage(params = {}, options = {})
      req = build_request(:update_secret_version_stage, params)
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
      context[:gem_name] = 'aws-sdk-secretsmanager'
      context[:gem_version] = '1.15.0'
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
