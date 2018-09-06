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

Aws::Plugins::GlobalConfiguration.add_identifier(:transcribeservice)

module Aws::TranscribeService
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :transcribeservice

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

    # Creates a new custom vocabulary that you can use to change the way
    # Amazon Transcribe handles transcription of an audio file.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary. The name must be unique within an AWS
    #   account. The name is case-sensitive.
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries.
    #
    # @option params [required, Array<String>] :phrases
    #   An array of strings that contains the vocabulary entries.
    #
    # @return [Types::CreateVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::CreateVocabularyResponse#language_code #language_code} => String
    #   * {Types::CreateVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #   * {Types::CreateVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::CreateVocabularyResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "en-US", # required, accepts en-US, es-US
    #     phrases: ["Phrase"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US"
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabulary AWS API Documentation
    #
    # @overload create_vocabulary(params = {})
    # @param [Hash] params ({})
    def create_vocabulary(params = {}, options = {})
      req = build_request(:create_vocabulary, params)
      req.send_request(options)
    end

    # Deletes a vocabulary from Amazon Transcribe.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabulary AWS API Documentation
    #
    # @overload delete_vocabulary(params = {})
    # @param [Hash] params ({})
    def delete_vocabulary(params = {}, options = {})
      req = build_request(:delete_vocabulary, params)
      req.send_request(options)
    end

    # Returns information about a transcription job. To see the status of
    # the job, check the `TranscriptionJobStatus` field. If the status is
    # `COMPLETED`, the job is finished and you can find the results at the
    # location specified in the `TranscriptionFileUri` field.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the job.
    #
    # @return [Types::GetTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetTranscriptionJobResponse#transcription_job #transcription_job} => Types::TranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.transcription_job.transcription_job_name #=> String
    #   resp.transcription_job.transcription_job_status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job.language_code #=> String, one of "en-US", "es-US"
    #   resp.transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.transcription_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac"
    #   resp.transcription_job.media.media_file_uri #=> String
    #   resp.transcription_job.transcript.transcript_file_uri #=> String
    #   resp.transcription_job.creation_time #=> Time
    #   resp.transcription_job.completion_time #=> Time
    #   resp.transcription_job.failure_reason #=> String
    #   resp.transcription_job.settings.vocabulary_name #=> String
    #   resp.transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.transcription_job.settings.channel_identification #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetTranscriptionJob AWS API Documentation
    #
    # @overload get_transcription_job(params = {})
    # @param [Hash] params ({})
    def get_transcription_job(params = {}, options = {})
      req = build_request(:get_transcription_job, params)
      req.send_request(options)
    end

    # Gets information about a vocabulary.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to return information about. The name is
    #   case-sensitive.
    #
    # @return [Types::GetVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::GetVocabularyResponse#language_code #language_code} => String
    #   * {Types::GetVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #   * {Types::GetVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::GetVocabularyResponse#failure_reason #failure_reason} => String
    #   * {Types::GetVocabularyResponse#download_uri #download_uri} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US"
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #   resp.last_modified_time #=> Time
    #   resp.failure_reason #=> String
    #   resp.download_uri #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabulary AWS API Documentation
    #
    # @overload get_vocabulary(params = {})
    # @param [Hash] params ({})
    def get_vocabulary(params = {}, options = {})
      req = build_request(:get_vocabulary, params)
      req.send_request(options)
    end

    # Lists transcription jobs with the specified status.
    #
    # @option params [String] :status
    #   When specified, returns only transcription jobs with the specified
    #   status.
    #
    # @option params [String] :job_name_contains
    #   When specified, the jobs returned in the list are limited to jobs
    #   whose name contains the specified string.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListTranscriptionJobs` was
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of jobs to return in the response. If there are
    #   fewer results in the list, this response contains only the actual
    #   results.
    #
    # @return [Types::ListTranscriptionJobsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListTranscriptionJobsResponse#status #status} => String
    #   * {Types::ListTranscriptionJobsResponse#next_token #next_token} => String
    #   * {Types::ListTranscriptionJobsResponse#transcription_job_summaries #transcription_job_summaries} => Array&lt;Types::TranscriptionJobSummary&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_transcription_jobs({
    #     status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, COMPLETED
    #     job_name_contains: "TranscriptionJobName",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #   resp.transcription_job_summaries #=> Array
    #   resp.transcription_job_summaries[0].transcription_job_name #=> String
    #   resp.transcription_job_summaries[0].creation_time #=> Time
    #   resp.transcription_job_summaries[0].completion_time #=> Time
    #   resp.transcription_job_summaries[0].language_code #=> String, one of "en-US", "es-US"
    #   resp.transcription_job_summaries[0].transcription_job_status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job_summaries[0].failure_reason #=> String
    #   resp.transcription_job_summaries[0].output_location_type #=> String, one of "CUSTOMER_BUCKET", "SERVICE_BUCKET"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTranscriptionJobs AWS API Documentation
    #
    # @overload list_transcription_jobs(params = {})
    # @param [Hash] params ({})
    def list_transcription_jobs(params = {}, options = {})
      req = build_request(:list_transcription_jobs, params)
      req.send_request(options)
    end

    # Returns a list of vocabularies that match the specified criteria. If
    # no criteria are specified, returns the entire list of vocabularies.
    #
    # @option params [String] :next_token
    #   If the result of the previous request to `ListVocabularies` was
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #
    # @option params [Integer] :max_results
    #   The maximum number of vocabularies to return in the response. If there
    #   are fewer results in the list, this response contains only the actual
    #   results.
    #
    # @option params [String] :state_equals
    #   When specified, only returns vocabularies with the `VocabularyState`
    #   field equal to the specified state.
    #
    # @option params [String] :name_contains
    #   When specified, the vocabularies returned in the list are limited to
    #   vocabularies whose name contains the specified string. The search is
    #   case-insensitive, `ListVocabularies` will return both
    #   "vocabularyname" and "VocabularyName" in the response list.
    #
    # @return [Types::ListVocabulariesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListVocabulariesResponse#status #status} => String
    #   * {Types::ListVocabulariesResponse#next_token #next_token} => String
    #   * {Types::ListVocabulariesResponse#vocabularies #vocabularies} => Array&lt;Types::VocabularyInfo&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_vocabularies({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     state_equals: "PENDING", # accepts PENDING, READY, FAILED
    #     name_contains: "VocabularyName",
    #   })
    #
    # @example Response structure
    #
    #   resp.status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.next_token #=> String
    #   resp.vocabularies #=> Array
    #   resp.vocabularies[0].vocabulary_name #=> String
    #   resp.vocabularies[0].language_code #=> String, one of "en-US", "es-US"
    #   resp.vocabularies[0].last_modified_time #=> Time
    #   resp.vocabularies[0].vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabularies AWS API Documentation
    #
    # @overload list_vocabularies(params = {})
    # @param [Hash] params ({})
    def list_vocabularies(params = {}, options = {})
      req = build_request(:list_vocabularies, params)
      req.send_request(options)
    end

    # Starts an asynchronous job to transcribe speech to text.
    #
    # @option params [required, String] :transcription_job_name
    #   The name of the job. You can't use the strings "." or ".." in the
    #   job name. The name must be unique within an AWS account.
    #
    # @option params [required, String] :language_code
    #   The language code for the language used in the input media file.
    #
    # @option params [Integer] :media_sample_rate_hertz
    #   The sample rate, in Hertz, of the audio track in the input media file.
    #
    # @option params [required, String] :media_format
    #   The format of the input media file.
    #
    # @option params [required, Types::Media] :media
    #   An object that describes the input media for a transcription job.
    #
    # @option params [String] :output_bucket_name
    #   The location where the transcription is stored.
    #
    #   If you set the `OutputBucketName`, Amazon Transcribe puts the
    #   transcription in the specified S3 bucket. When you call the
    #   GetTranscriptionJob operation, the operation returns this location in
    #   the `TranscriptFileUri` field. The S3 bucket must have permissions
    #   that allow Amazon Transcribe to put files in the bucket. For more
    #   information, see [Permissions Required for IAM User Roles][1].
    #
    #   If you don't set the `OutputBucketName`, Amazon Transcribe generates
    #   a pre-signed URL, a shareable URL that provides secure access to your
    #   transcription, and returns it in the `TranscriptFileUri` field. Use
    #   this URL to download the transcription.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/access-control-managing-permissions.html#auth-role-iam-user
    #
    # @option params [Types::Settings] :settings
    #   A `Settings` object that provides optional settings for a
    #   transcription job.
    #
    # @return [Types::StartTranscriptionJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartTranscriptionJobResponse#transcription_job #transcription_job} => Types::TranscriptionJob
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_transcription_job({
    #     transcription_job_name: "TranscriptionJobName", # required
    #     language_code: "en-US", # required, accepts en-US, es-US
    #     media_sample_rate_hertz: 1,
    #     media_format: "mp3", # required, accepts mp3, mp4, wav, flac
    #     media: { # required
    #       media_file_uri: "Uri",
    #     },
    #     output_bucket_name: "OutputBucketName",
    #     settings: {
    #       vocabulary_name: "VocabularyName",
    #       show_speaker_labels: false,
    #       max_speaker_labels: 1,
    #       channel_identification: false,
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.transcription_job.transcription_job_name #=> String
    #   resp.transcription_job.transcription_job_status #=> String, one of "IN_PROGRESS", "FAILED", "COMPLETED"
    #   resp.transcription_job.language_code #=> String, one of "en-US", "es-US"
    #   resp.transcription_job.media_sample_rate_hertz #=> Integer
    #   resp.transcription_job.media_format #=> String, one of "mp3", "mp4", "wav", "flac"
    #   resp.transcription_job.media.media_file_uri #=> String
    #   resp.transcription_job.transcript.transcript_file_uri #=> String
    #   resp.transcription_job.creation_time #=> Time
    #   resp.transcription_job.completion_time #=> Time
    #   resp.transcription_job.failure_reason #=> String
    #   resp.transcription_job.settings.vocabulary_name #=> String
    #   resp.transcription_job.settings.show_speaker_labels #=> Boolean
    #   resp.transcription_job.settings.max_speaker_labels #=> Integer
    #   resp.transcription_job.settings.channel_identification #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartTranscriptionJob AWS API Documentation
    #
    # @overload start_transcription_job(params = {})
    # @param [Hash] params ({})
    def start_transcription_job(params = {}, options = {})
      req = build_request(:start_transcription_job, params)
      req.send_request(options)
    end

    # Updates an existing vocabulary with new values. The `UpdateVocabulary`
    # operation overwrites all of the existing information with the values
    # that you provide in the request.
    #
    # @option params [required, String] :vocabulary_name
    #   The name of the vocabulary to update. The name is case-sensitive.
    #
    # @option params [required, String] :language_code
    #   The language code of the vocabulary entries.
    #
    # @option params [required, Array<String>] :phrases
    #   An array of strings containing the vocabulary entries.
    #
    # @return [Types::UpdateVocabularyResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdateVocabularyResponse#vocabulary_name #vocabulary_name} => String
    #   * {Types::UpdateVocabularyResponse#language_code #language_code} => String
    #   * {Types::UpdateVocabularyResponse#last_modified_time #last_modified_time} => Time
    #   * {Types::UpdateVocabularyResponse#vocabulary_state #vocabulary_state} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_vocabulary({
    #     vocabulary_name: "VocabularyName", # required
    #     language_code: "en-US", # required, accepts en-US, es-US
    #     phrases: ["Phrase"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.vocabulary_name #=> String
    #   resp.language_code #=> String, one of "en-US", "es-US"
    #   resp.last_modified_time #=> Time
    #   resp.vocabulary_state #=> String, one of "PENDING", "READY", "FAILED"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabulary AWS API Documentation
    #
    # @overload update_vocabulary(params = {})
    # @param [Hash] params ({})
    def update_vocabulary(params = {}, options = {})
      req = build_request(:update_vocabulary, params)
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
      context[:gem_name] = 'aws-sdk-transcribeservice'
      context[:gem_version] = '1.6.0'
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
