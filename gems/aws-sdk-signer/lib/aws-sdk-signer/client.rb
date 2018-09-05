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

Aws::Plugins::GlobalConfiguration.add_identifier(:signer)

module Aws::Signer
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :signer

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
    # @option options [] :client_side_monitoring_publisher (#<Aws::ClientSideMonitoring::Publisher:0x00007f20e3c7b9f0 @agent_port=nil, @mutex=#<Thread::Mutex:0x00007f20e3c7b9a0>>)
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

    # Changes the state of an `ACTIVE` signing profile to `CANCELED`. A
    # canceled profile is still viewable with the `ListSigningProfiles`
    # operation, but it cannot perform new signing jobs, and is deleted two
    # years after cancelation.
    #
    # @option params [required, String] :profile_name
    #   The name of the signing profile to be canceled.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_signing_profile({
    #     profile_name: "ProfileName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/CancelSigningProfile AWS API Documentation
    #
    # @overload cancel_signing_profile(params = {})
    # @param [Hash] params ({})
    def cancel_signing_profile(params = {}, options = {})
      req = build_request(:cancel_signing_profile, params)
      req.send_request(options)
    end

    # Returns information about a specific code signing job. You specify the
    # job by using the `jobId` value that is returned by the StartSigningJob
    # operation.
    #
    # @option params [required, String] :job_id
    #   The ID of the signing job on input.
    #
    # @return [Types::DescribeSigningJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::DescribeSigningJobResponse#job_id #job_id} => String
    #   * {Types::DescribeSigningJobResponse#source #source} => Types::Source
    #   * {Types::DescribeSigningJobResponse#signing_material #signing_material} => Types::SigningMaterial
    #   * {Types::DescribeSigningJobResponse#platform_id #platform_id} => String
    #   * {Types::DescribeSigningJobResponse#profile_name #profile_name} => String
    #   * {Types::DescribeSigningJobResponse#overrides #overrides} => Types::SigningPlatformOverrides
    #   * {Types::DescribeSigningJobResponse#signing_parameters #signing_parameters} => Hash&lt;String,String&gt;
    #   * {Types::DescribeSigningJobResponse#created_at #created_at} => Time
    #   * {Types::DescribeSigningJobResponse#completed_at #completed_at} => Time
    #   * {Types::DescribeSigningJobResponse#requested_by #requested_by} => String
    #   * {Types::DescribeSigningJobResponse#status #status} => String
    #   * {Types::DescribeSigningJobResponse#status_reason #status_reason} => String
    #   * {Types::DescribeSigningJobResponse#signed_object #signed_object} => Types::SignedObject
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_signing_job({
    #     job_id: "JobId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #   resp.source.s3.bucket_name #=> String
    #   resp.source.s3.key #=> String
    #   resp.source.s3.version #=> String
    #   resp.signing_material.certificate_arn #=> String
    #   resp.platform_id #=> String
    #   resp.profile_name #=> String
    #   resp.overrides.signing_configuration.encryption_algorithm #=> String, one of "RSA", "ECDSA"
    #   resp.overrides.signing_configuration.hash_algorithm #=> String, one of "SHA1", "SHA256"
    #   resp.signing_parameters #=> Hash
    #   resp.signing_parameters["SigningParameterKey"] #=> String
    #   resp.created_at #=> Time
    #   resp.completed_at #=> Time
    #   resp.requested_by #=> String
    #   resp.status #=> String, one of "InProgress", "Failed", "Succeeded"
    #   resp.status_reason #=> String
    #   resp.signed_object.s3.bucket_name #=> String
    #   resp.signed_object.s3.key #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/DescribeSigningJob AWS API Documentation
    #
    # @overload describe_signing_job(params = {})
    # @param [Hash] params ({})
    def describe_signing_job(params = {}, options = {})
      req = build_request(:describe_signing_job, params)
      req.send_request(options)
    end

    # Returns information on a specific signing platform.
    #
    # @option params [required, String] :platform_id
    #   The ID of the target signing platform.
    #
    # @return [Types::GetSigningPlatformResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSigningPlatformResponse#platform_id #platform_id} => String
    #   * {Types::GetSigningPlatformResponse#display_name #display_name} => String
    #   * {Types::GetSigningPlatformResponse#partner #partner} => String
    #   * {Types::GetSigningPlatformResponse#target #target} => String
    #   * {Types::GetSigningPlatformResponse#category #category} => String
    #   * {Types::GetSigningPlatformResponse#signing_configuration #signing_configuration} => Types::SigningConfiguration
    #   * {Types::GetSigningPlatformResponse#signing_image_format #signing_image_format} => Types::SigningImageFormat
    #   * {Types::GetSigningPlatformResponse#max_size_in_mb #max_size_in_mb} => Integer
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_platform({
    #     platform_id: "PlatformId", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.platform_id #=> String
    #   resp.display_name #=> String
    #   resp.partner #=> String
    #   resp.target #=> String
    #   resp.category #=> String, one of "AWSIoT"
    #   resp.signing_configuration.encryption_algorithm_options.allowed_values #=> Array
    #   resp.signing_configuration.encryption_algorithm_options.allowed_values[0] #=> String, one of "RSA", "ECDSA"
    #   resp.signing_configuration.encryption_algorithm_options.default_value #=> String, one of "RSA", "ECDSA"
    #   resp.signing_configuration.hash_algorithm_options.allowed_values #=> Array
    #   resp.signing_configuration.hash_algorithm_options.allowed_values[0] #=> String, one of "SHA1", "SHA256"
    #   resp.signing_configuration.hash_algorithm_options.default_value #=> String, one of "SHA1", "SHA256"
    #   resp.signing_image_format.supported_formats #=> Array
    #   resp.signing_image_format.supported_formats[0] #=> String, one of "JSON"
    #   resp.signing_image_format.default_format #=> String, one of "JSON"
    #   resp.max_size_in_mb #=> Integer
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningPlatform AWS API Documentation
    #
    # @overload get_signing_platform(params = {})
    # @param [Hash] params ({})
    def get_signing_platform(params = {}, options = {})
      req = build_request(:get_signing_platform, params)
      req.send_request(options)
    end

    # Returns information on a specific signing profile.
    #
    # @option params [required, String] :profile_name
    #   The name of the target signing profile.
    #
    # @return [Types::GetSigningProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSigningProfileResponse#profile_name #profile_name} => String
    #   * {Types::GetSigningProfileResponse#signing_material #signing_material} => Types::SigningMaterial
    #   * {Types::GetSigningProfileResponse#platform_id #platform_id} => String
    #   * {Types::GetSigningProfileResponse#overrides #overrides} => Types::SigningPlatformOverrides
    #   * {Types::GetSigningProfileResponse#signing_parameters #signing_parameters} => Hash&lt;String,String&gt;
    #   * {Types::GetSigningProfileResponse#status #status} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_signing_profile({
    #     profile_name: "ProfileName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.profile_name #=> String
    #   resp.signing_material.certificate_arn #=> String
    #   resp.platform_id #=> String
    #   resp.overrides.signing_configuration.encryption_algorithm #=> String, one of "RSA", "ECDSA"
    #   resp.overrides.signing_configuration.hash_algorithm #=> String, one of "SHA1", "SHA256"
    #   resp.signing_parameters #=> Hash
    #   resp.signing_parameters["SigningParameterKey"] #=> String
    #   resp.status #=> String, one of "Active", "Canceled"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/GetSigningProfile AWS API Documentation
    #
    # @overload get_signing_profile(params = {})
    # @param [Hash] params ({})
    def get_signing_profile(params = {}, options = {})
      req = build_request(:get_signing_profile, params)
      req.send_request(options)
    end

    # Lists all your signing jobs. You can use the `maxResults` parameter to
    # limit the number of signing jobs that are returned in the response. If
    # additional jobs remain to be listed, AWS Signer returns a `nextToken`
    # value. Use this value in subsequent calls to `ListSigningJobs` to
    # fetch the remaining values. You can continue calling `ListSigningJobs`
    # with your `maxResults` parameter and with new values that AWS Signer
    # returns in the `nextToken` parameter until all of your signing jobs
    # have been returned.
    #
    # @option params [String] :status
    #   A status value with which to filter your results.
    #
    # @option params [String] :platform_id
    #   The ID of microcontroller platform that you specified for the
    #   distribution of your code image.
    #
    # @option params [String] :requested_by
    #   The IAM principal that requested the signing job.
    #
    # @option params [Integer] :max_results
    #   Specifies the maximum number of items to return in the response. Use
    #   this parameter when paginating results. If additional items exist
    #   beyond the number you specify, the `nextToken` element is set in the
    #   response. Use the `nextToken` value in a subsequent request to
    #   retrieve additional items.
    #
    # @option params [String] :next_token
    #   String for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of `nextToken`
    #   from the response that you just received.
    #
    # @return [Types::ListSigningJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSigningJobsResponse#jobs #jobs} => Array&lt;Types::SigningJob&gt;
    #   * {Types::ListSigningJobsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_jobs({
    #     status: "InProgress", # accepts InProgress, Failed, Succeeded
    #     platform_id: "PlatformId",
    #     requested_by: "RequestedBy",
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].job_id #=> String
    #   resp.jobs[0].source.s3.bucket_name #=> String
    #   resp.jobs[0].source.s3.key #=> String
    #   resp.jobs[0].source.s3.version #=> String
    #   resp.jobs[0].signed_object.s3.bucket_name #=> String
    #   resp.jobs[0].signed_object.s3.key #=> String
    #   resp.jobs[0].signing_material.certificate_arn #=> String
    #   resp.jobs[0].created_at #=> Time
    #   resp.jobs[0].status #=> String, one of "InProgress", "Failed", "Succeeded"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningJobs AWS API Documentation
    #
    # @overload list_signing_jobs(params = {})
    # @param [Hash] params ({})
    def list_signing_jobs(params = {}, options = {})
      req = build_request(:list_signing_jobs, params)
      req.send_request(options)
    end

    # Lists all signing platforms available in AWS Signer that match the
    # request parameters. If additional jobs remain to be listed, AWS Signer
    # returns a `nextToken` value. Use this value in subsequent calls to
    # `ListSigningJobs` to fetch the remaining values. You can continue
    # calling `ListSigningJobs` with your `maxResults` parameter and with
    # new values that AWS Signer returns in the `nextToken` parameter until
    # all of your signing jobs have been returned.
    #
    # @option params [String] :category
    #   The category type of a signing platform.
    #
    # @option params [String] :partner
    #   Any partner entities connected to a signing platform.
    #
    # @option params [String] :target
    #   The validation template that is used by the target signing platform.
    #
    # @option params [Integer] :max_results
    #   The maximum number of results to be returned by this operation.
    #
    # @option params [String] :next_token
    #   Value for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of `nextToken`
    #   from the response that you just received.
    #
    # @return [Types::ListSigningPlatformsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSigningPlatformsResponse#platforms #platforms} => Array&lt;Types::SigningPlatform&gt;
    #   * {Types::ListSigningPlatformsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_platforms({
    #     category: "String",
    #     partner: "String",
    #     target: "String",
    #     max_results: 1,
    #     next_token: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.platforms #=> Array
    #   resp.platforms[0].platform_id #=> String
    #   resp.platforms[0].display_name #=> String
    #   resp.platforms[0].partner #=> String
    #   resp.platforms[0].target #=> String
    #   resp.platforms[0].category #=> String, one of "AWSIoT"
    #   resp.platforms[0].signing_configuration.encryption_algorithm_options.allowed_values #=> Array
    #   resp.platforms[0].signing_configuration.encryption_algorithm_options.allowed_values[0] #=> String, one of "RSA", "ECDSA"
    #   resp.platforms[0].signing_configuration.encryption_algorithm_options.default_value #=> String, one of "RSA", "ECDSA"
    #   resp.platforms[0].signing_configuration.hash_algorithm_options.allowed_values #=> Array
    #   resp.platforms[0].signing_configuration.hash_algorithm_options.allowed_values[0] #=> String, one of "SHA1", "SHA256"
    #   resp.platforms[0].signing_configuration.hash_algorithm_options.default_value #=> String, one of "SHA1", "SHA256"
    #   resp.platforms[0].signing_image_format.supported_formats #=> Array
    #   resp.platforms[0].signing_image_format.supported_formats[0] #=> String, one of "JSON"
    #   resp.platforms[0].signing_image_format.default_format #=> String, one of "JSON"
    #   resp.platforms[0].max_size_in_mb #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningPlatforms AWS API Documentation
    #
    # @overload list_signing_platforms(params = {})
    # @param [Hash] params ({})
    def list_signing_platforms(params = {}, options = {})
      req = build_request(:list_signing_platforms, params)
      req.send_request(options)
    end

    # Lists all available signing profiles in your AWS account. Returns only
    # profiles with an `ACTIVE` status unless the `includeCanceled` request
    # field is set to `true`. If additional jobs remain to be listed, AWS
    # Signer returns a `nextToken` value. Use this value in subsequent calls
    # to `ListSigningJobs` to fetch the remaining values. You can continue
    # calling `ListSigningJobs` with your `maxResults` parameter and with
    # new values that AWS Signer returns in the `nextToken` parameter until
    # all of your signing jobs have been returned.
    #
    # @option params [Boolean] :include_canceled
    #   Designates whether to include profiles with the status of `CANCELED`.
    #
    # @option params [Integer] :max_results
    #   The maximum number of profiles to be returned.
    #
    # @option params [String] :next_token
    #   Value for specifying the next set of paginated results to return.
    #   After you receive a response with truncated results, use this
    #   parameter in a subsequent request. Set it to the value of `nextToken`
    #   from the response that you just received.
    #
    # @return [Types::ListSigningProfilesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListSigningProfilesResponse#profiles #profiles} => Array&lt;Types::SigningProfile&gt;
    #   * {Types::ListSigningProfilesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_profiles({
    #     include_canceled: false,
    #     max_results: 1,
    #     next_token: "NextToken",
    #   })
    #
    # @example Response structure
    #
    #   resp.profiles #=> Array
    #   resp.profiles[0].profile_name #=> String
    #   resp.profiles[0].signing_material.certificate_arn #=> String
    #   resp.profiles[0].platform_id #=> String
    #   resp.profiles[0].signing_parameters #=> Hash
    #   resp.profiles[0].signing_parameters["SigningParameterKey"] #=> String
    #   resp.profiles[0].status #=> String, one of "Active", "Canceled"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/ListSigningProfiles AWS API Documentation
    #
    # @overload list_signing_profiles(params = {})
    # @param [Hash] params ({})
    def list_signing_profiles(params = {}, options = {})
      req = build_request(:list_signing_profiles, params)
      req.send_request(options)
    end

    # Creates a signing profile. A signing profile is an AWS Signer template
    # that can be used to carry out a pre-defined signing job. For more
    # information, see
    # [http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html][1]
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/signer/latest/developerguide/gs-profile.html
    #
    # @option params [required, String] :profile_name
    #   The name of the signing profile to be created.
    #
    # @option params [required, Types::SigningMaterial] :signing_material
    #   The AWS Certificate Manager certificate that will be used to sign code
    #   with the new signing profile.
    #
    # @option params [required, String] :platform_id
    #   The ID of the signing profile to be created.
    #
    # @option params [Types::SigningPlatformOverrides] :overrides
    #   A subfield of `platform`. This specifies any different configuration
    #   options that you want to apply to the chosen platform (such as a
    #   different `hash-algorithm` or `signing-algorithm`).
    #
    # @option params [Hash<String,String>] :signing_parameters
    #   Map of key-value pairs for signing. These can include any information
    #   that you want to use during signing.
    #
    # @return [Types::PutSigningProfileResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSigningProfileResponse#arn #arn} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_signing_profile({
    #     profile_name: "ProfileName", # required
    #     signing_material: { # required
    #       certificate_arn: "CertificateArn", # required
    #     },
    #     platform_id: "PlatformId", # required
    #     overrides: {
    #       signing_configuration: {
    #         encryption_algorithm: "RSA", # accepts RSA, ECDSA
    #         hash_algorithm: "SHA1", # accepts SHA1, SHA256
    #       },
    #     },
    #     signing_parameters: {
    #       "SigningParameterKey" => "SigningParameterValue",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.arn #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/PutSigningProfile AWS API Documentation
    #
    # @overload put_signing_profile(params = {})
    # @param [Hash] params ({})
    def put_signing_profile(params = {}, options = {})
      req = build_request(:put_signing_profile, params)
      req.send_request(options)
    end

    # Initiates a signing job to be performed on the code provided. Signing
    # jobs are viewable by the `ListSigningJobs` operation for two years
    # after they are performed. Note the following requirements:
    #
    # * You must create an Amazon S3 source bucket. For more information,
    #   see [Create a Bucket][1] in the *Amazon S3 Getting Started Guide*.
    #
    # * Your S3 source bucket must be version enabled.
    #
    # * You must create an S3 destination bucket. AWS Signer uses your S3
    #   destination bucket to write your signed code.
    #
    # * You specify the name of the source and destination buckets when
    #   calling the `StartSigningJob` operation.
    #
    # * You must also specify a request token that identifies your request
    #   to AWS Signer.
    #
    # You can call the DescribeSigningJob and the ListSigningJobs actions
    # after you call `StartSigningJob`.
    #
    # For a Java example that shows how to use this action, see
    # [http://docs.aws.amazon.com/acm/latest/userguide/][2]
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/AmazonS3/latest/gsg/CreatingABucket.html
    # [2]: http://docs.aws.amazon.com/acm/latest/userguide/
    #
    # @option params [required, Types::Source] :source
    #   The S3 bucket that contains the object to sign or a BLOB that contains
    #   your raw code.
    #
    # @option params [required, Types::Destination] :destination
    #   The S3 bucket in which to save your signed object. The destination
    #   contains the name of your bucket and an optional prefix.
    #
    # @option params [String] :profile_name
    #   The name of the signing profile.
    #
    # @option params [required, String] :client_request_token
    #   String that identifies the signing request. All calls after the first
    #   that use this token return the same response as the first call.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.**
    #
    # @return [Types::StartSigningJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartSigningJobResponse#job_id #job_id} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_signing_job({
    #     source: { # required
    #       s3: {
    #         bucket_name: "BucketName", # required
    #         key: "Key", # required
    #         version: "Version", # required
    #       },
    #     },
    #     destination: { # required
    #       s3: {
    #         bucket_name: "BucketName",
    #         prefix: "Prefix",
    #       },
    #     },
    #     profile_name: "ProfileName",
    #     client_request_token: "ClientRequestToken", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job_id #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/signer-2017-08-25/StartSigningJob AWS API Documentation
    #
    # @overload start_signing_job(params = {})
    # @param [Hash] params ({})
    def start_signing_job(params = {}, options = {})
      req = build_request(:start_signing_job, params)
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
      context[:gem_name] = 'aws-sdk-signer'
      context[:gem_version] = '1.2.0'
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
    # | waiter_name            | params                  | :delay   | :max_attempts |
    # | ---------------------- | ----------------------- | -------- | ------------- |
    # | successful_signing_job | {#describe_signing_job} | 20       | 25            |
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
        successful_signing_job: Waiters::SuccessfulSigningJob
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
