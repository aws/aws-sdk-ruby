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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:iot)

module Aws::IoT
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :iot

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
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
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

    # Accepts a pending certificate transfer. The default state of the
    # certificate is INACTIVE.
    #
    # To check for pending certificate transfers, call ListCertificates to
    # enumerate your certificates.
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate.
    #
    # @option params [Boolean] :set_as_active
    #   Specifies whether the certificate is active.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_certificate_transfer({
    #     certificate_id: "CertificateId", # required
    #     set_as_active: false,
    #   })
    #
    # @overload accept_certificate_transfer(params = {})
    # @param [Hash] params ({})
    def accept_certificate_transfer(params = {}, options = {})
      req = build_request(:accept_certificate_transfer, params)
      req.send_request(options)
    end

    # Attaches the specified policy to the specified principal (certificate
    # or other credential).
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [required, String] :principal
    #   The principal, which can be a certificate ARN (as returned from the
    #   CreateCertificate operation) or an Amazon Cognito ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_principal_policy({
    #     policy_name: "PolicyName", # required
    #     principal: "Principal", # required
    #   })
    #
    # @overload attach_principal_policy(params = {})
    # @param [Hash] params ({})
    def attach_principal_policy(params = {}, options = {})
      req = build_request(:attach_principal_policy, params)
      req.send_request(options)
    end

    # Attaches the specified principal to the specified thing.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @option params [required, String] :principal
    #   The principal, such as a certificate or other credential.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_thing_principal({
    #     thing_name: "ThingName", # required
    #     principal: "Principal", # required
    #   })
    #
    # @overload attach_thing_principal(params = {})
    # @param [Hash] params ({})
    def attach_thing_principal(params = {}, options = {})
      req = build_request(:attach_thing_principal, params)
      req.send_request(options)
    end

    # Cancels a pending transfer for the specified certificate.
    #
    # **Note** Only the transfer source account can use this operation to
    # cancel a transfer. (Transfer destinations can use
    # RejectCertificateTransfer instead.) After transfer, AWS IoT returns
    # the certificate to the source account in the INACTIVE state. After the
    # destination account has accepted the transfer, the transfer cannot be
    # cancelled.
    #
    # After a certificate transfer is cancelled, the status of the
    # certificate changes from PENDING\_TRANSFER to INACTIVE.
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_certificate_transfer({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @overload cancel_certificate_transfer(params = {})
    # @param [Hash] params ({})
    def cancel_certificate_transfer(params = {}, options = {})
      req = build_request(:cancel_certificate_transfer, params)
      req.send_request(options)
    end

    # Creates an X.509 certificate using the specified certificate signing
    # request.
    #
    # **Note:** The CSR must include a public key that is either an RSA key
    # with a length of at least 2048 bits or an ECC key from NIST P-256 or
    # NIST P-384 curves.
    #
    # **Note:** Reusing the same certificate signing request (CSR) results
    # in a distinct certificate.
    #
    # You can create multiple certificates in a batch by creating a
    # directory, copying multiple .csr files into that directory, and then
    # specifying that directory on the command line. The following commands
    # show how to create a batch of certificates given a batch of CSRs.
    #
    # Assuming a set of CSRs are located inside of the directory
    # my-csr-directory:
    #
    # On Linux and OS X, the command is:
    #
    # $ ls my-csr-directory/ \| xargs -I \\\{\\} aws iot
    # create-certificate-from-csr --certificate-signing-request
    # file://my-csr-directory/\\\{\\}
    #
    # This command lists all of the CSRs in my-csr-directory and pipes each
    # CSR file name to the aws iot create-certificate-from-csr AWS CLI
    # command to create a certificate for the corresponding CSR.
    #
    # The aws iot create-certificate-from-csr part of the command can also
    # be run in parallel to speed up the certificate creation process:
    #
    # $ ls my-csr-directory/ \| xargs -P 10 -I \\\{\\} aws iot
    # create-certificate-from-csr --certificate-signing-request
    # file://my-csr-directory/\\\{\\}
    #
    # On Windows PowerShell, the command to create certificates for all CSRs
    # in my-csr-directory is:
    #
    # &gt; ls -Name my-csr-directory \| %\\\{aws iot
    # create-certificate-from-csr --certificate-signing-request
    # file://my-csr-directory/$\_\\}
    #
    # On a Windows command prompt, the command to create certificates for
    # all CSRs in my-csr-directory is:
    #
    # &gt; forfiles /p my-csr-directory /c "cmd /c aws iot
    # create-certificate-from-csr --certificate-signing-request
    # file://@path"
    #
    # @option params [required, String] :certificate_signing_request
    #   The certificate signing request (CSR).
    #
    # @option params [Boolean] :set_as_active
    #   Specifies whether the certificate is active.
    #
    # @return [Types::CreateCertificateFromCsrResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateCertificateFromCsrResponse#certificate_arn #certificate_arn} => String
    #   * {Types::CreateCertificateFromCsrResponse#certificate_id #certificate_id} => String
    #   * {Types::CreateCertificateFromCsrResponse#certificate_pem #certificate_pem} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_certificate_from_csr({
    #     certificate_signing_request: "CertificateSigningRequest", # required
    #     set_as_active: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #   resp.certificate_pem #=> String
    #
    # @overload create_certificate_from_csr(params = {})
    # @param [Hash] params ({})
    def create_certificate_from_csr(params = {}, options = {})
      req = build_request(:create_certificate_from_csr, params)
      req.send_request(options)
    end

    # Creates a 2048-bit RSA key pair and issues an X.509 certificate using
    # the issued public key.
    #
    # **Note** This is the only time AWS IoT issues the private key for this
    # certificate, so it is important to keep it in a secure location.
    #
    # @option params [Boolean] :set_as_active
    #   Specifies whether the certificate is active.
    #
    # @return [Types::CreateKeysAndCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateKeysAndCertificateResponse#certificate_arn #certificate_arn} => String
    #   * {Types::CreateKeysAndCertificateResponse#certificate_id #certificate_id} => String
    #   * {Types::CreateKeysAndCertificateResponse#certificate_pem #certificate_pem} => String
    #   * {Types::CreateKeysAndCertificateResponse#key_pair #key_pair} => Types::KeyPair
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_keys_and_certificate({
    #     set_as_active: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #   resp.certificate_pem #=> String
    #   resp.key_pair.public_key #=> String
    #   resp.key_pair.private_key #=> String
    #
    # @overload create_keys_and_certificate(params = {})
    # @param [Hash] params ({})
    def create_keys_and_certificate(params = {}, options = {})
      req = build_request(:create_keys_and_certificate, params)
      req.send_request(options)
    end

    # Creates an AWS IoT policy.
    #
    # The created policy is the default version for the policy. This
    # operation creates a policy version with a version identifier of **1**
    # and sets **1** as the policy's default version.
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [required, String] :policy_document
    #   The JSON document that describes the policy. **policyDocument** must
    #   have a minimum length of 1, with a maximum length of 2048, excluding
    #   whitespace.
    #
    # @return [Types::CreatePolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyResponse#policy_name #policy_name} => String
    #   * {Types::CreatePolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::CreatePolicyResponse#policy_document #policy_document} => String
    #   * {Types::CreatePolicyResponse#policy_version_id #policy_version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy({
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_name #=> String
    #   resp.policy_arn #=> String
    #   resp.policy_document #=> String
    #   resp.policy_version_id #=> String
    #
    # @overload create_policy(params = {})
    # @param [Hash] params ({})
    def create_policy(params = {}, options = {})
      req = build_request(:create_policy, params)
      req.send_request(options)
    end

    # Creates a new version of the specified AWS IoT policy. To update a
    # policy, create a new policy version. A managed policy can have up to
    # five versions. If the policy has five versions, you must use
    # DeletePolicyVersion to delete an existing version before you create a
    # new one.
    #
    # Optionally, you can set the new version as the policy's default
    # version. The default version is the operative version (that is, the
    # version that is in effect for the certificates to which the policy is
    # attached).
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [required, String] :policy_document
    #   The JSON document that describes the policy. Minimum length of 1.
    #   Maximum length of 2048, excluding whitespaces
    #
    # @option params [Boolean] :set_as_default
    #   Specifies whether the policy version is set as the default. When this
    #   parameter is true, the new policy version becomes the operative
    #   version (that is, the version that is in effect for the certificates
    #   to which the policy is attached).
    #
    # @return [Types::CreatePolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePolicyVersionResponse#policy_arn #policy_arn} => String
    #   * {Types::CreatePolicyVersionResponse#policy_document #policy_document} => String
    #   * {Types::CreatePolicyVersionResponse#policy_version_id #policy_version_id} => String
    #   * {Types::CreatePolicyVersionResponse#is_default_version #is_default_version} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_version({
    #     policy_name: "PolicyName", # required
    #     policy_document: "PolicyDocument", # required
    #     set_as_default: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #   resp.policy_document #=> String
    #   resp.policy_version_id #=> String
    #   resp.is_default_version #=> Boolean
    #
    # @overload create_policy_version(params = {})
    # @param [Hash] params ({})
    def create_policy_version(params = {}, options = {})
      req = build_request(:create_policy_version, params)
      req.send_request(options)
    end

    # Creates a thing record in the thing registry.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing to create.
    #
    # @option params [String] :thing_type_name
    #   The name of the thing type associated with the new thing.
    #
    # @option params [Types::AttributePayload] :attribute_payload
    #   The attribute payload, which consists of up to three name/value pairs
    #   in a JSON document. For example:
    #
    #   `\{"attributes":\{"string1":"string2"\}\}`
    #
    # @return [Types::CreateThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThingResponse#thing_name #thing_name} => String
    #   * {Types::CreateThingResponse#thing_arn #thing_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing({
    #     thing_name: "ThingName", # required
    #     thing_type_name: "ThingTypeName",
    #     attribute_payload: {
    #       attributes: {
    #         "AttributeName" => "AttributeValue",
    #       },
    #       merge: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_name #=> String
    #   resp.thing_arn #=> String
    #
    # @overload create_thing(params = {})
    # @param [Hash] params ({})
    def create_thing(params = {}, options = {})
      req = build_request(:create_thing, params)
      req.send_request(options)
    end

    # Creates a new thing type.
    #
    # @option params [required, String] :thing_type_name
    #   The name of the thing type.
    #
    # @option params [Types::ThingTypeProperties] :thing_type_properties
    #   The ThingTypeProperties for the thing type to create. It contains
    #   information about the new thing type including a description, and a
    #   list of searchable thing attribute names.
    #
    # @return [Types::CreateThingTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThingTypeResponse#thing_type_name #thing_type_name} => String
    #   * {Types::CreateThingTypeResponse#thing_type_arn #thing_type_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing_type({
    #     thing_type_name: "ThingTypeName", # required
    #     thing_type_properties: {
    #       thing_type_description: "ThingTypeDescription",
    #       searchable_attributes: ["AttributeName"],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_type_name #=> String
    #   resp.thing_type_arn #=> String
    #
    # @overload create_thing_type(params = {})
    # @param [Hash] params ({})
    def create_thing_type(params = {}, options = {})
      req = build_request(:create_thing_type, params)
      req.send_request(options)
    end

    # Creates a rule. Creating rules is an administrator-level action. Any
    # user who has permission to create rules will be able to access data
    # processed by the rule.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @option params [required, Types::TopicRulePayload] :topic_rule_payload
    #   The rule payload.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_topic_rule({
    #     rule_name: "RuleName", # required
    #     topic_rule_payload: { # required
    #       sql: "SQL", # required
    #       description: "Description",
    #       actions: [ # required
    #         {
    #           dynamo_db: {
    #             table_name: "TableName", # required
    #             role_arn: "AwsArn", # required
    #             operation: "DynamoOperation",
    #             hash_key_field: "HashKeyField", # required
    #             hash_key_value: "HashKeyValue", # required
    #             hash_key_type: "STRING", # accepts STRING, NUMBER
    #             range_key_field: "RangeKeyField",
    #             range_key_value: "RangeKeyValue",
    #             range_key_type: "STRING", # accepts STRING, NUMBER
    #             payload_field: "PayloadField",
    #           },
    #           dynamo_d_bv_2: {
    #             role_arn: "AwsArn",
    #             put_item: {
    #               table_name: "TableName", # required
    #             },
    #           },
    #           lambda: {
    #             function_arn: "FunctionArn", # required
    #           },
    #           sns: {
    #             target_arn: "AwsArn", # required
    #             role_arn: "AwsArn", # required
    #             message_format: "RAW", # accepts RAW, JSON
    #           },
    #           sqs: {
    #             role_arn: "AwsArn", # required
    #             queue_url: "QueueUrl", # required
    #             use_base_64: false,
    #           },
    #           kinesis: {
    #             role_arn: "AwsArn", # required
    #             stream_name: "StreamName", # required
    #             partition_key: "PartitionKey",
    #           },
    #           republish: {
    #             role_arn: "AwsArn", # required
    #             topic: "TopicPattern", # required
    #           },
    #           s3: {
    #             role_arn: "AwsArn", # required
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #           },
    #           firehose: {
    #             role_arn: "AwsArn", # required
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #           },
    #           cloudwatch_metric: {
    #             role_arn: "AwsArn", # required
    #             metric_namespace: "MetricNamespace", # required
    #             metric_name: "MetricName", # required
    #             metric_value: "MetricValue", # required
    #             metric_unit: "MetricUnit", # required
    #             metric_timestamp: "MetricTimestamp",
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: "AwsArn", # required
    #             alarm_name: "AlarmName", # required
    #             state_reason: "StateReason", # required
    #             state_value: "StateValue", # required
    #           },
    #           elasticsearch: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           salesforce: {
    #             token: "SalesforceToken", # required
    #             url: "SalesforceEndpoint", # required
    #           },
    #         },
    #       ],
    #       rule_disabled: false,
    #       aws_iot_sql_version: "AwsIotSqlVersion",
    #     },
    #   })
    #
    # @overload create_topic_rule(params = {})
    # @param [Hash] params ({})
    def create_topic_rule(params = {}, options = {})
      req = build_request(:create_topic_rule, params)
      req.send_request(options)
    end

    # Deletes a registered CA certificate.
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ca_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @overload delete_ca_certificate(params = {})
    # @param [Hash] params ({})
    def delete_ca_certificate(params = {}, options = {})
      req = build_request(:delete_ca_certificate, params)
      req.send_request(options)
    end

    # Deletes the specified certificate.
    #
    # A certificate cannot be deleted if it has a policy attached to it or
    # if its status is set to ACTIVE. To delete a certificate, first use the
    # DetachPrincipalPolicy API to detach all policies. Next, use the
    # UpdateCertificate API to set the certificate to the INACTIVE status.
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @overload delete_certificate(params = {})
    # @param [Hash] params ({})
    def delete_certificate(params = {}, options = {})
      req = build_request(:delete_certificate, params)
      req.send_request(options)
    end

    # Deletes the specified policy.
    #
    # A policy cannot be deleted if it has non-default versions or it is
    # attached to any certificate.
    #
    # To delete a policy, use the DeletePolicyVersion API to delete all
    # non-default versions of the policy; use the DetachPrincipalPolicy API
    # to detach the policy from any certificate; and then use the
    # DeletePolicy API to delete the policy.
    #
    # When a policy is deleted using DeletePolicy, its default version is
    # deleted with it.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy({
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @overload delete_policy(params = {})
    # @param [Hash] params ({})
    def delete_policy(params = {}, options = {})
      req = build_request(:delete_policy, params)
      req.send_request(options)
    end

    # Deletes the specified version of the specified policy. You cannot
    # delete the default version of a policy using this API. To delete the
    # default version of a policy, use DeletePolicy. To find out which
    # version of a policy is marked as the default version, use
    # ListPolicyVersions.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @option params [required, String] :policy_version_id
    #   The policy version ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_version({
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   })
    #
    # @overload delete_policy_version(params = {})
    # @param [Hash] params ({})
    def delete_policy_version(params = {}, options = {})
      req = build_request(:delete_policy_version, params)
      req.send_request(options)
    end

    # Deletes a CA certificate registration code.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @overload delete_registration_code(params = {})
    # @param [Hash] params ({})
    def delete_registration_code(params = {}, options = {})
      req = build_request(:delete_registration_code, params)
      req.send_request(options)
    end

    # Deletes the specified thing.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing to delete.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the thing record in the registry. If the
    #   version of the record in the registry does not match the expected
    #   version specified in the request, the `DeleteThing` request is
    #   rejected with a `VersionConflictException`.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing({
    #     thing_name: "ThingName", # required
    #     expected_version: 1,
    #   })
    #
    # @overload delete_thing(params = {})
    # @param [Hash] params ({})
    def delete_thing(params = {}, options = {})
      req = build_request(:delete_thing, params)
      req.send_request(options)
    end

    # Deletes the specified thing type . You cannot delete a thing type if
    # it has things associated with it. To delete a thing type, first mark
    # it as deprecated by calling DeprecateThingType, then remove any
    # associated things by calling UpdateThing to change the thing type on
    # any associated thing, and finally use DeleteThingType to delete the
    # thing type.
    #
    # @option params [required, String] :thing_type_name
    #   The name of the thing type.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing_type({
    #     thing_type_name: "ThingTypeName", # required
    #   })
    #
    # @overload delete_thing_type(params = {})
    # @param [Hash] params ({})
    def delete_thing_type(params = {}, options = {})
      req = build_request(:delete_thing_type, params)
      req.send_request(options)
    end

    # Deletes the specified rule.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_topic_rule({
    #     rule_name: "RuleName", # required
    #   })
    #
    # @overload delete_topic_rule(params = {})
    # @param [Hash] params ({})
    def delete_topic_rule(params = {}, options = {})
      req = build_request(:delete_topic_rule, params)
      req.send_request(options)
    end

    # Deprecates a thing type. You can not associate new things with
    # deprecated thing type.
    #
    # @option params [required, String] :thing_type_name
    #   The name of the thing type to deprecate.
    #
    # @option params [Boolean] :undo_deprecate
    #   Whether to undeprecate a deprecated thing type. If **true**, the thing
    #   type will not be deprecated anymore and you can associate it with
    #   things.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deprecate_thing_type({
    #     thing_type_name: "ThingTypeName", # required
    #     undo_deprecate: false,
    #   })
    #
    # @overload deprecate_thing_type(params = {})
    # @param [Hash] params ({})
    def deprecate_thing_type(params = {}, options = {})
      req = build_request(:deprecate_thing_type, params)
      req.send_request(options)
    end

    # Describes a registered CA certificate.
    #
    # @option params [required, String] :certificate_id
    #   The CA certificate identifier.
    #
    # @return [Types::DescribeCACertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCACertificateResponse#certificate_description #certificate_description} => Types::CACertificateDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_ca_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_description.certificate_arn #=> String
    #   resp.certificate_description.certificate_id #=> String
    #   resp.certificate_description.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.certificate_description.certificate_pem #=> String
    #   resp.certificate_description.owned_by #=> String
    #   resp.certificate_description.creation_date #=> Time
    #   resp.certificate_description.auto_registration_status #=> String, one of "ENABLE", "DISABLE"
    #
    # @overload describe_ca_certificate(params = {})
    # @param [Hash] params ({})
    def describe_ca_certificate(params = {}, options = {})
      req = build_request(:describe_ca_certificate, params)
      req.send_request(options)
    end

    # Gets information about the specified certificate.
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate.
    #
    # @return [Types::DescribeCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeCertificateResponse#certificate_description #certificate_description} => Types::CertificateDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_certificate({
    #     certificate_id: "CertificateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_description.certificate_arn #=> String
    #   resp.certificate_description.certificate_id #=> String
    #   resp.certificate_description.ca_certificate_id #=> String
    #   resp.certificate_description.status #=> String, one of "ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"
    #   resp.certificate_description.certificate_pem #=> String
    #   resp.certificate_description.owned_by #=> String
    #   resp.certificate_description.previous_owned_by #=> String
    #   resp.certificate_description.creation_date #=> Time
    #   resp.certificate_description.last_modified_date #=> Time
    #   resp.certificate_description.transfer_data.transfer_message #=> String
    #   resp.certificate_description.transfer_data.reject_reason #=> String
    #   resp.certificate_description.transfer_data.transfer_date #=> Time
    #   resp.certificate_description.transfer_data.accept_date #=> Time
    #   resp.certificate_description.transfer_data.reject_date #=> Time
    #
    # @overload describe_certificate(params = {})
    # @param [Hash] params ({})
    def describe_certificate(params = {}, options = {})
      req = build_request(:describe_certificate, params)
      req.send_request(options)
    end

    # Returns a unique endpoint specific to the AWS account making the call.
    #
    # @return [Types::DescribeEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointResponse#endpoint_address #endpoint_address} => String
    #
    # @example Response structure
    #
    #   resp.endpoint_address #=> String
    #
    # @overload describe_endpoint(params = {})
    # @param [Hash] params ({})
    def describe_endpoint(params = {}, options = {})
      req = build_request(:describe_endpoint, params)
      req.send_request(options)
    end

    # Gets information about the specified thing.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @return [Types::DescribeThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThingResponse#default_client_id #default_client_id} => String
    #   * {Types::DescribeThingResponse#thing_name #thing_name} => String
    #   * {Types::DescribeThingResponse#thing_type_name #thing_type_name} => String
    #   * {Types::DescribeThingResponse#attributes #attributes} => Hash&lt;String,String&gt;
    #   * {Types::DescribeThingResponse#version #version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing({
    #     thing_name: "ThingName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.default_client_id #=> String
    #   resp.thing_name #=> String
    #   resp.thing_type_name #=> String
    #   resp.attributes #=> Hash
    #   resp.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.version #=> Integer
    #
    # @overload describe_thing(params = {})
    # @param [Hash] params ({})
    def describe_thing(params = {}, options = {})
      req = build_request(:describe_thing, params)
      req.send_request(options)
    end

    # Gets information about the specified thing type.
    #
    # @option params [required, String] :thing_type_name
    #   The name of the thing type.
    #
    # @return [Types::DescribeThingTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThingTypeResponse#thing_type_name #thing_type_name} => String
    #   * {Types::DescribeThingTypeResponse#thing_type_properties #thing_type_properties} => Types::ThingTypeProperties
    #   * {Types::DescribeThingTypeResponse#thing_type_metadata #thing_type_metadata} => Types::ThingTypeMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_type({
    #     thing_type_name: "ThingTypeName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_type_name #=> String
    #   resp.thing_type_properties.thing_type_description #=> String
    #   resp.thing_type_properties.searchable_attributes #=> Array
    #   resp.thing_type_properties.searchable_attributes[0] #=> String
    #   resp.thing_type_metadata.deprecated #=> Boolean
    #   resp.thing_type_metadata.deprecation_date #=> Time
    #   resp.thing_type_metadata.creation_date #=> Time
    #
    # @overload describe_thing_type(params = {})
    # @param [Hash] params ({})
    def describe_thing_type(params = {}, options = {})
      req = build_request(:describe_thing_type, params)
      req.send_request(options)
    end

    # Removes the specified policy from the specified certificate.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to detach.
    #
    # @option params [required, String] :principal
    #   The principal.
    #
    #   If the principal is a certificate, specify the certificate ARN. If the
    #   principal is an Amazon Cognito identity, specify the identity ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_principal_policy({
    #     policy_name: "PolicyName", # required
    #     principal: "Principal", # required
    #   })
    #
    # @overload detach_principal_policy(params = {})
    # @param [Hash] params ({})
    def detach_principal_policy(params = {}, options = {})
      req = build_request(:detach_principal_policy, params)
      req.send_request(options)
    end

    # Detaches the specified principal from the specified thing.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @option params [required, String] :principal
    #   If the principal is a certificate, this value must be ARN of the
    #   certificate. If the principal is an Amazon Cognito identity, this
    #   value must be the ID of the Amazon Cognito identity.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_thing_principal({
    #     thing_name: "ThingName", # required
    #     principal: "Principal", # required
    #   })
    #
    # @overload detach_thing_principal(params = {})
    # @param [Hash] params ({})
    def detach_thing_principal(params = {}, options = {})
      req = build_request(:detach_thing_principal, params)
      req.send_request(options)
    end

    # Disables the specified rule.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule to disable.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_topic_rule({
    #     rule_name: "RuleName", # required
    #   })
    #
    # @overload disable_topic_rule(params = {})
    # @param [Hash] params ({})
    def disable_topic_rule(params = {}, options = {})
      req = build_request(:disable_topic_rule, params)
      req.send_request(options)
    end

    # Enables the specified rule.
    #
    # @option params [required, String] :rule_name
    #   The name of the topic rule to enable.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_topic_rule({
    #     rule_name: "RuleName", # required
    #   })
    #
    # @overload enable_topic_rule(params = {})
    # @param [Hash] params ({})
    def enable_topic_rule(params = {}, options = {})
      req = build_request(:enable_topic_rule, params)
      req.send_request(options)
    end

    # Gets the logging options.
    #
    # @return [Types::GetLoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetLoggingOptionsResponse#role_arn #role_arn} => String
    #   * {Types::GetLoggingOptionsResponse#log_level #log_level} => String
    #
    # @example Response structure
    #
    #   resp.role_arn #=> String
    #   resp.log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #
    # @overload get_logging_options(params = {})
    # @param [Hash] params ({})
    def get_logging_options(params = {}, options = {})
      req = build_request(:get_logging_options, params)
      req.send_request(options)
    end

    # Gets information about the specified policy with the policy document
    # of the default version.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @return [Types::GetPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyResponse#policy_name #policy_name} => String
    #   * {Types::GetPolicyResponse#policy_arn #policy_arn} => String
    #   * {Types::GetPolicyResponse#policy_document #policy_document} => String
    #   * {Types::GetPolicyResponse#default_version_id #default_version_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy({
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_name #=> String
    #   resp.policy_arn #=> String
    #   resp.policy_document #=> String
    #   resp.default_version_id #=> String
    #
    # @overload get_policy(params = {})
    # @param [Hash] params ({})
    def get_policy(params = {}, options = {})
      req = build_request(:get_policy, params)
      req.send_request(options)
    end

    # Gets information about the specified policy version.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy.
    #
    # @option params [required, String] :policy_version_id
    #   The policy version ID.
    #
    # @return [Types::GetPolicyVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetPolicyVersionResponse#policy_arn #policy_arn} => String
    #   * {Types::GetPolicyVersionResponse#policy_name #policy_name} => String
    #   * {Types::GetPolicyVersionResponse#policy_document #policy_document} => String
    #   * {Types::GetPolicyVersionResponse#policy_version_id #policy_version_id} => String
    #   * {Types::GetPolicyVersionResponse#is_default_version #is_default_version} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_version({
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_arn #=> String
    #   resp.policy_name #=> String
    #   resp.policy_document #=> String
    #   resp.policy_version_id #=> String
    #   resp.is_default_version #=> Boolean
    #
    # @overload get_policy_version(params = {})
    # @param [Hash] params ({})
    def get_policy_version(params = {}, options = {})
      req = build_request(:get_policy_version, params)
      req.send_request(options)
    end

    # Gets a registration code used to register a CA certificate with AWS
    # IoT.
    #
    # @return [Types::GetRegistrationCodeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetRegistrationCodeResponse#registration_code #registration_code} => String
    #
    # @example Response structure
    #
    #   resp.registration_code #=> String
    #
    # @overload get_registration_code(params = {})
    # @param [Hash] params ({})
    def get_registration_code(params = {}, options = {})
      req = build_request(:get_registration_code, params)
      req.send_request(options)
    end

    # Gets information about the specified rule.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @return [Types::GetTopicRuleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTopicRuleResponse#rule_arn #rule_arn} => String
    #   * {Types::GetTopicRuleResponse#rule #rule} => Types::TopicRule
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_topic_rule({
    #     rule_name: "RuleName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.rule_arn #=> String
    #   resp.rule.rule_name #=> String
    #   resp.rule.sql #=> String
    #   resp.rule.description #=> String
    #   resp.rule.created_at #=> Time
    #   resp.rule.actions #=> Array
    #   resp.rule.actions[0].dynamo_db.table_name #=> String
    #   resp.rule.actions[0].dynamo_db.role_arn #=> String
    #   resp.rule.actions[0].dynamo_db.operation #=> String
    #   resp.rule.actions[0].dynamo_db.hash_key_field #=> String
    #   resp.rule.actions[0].dynamo_db.hash_key_value #=> String
    #   resp.rule.actions[0].dynamo_db.hash_key_type #=> String, one of "STRING", "NUMBER"
    #   resp.rule.actions[0].dynamo_db.range_key_field #=> String
    #   resp.rule.actions[0].dynamo_db.range_key_value #=> String
    #   resp.rule.actions[0].dynamo_db.range_key_type #=> String, one of "STRING", "NUMBER"
    #   resp.rule.actions[0].dynamo_db.payload_field #=> String
    #   resp.rule.actions[0].dynamo_d_bv_2.role_arn #=> String
    #   resp.rule.actions[0].dynamo_d_bv_2.put_item.table_name #=> String
    #   resp.rule.actions[0].lambda.function_arn #=> String
    #   resp.rule.actions[0].sns.target_arn #=> String
    #   resp.rule.actions[0].sns.role_arn #=> String
    #   resp.rule.actions[0].sns.message_format #=> String, one of "RAW", "JSON"
    #   resp.rule.actions[0].sqs.role_arn #=> String
    #   resp.rule.actions[0].sqs.queue_url #=> String
    #   resp.rule.actions[0].sqs.use_base_64 #=> Boolean
    #   resp.rule.actions[0].kinesis.role_arn #=> String
    #   resp.rule.actions[0].kinesis.stream_name #=> String
    #   resp.rule.actions[0].kinesis.partition_key #=> String
    #   resp.rule.actions[0].republish.role_arn #=> String
    #   resp.rule.actions[0].republish.topic #=> String
    #   resp.rule.actions[0].s3.role_arn #=> String
    #   resp.rule.actions[0].s3.bucket_name #=> String
    #   resp.rule.actions[0].s3.key #=> String
    #   resp.rule.actions[0].s3.canned_acl #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"
    #   resp.rule.actions[0].firehose.role_arn #=> String
    #   resp.rule.actions[0].firehose.delivery_stream_name #=> String
    #   resp.rule.actions[0].firehose.separator #=> String
    #   resp.rule.actions[0].cloudwatch_metric.role_arn #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_namespace #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_name #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_value #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_unit #=> String
    #   resp.rule.actions[0].cloudwatch_metric.metric_timestamp #=> String
    #   resp.rule.actions[0].cloudwatch_alarm.role_arn #=> String
    #   resp.rule.actions[0].cloudwatch_alarm.alarm_name #=> String
    #   resp.rule.actions[0].cloudwatch_alarm.state_reason #=> String
    #   resp.rule.actions[0].cloudwatch_alarm.state_value #=> String
    #   resp.rule.actions[0].elasticsearch.role_arn #=> String
    #   resp.rule.actions[0].elasticsearch.endpoint #=> String
    #   resp.rule.actions[0].elasticsearch.index #=> String
    #   resp.rule.actions[0].elasticsearch.type #=> String
    #   resp.rule.actions[0].elasticsearch.id #=> String
    #   resp.rule.actions[0].salesforce.token #=> String
    #   resp.rule.actions[0].salesforce.url #=> String
    #   resp.rule.rule_disabled #=> Boolean
    #   resp.rule.aws_iot_sql_version #=> String
    #
    # @overload get_topic_rule(params = {})
    # @param [Hash] params ({})
    def get_topic_rule(params = {}, options = {})
      req = build_request(:get_topic_rule, params)
      req.send_request(options)
    end

    # Lists the CA certificates registered for your AWS account.
    #
    # The results are paginated with a default page size of 25. You can use
    # the returned marker to retrieve additional results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Determines the order of the results.
    #
    # @return [Types::ListCACertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCACertificatesResponse#certificates #certificates} => Array&lt;Types::CACertificate&gt;
    #   * {Types::ListCACertificatesResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ca_certificates({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].certificate_id #=> String
    #   resp.certificates[0].status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.certificates[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #
    # @overload list_ca_certificates(params = {})
    # @param [Hash] params ({})
    def list_ca_certificates(params = {}, options = {})
      req = build_request(:list_ca_certificates, params)
      req.send_request(options)
    end

    # Lists the certificates registered in your AWS account.
    #
    # The results are paginated with a default page size of 25. You can use
    # the returned marker to retrieve additional results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If True, the results are returned in
    #   ascending order, based on the creation date.
    #
    # @return [Types::ListCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificatesResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::ListCertificatesResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].certificate_id #=> String
    #   resp.certificates[0].status #=> String, one of "ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"
    #   resp.certificates[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #
    # @overload list_certificates(params = {})
    # @param [Hash] params ({})
    def list_certificates(params = {}, options = {})
      req = build_request(:list_certificates, params)
      req.send_request(options)
    end

    # List the device certificates signed by the specified CA certificate.
    #
    # @option params [required, String] :ca_certificate_id
    #   The ID of the CA certificate. This operation will list all registered
    #   device certificate that were signed by this CA certificate.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If True, the results are returned in
    #   ascending order, based on the creation date.
    #
    # @return [Types::ListCertificatesByCAResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListCertificatesByCAResponse#certificates #certificates} => Array&lt;Types::Certificate&gt;
    #   * {Types::ListCertificatesByCAResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_certificates_by_ca({
    #     ca_certificate_id: "CertificateId", # required
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificates #=> Array
    #   resp.certificates[0].certificate_arn #=> String
    #   resp.certificates[0].certificate_id #=> String
    #   resp.certificates[0].status #=> String, one of "ACTIVE", "INACTIVE", "REVOKED", "PENDING_TRANSFER", "REGISTER_INACTIVE", "PENDING_ACTIVATION"
    #   resp.certificates[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #
    # @overload list_certificates_by_ca(params = {})
    # @param [Hash] params ({})
    def list_certificates_by_ca(params = {}, options = {})
      req = build_request(:list_certificates_by_ca, params)
      req.send_request(options)
    end

    # Lists certificates that are being transfered but not yet accepted.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If True, the results are returned in
    #   ascending order, based on the creation date.
    #
    # @return [Types::ListOutgoingCertificatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOutgoingCertificatesResponse#outgoing_certificates #outgoing_certificates} => Array&lt;Types::OutgoingCertificate&gt;
    #   * {Types::ListOutgoingCertificatesResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_outgoing_certificates({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.outgoing_certificates #=> Array
    #   resp.outgoing_certificates[0].certificate_arn #=> String
    #   resp.outgoing_certificates[0].certificate_id #=> String
    #   resp.outgoing_certificates[0].transferred_to #=> String
    #   resp.outgoing_certificates[0].transfer_date #=> Time
    #   resp.outgoing_certificates[0].transfer_message #=> String
    #   resp.outgoing_certificates[0].creation_date #=> Time
    #   resp.next_marker #=> String
    #
    # @overload list_outgoing_certificates(params = {})
    # @param [Hash] params ({})
    def list_outgoing_certificates(params = {}, options = {})
      req = build_request(:list_outgoing_certificates, params)
      req.send_request(options)
    end

    # Lists your policies.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If true, the results are returned in
    #   ascending creation order.
    #
    # @return [Types::ListPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #   * {Types::ListPoliciesResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies({
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].policy_arn #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_policies(params = {})
    # @param [Hash] params ({})
    def list_policies(params = {}, options = {})
      req = build_request(:list_policies, params)
      req.send_request(options)
    end

    # Lists the principals associated with the specified policy.
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If true, the results are returned in
    #   ascending creation order.
    #
    # @return [Types::ListPolicyPrincipalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyPrincipalsResponse#principals #principals} => Array&lt;String&gt;
    #   * {Types::ListPolicyPrincipalsResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_principals({
    #     policy_name: "PolicyName", # required
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0] #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_policy_principals(params = {})
    # @param [Hash] params ({})
    def list_policy_principals(params = {}, options = {})
      req = build_request(:list_policy_principals, params)
      req.send_request(options)
    end

    # Lists the versions of the specified policy and identifies the default
    # version.
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @return [Types::ListPolicyVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPolicyVersionsResponse#policy_versions #policy_versions} => Array&lt;Types::PolicyVersion&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_versions({
    #     policy_name: "PolicyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.policy_versions #=> Array
    #   resp.policy_versions[0].version_id #=> String
    #   resp.policy_versions[0].is_default_version #=> Boolean
    #   resp.policy_versions[0].create_date #=> Time
    #
    # @overload list_policy_versions(params = {})
    # @param [Hash] params ({})
    def list_policy_versions(params = {}, options = {})
      req = build_request(:list_policy_versions, params)
      req.send_request(options)
    end

    # Lists the policies attached to the specified principal. If you use an
    # Cognito identity, the ID must be in [AmazonCognito Identity
    # format][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax
    #
    # @option params [required, String] :principal
    #   The principal.
    #
    # @option params [String] :marker
    #   The marker for the next set of results.
    #
    # @option params [Integer] :page_size
    #   The result page size.
    #
    # @option params [Boolean] :ascending_order
    #   Specifies the order for results. If true, results are returned in
    #   ascending creation order.
    #
    # @return [Types::ListPrincipalPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrincipalPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #   * {Types::ListPrincipalPoliciesResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principal_policies({
    #     principal: "Principal", # required
    #     marker: "Marker",
    #     page_size: 1,
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].policy_arn #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_principal_policies(params = {})
    # @param [Hash] params ({})
    def list_principal_policies(params = {}, options = {})
      req = build_request(:list_principal_policies, params)
      req.send_request(options)
    end

    # Lists the things associated with the specified principal.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [required, String] :principal
    #   The principal.
    #
    # @return [Types::ListPrincipalThingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPrincipalThingsResponse#things #things} => Array&lt;String&gt;
    #   * {Types::ListPrincipalThingsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principal_things({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     principal: "Principal", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.things #=> Array
    #   resp.things[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_principal_things(params = {})
    # @param [Hash] params ({})
    def list_principal_things(params = {}, options = {})
      req = build_request(:list_principal_things, params)
      req.send_request(options)
    end

    # Lists the principals associated with the specified thing.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing.
    #
    # @return [Types::ListThingPrincipalsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingPrincipalsResponse#principals #principals} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_principals({
    #     thing_name: "ThingName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.principals #=> Array
    #   resp.principals[0] #=> String
    #
    # @overload list_thing_principals(params = {})
    # @param [Hash] params ({})
    def list_thing_principals(params = {}, options = {})
      req = build_request(:list_thing_principals, params)
      req.send_request(options)
    end

    # Lists the existing thing types.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [String] :thing_type_name
    #   The name of the thing type.
    #
    # @return [Types::ListThingTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingTypesResponse#thing_types #thing_types} => Array&lt;Types::ThingTypeDefinition&gt;
    #   * {Types::ListThingTypesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_types({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     thing_type_name: "ThingTypeName",
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_types #=> Array
    #   resp.thing_types[0].thing_type_name #=> String
    #   resp.thing_types[0].thing_type_properties.thing_type_description #=> String
    #   resp.thing_types[0].thing_type_properties.searchable_attributes #=> Array
    #   resp.thing_types[0].thing_type_properties.searchable_attributes[0] #=> String
    #   resp.thing_types[0].thing_type_metadata.deprecated #=> Boolean
    #   resp.thing_types[0].thing_type_metadata.deprecation_date #=> Time
    #   resp.thing_types[0].thing_type_metadata.creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_thing_types(params = {})
    # @param [Hash] params ({})
    def list_thing_types(params = {}, options = {})
      req = build_request(:list_thing_types, params)
      req.send_request(options)
    end

    # Lists your things. Use the **attributeName** and **attributeValue**
    # parameters to filter your things. For example, calling `ListThings`
    # with attributeName=Color and attributeValue=Red retrieves all things
    # in the registry that contain an attribute **Color** with the value
    # **Red**.
    #
    # @option params [String] :next_token
    #   The token for the next set of results, or **null** if there are no
    #   additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return in this operation.
    #
    # @option params [String] :attribute_name
    #   The attribute name used to search for things.
    #
    # @option params [String] :attribute_value
    #   The attribute value used to search for things.
    #
    # @option params [String] :thing_type_name
    #   The name of the thing type used to search for things.
    #
    # @return [Types::ListThingsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingsResponse#things #things} => Array&lt;Types::ThingAttribute&gt;
    #   * {Types::ListThingsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_things({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     attribute_name: "AttributeName",
    #     attribute_value: "AttributeValue",
    #     thing_type_name: "ThingTypeName",
    #   })
    #
    # @example Response structure
    #
    #   resp.things #=> Array
    #   resp.things[0].thing_name #=> String
    #   resp.things[0].thing_type_name #=> String
    #   resp.things[0].attributes #=> Hash
    #   resp.things[0].attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.things[0].version #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_things(params = {})
    # @param [Hash] params ({})
    def list_things(params = {}, options = {})
      req = build_request(:list_things, params)
      req.send_request(options)
    end

    # Lists the rules for the specific topic.
    #
    # @option params [String] :topic
    #   The topic.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return.
    #
    # @option params [String] :next_token
    #   A token used to retrieve the next value.
    #
    # @option params [Boolean] :rule_disabled
    #   Specifies whether the rule is disabled.
    #
    # @return [Types::ListTopicRulesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTopicRulesResponse#rules #rules} => Array&lt;Types::TopicRuleListItem&gt;
    #   * {Types::ListTopicRulesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_topic_rules({
    #     topic: "Topic",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     rule_disabled: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.rules #=> Array
    #   resp.rules[0].rule_arn #=> String
    #   resp.rules[0].rule_name #=> String
    #   resp.rules[0].topic_pattern #=> String
    #   resp.rules[0].created_at #=> Time
    #   resp.rules[0].rule_disabled #=> Boolean
    #   resp.next_token #=> String
    #
    # @overload list_topic_rules(params = {})
    # @param [Hash] params ({})
    def list_topic_rules(params = {}, options = {})
      req = build_request(:list_topic_rules, params)
      req.send_request(options)
    end

    # Registers a CA certificate with AWS IoT. This CA certificate can then
    # be used to sign device certificates, which can be then registered with
    # AWS IoT. You can register up to 10 CA certificates per AWS account
    # that have the same subject field. This enables you to have up to 10
    # certificate authorities sign your device certificates. If you have
    # more than one CA certificate registered, make sure you pass the CA
    # certificate when you register your device certificates with the
    # RegisterCertificate API.
    #
    # @option params [required, String] :ca_certificate
    #   The CA certificate.
    #
    # @option params [required, String] :verification_certificate
    #   The private key verification certificate.
    #
    # @option params [Boolean] :set_as_active
    #   A boolean value that specifies if the CA certificate is set to active.
    #
    # @option params [Boolean] :allow_auto_registration
    #   Allows this CA certificate to be used for auto registration of device
    #   certificates.
    #
    # @return [Types::RegisterCACertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterCACertificateResponse#certificate_arn #certificate_arn} => String
    #   * {Types::RegisterCACertificateResponse#certificate_id #certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_ca_certificate({
    #     ca_certificate: "CertificatePem", # required
    #     verification_certificate: "CertificatePem", # required
    #     set_as_active: false,
    #     allow_auto_registration: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #
    # @overload register_ca_certificate(params = {})
    # @param [Hash] params ({})
    def register_ca_certificate(params = {}, options = {})
      req = build_request(:register_ca_certificate, params)
      req.send_request(options)
    end

    # Registers a device certificate with AWS IoT. If you have more than one
    # CA certificate that has the same subject field, you must specify the
    # CA certificate that was used to sign the device certificate being
    # registered.
    #
    # @option params [required, String] :certificate_pem
    #   The certificate data, in PEM format.
    #
    # @option params [String] :ca_certificate_pem
    #   The CA certificate used to sign the device certificate being
    #   registered.
    #
    # @option params [Boolean] :set_as_active
    #   A boolean value that specifies if the CA certificate is set to active.
    #
    # @option params [String] :status
    #   The status of the register certificate request.
    #
    # @return [Types::RegisterCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterCertificateResponse#certificate_arn #certificate_arn} => String
    #   * {Types::RegisterCertificateResponse#certificate_id #certificate_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_certificate({
    #     certificate_pem: "CertificatePem", # required
    #     ca_certificate_pem: "CertificatePem",
    #     set_as_active: false,
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_arn #=> String
    #   resp.certificate_id #=> String
    #
    # @overload register_certificate(params = {})
    # @param [Hash] params ({})
    def register_certificate(params = {}, options = {})
      req = build_request(:register_certificate, params)
      req.send_request(options)
    end

    # Rejects a pending certificate transfer. After AWS IoT rejects a
    # certificate transfer, the certificate status changes from
    # **PENDING\_TRANSFER** to **INACTIVE**.
    #
    # To check for pending certificate transfers, call ListCertificates to
    # enumerate your certificates.
    #
    # This operation can only be called by the transfer destination. After
    # it is called, the certificate will be returned to the source's
    # account in the INACTIVE state.
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate.
    #
    # @option params [String] :reject_reason
    #   The reason the certificate transfer was rejected.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_certificate_transfer({
    #     certificate_id: "CertificateId", # required
    #     reject_reason: "Message",
    #   })
    #
    # @overload reject_certificate_transfer(params = {})
    # @param [Hash] params ({})
    def reject_certificate_transfer(params = {}, options = {})
      req = build_request(:reject_certificate_transfer, params)
      req.send_request(options)
    end

    # Replaces the specified rule. You must specify all parameters for the
    # new rule. Creating rules is an administrator-level action. Any user
    # who has permission to create rules will be able to access data
    # processed by the rule.
    #
    # @option params [required, String] :rule_name
    #   The name of the rule.
    #
    # @option params [required, Types::TopicRulePayload] :topic_rule_payload
    #   The rule payload.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.replace_topic_rule({
    #     rule_name: "RuleName", # required
    #     topic_rule_payload: { # required
    #       sql: "SQL", # required
    #       description: "Description",
    #       actions: [ # required
    #         {
    #           dynamo_db: {
    #             table_name: "TableName", # required
    #             role_arn: "AwsArn", # required
    #             operation: "DynamoOperation",
    #             hash_key_field: "HashKeyField", # required
    #             hash_key_value: "HashKeyValue", # required
    #             hash_key_type: "STRING", # accepts STRING, NUMBER
    #             range_key_field: "RangeKeyField",
    #             range_key_value: "RangeKeyValue",
    #             range_key_type: "STRING", # accepts STRING, NUMBER
    #             payload_field: "PayloadField",
    #           },
    #           dynamo_d_bv_2: {
    #             role_arn: "AwsArn",
    #             put_item: {
    #               table_name: "TableName", # required
    #             },
    #           },
    #           lambda: {
    #             function_arn: "FunctionArn", # required
    #           },
    #           sns: {
    #             target_arn: "AwsArn", # required
    #             role_arn: "AwsArn", # required
    #             message_format: "RAW", # accepts RAW, JSON
    #           },
    #           sqs: {
    #             role_arn: "AwsArn", # required
    #             queue_url: "QueueUrl", # required
    #             use_base_64: false,
    #           },
    #           kinesis: {
    #             role_arn: "AwsArn", # required
    #             stream_name: "StreamName", # required
    #             partition_key: "PartitionKey",
    #           },
    #           republish: {
    #             role_arn: "AwsArn", # required
    #             topic: "TopicPattern", # required
    #           },
    #           s3: {
    #             role_arn: "AwsArn", # required
    #             bucket_name: "BucketName", # required
    #             key: "Key", # required
    #             canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #           },
    #           firehose: {
    #             role_arn: "AwsArn", # required
    #             delivery_stream_name: "DeliveryStreamName", # required
    #             separator: "FirehoseSeparator",
    #           },
    #           cloudwatch_metric: {
    #             role_arn: "AwsArn", # required
    #             metric_namespace: "MetricNamespace", # required
    #             metric_name: "MetricName", # required
    #             metric_value: "MetricValue", # required
    #             metric_unit: "MetricUnit", # required
    #             metric_timestamp: "MetricTimestamp",
    #           },
    #           cloudwatch_alarm: {
    #             role_arn: "AwsArn", # required
    #             alarm_name: "AlarmName", # required
    #             state_reason: "StateReason", # required
    #             state_value: "StateValue", # required
    #           },
    #           elasticsearch: {
    #             role_arn: "AwsArn", # required
    #             endpoint: "ElasticsearchEndpoint", # required
    #             index: "ElasticsearchIndex", # required
    #             type: "ElasticsearchType", # required
    #             id: "ElasticsearchId", # required
    #           },
    #           salesforce: {
    #             token: "SalesforceToken", # required
    #             url: "SalesforceEndpoint", # required
    #           },
    #         },
    #       ],
    #       rule_disabled: false,
    #       aws_iot_sql_version: "AwsIotSqlVersion",
    #     },
    #   })
    #
    # @overload replace_topic_rule(params = {})
    # @param [Hash] params ({})
    def replace_topic_rule(params = {}, options = {})
      req = build_request(:replace_topic_rule, params)
      req.send_request(options)
    end

    # Sets the specified version of the specified policy as the policy's
    # default (operative) version. This action affects all certificates to
    # which the policy is attached. To list the principals the policy is
    # attached to, use the ListPrincipalPolicy API.
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [required, String] :policy_version_id
    #   The policy version ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_policy_version({
    #     policy_name: "PolicyName", # required
    #     policy_version_id: "PolicyVersionId", # required
    #   })
    #
    # @overload set_default_policy_version(params = {})
    # @param [Hash] params ({})
    def set_default_policy_version(params = {}, options = {})
      req = build_request(:set_default_policy_version, params)
      req.send_request(options)
    end

    # Sets the logging options.
    #
    # @option params [required, Types::LoggingOptionsPayload] :logging_options_payload
    #   The logging options payload.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_logging_options({
    #     logging_options_payload: { # required
    #       role_arn: "AwsArn", # required
    #       log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #     },
    #   })
    #
    # @overload set_logging_options(params = {})
    # @param [Hash] params ({})
    def set_logging_options(params = {}, options = {})
      req = build_request(:set_logging_options, params)
      req.send_request(options)
    end

    # Transfers the specified certificate to the specified AWS account.
    #
    # You can cancel the transfer until it is acknowledged by the recipient.
    #
    # No notification is sent to the transfer destination's account. It is
    # up to the caller to notify the transfer target.
    #
    # The certificate being transferred must not be in the ACTIVE state. You
    # can use the UpdateCertificate API to deactivate it.
    #
    # The certificate must not have any policies attached to it. You can use
    # the DetachPrincipalPolicy API to detach them.
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate.
    #
    # @option params [required, String] :target_aws_account
    #   The AWS account.
    #
    # @option params [String] :transfer_message
    #   The transfer message.
    #
    # @return [Types::TransferCertificateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TransferCertificateResponse#transferred_certificate_arn #transferred_certificate_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.transfer_certificate({
    #     certificate_id: "CertificateId", # required
    #     target_aws_account: "AwsAccountId", # required
    #     transfer_message: "Message",
    #   })
    #
    # @example Response structure
    #
    #   resp.transferred_certificate_arn #=> String
    #
    # @overload transfer_certificate(params = {})
    # @param [Hash] params ({})
    def transfer_certificate(params = {}, options = {})
      req = build_request(:transfer_certificate, params)
      req.send_request(options)
    end

    # Updates a registered CA certificate.
    #
    # @option params [required, String] :certificate_id
    #   The CA certificate identifier.
    #
    # @option params [String] :new_status
    #   The updated status of the CA certificate.
    #
    #   **Note:** The status value REGISTER\_INACTIVE is deprecated and should
    #   not be used.
    #
    # @option params [String] :new_auto_registration_status
    #   The new value for the auto registration status. Valid values are:
    #   "ENABLE" or "DISABLE".
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ca_certificate({
    #     certificate_id: "CertificateId", # required
    #     new_status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     new_auto_registration_status: "ENABLE", # accepts ENABLE, DISABLE
    #   })
    #
    # @overload update_ca_certificate(params = {})
    # @param [Hash] params ({})
    def update_ca_certificate(params = {}, options = {})
      req = build_request(:update_ca_certificate, params)
      req.send_request(options)
    end

    # Updates the status of the specified certificate. This operation is
    # idempotent.
    #
    # Moving a certificate from the ACTIVE state (including REVOKED) will
    # not disconnect currently connected devices, but these devices will be
    # unable to reconnect.
    #
    # The ACTIVE state is required to authenticate devices connecting to AWS
    # IoT using a certificate.
    #
    # @option params [required, String] :certificate_id
    #   The ID of the certificate.
    #
    # @option params [required, String] :new_status
    #   The new status.
    #
    #   **Note:** Setting the status to PENDING\_TRANSFER will result in an
    #   exception being thrown. PENDING\_TRANSFER is a status used internally
    #   by AWS IoT. It is not intended for developer use.
    #
    #   **Note:** The status value REGISTER\_INACTIVE is deprecated and should
    #   not be used.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_certificate({
    #     certificate_id: "CertificateId", # required
    #     new_status: "ACTIVE", # required, accepts ACTIVE, INACTIVE, REVOKED, PENDING_TRANSFER, REGISTER_INACTIVE, PENDING_ACTIVATION
    #   })
    #
    # @overload update_certificate(params = {})
    # @param [Hash] params ({})
    def update_certificate(params = {}, options = {})
      req = build_request(:update_certificate, params)
      req.send_request(options)
    end

    # Updates the data for a thing.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing to update.
    #
    # @option params [String] :thing_type_name
    #   The name of the thing type.
    #
    # @option params [Types::AttributePayload] :attribute_payload
    #   A list of thing attributes, a JSON string containing name-value pairs.
    #   For example:
    #
    #   `\{"attributes":\{"name1":"value2"\}\}`
    #
    #   This data is used to add new attributes or update existing attributes.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the thing record in the registry. If the
    #   version of the record in the registry does not match the expected
    #   version specified in the request, the `UpdateThing` request is
    #   rejected with a `VersionConflictException`.
    #
    # @option params [Boolean] :remove_thing_type
    #   Remove a thing type association. If **true**, the assocation is
    #   removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing({
    #     thing_name: "ThingName", # required
    #     thing_type_name: "ThingTypeName",
    #     attribute_payload: {
    #       attributes: {
    #         "AttributeName" => "AttributeValue",
    #       },
    #       merge: false,
    #     },
    #     expected_version: 1,
    #     remove_thing_type: false,
    #   })
    #
    # @overload update_thing(params = {})
    # @param [Hash] params ({})
    def update_thing(params = {}, options = {})
      req = build_request(:update_thing, params)
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
      context[:gem_name] = 'aws-sdk-iot'
      context[:gem_version] = '1.0.0'
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
