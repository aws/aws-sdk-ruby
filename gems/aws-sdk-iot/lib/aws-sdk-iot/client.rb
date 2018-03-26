# frozen_string_literal: true

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

    # Adds a thing to a thing group.
    #
    # @option params [String] :thing_group_name
    #   The name of the group to which you are adding a thing.
    #
    # @option params [String] :thing_group_arn
    #   The ARN of the group to which you are adding a thing.
    #
    # @option params [String] :thing_name
    #   The name of the thing to add to a group.
    #
    # @option params [String] :thing_arn
    #   The ARN of the thing to add to a group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_thing_to_thing_group({
    #     thing_group_name: "ThingGroupName",
    #     thing_group_arn: "ThingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #   })
    #
    # @overload add_thing_to_thing_group(params = {})
    # @param [Hash] params ({})
    def add_thing_to_thing_group(params = {}, options = {})
      req = build_request(:add_thing_to_thing_group, params)
      req.send_request(options)
    end

    # Associates a group with a continuous job. The following criteria must
    # be met:
    #
    # * The job must have been created with the `targetSelection` field set
    #   to "CONTINUOUS".
    #
    # * The job status must currently be "IN\_PROGRESS".
    #
    # * The total number of targets associated with a job must not exceed
    #   100.
    #
    # @option params [required, Array<String>] :targets
    #   A list of thing group ARNs that define the targets of the job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @option params [String] :comment
    #   An optional comment string describing why the job was associated with
    #   the targets.
    #
    # @return [Types::AssociateTargetsWithJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::AssociateTargetsWithJobResponse#job_arn #job_arn} => String
    #   * {Types::AssociateTargetsWithJobResponse#job_id #job_id} => String
    #   * {Types::AssociateTargetsWithJobResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_targets_with_job({
    #     targets: ["TargetArn"], # required
    #     job_id: "JobId", # required
    #     comment: "Comment",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_id #=> String
    #   resp.description #=> String
    #
    # @overload associate_targets_with_job(params = {})
    # @param [Hash] params ({})
    def associate_targets_with_job(params = {}, options = {})
      req = build_request(:associate_targets_with_job, params)
      req.send_request(options)
    end

    # Attaches a policy to the specified target.
    #
    # @option params [required, String] :policy_name
    #   The name of the policy to attach.
    #
    # @option params [required, String] :target
    #   The identity to which the policy is attached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_policy({
    #     policy_name: "PolicyName", # required
    #     target: "PolicyTarget", # required
    #   })
    #
    # @overload attach_policy(params = {})
    # @param [Hash] params ({})
    def attach_policy(params = {}, options = {})
      req = build_request(:attach_policy, params)
      req.send_request(options)
    end

    # Attaches the specified policy to the specified principal (certificate
    # or other credential).
    #
    # **Note:** This API is deprecated. Please use AttachPolicy instead.
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

    # Cancels a job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @option params [String] :comment
    #   An optional comment string describing why the job was canceled.
    #
    # @return [Types::CancelJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CancelJobResponse#job_arn #job_arn} => String
    #   * {Types::CancelJobResponse#job_id #job_id} => String
    #   * {Types::CancelJobResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     job_id: "JobId", # required
    #     comment: "Comment",
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_id #=> String
    #   resp.description #=> String
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # Clears the default authorizer.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @overload clear_default_authorizer(params = {})
    # @param [Hash] params ({})
    def clear_default_authorizer(params = {}, options = {})
      req = build_request(:clear_default_authorizer, params)
      req.send_request(options)
    end

    # Creates an authorizer.
    #
    # @option params [required, String] :authorizer_name
    #   The authorizer name.
    #
    # @option params [required, String] :authorizer_function_arn
    #   The ARN of the authorizer's Lambda function.
    #
    # @option params [required, String] :token_key_name
    #   The name of the token key used to extract the token from the HTTP
    #   headers.
    #
    # @option params [required, Hash<String,String>] :token_signing_public_keys
    #   The public keys used to verify the digital signature returned by your
    #   custom authentication service.
    #
    # @option params [String] :status
    #   The status of the create authorizer request.
    #
    # @return [Types::CreateAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateAuthorizerResponse#authorizer_name #authorizer_name} => String
    #   * {Types::CreateAuthorizerResponse#authorizer_arn #authorizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #     authorizer_function_arn: "AuthorizerFunctionArn", # required
    #     token_key_name: "TokenKeyName", # required
    #     token_signing_public_keys: { # required
    #       "KeyName" => "KeyValue",
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_name #=> String
    #   resp.authorizer_arn #=> String
    #
    # @overload create_authorizer(params = {})
    # @param [Hash] params ({})
    def create_authorizer(params = {}, options = {})
      req = build_request(:create_authorizer, params)
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

    # Creates a job.
    #
    # @option params [required, String] :job_id
    #   A job identifier which must be unique for your AWS account. We
    #   recommend using a UUID. Alpha-numeric characters, "-" and "\_" are
    #   valid for use here.
    #
    # @option params [required, Array<String>] :targets
    #   A list of things and thing groups to which the job should be sent.
    #
    # @option params [String] :document_source
    #   An S3 link to the job document.
    #
    # @option params [String] :document
    #   The job document.
    #
    # @option params [String] :description
    #   A short text description of the job.
    #
    # @option params [Types::PresignedUrlConfig] :presigned_url_config
    #   Configuration information for pre-signed S3 URLs.
    #
    # @option params [String] :target_selection
    #   Specifies whether the job will continue to run (CONTINUOUS), or will
    #   be complete after all those things specified as targets have completed
    #   the job (SNAPSHOT). If continuous, the job may also be run on a thing
    #   when a change is detected in a target. For example, a job will run on
    #   a thing when the thing is added to a target group, even after the job
    #   was completed by all things originally in the group.
    #
    # @option params [Types::JobExecutionsRolloutConfig] :job_executions_rollout_config
    #   Allows you to create a staged rollout of the job.
    #
    # @option params [Hash<String,String>] :document_parameters
    #   Parameters for the job document.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#job_arn #job_arn} => String
    #   * {Types::CreateJobResponse#job_id #job_id} => String
    #   * {Types::CreateJobResponse#description #description} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     job_id: "JobId", # required
    #     targets: ["TargetArn"], # required
    #     document_source: "JobDocumentSource",
    #     document: "JobDocument",
    #     description: "JobDescription",
    #     presigned_url_config: {
    #       role_arn: "RoleArn",
    #       expires_in_sec: 1,
    #     },
    #     target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #     job_executions_rollout_config: {
    #       maximum_per_minute: 1,
    #     },
    #     document_parameters: {
    #       "ParameterKey" => "ParameterValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job_arn #=> String
    #   resp.job_id #=> String
    #   resp.description #=> String
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
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

    # Creates an AWS IoT OTAUpdate on a target group of things or groups.
    #
    # @option params [required, String] :ota_update_id
    #   The ID of the OTA update to be created.
    #
    # @option params [String] :description
    #   The description of the OTA update.
    #
    # @option params [required, Array<String>] :targets
    #   The targeted devices to receive OTA updates.
    #
    # @option params [String] :target_selection
    #   Specifies whether the update will continue to run (CONTINUOUS), or
    #   will be complete after all the things specified as targets have
    #   completed the update (SNAPSHOT). If continuous, the update may also be
    #   run on a thing when a change is detected in a target. For example, an
    #   update will run on a thing when the thing is added to a target group,
    #   even after the update was completed by all things originally in the
    #   group. Valid values: CONTINUOUS \| SNAPSHOT.
    #
    # @option params [required, Array<Types::OTAUpdateFile>] :files
    #   The files to be streamed by the OTA update.
    #
    # @option params [required, String] :role_arn
    #   The IAM role that allows access to the AWS IoT Jobs service.
    #
    # @option params [Hash<String,String>] :additional_parameters
    #   A list of additional OTA update parameters which are name-value pairs.
    #
    # @return [Types::CreateOTAUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateOTAUpdateResponse#ota_update_id #ota_update_id} => String
    #   * {Types::CreateOTAUpdateResponse#aws_iot_job_id #aws_iot_job_id} => String
    #   * {Types::CreateOTAUpdateResponse#ota_update_arn #ota_update_arn} => String
    #   * {Types::CreateOTAUpdateResponse#aws_iot_job_arn #aws_iot_job_arn} => String
    #   * {Types::CreateOTAUpdateResponse#ota_update_status #ota_update_status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_ota_update({
    #     ota_update_id: "OTAUpdateId", # required
    #     description: "OTAUpdateDescription",
    #     targets: ["Target"], # required
    #     target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #     files: [ # required
    #       {
    #         file_name: "FileName",
    #         file_version: "OTAUpdateFileVersion",
    #         file_source: {
    #           stream_id: "StreamId",
    #           file_id: 1,
    #         },
    #         code_signing: {
    #           aws_signer_job_id: "SigningJobId",
    #           custom_code_signing: {
    #             signature: {
    #               stream: {
    #                 stream_id: "StreamId",
    #                 file_id: 1,
    #               },
    #               inline_document: "data",
    #             },
    #             certificate_chain: {
    #               stream: {
    #                 stream_id: "StreamId",
    #                 file_id: 1,
    #               },
    #               certificate_name: "CertificateName",
    #               inline_document: "InlineDocument",
    #             },
    #             hash_algorithm: "HashAlgorithm",
    #             signature_algorithm: "SignatureAlgorithm",
    #           },
    #         },
    #         attributes: {
    #           "Key" => "Value",
    #         },
    #       },
    #     ],
    #     role_arn: "RoleArn", # required
    #     additional_parameters: {
    #       "Key" => "Value",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.ota_update_id #=> String
    #   resp.aws_iot_job_id #=> String
    #   resp.ota_update_arn #=> String
    #   resp.aws_iot_job_arn #=> String
    #   resp.ota_update_status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"
    #
    # @overload create_ota_update(params = {})
    # @param [Hash] params ({})
    def create_ota_update(params = {}, options = {})
      req = build_request(:create_ota_update, params)
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
    #   Maximum length of 2048, excluding whitespace.
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

    # Creates a role alias.
    #
    # @option params [required, String] :role_alias
    #   The role alias that points to a role ARN. This allows you to change
    #   the role without having to update the device.
    #
    # @option params [required, String] :role_arn
    #   The role ARN.
    #
    # @option params [Integer] :credential_duration_seconds
    #   How long (in seconds) the credentials will be valid.
    #
    # @return [Types::CreateRoleAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateRoleAliasResponse#role_alias #role_alias} => String
    #   * {Types::CreateRoleAliasResponse#role_alias_arn #role_alias_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_role_alias({
    #     role_alias: "RoleAlias", # required
    #     role_arn: "RoleArn", # required
    #     credential_duration_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.role_alias #=> String
    #   resp.role_alias_arn #=> String
    #
    # @overload create_role_alias(params = {})
    # @param [Hash] params ({})
    def create_role_alias(params = {}, options = {})
      req = build_request(:create_role_alias, params)
      req.send_request(options)
    end

    # Creates a stream for delivering one or more large files in chunks over
    # MQTT. A stream transports data bytes in chunks or blocks packaged as
    # MQTT messages from a source like S3. You can have one or more files
    # associated with a stream. The total size of a file associated with the
    # stream cannot exceed more than 2 MB. The stream will be created with
    # version 0. If a stream is created with the same streamID as a stream
    # that existed and was deleted within last 90 days, we will resurrect
    # that old stream by incrementing the version by 1.
    #
    # @option params [required, String] :stream_id
    #   The stream ID.
    #
    # @option params [String] :description
    #   A description of the stream.
    #
    # @option params [required, Array<Types::StreamFile>] :files
    #   The files to stream.
    #
    # @option params [required, String] :role_arn
    #   An IAM role that allows the IoT service principal assumes to access
    #   your S3 files.
    #
    # @return [Types::CreateStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateStreamResponse#stream_id #stream_id} => String
    #   * {Types::CreateStreamResponse#stream_arn #stream_arn} => String
    #   * {Types::CreateStreamResponse#description #description} => String
    #   * {Types::CreateStreamResponse#stream_version #stream_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stream({
    #     stream_id: "StreamId", # required
    #     description: "StreamDescription",
    #     files: [ # required
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #           version: "S3Version",
    #         },
    #       },
    #     ],
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_id #=> String
    #   resp.stream_arn #=> String
    #   resp.description #=> String
    #   resp.stream_version #=> Integer
    #
    # @overload create_stream(params = {})
    # @param [Hash] params ({})
    def create_stream(params = {}, options = {})
      req = build_request(:create_stream, params)
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
    #   * {Types::CreateThingResponse#thing_id #thing_id} => String
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
    #   resp.thing_id #=> String
    #
    # @overload create_thing(params = {})
    # @param [Hash] params ({})
    def create_thing(params = {}, options = {})
      req = build_request(:create_thing, params)
      req.send_request(options)
    end

    # Create a thing group.
    #
    # @option params [required, String] :thing_group_name
    #   The thing group name to create.
    #
    # @option params [String] :parent_group_name
    #   The name of the parent thing group.
    #
    # @option params [Types::ThingGroupProperties] :thing_group_properties
    #   The thing group properties.
    #
    # @return [Types::CreateThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateThingGroupResponse#thing_group_name #thing_group_name} => String
    #   * {Types::CreateThingGroupResponse#thing_group_arn #thing_group_arn} => String
    #   * {Types::CreateThingGroupResponse#thing_group_id #thing_group_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     parent_group_name: "ThingGroupName",
    #     thing_group_properties: {
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         merge: false,
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_group_name #=> String
    #   resp.thing_group_arn #=> String
    #   resp.thing_group_id #=> String
    #
    # @overload create_thing_group(params = {})
    # @param [Hash] params ({})
    def create_thing_group(params = {}, options = {})
      req = build_request(:create_thing_group, params)
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
    #   * {Types::CreateThingTypeResponse#thing_type_id #thing_type_id} => String
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
    #   resp.thing_type_id #=> String
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
    #       error_action: {
    #         dynamo_db: {
    #           table_name: "TableName", # required
    #           role_arn: "AwsArn", # required
    #           operation: "DynamoOperation",
    #           hash_key_field: "HashKeyField", # required
    #           hash_key_value: "HashKeyValue", # required
    #           hash_key_type: "STRING", # accepts STRING, NUMBER
    #           range_key_field: "RangeKeyField",
    #           range_key_value: "RangeKeyValue",
    #           range_key_type: "STRING", # accepts STRING, NUMBER
    #           payload_field: "PayloadField",
    #         },
    #         dynamo_d_bv_2: {
    #           role_arn: "AwsArn",
    #           put_item: {
    #             table_name: "TableName", # required
    #           },
    #         },
    #         lambda: {
    #           function_arn: "FunctionArn", # required
    #         },
    #         sns: {
    #           target_arn: "AwsArn", # required
    #           role_arn: "AwsArn", # required
    #           message_format: "RAW", # accepts RAW, JSON
    #         },
    #         sqs: {
    #           role_arn: "AwsArn", # required
    #           queue_url: "QueueUrl", # required
    #           use_base_64: false,
    #         },
    #         kinesis: {
    #           role_arn: "AwsArn", # required
    #           stream_name: "StreamName", # required
    #           partition_key: "PartitionKey",
    #         },
    #         republish: {
    #           role_arn: "AwsArn", # required
    #           topic: "TopicPattern", # required
    #         },
    #         s3: {
    #           role_arn: "AwsArn", # required
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #         },
    #         firehose: {
    #           role_arn: "AwsArn", # required
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #         },
    #         cloudwatch_metric: {
    #           role_arn: "AwsArn", # required
    #           metric_namespace: "MetricNamespace", # required
    #           metric_name: "MetricName", # required
    #           metric_value: "MetricValue", # required
    #           metric_unit: "MetricUnit", # required
    #           metric_timestamp: "MetricTimestamp",
    #         },
    #         cloudwatch_alarm: {
    #           role_arn: "AwsArn", # required
    #           alarm_name: "AlarmName", # required
    #           state_reason: "StateReason", # required
    #           state_value: "StateValue", # required
    #         },
    #         elasticsearch: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         salesforce: {
    #           token: "SalesforceToken", # required
    #           url: "SalesforceEndpoint", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @overload create_topic_rule(params = {})
    # @param [Hash] params ({})
    def create_topic_rule(params = {}, options = {})
      req = build_request(:create_topic_rule, params)
      req.send_request(options)
    end

    # Deletes an authorizer.
    #
    # @option params [required, String] :authorizer_name
    #   The name of the authorizer to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #   })
    #
    # @overload delete_authorizer(params = {})
    # @param [Hash] params ({})
    def delete_authorizer(params = {}, options = {})
      req = build_request(:delete_authorizer, params)
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
    # @option params [Boolean] :force_delete
    #   Forces a certificate request to be deleted.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_certificate({
    #     certificate_id: "CertificateId", # required
    #     force_delete: false,
    #   })
    #
    # @overload delete_certificate(params = {})
    # @param [Hash] params ({})
    def delete_certificate(params = {}, options = {})
      req = build_request(:delete_certificate, params)
      req.send_request(options)
    end

    # Delete an OTA update.
    #
    # @option params [required, String] :ota_update_id
    #   The OTA update ID to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ota_update({
    #     ota_update_id: "OTAUpdateId", # required
    #   })
    #
    # @overload delete_ota_update(params = {})
    # @param [Hash] params ({})
    def delete_ota_update(params = {}, options = {})
      req = build_request(:delete_ota_update, params)
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

    # Deletes a role alias
    #
    # @option params [required, String] :role_alias
    #   The role alias to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role_alias({
    #     role_alias: "RoleAlias", # required
    #   })
    #
    # @overload delete_role_alias(params = {})
    # @param [Hash] params ({})
    def delete_role_alias(params = {}, options = {})
      req = build_request(:delete_role_alias, params)
      req.send_request(options)
    end

    # Deletes a stream.
    #
    # @option params [required, String] :stream_id
    #   The stream ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stream({
    #     stream_id: "StreamId", # required
    #   })
    #
    # @overload delete_stream(params = {})
    # @param [Hash] params ({})
    def delete_stream(params = {}, options = {})
      req = build_request(:delete_stream, params)
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

    # Deletes a thing group.
    #
    # @option params [required, String] :thing_group_name
    #   The name of the thing group to delete.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the thing group to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     expected_version: 1,
    #   })
    #
    # @overload delete_thing_group(params = {})
    # @param [Hash] params ({})
    def delete_thing_group(params = {}, options = {})
      req = build_request(:delete_thing_group, params)
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

    # Deletes the rule.
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

    # Deletes a logging level.
    #
    # @option params [required, String] :target_type
    #   The type of resource for which you are configuring logging. Must be
    #   `THING_Group`.
    #
    # @option params [required, String] :target_name
    #   The name of the resource for which you are configuring logging.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_v2_logging_level({
    #     target_type: "DEFAULT", # required, accepts DEFAULT, THING_GROUP
    #     target_name: "LogTargetName", # required
    #   })
    #
    # @overload delete_v2_logging_level(params = {})
    # @param [Hash] params ({})
    def delete_v2_logging_level(params = {}, options = {})
      req = build_request(:delete_v2_logging_level, params)
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

    # Describes an authorizer.
    #
    # @option params [required, String] :authorizer_name
    #   The name of the authorizer to describe.
    #
    # @return [Types::DescribeAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeAuthorizerResponse#authorizer_description #authorizer_description} => Types::AuthorizerDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_description.authorizer_name #=> String
    #   resp.authorizer_description.authorizer_arn #=> String
    #   resp.authorizer_description.authorizer_function_arn #=> String
    #   resp.authorizer_description.token_key_name #=> String
    #   resp.authorizer_description.token_signing_public_keys #=> Hash
    #   resp.authorizer_description.token_signing_public_keys["KeyName"] #=> String
    #   resp.authorizer_description.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.authorizer_description.creation_date #=> Time
    #   resp.authorizer_description.last_modified_date #=> Time
    #
    # @overload describe_authorizer(params = {})
    # @param [Hash] params ({})
    def describe_authorizer(params = {}, options = {})
      req = build_request(:describe_authorizer, params)
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
    #   * {Types::DescribeCACertificateResponse#registration_config #registration_config} => Types::RegistrationConfig
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
    #   resp.certificate_description.last_modified_date #=> Time
    #   resp.certificate_description.customer_version #=> Integer
    #   resp.certificate_description.generation_id #=> String
    #   resp.registration_config.template_body #=> String
    #   resp.registration_config.role_arn #=> String
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
    #   resp.certificate_description.customer_version #=> Integer
    #   resp.certificate_description.transfer_data.transfer_message #=> String
    #   resp.certificate_description.transfer_data.reject_reason #=> String
    #   resp.certificate_description.transfer_data.transfer_date #=> Time
    #   resp.certificate_description.transfer_data.accept_date #=> Time
    #   resp.certificate_description.transfer_data.reject_date #=> Time
    #   resp.certificate_description.generation_id #=> String
    #
    # @overload describe_certificate(params = {})
    # @param [Hash] params ({})
    def describe_certificate(params = {}, options = {})
      req = build_request(:describe_certificate, params)
      req.send_request(options)
    end

    # Describes the default authorizer.
    #
    # @return [Types::DescribeDefaultAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeDefaultAuthorizerResponse#authorizer_description #authorizer_description} => Types::AuthorizerDescription
    #
    # @example Response structure
    #
    #   resp.authorizer_description.authorizer_name #=> String
    #   resp.authorizer_description.authorizer_arn #=> String
    #   resp.authorizer_description.authorizer_function_arn #=> String
    #   resp.authorizer_description.token_key_name #=> String
    #   resp.authorizer_description.token_signing_public_keys #=> Hash
    #   resp.authorizer_description.token_signing_public_keys["KeyName"] #=> String
    #   resp.authorizer_description.status #=> String, one of "ACTIVE", "INACTIVE"
    #   resp.authorizer_description.creation_date #=> Time
    #   resp.authorizer_description.last_modified_date #=> Time
    #
    # @overload describe_default_authorizer(params = {})
    # @param [Hash] params ({})
    def describe_default_authorizer(params = {}, options = {})
      req = build_request(:describe_default_authorizer, params)
      req.send_request(options)
    end

    # Returns a unique endpoint specific to the AWS account making the call.
    #
    # @option params [String] :endpoint_type
    #   The endpoint type.
    #
    # @return [Types::DescribeEndpointResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEndpointResponse#endpoint_address #endpoint_address} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_endpoint({
    #     endpoint_type: "EndpointType",
    #   })
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

    # Describes event configurations.
    #
    # @return [Types::DescribeEventConfigurationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeEventConfigurationsResponse#event_configurations #event_configurations} => Hash&lt;String,Types::Configuration&gt;
    #   * {Types::DescribeEventConfigurationsResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeEventConfigurationsResponse#last_modified_date #last_modified_date} => Time
    #
    # @example Response structure
    #
    #   resp.event_configurations #=> Hash
    #   resp.event_configurations["EventType"].enabled #=> Boolean
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #
    # @overload describe_event_configurations(params = {})
    # @param [Hash] params ({})
    def describe_event_configurations(params = {}, options = {})
      req = build_request(:describe_event_configurations, params)
      req.send_request(options)
    end

    # Describes a search index.
    #
    # @option params [required, String] :index_name
    #   The index name.
    #
    # @return [Types::DescribeIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeIndexResponse#index_name #index_name} => String
    #   * {Types::DescribeIndexResponse#index_status #index_status} => String
    #   * {Types::DescribeIndexResponse#schema #schema} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_index({
    #     index_name: "IndexName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.index_name #=> String
    #   resp.index_status #=> String, one of "ACTIVE", "BUILDING", "REBUILDING"
    #   resp.schema #=> String
    #
    # @overload describe_index(params = {})
    # @param [Hash] params ({})
    def describe_index(params = {}, options = {})
      req = build_request(:describe_index, params)
      req.send_request(options)
    end

    # Describes a job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @return [Types::DescribeJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobResponse#document_source #document_source} => String
    #   * {Types::DescribeJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document_source #=> String
    #   resp.job.job_arn #=> String
    #   resp.job.job_id #=> String
    #   resp.job.target_selection #=> String, one of "CONTINUOUS", "SNAPSHOT"
    #   resp.job.status #=> String, one of "IN_PROGRESS", "CANCELED", "COMPLETED"
    #   resp.job.comment #=> String
    #   resp.job.targets #=> Array
    #   resp.job.targets[0] #=> String
    #   resp.job.description #=> String
    #   resp.job.presigned_url_config.role_arn #=> String
    #   resp.job.presigned_url_config.expires_in_sec #=> Integer
    #   resp.job.job_executions_rollout_config.maximum_per_minute #=> Integer
    #   resp.job.created_at #=> Time
    #   resp.job.last_updated_at #=> Time
    #   resp.job.completed_at #=> Time
    #   resp.job.job_process_details.processing_targets #=> Array
    #   resp.job.job_process_details.processing_targets[0] #=> String
    #   resp.job.job_process_details.number_of_canceled_things #=> Integer
    #   resp.job.job_process_details.number_of_succeeded_things #=> Integer
    #   resp.job.job_process_details.number_of_failed_things #=> Integer
    #   resp.job.job_process_details.number_of_rejected_things #=> Integer
    #   resp.job.job_process_details.number_of_queued_things #=> Integer
    #   resp.job.job_process_details.number_of_in_progress_things #=> Integer
    #   resp.job.job_process_details.number_of_removed_things #=> Integer
    #   resp.job.document_parameters #=> Hash
    #   resp.job.document_parameters["ParameterKey"] #=> String
    #
    # @overload describe_job(params = {})
    # @param [Hash] params ({})
    def describe_job(params = {}, options = {})
      req = build_request(:describe_job, params)
      req.send_request(options)
    end

    # Describes a job execution.
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @option params [required, String] :thing_name
    #   The name of the thing on which the job execution is running.
    #
    # @option params [Integer] :execution_number
    #   A string (consisting of the digits "0" through "9" which is used
    #   to specify a particular job execution on a particular device.
    #
    # @return [Types::DescribeJobExecutionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeJobExecutionResponse#execution #execution} => Types::JobExecution
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_job_execution({
    #     job_id: "JobId", # required
    #     thing_name: "ThingName", # required
    #     execution_number: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.execution.job_id #=> String
    #   resp.execution.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution.status_details.details_map #=> Hash
    #   resp.execution.status_details.details_map["DetailsKey"] #=> String
    #   resp.execution.thing_arn #=> String
    #   resp.execution.queued_at #=> Time
    #   resp.execution.started_at #=> Time
    #   resp.execution.last_updated_at #=> Time
    #   resp.execution.execution_number #=> Integer
    #
    # @overload describe_job_execution(params = {})
    # @param [Hash] params ({})
    def describe_job_execution(params = {}, options = {})
      req = build_request(:describe_job_execution, params)
      req.send_request(options)
    end

    # Describes a role alias.
    #
    # @option params [required, String] :role_alias
    #   The role alias to describe.
    #
    # @return [Types::DescribeRoleAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeRoleAliasResponse#role_alias_description #role_alias_description} => Types::RoleAliasDescription
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_role_alias({
    #     role_alias: "RoleAlias", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.role_alias_description.role_alias #=> String
    #   resp.role_alias_description.role_alias_arn #=> String
    #   resp.role_alias_description.role_arn #=> String
    #   resp.role_alias_description.owner #=> String
    #   resp.role_alias_description.credential_duration_seconds #=> Integer
    #   resp.role_alias_description.creation_date #=> Time
    #   resp.role_alias_description.last_modified_date #=> Time
    #
    # @overload describe_role_alias(params = {})
    # @param [Hash] params ({})
    def describe_role_alias(params = {}, options = {})
      req = build_request(:describe_role_alias, params)
      req.send_request(options)
    end

    # Gets information about a stream.
    #
    # @option params [required, String] :stream_id
    #   The stream ID.
    #
    # @return [Types::DescribeStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeStreamResponse#stream_info #stream_info} => Types::StreamInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stream({
    #     stream_id: "StreamId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_info.stream_id #=> String
    #   resp.stream_info.stream_arn #=> String
    #   resp.stream_info.stream_version #=> Integer
    #   resp.stream_info.description #=> String
    #   resp.stream_info.files #=> Array
    #   resp.stream_info.files[0].file_id #=> Integer
    #   resp.stream_info.files[0].s3_location.bucket #=> String
    #   resp.stream_info.files[0].s3_location.key #=> String
    #   resp.stream_info.files[0].s3_location.version #=> String
    #   resp.stream_info.created_at #=> Time
    #   resp.stream_info.last_updated_at #=> Time
    #   resp.stream_info.role_arn #=> String
    #
    # @overload describe_stream(params = {})
    # @param [Hash] params ({})
    def describe_stream(params = {}, options = {})
      req = build_request(:describe_stream, params)
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
    #   * {Types::DescribeThingResponse#thing_id #thing_id} => String
    #   * {Types::DescribeThingResponse#thing_arn #thing_arn} => String
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
    #   resp.thing_id #=> String
    #   resp.thing_arn #=> String
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

    # Describe a thing group.
    #
    # @option params [required, String] :thing_group_name
    #   The name of the thing group.
    #
    # @return [Types::DescribeThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThingGroupResponse#thing_group_name #thing_group_name} => String
    #   * {Types::DescribeThingGroupResponse#thing_group_id #thing_group_id} => String
    #   * {Types::DescribeThingGroupResponse#thing_group_arn #thing_group_arn} => String
    #   * {Types::DescribeThingGroupResponse#version #version} => Integer
    #   * {Types::DescribeThingGroupResponse#thing_group_properties #thing_group_properties} => Types::ThingGroupProperties
    #   * {Types::DescribeThingGroupResponse#thing_group_metadata #thing_group_metadata} => Types::ThingGroupMetadata
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_group_name #=> String
    #   resp.thing_group_id #=> String
    #   resp.thing_group_arn #=> String
    #   resp.version #=> Integer
    #   resp.thing_group_properties.thing_group_description #=> String
    #   resp.thing_group_properties.attribute_payload.attributes #=> Hash
    #   resp.thing_group_properties.attribute_payload.attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.thing_group_properties.attribute_payload.merge #=> Boolean
    #   resp.thing_group_metadata.parent_group_name #=> String
    #   resp.thing_group_metadata.root_to_parent_thing_groups #=> Array
    #   resp.thing_group_metadata.root_to_parent_thing_groups[0].group_name #=> String
    #   resp.thing_group_metadata.root_to_parent_thing_groups[0].group_arn #=> String
    #   resp.thing_group_metadata.creation_date #=> Time
    #
    # @overload describe_thing_group(params = {})
    # @param [Hash] params ({})
    def describe_thing_group(params = {}, options = {})
      req = build_request(:describe_thing_group, params)
      req.send_request(options)
    end

    # Describes a bulk thing provisioning task.
    #
    # @option params [required, String] :task_id
    #   The task ID.
    #
    # @return [Types::DescribeThingRegistrationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeThingRegistrationTaskResponse#task_id #task_id} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#creation_date #creation_date} => Time
    #   * {Types::DescribeThingRegistrationTaskResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::DescribeThingRegistrationTaskResponse#template_body #template_body} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#input_file_bucket #input_file_bucket} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#input_file_key #input_file_key} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#role_arn #role_arn} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#status #status} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#message #message} => String
    #   * {Types::DescribeThingRegistrationTaskResponse#success_count #success_count} => Integer
    #   * {Types::DescribeThingRegistrationTaskResponse#failure_count #failure_count} => Integer
    #   * {Types::DescribeThingRegistrationTaskResponse#percentage_progress #percentage_progress} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_thing_registration_task({
    #     task_id: "TaskId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.template_body #=> String
    #   resp.input_file_bucket #=> String
    #   resp.input_file_key #=> String
    #   resp.role_arn #=> String
    #   resp.status #=> String, one of "InProgress", "Completed", "Failed", "Cancelled", "Cancelling"
    #   resp.message #=> String
    #   resp.success_count #=> Integer
    #   resp.failure_count #=> Integer
    #   resp.percentage_progress #=> Integer
    #
    # @overload describe_thing_registration_task(params = {})
    # @param [Hash] params ({})
    def describe_thing_registration_task(params = {}, options = {})
      req = build_request(:describe_thing_registration_task, params)
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
    #   * {Types::DescribeThingTypeResponse#thing_type_id #thing_type_id} => String
    #   * {Types::DescribeThingTypeResponse#thing_type_arn #thing_type_arn} => String
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
    #   resp.thing_type_id #=> String
    #   resp.thing_type_arn #=> String
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

    # Detaches a policy from the specified target.
    #
    # @option params [required, String] :policy_name
    #   The policy to detach.
    #
    # @option params [required, String] :target
    #   The target from which the policy will be detached.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_policy({
    #     policy_name: "PolicyName", # required
    #     target: "PolicyTarget", # required
    #   })
    #
    # @overload detach_policy(params = {})
    # @param [Hash] params ({})
    def detach_policy(params = {}, options = {})
      req = build_request(:detach_policy, params)
      req.send_request(options)
    end

    # Removes the specified policy from the specified certificate.
    #
    # **Note:** This API is deprecated. Please use DetachPolicy instead.
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

    # Disables the rule.
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

    # Enables the rule.
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

    # Gets effective policies.
    #
    # @option params [String] :principal
    #   The principal.
    #
    # @option params [String] :cognito_identity_pool_id
    #   The Cognito identity pool ID.
    #
    # @option params [String] :thing_name
    #   The thing name.
    #
    # @return [Types::GetEffectivePoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetEffectivePoliciesResponse#effective_policies #effective_policies} => Array&lt;Types::EffectivePolicy&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_effective_policies({
    #     principal: "Principal",
    #     cognito_identity_pool_id: "CognitoIdentityPoolId",
    #     thing_name: "ThingName",
    #   })
    #
    # @example Response structure
    #
    #   resp.effective_policies #=> Array
    #   resp.effective_policies[0].policy_name #=> String
    #   resp.effective_policies[0].policy_arn #=> String
    #   resp.effective_policies[0].policy_document #=> String
    #
    # @overload get_effective_policies(params = {})
    # @param [Hash] params ({})
    def get_effective_policies(params = {}, options = {})
      req = build_request(:get_effective_policies, params)
      req.send_request(options)
    end

    # Gets the search configuration.
    #
    # @return [Types::GetIndexingConfigurationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIndexingConfigurationResponse#thing_indexing_configuration #thing_indexing_configuration} => Types::ThingIndexingConfiguration
    #
    # @example Response structure
    #
    #   resp.thing_indexing_configuration.thing_indexing_mode #=> String, one of "OFF", "REGISTRY", "REGISTRY_AND_SHADOW"
    #
    # @overload get_indexing_configuration(params = {})
    # @param [Hash] params ({})
    def get_indexing_configuration(params = {}, options = {})
      req = build_request(:get_indexing_configuration, params)
      req.send_request(options)
    end

    # Gets a job document.
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @return [Types::GetJobDocumentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetJobDocumentResponse#document #document} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_job_document({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.document #=> String
    #
    # @overload get_job_document(params = {})
    # @param [Hash] params ({})
    def get_job_document(params = {}, options = {})
      req = build_request(:get_job_document, params)
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

    # Gets an OTA update.
    #
    # @option params [required, String] :ota_update_id
    #   The OTA update ID.
    #
    # @return [Types::GetOTAUpdateResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetOTAUpdateResponse#ota_update_info #ota_update_info} => Types::OTAUpdateInfo
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ota_update({
    #     ota_update_id: "OTAUpdateId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.ota_update_info.ota_update_id #=> String
    #   resp.ota_update_info.ota_update_arn #=> String
    #   resp.ota_update_info.creation_date #=> Time
    #   resp.ota_update_info.last_modified_date #=> Time
    #   resp.ota_update_info.description #=> String
    #   resp.ota_update_info.targets #=> Array
    #   resp.ota_update_info.targets[0] #=> String
    #   resp.ota_update_info.target_selection #=> String, one of "CONTINUOUS", "SNAPSHOT"
    #   resp.ota_update_info.ota_update_files #=> Array
    #   resp.ota_update_info.ota_update_files[0].file_name #=> String
    #   resp.ota_update_info.ota_update_files[0].file_version #=> String
    #   resp.ota_update_info.ota_update_files[0].file_source.stream_id #=> String
    #   resp.ota_update_info.ota_update_files[0].file_source.file_id #=> Integer
    #   resp.ota_update_info.ota_update_files[0].code_signing.aws_signer_job_id #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature.stream.stream_id #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature.stream.file_id #=> Integer
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature.inline_document #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain.stream.stream_id #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain.stream.file_id #=> Integer
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain.certificate_name #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.certificate_chain.inline_document #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.hash_algorithm #=> String
    #   resp.ota_update_info.ota_update_files[0].code_signing.custom_code_signing.signature_algorithm #=> String
    #   resp.ota_update_info.ota_update_files[0].attributes #=> Hash
    #   resp.ota_update_info.ota_update_files[0].attributes["Key"] #=> String
    #   resp.ota_update_info.ota_update_status #=> String, one of "CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "CREATE_FAILED"
    #   resp.ota_update_info.aws_iot_job_id #=> String
    #   resp.ota_update_info.aws_iot_job_arn #=> String
    #   resp.ota_update_info.error_info.code #=> String
    #   resp.ota_update_info.error_info.message #=> String
    #   resp.ota_update_info.additional_parameters #=> Hash
    #   resp.ota_update_info.additional_parameters["Key"] #=> String
    #
    # @overload get_ota_update(params = {})
    # @param [Hash] params ({})
    def get_ota_update(params = {}, options = {})
      req = build_request(:get_ota_update, params)
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
    #   * {Types::GetPolicyResponse#creation_date #creation_date} => Time
    #   * {Types::GetPolicyResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::GetPolicyResponse#generation_id #generation_id} => String
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
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.generation_id #=> String
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
    #   * {Types::GetPolicyVersionResponse#creation_date #creation_date} => Time
    #   * {Types::GetPolicyVersionResponse#last_modified_date #last_modified_date} => Time
    #   * {Types::GetPolicyVersionResponse#generation_id #generation_id} => String
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
    #   resp.creation_date #=> Time
    #   resp.last_modified_date #=> Time
    #   resp.generation_id #=> String
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

    # Gets information about the rule.
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
    #   resp.rule.error_action.dynamo_db.table_name #=> String
    #   resp.rule.error_action.dynamo_db.role_arn #=> String
    #   resp.rule.error_action.dynamo_db.operation #=> String
    #   resp.rule.error_action.dynamo_db.hash_key_field #=> String
    #   resp.rule.error_action.dynamo_db.hash_key_value #=> String
    #   resp.rule.error_action.dynamo_db.hash_key_type #=> String, one of "STRING", "NUMBER"
    #   resp.rule.error_action.dynamo_db.range_key_field #=> String
    #   resp.rule.error_action.dynamo_db.range_key_value #=> String
    #   resp.rule.error_action.dynamo_db.range_key_type #=> String, one of "STRING", "NUMBER"
    #   resp.rule.error_action.dynamo_db.payload_field #=> String
    #   resp.rule.error_action.dynamo_d_bv_2.role_arn #=> String
    #   resp.rule.error_action.dynamo_d_bv_2.put_item.table_name #=> String
    #   resp.rule.error_action.lambda.function_arn #=> String
    #   resp.rule.error_action.sns.target_arn #=> String
    #   resp.rule.error_action.sns.role_arn #=> String
    #   resp.rule.error_action.sns.message_format #=> String, one of "RAW", "JSON"
    #   resp.rule.error_action.sqs.role_arn #=> String
    #   resp.rule.error_action.sqs.queue_url #=> String
    #   resp.rule.error_action.sqs.use_base_64 #=> Boolean
    #   resp.rule.error_action.kinesis.role_arn #=> String
    #   resp.rule.error_action.kinesis.stream_name #=> String
    #   resp.rule.error_action.kinesis.partition_key #=> String
    #   resp.rule.error_action.republish.role_arn #=> String
    #   resp.rule.error_action.republish.topic #=> String
    #   resp.rule.error_action.s3.role_arn #=> String
    #   resp.rule.error_action.s3.bucket_name #=> String
    #   resp.rule.error_action.s3.key #=> String
    #   resp.rule.error_action.s3.canned_acl #=> String, one of "private", "public-read", "public-read-write", "aws-exec-read", "authenticated-read", "bucket-owner-read", "bucket-owner-full-control", "log-delivery-write"
    #   resp.rule.error_action.firehose.role_arn #=> String
    #   resp.rule.error_action.firehose.delivery_stream_name #=> String
    #   resp.rule.error_action.firehose.separator #=> String
    #   resp.rule.error_action.cloudwatch_metric.role_arn #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_namespace #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_name #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_value #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_unit #=> String
    #   resp.rule.error_action.cloudwatch_metric.metric_timestamp #=> String
    #   resp.rule.error_action.cloudwatch_alarm.role_arn #=> String
    #   resp.rule.error_action.cloudwatch_alarm.alarm_name #=> String
    #   resp.rule.error_action.cloudwatch_alarm.state_reason #=> String
    #   resp.rule.error_action.cloudwatch_alarm.state_value #=> String
    #   resp.rule.error_action.elasticsearch.role_arn #=> String
    #   resp.rule.error_action.elasticsearch.endpoint #=> String
    #   resp.rule.error_action.elasticsearch.index #=> String
    #   resp.rule.error_action.elasticsearch.type #=> String
    #   resp.rule.error_action.elasticsearch.id #=> String
    #   resp.rule.error_action.salesforce.token #=> String
    #   resp.rule.error_action.salesforce.url #=> String
    #
    # @overload get_topic_rule(params = {})
    # @param [Hash] params ({})
    def get_topic_rule(params = {}, options = {})
      req = build_request(:get_topic_rule, params)
      req.send_request(options)
    end

    # Gets the fine grained logging options.
    #
    # @return [Types::GetV2LoggingOptionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetV2LoggingOptionsResponse#role_arn #role_arn} => String
    #   * {Types::GetV2LoggingOptionsResponse#default_log_level #default_log_level} => String
    #   * {Types::GetV2LoggingOptionsResponse#disable_all_logs #disable_all_logs} => Boolean
    #
    # @example Response structure
    #
    #   resp.role_arn #=> String
    #   resp.default_log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #   resp.disable_all_logs #=> Boolean
    #
    # @overload get_v2_logging_options(params = {})
    # @param [Hash] params ({})
    def get_v2_logging_options(params = {}, options = {})
      req = build_request(:get_v2_logging_options, params)
      req.send_request(options)
    end

    # Lists the policies attached to the specified thing group.
    #
    # @option params [required, String] :target
    #   The group for which the policies will be listed.
    #
    # @option params [Boolean] :recursive
    #   When true, recursively list attached policies.
    #
    # @option params [String] :marker
    #   The token to retrieve the next set of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to be returned per request.
    #
    # @return [Types::ListAttachedPoliciesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAttachedPoliciesResponse#policies #policies} => Array&lt;Types::Policy&gt;
    #   * {Types::ListAttachedPoliciesResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_policies({
    #     target: "PolicyTarget", # required
    #     recursive: false,
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.policies #=> Array
    #   resp.policies[0].policy_name #=> String
    #   resp.policies[0].policy_arn #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_attached_policies(params = {})
    # @param [Hash] params ({})
    def list_attached_policies(params = {}, options = {})
      req = build_request(:list_attached_policies, params)
      req.send_request(options)
    end

    # Lists the authorizers registered in your account.
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :marker
    #   A marker used to get the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Return the list of authorizers in ascending alphabetical order.
    #
    # @option params [String] :status
    #   The status of the list authorizers request.
    #
    # @return [Types::ListAuthorizersResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListAuthorizersResponse#authorizers #authorizers} => Array&lt;Types::AuthorizerSummary&gt;
    #   * {Types::ListAuthorizersResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_authorizers({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizers #=> Array
    #   resp.authorizers[0].authorizer_name #=> String
    #   resp.authorizers[0].authorizer_arn #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_authorizers(params = {})
    # @param [Hash] params ({})
    def list_authorizers(params = {}, options = {})
      req = build_request(:list_authorizers, params)
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

    # Lists the search indices.
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListIndicesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListIndicesResponse#index_names #index_names} => Array&lt;String&gt;
    #   * {Types::ListIndicesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_indices({
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.index_names #=> Array
    #   resp.index_names[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_indices(params = {})
    # @param [Hash] params ({})
    def list_indices(params = {}, options = {})
      req = build_request(:list_indices, params)
      req.send_request(options)
    end

    # Lists the job executions for a job.
    #
    # @option params [required, String] :job_id
    #   The unique identifier you assigned to this job when it was created.
    #
    # @option params [String] :status
    #   The status of the job.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListJobExecutionsForJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobExecutionsForJobResponse#execution_summaries #execution_summaries} => Array&lt;Types::JobExecutionSummaryForJob&gt;
    #   * {Types::ListJobExecutionsForJobResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_executions_for_job({
    #     job_id: "JobId", # required
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, REJECTED, REMOVED, CANCELED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_summaries #=> Array
    #   resp.execution_summaries[0].thing_arn #=> String
    #   resp.execution_summaries[0].job_execution_summary.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution_summaries[0].job_execution_summary.queued_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.started_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.last_updated_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.execution_number #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_job_executions_for_job(params = {})
    # @param [Hash] params ({})
    def list_job_executions_for_job(params = {}, options = {})
      req = build_request(:list_job_executions_for_job, params)
      req.send_request(options)
    end

    # Lists the job executions for the specified thing.
    #
    # @option params [required, String] :thing_name
    #   The thing name.
    #
    # @option params [String] :status
    #   An optional filter that lets you search for jobs that have the
    #   specified status.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned per request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @return [Types::ListJobExecutionsForThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobExecutionsForThingResponse#execution_summaries #execution_summaries} => Array&lt;Types::JobExecutionSummaryForThing&gt;
    #   * {Types::ListJobExecutionsForThingResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_job_executions_for_thing({
    #     thing_name: "ThingName", # required
    #     status: "QUEUED", # accepts QUEUED, IN_PROGRESS, SUCCEEDED, FAILED, REJECTED, REMOVED, CANCELED
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.execution_summaries #=> Array
    #   resp.execution_summaries[0].job_id #=> String
    #   resp.execution_summaries[0].job_execution_summary.status #=> String, one of "QUEUED", "IN_PROGRESS", "SUCCEEDED", "FAILED", "REJECTED", "REMOVED", "CANCELED"
    #   resp.execution_summaries[0].job_execution_summary.queued_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.started_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.last_updated_at #=> Time
    #   resp.execution_summaries[0].job_execution_summary.execution_number #=> Integer
    #   resp.next_token #=> String
    #
    # @overload list_job_executions_for_thing(params = {})
    # @param [Hash] params ({})
    def list_job_executions_for_thing(params = {}, options = {})
      req = build_request(:list_job_executions_for_thing, params)
      req.send_request(options)
    end

    # Lists jobs.
    #
    # @option params [String] :status
    #   An optional filter that lets you search for jobs that have the
    #   specified status.
    #
    # @option params [String] :target_selection
    #   Specifies whether the job will continue to run (CONTINUOUS), or will
    #   be complete after all those things specified as targets have completed
    #   the job (SNAPSHOT). If continuous, the job may also be run on a thing
    #   when a change is detected in a target. For example, a job will run on
    #   a thing when the thing is added to a target group, even after the job
    #   was completed by all things originally in the group.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per request.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @option params [String] :thing_group_name
    #   A filter that limits the returned jobs to those for the specified
    #   group.
    #
    # @option params [String] :thing_group_id
    #   A filter that limits the returned jobs to those for the specified
    #   group.
    #
    # @return [Types::ListJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsResponse#jobs #jobs} => Array&lt;Types::JobSummary&gt;
    #   * {Types::ListJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs({
    #     status: "IN_PROGRESS", # accepts IN_PROGRESS, CANCELED, COMPLETED
    #     target_selection: "CONTINUOUS", # accepts CONTINUOUS, SNAPSHOT
    #     max_results: 1,
    #     next_token: "NextToken",
    #     thing_group_name: "ThingGroupName",
    #     thing_group_id: "ThingGroupId",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_arn #=> String
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].thing_group_id #=> String
    #   resp.jobs[0].target_selection #=> String, one of "CONTINUOUS", "SNAPSHOT"
    #   resp.jobs[0].status #=> String, one of "IN_PROGRESS", "CANCELED", "COMPLETED"
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].last_updated_at #=> Time
    #   resp.jobs[0].completed_at #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_jobs(params = {})
    # @param [Hash] params ({})
    def list_jobs(params = {}, options = {})
      req = build_request(:list_jobs, params)
      req.send_request(options)
    end

    # Lists OTA updates.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :next_token
    #   A token used to retreive the next set of results.
    #
    # @option params [String] :ota_update_status
    #   The OTA update job status.
    #
    # @return [Types::ListOTAUpdatesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListOTAUpdatesResponse#ota_updates #ota_updates} => Array&lt;Types::OTAUpdateSummary&gt;
    #   * {Types::ListOTAUpdatesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ota_updates({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     ota_update_status: "CREATE_PENDING", # accepts CREATE_PENDING, CREATE_IN_PROGRESS, CREATE_COMPLETE, CREATE_FAILED
    #   })
    #
    # @example Response structure
    #
    #   resp.ota_updates #=> Array
    #   resp.ota_updates[0].ota_update_id #=> String
    #   resp.ota_updates[0].ota_update_arn #=> String
    #   resp.ota_updates[0].creation_date #=> Time
    #   resp.next_token #=> String
    #
    # @overload list_ota_updates(params = {})
    # @param [Hash] params ({})
    def list_ota_updates(params = {}, options = {})
      req = build_request(:list_ota_updates, params)
      req.send_request(options)
    end

    # Lists certificates that are being transferred but not yet accepted.
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
    # **Note:** This API is deprecated. Please use ListTargetsForPolicy
    # instead.
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
    # **Note:** This API is deprecated. Please use ListAttachedPolicies
    # instead.
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
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
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

    # Lists the role aliases registered in your account.
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :marker
    #   A marker used to get the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Return the list of role aliases in ascending alphabetical order.
    #
    # @return [Types::ListRoleAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListRoleAliasesResponse#role_aliases #role_aliases} => Array&lt;String&gt;
    #   * {Types::ListRoleAliasesResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_role_aliases({
    #     page_size: 1,
    #     marker: "Marker",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.role_aliases #=> Array
    #   resp.role_aliases[0] #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_role_aliases(params = {})
    # @param [Hash] params ({})
    def list_role_aliases(params = {}, options = {})
      req = build_request(:list_role_aliases, params)
      req.send_request(options)
    end

    # Lists all of the streams in your AWS account.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at a time.
    #
    # @option params [String] :next_token
    #   A token used to get the next set of results.
    #
    # @option params [Boolean] :ascending_order
    #   Set to true to return the list of streams in ascending order.
    #
    # @return [Types::ListStreamsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListStreamsResponse#streams #streams} => Array&lt;Types::StreamSummary&gt;
    #   * {Types::ListStreamsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_streams({
    #     max_results: 1,
    #     next_token: "NextToken",
    #     ascending_order: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.streams #=> Array
    #   resp.streams[0].stream_id #=> String
    #   resp.streams[0].stream_arn #=> String
    #   resp.streams[0].stream_version #=> Integer
    #   resp.streams[0].description #=> String
    #   resp.next_token #=> String
    #
    # @overload list_streams(params = {})
    # @param [Hash] params ({})
    def list_streams(params = {}, options = {})
      req = build_request(:list_streams, params)
      req.send_request(options)
    end

    # List targets for the specified policy.
    #
    # @option params [required, String] :policy_name
    #   The policy name.
    #
    # @option params [String] :marker
    #   A marker used to get the next set of results.
    #
    # @option params [Integer] :page_size
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListTargetsForPolicyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTargetsForPolicyResponse#targets #targets} => Array&lt;String&gt;
    #   * {Types::ListTargetsForPolicyResponse#next_marker #next_marker} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_for_policy({
    #     policy_name: "PolicyName", # required
    #     marker: "Marker",
    #     page_size: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.targets #=> Array
    #   resp.targets[0] #=> String
    #   resp.next_marker #=> String
    #
    # @overload list_targets_for_policy(params = {})
    # @param [Hash] params ({})
    def list_targets_for_policy(params = {}, options = {})
      req = build_request(:list_targets_for_policy, params)
      req.send_request(options)
    end

    # List the thing groups in your account.
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :parent_group
    #   A filter that limits the results to those with the specified parent
    #   group.
    #
    # @option params [String] :name_prefix_filter
    #   A filter that limits the results to those with the specified name
    #   prefix.
    #
    # @option params [Boolean] :recursive
    #   If true, return child groups as well.
    #
    # @return [Types::ListThingGroupsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingGroupsResponse#thing_groups #thing_groups} => Array&lt;Types::GroupNameAndArn&gt;
    #   * {Types::ListThingGroupsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_groups({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     parent_group: "ThingGroupName",
    #     name_prefix_filter: "ThingGroupName",
    #     recursive: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_groups #=> Array
    #   resp.thing_groups[0].group_name #=> String
    #   resp.thing_groups[0].group_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_thing_groups(params = {})
    # @param [Hash] params ({})
    def list_thing_groups(params = {}, options = {})
      req = build_request(:list_thing_groups, params)
      req.send_request(options)
    end

    # List the thing groups to which the specified thing belongs.
    #
    # @option params [required, String] :thing_name
    #   The thing name.
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListThingGroupsForThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingGroupsForThingResponse#thing_groups #thing_groups} => Array&lt;Types::GroupNameAndArn&gt;
    #   * {Types::ListThingGroupsForThingResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_groups_for_thing({
    #     thing_name: "ThingName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.thing_groups #=> Array
    #   resp.thing_groups[0].group_name #=> String
    #   resp.thing_groups[0].group_arn #=> String
    #   resp.next_token #=> String
    #
    # @overload list_thing_groups_for_thing(params = {})
    # @param [Hash] params ({})
    def list_thing_groups_for_thing(params = {}, options = {})
      req = build_request(:list_thing_groups_for_thing, params)
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

    # Information about the thing registration tasks.
    #
    # @option params [required, String] :task_id
    #   The id of the task.
    #
    # @option params [required, String] :report_type
    #   The type of task report.
    #
    # @option params [String] :next_token
    #   The token to retrieve the next set of results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return per request.
    #
    # @return [Types::ListThingRegistrationTaskReportsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingRegistrationTaskReportsResponse#resource_links #resource_links} => Array&lt;String&gt;
    #   * {Types::ListThingRegistrationTaskReportsResponse#report_type #report_type} => String
    #   * {Types::ListThingRegistrationTaskReportsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_registration_task_reports({
    #     task_id: "TaskId", # required
    #     report_type: "ERRORS", # required, accepts ERRORS, RESULTS
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.resource_links #=> Array
    #   resp.resource_links[0] #=> String
    #   resp.report_type #=> String, one of "ERRORS", "RESULTS"
    #   resp.next_token #=> String
    #
    # @overload list_thing_registration_task_reports(params = {})
    # @param [Hash] params ({})
    def list_thing_registration_task_reports(params = {}, options = {})
      req = build_request(:list_thing_registration_task_reports, params)
      req.send_request(options)
    end

    # List bulk thing provisioning tasks.
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :status
    #   The status of the bulk thing provisioning task.
    #
    # @return [Types::ListThingRegistrationTasksResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingRegistrationTasksResponse#task_ids #task_ids} => Array&lt;String&gt;
    #   * {Types::ListThingRegistrationTasksResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_thing_registration_tasks({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     status: "InProgress", # accepts InProgress, Completed, Failed, Cancelled, Cancelling
    #   })
    #
    # @example Response structure
    #
    #   resp.task_ids #=> Array
    #   resp.task_ids[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_thing_registration_tasks(params = {})
    # @param [Hash] params ({})
    def list_thing_registration_tasks(params = {}, options = {})
      req = build_request(:list_thing_registration_tasks, params)
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
    #   resp.thing_types[0].thing_type_arn #=> String
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
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
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
    #   resp.things[0].thing_arn #=> String
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

    # Lists the things in the specified group.
    #
    # @option params [required, String] :thing_group_name
    #   The thing group name.
    #
    # @option params [Boolean] :recursive
    #   When true, list things in this thing group and in all child groups as
    #   well.
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListThingsInThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListThingsInThingGroupResponse#things #things} => Array&lt;String&gt;
    #   * {Types::ListThingsInThingGroupResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_things_in_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     recursive: false,
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.things #=> Array
    #   resp.things[0] #=> String
    #   resp.next_token #=> String
    #
    # @overload list_things_in_thing_group(params = {})
    # @param [Hash] params ({})
    def list_things_in_thing_group(params = {}, options = {})
      req = build_request(:list_things_in_thing_group, params)
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

    # Lists logging levels.
    #
    # @option params [String] :target_type
    #   The type of resource for which you are configuring logging. Must be
    #   `THING_Group`.
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @return [Types::ListV2LoggingLevelsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListV2LoggingLevelsResponse#log_target_configurations #log_target_configurations} => Array&lt;Types::LogTargetConfiguration&gt;
    #   * {Types::ListV2LoggingLevelsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_v2_logging_levels({
    #     target_type: "DEFAULT", # accepts DEFAULT, THING_GROUP
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.log_target_configurations #=> Array
    #   resp.log_target_configurations[0].log_target.target_type #=> String, one of "DEFAULT", "THING_GROUP"
    #   resp.log_target_configurations[0].log_target.target_name #=> String
    #   resp.log_target_configurations[0].log_level #=> String, one of "DEBUG", "INFO", "ERROR", "WARN", "DISABLED"
    #   resp.next_token #=> String
    #
    # @overload list_v2_logging_levels(params = {})
    # @param [Hash] params ({})
    def list_v2_logging_levels(params = {}, options = {})
      req = build_request(:list_v2_logging_levels, params)
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
    # @option params [Types::RegistrationConfig] :registration_config
    #   Information about the registration configuration.
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
    #     registration_config: {
    #       template_body: "TemplateBody",
    #       role_arn: "RoleArn",
    #     },
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

    # Provisions a thing.
    #
    # @option params [required, String] :template_body
    #   The provisioning template.
    #
    # @option params [Hash<String,String>] :parameters
    #   The parameters for provisioning a thing.
    #
    # @return [Types::RegisterThingResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::RegisterThingResponse#certificate_pem #certificate_pem} => String
    #   * {Types::RegisterThingResponse#resource_arns #resource_arns} => Hash&lt;String,String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_thing({
    #     template_body: "TemplateBody", # required
    #     parameters: {
    #       "Parameter" => "Value",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.certificate_pem #=> String
    #   resp.resource_arns #=> Hash
    #   resp.resource_arns["ResourceLogicalId"] #=> String
    #
    # @overload register_thing(params = {})
    # @param [Hash] params ({})
    def register_thing(params = {}, options = {})
      req = build_request(:register_thing, params)
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

    # Remove the specified thing from the specified group.
    #
    # @option params [String] :thing_group_name
    #   The group name.
    #
    # @option params [String] :thing_group_arn
    #   The group ARN.
    #
    # @option params [String] :thing_name
    #   The name of the thing to remove from the group.
    #
    # @option params [String] :thing_arn
    #   The ARN of the thing to remove from the group.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_thing_from_thing_group({
    #     thing_group_name: "ThingGroupName",
    #     thing_group_arn: "ThingGroupArn",
    #     thing_name: "ThingName",
    #     thing_arn: "ThingArn",
    #   })
    #
    # @overload remove_thing_from_thing_group(params = {})
    # @param [Hash] params ({})
    def remove_thing_from_thing_group(params = {}, options = {})
      req = build_request(:remove_thing_from_thing_group, params)
      req.send_request(options)
    end

    # Replaces the rule. You must specify all parameters for the new rule.
    # Creating rules is an administrator-level action. Any user who has
    # permission to create rules will be able to access data processed by
    # the rule.
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
    #       error_action: {
    #         dynamo_db: {
    #           table_name: "TableName", # required
    #           role_arn: "AwsArn", # required
    #           operation: "DynamoOperation",
    #           hash_key_field: "HashKeyField", # required
    #           hash_key_value: "HashKeyValue", # required
    #           hash_key_type: "STRING", # accepts STRING, NUMBER
    #           range_key_field: "RangeKeyField",
    #           range_key_value: "RangeKeyValue",
    #           range_key_type: "STRING", # accepts STRING, NUMBER
    #           payload_field: "PayloadField",
    #         },
    #         dynamo_d_bv_2: {
    #           role_arn: "AwsArn",
    #           put_item: {
    #             table_name: "TableName", # required
    #           },
    #         },
    #         lambda: {
    #           function_arn: "FunctionArn", # required
    #         },
    #         sns: {
    #           target_arn: "AwsArn", # required
    #           role_arn: "AwsArn", # required
    #           message_format: "RAW", # accepts RAW, JSON
    #         },
    #         sqs: {
    #           role_arn: "AwsArn", # required
    #           queue_url: "QueueUrl", # required
    #           use_base_64: false,
    #         },
    #         kinesis: {
    #           role_arn: "AwsArn", # required
    #           stream_name: "StreamName", # required
    #           partition_key: "PartitionKey",
    #         },
    #         republish: {
    #           role_arn: "AwsArn", # required
    #           topic: "TopicPattern", # required
    #         },
    #         s3: {
    #           role_arn: "AwsArn", # required
    #           bucket_name: "BucketName", # required
    #           key: "Key", # required
    #           canned_acl: "private", # accepts private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, bucket-owner-full-control, log-delivery-write
    #         },
    #         firehose: {
    #           role_arn: "AwsArn", # required
    #           delivery_stream_name: "DeliveryStreamName", # required
    #           separator: "FirehoseSeparator",
    #         },
    #         cloudwatch_metric: {
    #           role_arn: "AwsArn", # required
    #           metric_namespace: "MetricNamespace", # required
    #           metric_name: "MetricName", # required
    #           metric_value: "MetricValue", # required
    #           metric_unit: "MetricUnit", # required
    #           metric_timestamp: "MetricTimestamp",
    #         },
    #         cloudwatch_alarm: {
    #           role_arn: "AwsArn", # required
    #           alarm_name: "AlarmName", # required
    #           state_reason: "StateReason", # required
    #           state_value: "StateValue", # required
    #         },
    #         elasticsearch: {
    #           role_arn: "AwsArn", # required
    #           endpoint: "ElasticsearchEndpoint", # required
    #           index: "ElasticsearchIndex", # required
    #           type: "ElasticsearchType", # required
    #           id: "ElasticsearchId", # required
    #         },
    #         salesforce: {
    #           token: "SalesforceToken", # required
    #           url: "SalesforceEndpoint", # required
    #         },
    #       },
    #     },
    #   })
    #
    # @overload replace_topic_rule(params = {})
    # @param [Hash] params ({})
    def replace_topic_rule(params = {}, options = {})
      req = build_request(:replace_topic_rule, params)
      req.send_request(options)
    end

    # The query search index.
    #
    # @option params [String] :index_name
    #   The search index name.
    #
    # @option params [required, String] :query_string
    #   The search query string.
    #
    # @option params [String] :next_token
    #   The token used to get the next set of results, or **null** if there
    #   are no additional results.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to return at one time.
    #
    # @option params [String] :query_version
    #   The query version.
    #
    # @return [Types::SearchIndexResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SearchIndexResponse#next_token #next_token} => String
    #   * {Types::SearchIndexResponse#things #things} => Array&lt;Types::ThingDocument&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_index({
    #     index_name: "IndexName",
    #     query_string: "QueryString", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     query_version: "QueryVersion",
    #   })
    #
    # @example Response structure
    #
    #   resp.next_token #=> String
    #   resp.things #=> Array
    #   resp.things[0].thing_name #=> String
    #   resp.things[0].thing_id #=> String
    #   resp.things[0].thing_type_name #=> String
    #   resp.things[0].thing_group_names #=> Array
    #   resp.things[0].thing_group_names[0] #=> String
    #   resp.things[0].attributes #=> Hash
    #   resp.things[0].attributes["AttributeName"] #=> <Hash,Array,String,Numeric,Boolean,IO,Set,nil>
    #   resp.things[0].shadow #=> String
    #
    # @overload search_index(params = {})
    # @param [Hash] params ({})
    def search_index(params = {}, options = {})
      req = build_request(:search_index, params)
      req.send_request(options)
    end

    # Sets the default authorizer. This will be used if a websocket
    # connection is made without specifying an authorizer.
    #
    # @option params [required, String] :authorizer_name
    #   The authorizer name.
    #
    # @return [Types::SetDefaultAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::SetDefaultAuthorizerResponse#authorizer_name #authorizer_name} => String
    #   * {Types::SetDefaultAuthorizerResponse#authorizer_arn #authorizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_name #=> String
    #   resp.authorizer_arn #=> String
    #
    # @overload set_default_authorizer(params = {})
    # @param [Hash] params ({})
    def set_default_authorizer(params = {}, options = {})
      req = build_request(:set_default_authorizer, params)
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

    # Sets the logging level.
    #
    # @option params [required, Types::LogTarget] :log_target
    #   The log target.
    #
    # @option params [required, String] :log_level
    #   The log level.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_v2_logging_level({
    #     log_target: { # required
    #       target_type: "DEFAULT", # required, accepts DEFAULT, THING_GROUP
    #       target_name: "LogTargetName",
    #     },
    #     log_level: "DEBUG", # required, accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #   })
    #
    # @overload set_v2_logging_level(params = {})
    # @param [Hash] params ({})
    def set_v2_logging_level(params = {}, options = {})
      req = build_request(:set_v2_logging_level, params)
      req.send_request(options)
    end

    # Sets the logging options for the V2 logging service.
    #
    # @option params [String] :role_arn
    #   The role ARN that allows IoT to write to Cloudwatch logs.
    #
    # @option params [String] :default_log_level
    #   The default logging level.
    #
    # @option params [Boolean] :disable_all_logs
    #   Set to true to disable all logs, otherwise set to false.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_v2_logging_options({
    #     role_arn: "AwsArn",
    #     default_log_level: "DEBUG", # accepts DEBUG, INFO, ERROR, WARN, DISABLED
    #     disable_all_logs: false,
    #   })
    #
    # @overload set_v2_logging_options(params = {})
    # @param [Hash] params ({})
    def set_v2_logging_options(params = {}, options = {})
      req = build_request(:set_v2_logging_options, params)
      req.send_request(options)
    end

    # Creates a bulk thing provisioning task.
    #
    # @option params [required, String] :template_body
    #   The provisioning template.
    #
    # @option params [required, String] :input_file_bucket
    #   The S3 bucket that contains the input file.
    #
    # @option params [required, String] :input_file_key
    #   The name of input file within the S3 bucket. This file contains a
    #   newline delimited JSON file. Each line contains the parameter values
    #   to provision one device (thing).
    #
    # @option params [required, String] :role_arn
    #   The IAM role ARN that grants permission the input file.
    #
    # @return [Types::StartThingRegistrationTaskResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartThingRegistrationTaskResponse#task_id #task_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_thing_registration_task({
    #     template_body: "TemplateBody", # required
    #     input_file_bucket: "RegistryS3BucketName", # required
    #     input_file_key: "RegistryS3KeyName", # required
    #     role_arn: "RoleArn", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.task_id #=> String
    #
    # @overload start_thing_registration_task(params = {})
    # @param [Hash] params ({})
    def start_thing_registration_task(params = {}, options = {})
      req = build_request(:start_thing_registration_task, params)
      req.send_request(options)
    end

    # Cancels a bulk thing provisioning task.
    #
    # @option params [required, String] :task_id
    #   The bulk thing provisioning task ID.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_thing_registration_task({
    #     task_id: "TaskId", # required
    #   })
    #
    # @overload stop_thing_registration_task(params = {})
    # @param [Hash] params ({})
    def stop_thing_registration_task(params = {}, options = {})
      req = build_request(:stop_thing_registration_task, params)
      req.send_request(options)
    end

    # Test custom authorization.
    #
    # @option params [String] :principal
    #   The principal.
    #
    # @option params [String] :cognito_identity_pool_id
    #   The Cognito identity pool ID.
    #
    # @option params [required, Array<Types::AuthInfo>] :auth_infos
    #   A list of authorization info objects. Simulating authorization will
    #   create a response for each `authInfo` object in the list.
    #
    # @option params [String] :client_id
    #   The MQTT client ID.
    #
    # @option params [Array<String>] :policy_names_to_add
    #   When testing custom authorization, the policies specified here are
    #   treated as if they are attached to the principal being authorized.
    #
    # @option params [Array<String>] :policy_names_to_skip
    #   When testing custom authorization, the policies specified here are
    #   treated as if they are not attached to the principal being authorized.
    #
    # @return [Types::TestAuthorizationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestAuthorizationResponse#auth_results #auth_results} => Array&lt;Types::AuthResult&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_authorization({
    #     principal: "Principal",
    #     cognito_identity_pool_id: "CognitoIdentityPoolId",
    #     auth_infos: [ # required
    #       {
    #         action_type: "PUBLISH", # accepts PUBLISH, SUBSCRIBE, RECEIVE, CONNECT
    #         resources: ["Resource"],
    #       },
    #     ],
    #     client_id: "ClientId",
    #     policy_names_to_add: ["PolicyName"],
    #     policy_names_to_skip: ["PolicyName"],
    #   })
    #
    # @example Response structure
    #
    #   resp.auth_results #=> Array
    #   resp.auth_results[0].auth_info.action_type #=> String, one of "PUBLISH", "SUBSCRIBE", "RECEIVE", "CONNECT"
    #   resp.auth_results[0].auth_info.resources #=> Array
    #   resp.auth_results[0].auth_info.resources[0] #=> String
    #   resp.auth_results[0].allowed.policies #=> Array
    #   resp.auth_results[0].allowed.policies[0].policy_name #=> String
    #   resp.auth_results[0].allowed.policies[0].policy_arn #=> String
    #   resp.auth_results[0].denied.implicit_deny.policies #=> Array
    #   resp.auth_results[0].denied.implicit_deny.policies[0].policy_name #=> String
    #   resp.auth_results[0].denied.implicit_deny.policies[0].policy_arn #=> String
    #   resp.auth_results[0].denied.explicit_deny.policies #=> Array
    #   resp.auth_results[0].denied.explicit_deny.policies[0].policy_name #=> String
    #   resp.auth_results[0].denied.explicit_deny.policies[0].policy_arn #=> String
    #   resp.auth_results[0].auth_decision #=> String, one of "ALLOWED", "EXPLICIT_DENY", "IMPLICIT_DENY"
    #   resp.auth_results[0].missing_context_values #=> Array
    #   resp.auth_results[0].missing_context_values[0] #=> String
    #
    # @overload test_authorization(params = {})
    # @param [Hash] params ({})
    def test_authorization(params = {}, options = {})
      req = build_request(:test_authorization, params)
      req.send_request(options)
    end

    # Invoke the specified custom authorizer for testing purposes.
    #
    # @option params [required, String] :authorizer_name
    #   The custom authorizer name.
    #
    # @option params [required, String] :token
    #   The token returned by your custom authentication service.
    #
    # @option params [required, String] :token_signature
    #   The signature made with the token and your custom authentication
    #   service's private key.
    #
    # @return [Types::TestInvokeAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestInvokeAuthorizerResponse#is_authenticated #is_authenticated} => Boolean
    #   * {Types::TestInvokeAuthorizerResponse#principal_id #principal_id} => String
    #   * {Types::TestInvokeAuthorizerResponse#policy_documents #policy_documents} => Array&lt;String&gt;
    #   * {Types::TestInvokeAuthorizerResponse#refresh_after_in_seconds #refresh_after_in_seconds} => Integer
    #   * {Types::TestInvokeAuthorizerResponse#disconnect_after_in_seconds #disconnect_after_in_seconds} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_invoke_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #     token: "Token", # required
    #     token_signature: "TokenSignature", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.is_authenticated #=> Boolean
    #   resp.principal_id #=> String
    #   resp.policy_documents #=> Array
    #   resp.policy_documents[0] #=> String
    #   resp.refresh_after_in_seconds #=> Integer
    #   resp.disconnect_after_in_seconds #=> Integer
    #
    # @overload test_invoke_authorizer(params = {})
    # @param [Hash] params ({})
    def test_invoke_authorizer(params = {}, options = {})
      req = build_request(:test_invoke_authorizer, params)
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

    # Updates an authorizer.
    #
    # @option params [required, String] :authorizer_name
    #   The authorizer name.
    #
    # @option params [String] :authorizer_function_arn
    #   The ARN of the authorizer's Lambda function.
    #
    # @option params [String] :token_key_name
    #   The key used to extract the token from the HTTP headers.
    #
    # @option params [Hash<String,String>] :token_signing_public_keys
    #   The public keys used to verify the token signature.
    #
    # @option params [String] :status
    #   The status of the update authorizer request.
    #
    # @return [Types::UpdateAuthorizerResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateAuthorizerResponse#authorizer_name #authorizer_name} => String
    #   * {Types::UpdateAuthorizerResponse#authorizer_arn #authorizer_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_authorizer({
    #     authorizer_name: "AuthorizerName", # required
    #     authorizer_function_arn: "AuthorizerFunctionArn",
    #     token_key_name: "TokenKeyName",
    #     token_signing_public_keys: {
    #       "KeyName" => "KeyValue",
    #     },
    #     status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #   })
    #
    # @example Response structure
    #
    #   resp.authorizer_name #=> String
    #   resp.authorizer_arn #=> String
    #
    # @overload update_authorizer(params = {})
    # @param [Hash] params ({})
    def update_authorizer(params = {}, options = {})
      req = build_request(:update_authorizer, params)
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
    # @option params [Types::RegistrationConfig] :registration_config
    #   Information about the registration configuration.
    #
    # @option params [Boolean] :remove_auto_registration
    #   If true, remove auto registration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ca_certificate({
    #     certificate_id: "CertificateId", # required
    #     new_status: "ACTIVE", # accepts ACTIVE, INACTIVE
    #     new_auto_registration_status: "ENABLE", # accepts ENABLE, DISABLE
    #     registration_config: {
    #       template_body: "TemplateBody",
    #       role_arn: "RoleArn",
    #     },
    #     remove_auto_registration: false,
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

    # Updates the event configurations.
    #
    # @option params [Hash<String,Types::Configuration>] :event_configurations
    #   The new event configuration values.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_configurations({
    #     event_configurations: {
    #       "THING" => {
    #         enabled: false,
    #       },
    #     },
    #   })
    #
    # @overload update_event_configurations(params = {})
    # @param [Hash] params ({})
    def update_event_configurations(params = {}, options = {})
      req = build_request(:update_event_configurations, params)
      req.send_request(options)
    end

    # Updates the search configuration.
    #
    # @option params [Types::ThingIndexingConfiguration] :thing_indexing_configuration
    #   Thing indexing configuration.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_indexing_configuration({
    #     thing_indexing_configuration: {
    #       thing_indexing_mode: "OFF", # accepts OFF, REGISTRY, REGISTRY_AND_SHADOW
    #     },
    #   })
    #
    # @overload update_indexing_configuration(params = {})
    # @param [Hash] params ({})
    def update_indexing_configuration(params = {}, options = {})
      req = build_request(:update_indexing_configuration, params)
      req.send_request(options)
    end

    # Updates a role alias.
    #
    # @option params [required, String] :role_alias
    #   The role alias to update.
    #
    # @option params [String] :role_arn
    #   The role ARN.
    #
    # @option params [Integer] :credential_duration_seconds
    #   The number of seconds the credential will be valid.
    #
    # @return [Types::UpdateRoleAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateRoleAliasResponse#role_alias #role_alias} => String
    #   * {Types::UpdateRoleAliasResponse#role_alias_arn #role_alias_arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_role_alias({
    #     role_alias: "RoleAlias", # required
    #     role_arn: "RoleArn",
    #     credential_duration_seconds: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.role_alias #=> String
    #   resp.role_alias_arn #=> String
    #
    # @overload update_role_alias(params = {})
    # @param [Hash] params ({})
    def update_role_alias(params = {}, options = {})
      req = build_request(:update_role_alias, params)
      req.send_request(options)
    end

    # Updates an existing stream. The stream version will be incremented by
    # one.
    #
    # @option params [required, String] :stream_id
    #   The stream ID.
    #
    # @option params [String] :description
    #   The description of the stream.
    #
    # @option params [Array<Types::StreamFile>] :files
    #   The files associated with the stream.
    #
    # @option params [String] :role_arn
    #   An IAM role that allows the IoT service principal assumes to access
    #   your S3 files.
    #
    # @return [Types::UpdateStreamResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateStreamResponse#stream_id #stream_id} => String
    #   * {Types::UpdateStreamResponse#stream_arn #stream_arn} => String
    #   * {Types::UpdateStreamResponse#description #description} => String
    #   * {Types::UpdateStreamResponse#stream_version #stream_version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stream({
    #     stream_id: "StreamId", # required
    #     description: "StreamDescription",
    #     files: [
    #       {
    #         file_id: 1,
    #         s3_location: {
    #           bucket: "S3Bucket", # required
    #           key: "S3Key", # required
    #           version: "S3Version",
    #         },
    #       },
    #     ],
    #     role_arn: "RoleArn",
    #   })
    #
    # @example Response structure
    #
    #   resp.stream_id #=> String
    #   resp.stream_arn #=> String
    #   resp.description #=> String
    #   resp.stream_version #=> Integer
    #
    # @overload update_stream(params = {})
    # @param [Hash] params ({})
    def update_stream(params = {}, options = {})
      req = build_request(:update_stream, params)
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
    #   Remove a thing type association. If **true**, the association is
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

    # Update a thing group.
    #
    # @option params [required, String] :thing_group_name
    #   The thing group to update.
    #
    # @option params [required, Types::ThingGroupProperties] :thing_group_properties
    #   The thing group properties.
    #
    # @option params [Integer] :expected_version
    #   The expected version of the thing group. If this does not match the
    #   version of the thing group being updated, the update will fail.
    #
    # @return [Types::UpdateThingGroupResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateThingGroupResponse#version #version} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_group({
    #     thing_group_name: "ThingGroupName", # required
    #     thing_group_properties: { # required
    #       thing_group_description: "ThingGroupDescription",
    #       attribute_payload: {
    #         attributes: {
    #           "AttributeName" => "AttributeValue",
    #         },
    #         merge: false,
    #       },
    #     },
    #     expected_version: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.version #=> Integer
    #
    # @overload update_thing_group(params = {})
    # @param [Hash] params ({})
    def update_thing_group(params = {}, options = {})
      req = build_request(:update_thing_group, params)
      req.send_request(options)
    end

    # Updates the groups to which the thing belongs.
    #
    # @option params [String] :thing_name
    #   The thing whose group memberships will be updated.
    #
    # @option params [Array<String>] :thing_groups_to_add
    #   The groups to which the thing will be added.
    #
    # @option params [Array<String>] :thing_groups_to_remove
    #   The groups from which the thing will be removed.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_thing_groups_for_thing({
    #     thing_name: "ThingName",
    #     thing_groups_to_add: ["ThingGroupName"],
    #     thing_groups_to_remove: ["ThingGroupName"],
    #   })
    #
    # @overload update_thing_groups_for_thing(params = {})
    # @param [Hash] params ({})
    def update_thing_groups_for_thing(params = {}, options = {})
      req = build_request(:update_thing_groups_for_thing, params)
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
