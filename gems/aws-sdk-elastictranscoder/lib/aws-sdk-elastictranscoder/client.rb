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

Aws::Plugins::GlobalConfiguration.add_identifier(:elastictranscoder)

module Aws::ElasticTranscoder
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :elastictranscoder

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

    # The CancelJob operation cancels an unfinished job.
    #
    # <note markdown="1"> You can only cancel a job that has a status of `Submitted`. To prevent
    # a pipeline from starting to process a job while you're getting the
    # job identifier, use UpdatePipelineStatus to temporarily pause the
    # pipeline.
    #
    #  </note>
    #
    # @option params [required, String] :id
    #   The identifier of the job that you want to cancel.
    #
    #   To get a list of the jobs (including their `jobId`) that have a status
    #   of `Submitted`, use the ListJobsByStatus API action.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_job({
    #     id: "Id", # required
    #   })
    #
    # @overload cancel_job(params = {})
    # @param [Hash] params ({})
    def cancel_job(params = {}, options = {})
      req = build_request(:cancel_job, params)
      req.send_request(options)
    end

    # When you create a job, Elastic Transcoder returns JSON data that
    # includes the values that you specified plus information about the job
    # that is created.
    #
    # If you have specified more than one output for your jobs (for example,
    # one output for the Kindle Fire and another output for the Apple iPhone
    # 4s), you currently must use the Elastic Transcoder API to list the
    # jobs (as opposed to the AWS Console).
    #
    # @option params [required, String] :pipeline_id
    #   The `Id` of the pipeline that you want Elastic Transcoder to use for
    #   transcoding. The pipeline determines several settings, including the
    #   Amazon S3 bucket from which Elastic Transcoder gets the files to
    #   transcode and the bucket into which Elastic Transcoder puts the
    #   transcoded files.
    #
    # @option params [Types::JobInput] :input
    #   A section of the request body that provides information about the file
    #   that is being transcoded.
    #
    # @option params [Array<Types::JobInput>] :inputs
    #   A section of the request body that provides information about the
    #   files that are being transcoded.
    #
    # @option params [Types::CreateJobOutput] :output
    #   A section of the request body that provides information about the
    #   transcoded (target) file. We strongly recommend that you use the
    #   `Outputs` syntax instead of the `Output` syntax.
    #
    # @option params [Array<Types::CreateJobOutput>] :outputs
    #   A section of the request body that provides information about the
    #   transcoded (target) files. We recommend that you use the `Outputs`
    #   syntax instead of the `Output` syntax.
    #
    # @option params [String] :output_key_prefix
    #   The value, if any, that you want Elastic Transcoder to prepend to the
    #   names of all files that this job creates, including output files,
    #   thumbnails, and playlists.
    #
    # @option params [Array<Types::CreateJobPlaylist>] :playlists
    #   If you specify a preset in `PresetId` for which the value of
    #   `Container` is fmp4 (Fragmented MP4) or ts (MPEG-TS), Playlists
    #   contains information about the master playlists that you want Elastic
    #   Transcoder to create.
    #
    #   The maximum number of master playlists in a job is 30.
    #
    # @option params [Hash<String,String>] :user_metadata
    #   User-defined metadata that you want to associate with an Elastic
    #   Transcoder job. You specify metadata in `key/value` pairs, and you can
    #   add up to 10 `key/value` pairs per job. Elastic Transcoder does not
    #   guarantee that `key/value` pairs are returned in the same order in
    #   which you specify them.
    #
    # @return [Types::CreateJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job({
    #     pipeline_id: "Id", # required
    #     input: {
    #       key: "LongKey",
    #       frame_rate: "FrameRate",
    #       resolution: "Resolution",
    #       aspect_ratio: "AspectRatio",
    #       interlaced: "Interlaced",
    #       container: "JobContainer",
    #       encryption: {
    #         mode: "EncryptionMode",
    #         key: "Base64EncodedString",
    #         key_md_5: "Base64EncodedString",
    #         initialization_vector: "ZeroTo255String",
    #       },
    #       time_span: {
    #         start_time: "Time",
    #         duration: "Time",
    #       },
    #       input_captions: {
    #         merge_policy: "CaptionMergePolicy",
    #         caption_sources: [
    #           {
    #             key: "LongKey",
    #             language: "Key",
    #             time_offset: "TimeOffset",
    #             label: "Name",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md_5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String",
    #             },
    #           },
    #         ],
    #       },
    #       detected_properties: {
    #         width: 1,
    #         height: 1,
    #         frame_rate: "FloatString",
    #         file_size: 1,
    #         duration_millis: 1,
    #       },
    #     },
    #     inputs: [
    #       {
    #         key: "LongKey",
    #         frame_rate: "FrameRate",
    #         resolution: "Resolution",
    #         aspect_ratio: "AspectRatio",
    #         interlaced: "Interlaced",
    #         container: "JobContainer",
    #         encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md_5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String",
    #         },
    #         time_span: {
    #           start_time: "Time",
    #           duration: "Time",
    #         },
    #         input_captions: {
    #           merge_policy: "CaptionMergePolicy",
    #           caption_sources: [
    #             {
    #               key: "LongKey",
    #               language: "Key",
    #               time_offset: "TimeOffset",
    #               label: "Name",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md_5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String",
    #               },
    #             },
    #           ],
    #         },
    #         detected_properties: {
    #           width: 1,
    #           height: 1,
    #           frame_rate: "FloatString",
    #           file_size: 1,
    #           duration_millis: 1,
    #         },
    #       },
    #     ],
    #     output: {
    #       key: "Key",
    #       thumbnail_pattern: "ThumbnailPattern",
    #       thumbnail_encryption: {
    #         mode: "EncryptionMode",
    #         key: "Base64EncodedString",
    #         key_md_5: "Base64EncodedString",
    #         initialization_vector: "ZeroTo255String",
    #       },
    #       rotate: "Rotate",
    #       preset_id: "Id",
    #       segment_duration: "FloatString",
    #       watermarks: [
    #         {
    #           preset_watermark_id: "PresetWatermarkId",
    #           input_key: "WatermarkKey",
    #           encryption: {
    #             mode: "EncryptionMode",
    #             key: "Base64EncodedString",
    #             key_md_5: "Base64EncodedString",
    #             initialization_vector: "ZeroTo255String",
    #           },
    #         },
    #       ],
    #       album_art: {
    #         merge_policy: "MergePolicy",
    #         artwork: [
    #           {
    #             input_key: "WatermarkKey",
    #             max_width: "DigitsOrAuto",
    #             max_height: "DigitsOrAuto",
    #             sizing_policy: "SizingPolicy",
    #             padding_policy: "PaddingPolicy",
    #             album_art_format: "JpgOrPng",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md_5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String",
    #             },
    #           },
    #         ],
    #       },
    #       composition: [
    #         {
    #           time_span: {
    #             start_time: "Time",
    #             duration: "Time",
    #           },
    #         },
    #       ],
    #       captions: {
    #         merge_policy: "CaptionMergePolicy",
    #         caption_sources: [
    #           {
    #             key: "LongKey",
    #             language: "Key",
    #             time_offset: "TimeOffset",
    #             label: "Name",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md_5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String",
    #             },
    #           },
    #         ],
    #         caption_formats: [
    #           {
    #             format: "CaptionFormatFormat",
    #             pattern: "CaptionFormatPattern",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md_5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String",
    #             },
    #           },
    #         ],
    #       },
    #       encryption: {
    #         mode: "EncryptionMode",
    #         key: "Base64EncodedString",
    #         key_md_5: "Base64EncodedString",
    #         initialization_vector: "ZeroTo255String",
    #       },
    #     },
    #     outputs: [
    #       {
    #         key: "Key",
    #         thumbnail_pattern: "ThumbnailPattern",
    #         thumbnail_encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md_5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String",
    #         },
    #         rotate: "Rotate",
    #         preset_id: "Id",
    #         segment_duration: "FloatString",
    #         watermarks: [
    #           {
    #             preset_watermark_id: "PresetWatermarkId",
    #             input_key: "WatermarkKey",
    #             encryption: {
    #               mode: "EncryptionMode",
    #               key: "Base64EncodedString",
    #               key_md_5: "Base64EncodedString",
    #               initialization_vector: "ZeroTo255String",
    #             },
    #           },
    #         ],
    #         album_art: {
    #           merge_policy: "MergePolicy",
    #           artwork: [
    #             {
    #               input_key: "WatermarkKey",
    #               max_width: "DigitsOrAuto",
    #               max_height: "DigitsOrAuto",
    #               sizing_policy: "SizingPolicy",
    #               padding_policy: "PaddingPolicy",
    #               album_art_format: "JpgOrPng",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md_5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String",
    #               },
    #             },
    #           ],
    #         },
    #         composition: [
    #           {
    #             time_span: {
    #               start_time: "Time",
    #               duration: "Time",
    #             },
    #           },
    #         ],
    #         captions: {
    #           merge_policy: "CaptionMergePolicy",
    #           caption_sources: [
    #             {
    #               key: "LongKey",
    #               language: "Key",
    #               time_offset: "TimeOffset",
    #               label: "Name",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md_5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String",
    #               },
    #             },
    #           ],
    #           caption_formats: [
    #             {
    #               format: "CaptionFormatFormat",
    #               pattern: "CaptionFormatPattern",
    #               encryption: {
    #                 mode: "EncryptionMode",
    #                 key: "Base64EncodedString",
    #                 key_md_5: "Base64EncodedString",
    #                 initialization_vector: "ZeroTo255String",
    #               },
    #             },
    #           ],
    #         },
    #         encryption: {
    #           mode: "EncryptionMode",
    #           key: "Base64EncodedString",
    #           key_md_5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String",
    #         },
    #       },
    #     ],
    #     output_key_prefix: "Key",
    #     playlists: [
    #       {
    #         name: "Filename",
    #         format: "PlaylistFormat",
    #         output_keys: ["Key"],
    #         hls_content_protection: {
    #           method: "HlsContentProtectionMethod",
    #           key: "Base64EncodedString",
    #           key_md_5: "Base64EncodedString",
    #           initialization_vector: "ZeroTo255String",
    #           license_acquisition_url: "ZeroTo512String",
    #           key_storage_policy: "KeyStoragePolicy",
    #         },
    #         play_ready_drm: {
    #           format: "PlayReadyDrmFormatString",
    #           key: "NonEmptyBase64EncodedString",
    #           key_md_5: "NonEmptyBase64EncodedString",
    #           key_id: "KeyIdGuid",
    #           initialization_vector: "ZeroTo255String",
    #           license_acquisition_url: "OneTo512String",
    #         },
    #       },
    #     ],
    #     user_metadata: {
    #       "String" => "String",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.job.id #=> String
    #   resp.job.arn #=> String
    #   resp.job.pipeline_id #=> String
    #   resp.job.input.key #=> String
    #   resp.job.input.frame_rate #=> String
    #   resp.job.input.resolution #=> String
    #   resp.job.input.aspect_ratio #=> String
    #   resp.job.input.interlaced #=> String
    #   resp.job.input.container #=> String
    #   resp.job.input.encryption.mode #=> String
    #   resp.job.input.encryption.key #=> String
    #   resp.job.input.encryption.key_md_5 #=> String
    #   resp.job.input.encryption.initialization_vector #=> String
    #   resp.job.input.time_span.start_time #=> String
    #   resp.job.input.time_span.duration #=> String
    #   resp.job.input.input_captions.merge_policy #=> String
    #   resp.job.input.input_captions.caption_sources #=> Array
    #   resp.job.input.input_captions.caption_sources[0].key #=> String
    #   resp.job.input.input_captions.caption_sources[0].language #=> String
    #   resp.job.input.input_captions.caption_sources[0].time_offset #=> String
    #   resp.job.input.input_captions.caption_sources[0].label #=> String
    #   resp.job.input.input_captions.caption_sources[0].encryption.mode #=> String
    #   resp.job.input.input_captions.caption_sources[0].encryption.key #=> String
    #   resp.job.input.input_captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.job.input.input_captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.job.input.detected_properties.width #=> Integer
    #   resp.job.input.detected_properties.height #=> Integer
    #   resp.job.input.detected_properties.frame_rate #=> String
    #   resp.job.input.detected_properties.file_size #=> Integer
    #   resp.job.input.detected_properties.duration_millis #=> Integer
    #   resp.job.inputs #=> Array
    #   resp.job.inputs[0].key #=> String
    #   resp.job.inputs[0].frame_rate #=> String
    #   resp.job.inputs[0].resolution #=> String
    #   resp.job.inputs[0].aspect_ratio #=> String
    #   resp.job.inputs[0].interlaced #=> String
    #   resp.job.inputs[0].container #=> String
    #   resp.job.inputs[0].encryption.mode #=> String
    #   resp.job.inputs[0].encryption.key #=> String
    #   resp.job.inputs[0].encryption.key_md_5 #=> String
    #   resp.job.inputs[0].encryption.initialization_vector #=> String
    #   resp.job.inputs[0].time_span.start_time #=> String
    #   resp.job.inputs[0].time_span.duration #=> String
    #   resp.job.inputs[0].input_captions.merge_policy #=> String
    #   resp.job.inputs[0].input_captions.caption_sources #=> Array
    #   resp.job.inputs[0].input_captions.caption_sources[0].key #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].language #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].time_offset #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].label #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].encryption.mode #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].encryption.key #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.job.inputs[0].detected_properties.width #=> Integer
    #   resp.job.inputs[0].detected_properties.height #=> Integer
    #   resp.job.inputs[0].detected_properties.frame_rate #=> String
    #   resp.job.inputs[0].detected_properties.file_size #=> Integer
    #   resp.job.inputs[0].detected_properties.duration_millis #=> Integer
    #   resp.job.output.id #=> String
    #   resp.job.output.key #=> String
    #   resp.job.output.thumbnail_pattern #=> String
    #   resp.job.output.thumbnail_encryption.mode #=> String
    #   resp.job.output.thumbnail_encryption.key #=> String
    #   resp.job.output.thumbnail_encryption.key_md_5 #=> String
    #   resp.job.output.thumbnail_encryption.initialization_vector #=> String
    #   resp.job.output.rotate #=> String
    #   resp.job.output.preset_id #=> String
    #   resp.job.output.segment_duration #=> String
    #   resp.job.output.status #=> String
    #   resp.job.output.status_detail #=> String
    #   resp.job.output.duration #=> Integer
    #   resp.job.output.width #=> Integer
    #   resp.job.output.height #=> Integer
    #   resp.job.output.frame_rate #=> String
    #   resp.job.output.file_size #=> Integer
    #   resp.job.output.duration_millis #=> Integer
    #   resp.job.output.watermarks #=> Array
    #   resp.job.output.watermarks[0].preset_watermark_id #=> String
    #   resp.job.output.watermarks[0].input_key #=> String
    #   resp.job.output.watermarks[0].encryption.mode #=> String
    #   resp.job.output.watermarks[0].encryption.key #=> String
    #   resp.job.output.watermarks[0].encryption.key_md_5 #=> String
    #   resp.job.output.watermarks[0].encryption.initialization_vector #=> String
    #   resp.job.output.album_art.merge_policy #=> String
    #   resp.job.output.album_art.artwork #=> Array
    #   resp.job.output.album_art.artwork[0].input_key #=> String
    #   resp.job.output.album_art.artwork[0].max_width #=> String
    #   resp.job.output.album_art.artwork[0].max_height #=> String
    #   resp.job.output.album_art.artwork[0].sizing_policy #=> String
    #   resp.job.output.album_art.artwork[0].padding_policy #=> String
    #   resp.job.output.album_art.artwork[0].album_art_format #=> String
    #   resp.job.output.album_art.artwork[0].encryption.mode #=> String
    #   resp.job.output.album_art.artwork[0].encryption.key #=> String
    #   resp.job.output.album_art.artwork[0].encryption.key_md_5 #=> String
    #   resp.job.output.album_art.artwork[0].encryption.initialization_vector #=> String
    #   resp.job.output.composition #=> Array
    #   resp.job.output.composition[0].time_span.start_time #=> String
    #   resp.job.output.composition[0].time_span.duration #=> String
    #   resp.job.output.captions.merge_policy #=> String
    #   resp.job.output.captions.caption_sources #=> Array
    #   resp.job.output.captions.caption_sources[0].key #=> String
    #   resp.job.output.captions.caption_sources[0].language #=> String
    #   resp.job.output.captions.caption_sources[0].time_offset #=> String
    #   resp.job.output.captions.caption_sources[0].label #=> String
    #   resp.job.output.captions.caption_sources[0].encryption.mode #=> String
    #   resp.job.output.captions.caption_sources[0].encryption.key #=> String
    #   resp.job.output.captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.job.output.captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.job.output.captions.caption_formats #=> Array
    #   resp.job.output.captions.caption_formats[0].format #=> String
    #   resp.job.output.captions.caption_formats[0].pattern #=> String
    #   resp.job.output.captions.caption_formats[0].encryption.mode #=> String
    #   resp.job.output.captions.caption_formats[0].encryption.key #=> String
    #   resp.job.output.captions.caption_formats[0].encryption.key_md_5 #=> String
    #   resp.job.output.captions.caption_formats[0].encryption.initialization_vector #=> String
    #   resp.job.output.encryption.mode #=> String
    #   resp.job.output.encryption.key #=> String
    #   resp.job.output.encryption.key_md_5 #=> String
    #   resp.job.output.encryption.initialization_vector #=> String
    #   resp.job.output.applied_color_space_conversion #=> String
    #   resp.job.outputs #=> Array
    #   resp.job.outputs[0].id #=> String
    #   resp.job.outputs[0].key #=> String
    #   resp.job.outputs[0].thumbnail_pattern #=> String
    #   resp.job.outputs[0].thumbnail_encryption.mode #=> String
    #   resp.job.outputs[0].thumbnail_encryption.key #=> String
    #   resp.job.outputs[0].thumbnail_encryption.key_md_5 #=> String
    #   resp.job.outputs[0].thumbnail_encryption.initialization_vector #=> String
    #   resp.job.outputs[0].rotate #=> String
    #   resp.job.outputs[0].preset_id #=> String
    #   resp.job.outputs[0].segment_duration #=> String
    #   resp.job.outputs[0].status #=> String
    #   resp.job.outputs[0].status_detail #=> String
    #   resp.job.outputs[0].duration #=> Integer
    #   resp.job.outputs[0].width #=> Integer
    #   resp.job.outputs[0].height #=> Integer
    #   resp.job.outputs[0].frame_rate #=> String
    #   resp.job.outputs[0].file_size #=> Integer
    #   resp.job.outputs[0].duration_millis #=> Integer
    #   resp.job.outputs[0].watermarks #=> Array
    #   resp.job.outputs[0].watermarks[0].preset_watermark_id #=> String
    #   resp.job.outputs[0].watermarks[0].input_key #=> String
    #   resp.job.outputs[0].watermarks[0].encryption.mode #=> String
    #   resp.job.outputs[0].watermarks[0].encryption.key #=> String
    #   resp.job.outputs[0].watermarks[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].watermarks[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].album_art.merge_policy #=> String
    #   resp.job.outputs[0].album_art.artwork #=> Array
    #   resp.job.outputs[0].album_art.artwork[0].input_key #=> String
    #   resp.job.outputs[0].album_art.artwork[0].max_width #=> String
    #   resp.job.outputs[0].album_art.artwork[0].max_height #=> String
    #   resp.job.outputs[0].album_art.artwork[0].sizing_policy #=> String
    #   resp.job.outputs[0].album_art.artwork[0].padding_policy #=> String
    #   resp.job.outputs[0].album_art.artwork[0].album_art_format #=> String
    #   resp.job.outputs[0].album_art.artwork[0].encryption.mode #=> String
    #   resp.job.outputs[0].album_art.artwork[0].encryption.key #=> String
    #   resp.job.outputs[0].album_art.artwork[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].album_art.artwork[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].composition #=> Array
    #   resp.job.outputs[0].composition[0].time_span.start_time #=> String
    #   resp.job.outputs[0].composition[0].time_span.duration #=> String
    #   resp.job.outputs[0].captions.merge_policy #=> String
    #   resp.job.outputs[0].captions.caption_sources #=> Array
    #   resp.job.outputs[0].captions.caption_sources[0].key #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].language #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].time_offset #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].label #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].encryption.mode #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].encryption.key #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].captions.caption_formats #=> Array
    #   resp.job.outputs[0].captions.caption_formats[0].format #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].pattern #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].encryption.mode #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].encryption.key #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].encryption.mode #=> String
    #   resp.job.outputs[0].encryption.key #=> String
    #   resp.job.outputs[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].applied_color_space_conversion #=> String
    #   resp.job.output_key_prefix #=> String
    #   resp.job.playlists #=> Array
    #   resp.job.playlists[0].name #=> String
    #   resp.job.playlists[0].format #=> String
    #   resp.job.playlists[0].output_keys #=> Array
    #   resp.job.playlists[0].output_keys[0] #=> String
    #   resp.job.playlists[0].hls_content_protection.method #=> String
    #   resp.job.playlists[0].hls_content_protection.key #=> String
    #   resp.job.playlists[0].hls_content_protection.key_md_5 #=> String
    #   resp.job.playlists[0].hls_content_protection.initialization_vector #=> String
    #   resp.job.playlists[0].hls_content_protection.license_acquisition_url #=> String
    #   resp.job.playlists[0].hls_content_protection.key_storage_policy #=> String
    #   resp.job.playlists[0].play_ready_drm.format #=> String
    #   resp.job.playlists[0].play_ready_drm.key #=> String
    #   resp.job.playlists[0].play_ready_drm.key_md_5 #=> String
    #   resp.job.playlists[0].play_ready_drm.key_id #=> String
    #   resp.job.playlists[0].play_ready_drm.initialization_vector #=> String
    #   resp.job.playlists[0].play_ready_drm.license_acquisition_url #=> String
    #   resp.job.playlists[0].status #=> String
    #   resp.job.playlists[0].status_detail #=> String
    #   resp.job.status #=> String
    #   resp.job.user_metadata #=> Hash
    #   resp.job.user_metadata["String"] #=> String
    #   resp.job.timing.submit_time_millis #=> Integer
    #   resp.job.timing.start_time_millis #=> Integer
    #   resp.job.timing.finish_time_millis #=> Integer
    #
    # @overload create_job(params = {})
    # @param [Hash] params ({})
    def create_job(params = {}, options = {})
      req = build_request(:create_job, params)
      req.send_request(options)
    end

    # The CreatePipeline operation creates a pipeline with settings that you
    # specify.
    #
    # @option params [required, String] :name
    #   The name of the pipeline. We recommend that the name be unique within
    #   the AWS account, but uniqueness is not enforced.
    #
    #   Constraints: Maximum 40 characters.
    #
    # @option params [required, String] :input_bucket
    #   The Amazon S3 bucket in which you saved the media files that you want
    #   to transcode.
    #
    # @option params [String] :output_bucket
    #   The Amazon S3 bucket in which you want Elastic Transcoder to save the
    #   transcoded files. (Use this, or use ContentConfig:Bucket plus
    #   ThumbnailConfig:Bucket.)
    #
    #   Specify this value when all of the following are true:
    #
    #   * You want to save transcoded files, thumbnails (if any), and
    #     playlists (if any) together in one bucket.
    #
    #   * You do not want to specify the users or groups who have access to
    #     the transcoded files, thumbnails, and playlists.
    #
    #   * You do not want to specify the permissions that Elastic Transcoder
    #     grants to the files.
    #
    #     When Elastic Transcoder saves files in `OutputBucket`, it grants
    #     full control over the files only to the AWS account that owns the
    #     role that is specified by `Role`.
    #
    #   * You want to associate the transcoded files and thumbnails with the
    #     Amazon S3 Standard storage class.
    #
    #   If you want to save transcoded files and playlists in one bucket and
    #   thumbnails in another bucket, specify which users can access the
    #   transcoded files or the permissions the users have, or change the
    #   Amazon S3 storage class, omit `OutputBucket` and specify values for
    #   `ContentConfig` and `ThumbnailConfig` instead.
    #
    # @option params [required, String] :role
    #   The IAM Amazon Resource Name (ARN) for the role that you want Elastic
    #   Transcoder to use to create the pipeline.
    #
    # @option params [String] :aws_kms_key_arn
    #   The AWS Key Management Service (AWS KMS) key that you want to use with
    #   this pipeline.
    #
    #   If you use either `s3` or `s3-aws-kms` as your `Encryption:Mode`, you
    #   don't need to provide a key with your job because a default key,
    #   known as an AWS-KMS key, is created for you automatically. You need to
    #   provide an AWS-KMS key only if you want to use a non-default AWS-KMS
    #   key, or if you are using an `Encryption:Mode` of `aes-cbc-pkcs7`,
    #   `aes-ctr`, or `aes-gcm`.
    #
    # @option params [Types::Notifications] :notifications
    #   The Amazon Simple Notification Service (Amazon SNS) topic that you
    #   want to notify to report job status.
    #
    #   To receive notifications, you must also subscribe to the new topic in
    #   the Amazon SNS console.
    #
    #   * **Progressing**\: The topic ARN for the Amazon Simple Notification
    #     Service (Amazon SNS) topic that you want to notify when Elastic
    #     Transcoder has started to process a job in this pipeline. This is
    #     the ARN that Amazon SNS returned when you created the topic. For
    #     more information, see Create a Topic in the Amazon Simple
    #     Notification Service Developer Guide.
    #
    #   * **Complete**\: The topic ARN for the Amazon SNS topic that you want
    #     to notify when Elastic Transcoder has finished processing a job in
    #     this pipeline. This is the ARN that Amazon SNS returned when you
    #     created the topic.
    #
    #   * **Warning**\: The topic ARN for the Amazon SNS topic that you want
    #     to notify when Elastic Transcoder encounters a warning condition
    #     while processing a job in this pipeline. This is the ARN that Amazon
    #     SNS returned when you created the topic.
    #
    #   * **Error**\: The topic ARN for the Amazon SNS topic that you want to
    #     notify when Elastic Transcoder encounters an error condition while
    #     processing a job in this pipeline. This is the ARN that Amazon SNS
    #     returned when you created the topic.
    #
    # @option params [Types::PipelineOutputConfig] :content_config
    #   The optional `ContentConfig` object specifies information about the
    #   Amazon S3 bucket in which you want Elastic Transcoder to save
    #   transcoded files and playlists: which bucket to use, which users you
    #   want to have access to the files, the type of access you want users to
    #   have, and the storage class that you want to assign to the files.
    #
    #   If you specify values for `ContentConfig`, you must also specify
    #   values for `ThumbnailConfig`.
    #
    #   If you specify values for `ContentConfig` and `ThumbnailConfig`, omit
    #   the `OutputBucket` object.
    #
    #   * **Bucket**\: The Amazon S3 bucket in which you want Elastic
    #     Transcoder to save transcoded files and playlists.
    #
    #   * **Permissions** (Optional): The Permissions object specifies which
    #     users you want to have access to transcoded files and the type of
    #     access you want them to have. You can grant permissions to a maximum
    #     of 30 users and/or predefined Amazon S3 groups.
    #
    #   * **Grantee Type**\: Specify the type of value that appears in the
    #     `Grantee` object:
    #
    #     * **Canonical**\: The value in the `Grantee` object is either the
    #       canonical user ID for an AWS account or an origin access identity
    #       for an Amazon CloudFront distribution. For more information about
    #       canonical user IDs, see Access Control List (ACL) Overview in the
    #       Amazon Simple Storage Service Developer Guide. For more
    #       information about using CloudFront origin access identities to
    #       require that users use CloudFront URLs instead of Amazon S3 URLs,
    #       see Using an Origin Access Identity to Restrict Access to Your
    #       Amazon S3 Content.
    #
    #       A canonical user ID is not the same as an AWS account number.
    #
    #     * **Email**\: The value in the `Grantee` object is the registered
    #       email address of an AWS account.
    #
    #     * **Group**\: The value in the `Grantee` object is one of the
    #       following predefined Amazon S3 groups: `AllUsers`,
    #       `AuthenticatedUsers`, or `LogDelivery`.
    #
    #   * **Grantee**\: The AWS user or group that you want to have access to
    #     transcoded files and playlists. To identify the user or group, you
    #     can specify the canonical user ID for an AWS account, an origin
    #     access identity for a CloudFront distribution, the registered email
    #     address of an AWS account, or a predefined Amazon S3 group
    #
    #   * **Access**\: The permission that you want to give to the AWS user
    #     that you specified in `Grantee`. Permissions are granted on the
    #     files that Elastic Transcoder adds to the bucket, including
    #     playlists and video files. Valid values include:
    #
    #     * `READ`\: The grantee can read the objects and metadata for objects
    #       that Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `READ_ACP`\: The grantee can read the object ACL for objects that
    #       Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `WRITE_ACP`\: The grantee can write the ACL for the objects that
    #       Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `FULL_CONTROL`\: The grantee has `READ`, `READ_ACP`, and
    #       `WRITE_ACP` permissions for the objects that Elastic Transcoder
    #       adds to the Amazon S3 bucket.
    #
    #   * **StorageClass**\: The Amazon S3 storage class, `Standard` or
    #     `ReducedRedundancy`, that you want Elastic Transcoder to assign to
    #     the video files and playlists that it stores in your Amazon S3
    #     bucket.
    #
    # @option params [Types::PipelineOutputConfig] :thumbnail_config
    #   The `ThumbnailConfig` object specifies several values, including the
    #   Amazon S3 bucket in which you want Elastic Transcoder to save
    #   thumbnail files, which users you want to have access to the files, the
    #   type of access you want users to have, and the storage class that you
    #   want to assign to the files.
    #
    #   If you specify values for `ContentConfig`, you must also specify
    #   values for `ThumbnailConfig` even if you don't want to create
    #   thumbnails.
    #
    #   If you specify values for `ContentConfig` and `ThumbnailConfig`, omit
    #   the `OutputBucket` object.
    #
    #   * **Bucket**\: The Amazon S3 bucket in which you want Elastic
    #     Transcoder to save thumbnail files.
    #
    #   * **Permissions** (Optional): The `Permissions` object specifies which
    #     users and/or predefined Amazon S3 groups you want to have access to
    #     thumbnail files, and the type of access you want them to have. You
    #     can grant permissions to a maximum of 30 users and/or predefined
    #     Amazon S3 groups.
    #
    #   * **GranteeType**\: Specify the type of value that appears in the
    #     Grantee object:
    #
    #     * **Canonical**\: The value in the `Grantee` object is either the
    #       canonical user ID for an AWS account or an origin access identity
    #       for an Amazon CloudFront distribution.
    #
    #       A canonical user ID is not the same as an AWS account number.
    #
    #     * **Email**\: The value in the `Grantee` object is the registered
    #       email address of an AWS account.
    #
    #     * **Group**\: The value in the `Grantee` object is one of the
    #       following predefined Amazon S3 groups: `AllUsers`,
    #       `AuthenticatedUsers`, or `LogDelivery`.
    #
    #   * **Grantee**\: The AWS user or group that you want to have access to
    #     thumbnail files. To identify the user or group, you can specify the
    #     canonical user ID for an AWS account, an origin access identity for
    #     a CloudFront distribution, the registered email address of an AWS
    #     account, or a predefined Amazon S3 group.
    #
    #   * **Access**\: The permission that you want to give to the AWS user
    #     that you specified in `Grantee`. Permissions are granted on the
    #     thumbnail files that Elastic Transcoder adds to the bucket. Valid
    #     values include:
    #
    #     * `READ`\: The grantee can read the thumbnails and metadata for
    #       objects that Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `READ_ACP`\: The grantee can read the object ACL for thumbnails
    #       that Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `WRITE_ACP`\: The grantee can write the ACL for the thumbnails
    #       that Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `FULL_CONTROL`\: The grantee has `READ`, `READ_ACP`, and
    #       `WRITE_ACP` permissions for the thumbnails that Elastic Transcoder
    #       adds to the Amazon S3 bucket.
    #
    #   * **StorageClass**\: The Amazon S3 storage class, `Standard` or
    #     `ReducedRedundancy`, that you want Elastic Transcoder to assign to
    #     the thumbnails that it stores in your Amazon S3 bucket.
    #
    # @return [Types::CreatePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePipelineResponse#pipeline #pipeline} => Types::Pipeline
    #   * {Types::CreatePipelineResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pipeline({
    #     name: "Name", # required
    #     input_bucket: "BucketName", # required
    #     output_bucket: "BucketName",
    #     role: "Role", # required
    #     aws_kms_key_arn: "KeyArn",
    #     notifications: {
    #       progressing: "SnsTopic",
    #       completed: "SnsTopic",
    #       warning: "SnsTopic",
    #       error: "SnsTopic",
    #     },
    #     content_config: {
    #       bucket: "BucketName",
    #       storage_class: "StorageClass",
    #       permissions: [
    #         {
    #           grantee_type: "GranteeType",
    #           grantee: "Grantee",
    #           access: ["AccessControl"],
    #         },
    #       ],
    #     },
    #     thumbnail_config: {
    #       bucket: "BucketName",
    #       storage_class: "StorageClass",
    #       permissions: [
    #         {
    #           grantee_type: "GranteeType",
    #           grantee: "Grantee",
    #           access: ["AccessControl"],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.id #=> String
    #   resp.pipeline.arn #=> String
    #   resp.pipeline.name #=> String
    #   resp.pipeline.status #=> String
    #   resp.pipeline.input_bucket #=> String
    #   resp.pipeline.output_bucket #=> String
    #   resp.pipeline.role #=> String
    #   resp.pipeline.aws_kms_key_arn #=> String
    #   resp.pipeline.notifications.progressing #=> String
    #   resp.pipeline.notifications.completed #=> String
    #   resp.pipeline.notifications.warning #=> String
    #   resp.pipeline.notifications.error #=> String
    #   resp.pipeline.content_config.bucket #=> String
    #   resp.pipeline.content_config.storage_class #=> String
    #   resp.pipeline.content_config.permissions #=> Array
    #   resp.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.pipeline.content_config.permissions[0].access #=> Array
    #   resp.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.pipeline.thumbnail_config.bucket #=> String
    #   resp.pipeline.thumbnail_config.storage_class #=> String
    #   resp.pipeline.thumbnail_config.permissions #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].grantee #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].access #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].access[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].code #=> String
    #   resp.warnings[0].message #=> String
    #
    # @overload create_pipeline(params = {})
    # @param [Hash] params ({})
    def create_pipeline(params = {}, options = {})
      req = build_request(:create_pipeline, params)
      req.send_request(options)
    end

    # The CreatePreset operation creates a preset with settings that you
    # specify.
    #
    # Elastic Transcoder checks the CreatePreset settings to ensure that
    # they meet Elastic Transcoder requirements and to determine whether
    # they comply with H.264 standards. If your settings are not valid for
    # Elastic Transcoder, Elastic Transcoder returns an HTTP 400 response
    # (`ValidationException`) and does not create the preset. If the
    # settings are valid for Elastic Transcoder but aren't strictly
    # compliant with the H.264 standard, Elastic Transcoder creates the
    # preset and returns a warning message in the response. This helps you
    # determine whether your settings comply with the H.264 standard while
    # giving you greater flexibility with respect to the video that Elastic
    # Transcoder produces.
    #
    # Elastic Transcoder uses the H.264 video-compression format. For more
    # information, see the International Telecommunication Union publication
    # *Recommendation ITU-T H.264: Advanced video coding for generic
    # audiovisual services*.
    #
    # @option params [required, String] :name
    #   The name of the preset. We recommend that the name be unique within
    #   the AWS account, but uniqueness is not enforced.
    #
    # @option params [String] :description
    #   A description of the preset.
    #
    # @option params [required, String] :container
    #   The container type for the output file. Valid values include `flac`,
    #   `flv`, `fmp4`, `gif`, `mp3`, `mp4`, `mpg`, `mxf`, `oga`, `ogg`, `ts`,
    #   and `webm`.
    #
    # @option params [Types::VideoParameters] :video
    #   A section of the request body that specifies the video parameters.
    #
    # @option params [Types::AudioParameters] :audio
    #   A section of the request body that specifies the audio parameters.
    #
    # @option params [Types::Thumbnails] :thumbnails
    #   A section of the request body that specifies the thumbnail parameters,
    #   if any.
    #
    # @return [Types::CreatePresetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreatePresetResponse#preset #preset} => Types::Preset
    #   * {Types::CreatePresetResponse#warning #warning} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_preset({
    #     name: "Name", # required
    #     description: "Description",
    #     container: "PresetContainer", # required
    #     video: {
    #       codec: "VideoCodec",
    #       codec_options: {
    #         "CodecOption" => "CodecOption",
    #       },
    #       keyframes_max_dist: "KeyframesMaxDist",
    #       fixed_gop: "FixedGOP",
    #       bit_rate: "VideoBitRate",
    #       frame_rate: "FrameRate",
    #       max_frame_rate: "MaxFrameRate",
    #       resolution: "Resolution",
    #       aspect_ratio: "AspectRatio",
    #       max_width: "DigitsOrAuto",
    #       max_height: "DigitsOrAuto",
    #       display_aspect_ratio: "AspectRatio",
    #       sizing_policy: "SizingPolicy",
    #       padding_policy: "PaddingPolicy",
    #       watermarks: [
    #         {
    #           id: "PresetWatermarkId",
    #           max_width: "PixelsOrPercent",
    #           max_height: "PixelsOrPercent",
    #           sizing_policy: "WatermarkSizingPolicy",
    #           horizontal_align: "HorizontalAlign",
    #           horizontal_offset: "PixelsOrPercent",
    #           vertical_align: "VerticalAlign",
    #           vertical_offset: "PixelsOrPercent",
    #           opacity: "Opacity",
    #           target: "Target",
    #         },
    #       ],
    #     },
    #     audio: {
    #       codec: "AudioCodec",
    #       sample_rate: "AudioSampleRate",
    #       bit_rate: "AudioBitRate",
    #       channels: "AudioChannels",
    #       audio_packing_mode: "AudioPackingMode",
    #       codec_options: {
    #         profile: "AudioCodecProfile",
    #         bit_depth: "AudioBitDepth",
    #         bit_order: "AudioBitOrder",
    #         signed: "AudioSigned",
    #       },
    #     },
    #     thumbnails: {
    #       format: "JpgOrPng",
    #       interval: "Digits",
    #       resolution: "ThumbnailResolution",
    #       aspect_ratio: "AspectRatio",
    #       max_width: "DigitsOrAuto",
    #       max_height: "DigitsOrAuto",
    #       sizing_policy: "SizingPolicy",
    #       padding_policy: "PaddingPolicy",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.preset.id #=> String
    #   resp.preset.arn #=> String
    #   resp.preset.name #=> String
    #   resp.preset.description #=> String
    #   resp.preset.container #=> String
    #   resp.preset.audio.codec #=> String
    #   resp.preset.audio.sample_rate #=> String
    #   resp.preset.audio.bit_rate #=> String
    #   resp.preset.audio.channels #=> String
    #   resp.preset.audio.audio_packing_mode #=> String
    #   resp.preset.audio.codec_options.profile #=> String
    #   resp.preset.audio.codec_options.bit_depth #=> String
    #   resp.preset.audio.codec_options.bit_order #=> String
    #   resp.preset.audio.codec_options.signed #=> String
    #   resp.preset.video.codec #=> String
    #   resp.preset.video.codec_options #=> Hash
    #   resp.preset.video.codec_options["CodecOption"] #=> String
    #   resp.preset.video.keyframes_max_dist #=> String
    #   resp.preset.video.fixed_gop #=> String
    #   resp.preset.video.bit_rate #=> String
    #   resp.preset.video.frame_rate #=> String
    #   resp.preset.video.max_frame_rate #=> String
    #   resp.preset.video.resolution #=> String
    #   resp.preset.video.aspect_ratio #=> String
    #   resp.preset.video.max_width #=> String
    #   resp.preset.video.max_height #=> String
    #   resp.preset.video.display_aspect_ratio #=> String
    #   resp.preset.video.sizing_policy #=> String
    #   resp.preset.video.padding_policy #=> String
    #   resp.preset.video.watermarks #=> Array
    #   resp.preset.video.watermarks[0].id #=> String
    #   resp.preset.video.watermarks[0].max_width #=> String
    #   resp.preset.video.watermarks[0].max_height #=> String
    #   resp.preset.video.watermarks[0].sizing_policy #=> String
    #   resp.preset.video.watermarks[0].horizontal_align #=> String
    #   resp.preset.video.watermarks[0].horizontal_offset #=> String
    #   resp.preset.video.watermarks[0].vertical_align #=> String
    #   resp.preset.video.watermarks[0].vertical_offset #=> String
    #   resp.preset.video.watermarks[0].opacity #=> String
    #   resp.preset.video.watermarks[0].target #=> String
    #   resp.preset.thumbnails.format #=> String
    #   resp.preset.thumbnails.interval #=> String
    #   resp.preset.thumbnails.resolution #=> String
    #   resp.preset.thumbnails.aspect_ratio #=> String
    #   resp.preset.thumbnails.max_width #=> String
    #   resp.preset.thumbnails.max_height #=> String
    #   resp.preset.thumbnails.sizing_policy #=> String
    #   resp.preset.thumbnails.padding_policy #=> String
    #   resp.preset.type #=> String
    #   resp.warning #=> String
    #
    # @overload create_preset(params = {})
    # @param [Hash] params ({})
    def create_preset(params = {}, options = {})
      req = build_request(:create_preset, params)
      req.send_request(options)
    end

    # The DeletePipeline operation removes a pipeline.
    #
    # You can only delete a pipeline that has never been used or that is not
    # currently in use (doesn't contain any active jobs). If the pipeline
    # is currently in use, `DeletePipeline` returns an error.
    #
    # @option params [required, String] :id
    #   The identifier of the pipeline that you want to delete.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pipeline({
    #     id: "Id", # required
    #   })
    #
    # @overload delete_pipeline(params = {})
    # @param [Hash] params ({})
    def delete_pipeline(params = {}, options = {})
      req = build_request(:delete_pipeline, params)
      req.send_request(options)
    end

    # The DeletePreset operation removes a preset that you've added in an
    # AWS region.
    #
    # <note markdown="1"> You can't delete the default presets that are included with Elastic
    # Transcoder.
    #
    #  </note>
    #
    # @option params [required, String] :id
    #   The identifier of the preset for which you want to get detailed
    #   information.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_preset({
    #     id: "Id", # required
    #   })
    #
    # @overload delete_preset(params = {})
    # @param [Hash] params ({})
    def delete_preset(params = {}, options = {})
      req = build_request(:delete_preset, params)
      req.send_request(options)
    end

    # The ListJobsByPipeline operation gets a list of the jobs currently in
    # a pipeline.
    #
    # Elastic Transcoder returns all of the jobs currently in the specified
    # pipeline. The response body contains one element for each job that
    # satisfies the search criteria.
    #
    # @option params [required, String] :pipeline_id
    #   The ID of the pipeline for which you want to get job information.
    #
    # @option params [String] :ascending
    #   To list jobs in chronological order by the date and time that they
    #   were submitted, enter `true`. To list jobs in reverse chronological
    #   order, enter `false`.
    #
    # @option params [String] :page_token
    #   When Elastic Transcoder returns more than one page of results, use
    #   `pageToken` in subsequent `GET` requests to get each successive page
    #   of results.
    #
    # @return [Types::ListJobsByPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsByPipelineResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::ListJobsByPipelineResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs_by_pipeline({
    #     pipeline_id: "Id", # required
    #     ascending: "Ascending",
    #     page_token: "Id",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].id #=> String
    #   resp.jobs[0].arn #=> String
    #   resp.jobs[0].pipeline_id #=> String
    #   resp.jobs[0].input.key #=> String
    #   resp.jobs[0].input.frame_rate #=> String
    #   resp.jobs[0].input.resolution #=> String
    #   resp.jobs[0].input.aspect_ratio #=> String
    #   resp.jobs[0].input.interlaced #=> String
    #   resp.jobs[0].input.container #=> String
    #   resp.jobs[0].input.encryption.mode #=> String
    #   resp.jobs[0].input.encryption.key #=> String
    #   resp.jobs[0].input.encryption.key_md_5 #=> String
    #   resp.jobs[0].input.encryption.initialization_vector #=> String
    #   resp.jobs[0].input.time_span.start_time #=> String
    #   resp.jobs[0].input.time_span.duration #=> String
    #   resp.jobs[0].input.input_captions.merge_policy #=> String
    #   resp.jobs[0].input.input_captions.caption_sources #=> Array
    #   resp.jobs[0].input.input_captions.caption_sources[0].key #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].language #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].time_offset #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].label #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].encryption.mode #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].encryption.key #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].input.detected_properties.width #=> Integer
    #   resp.jobs[0].input.detected_properties.height #=> Integer
    #   resp.jobs[0].input.detected_properties.frame_rate #=> String
    #   resp.jobs[0].input.detected_properties.file_size #=> Integer
    #   resp.jobs[0].input.detected_properties.duration_millis #=> Integer
    #   resp.jobs[0].inputs #=> Array
    #   resp.jobs[0].inputs[0].key #=> String
    #   resp.jobs[0].inputs[0].frame_rate #=> String
    #   resp.jobs[0].inputs[0].resolution #=> String
    #   resp.jobs[0].inputs[0].aspect_ratio #=> String
    #   resp.jobs[0].inputs[0].interlaced #=> String
    #   resp.jobs[0].inputs[0].container #=> String
    #   resp.jobs[0].inputs[0].encryption.mode #=> String
    #   resp.jobs[0].inputs[0].encryption.key #=> String
    #   resp.jobs[0].inputs[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].inputs[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].inputs[0].time_span.start_time #=> String
    #   resp.jobs[0].inputs[0].time_span.duration #=> String
    #   resp.jobs[0].inputs[0].input_captions.merge_policy #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources #=> Array
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].key #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].language #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].time_offset #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].label #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].encryption.mode #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].encryption.key #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].inputs[0].detected_properties.width #=> Integer
    #   resp.jobs[0].inputs[0].detected_properties.height #=> Integer
    #   resp.jobs[0].inputs[0].detected_properties.frame_rate #=> String
    #   resp.jobs[0].inputs[0].detected_properties.file_size #=> Integer
    #   resp.jobs[0].inputs[0].detected_properties.duration_millis #=> Integer
    #   resp.jobs[0].output.id #=> String
    #   resp.jobs[0].output.key #=> String
    #   resp.jobs[0].output.thumbnail_pattern #=> String
    #   resp.jobs[0].output.thumbnail_encryption.mode #=> String
    #   resp.jobs[0].output.thumbnail_encryption.key #=> String
    #   resp.jobs[0].output.thumbnail_encryption.key_md_5 #=> String
    #   resp.jobs[0].output.thumbnail_encryption.initialization_vector #=> String
    #   resp.jobs[0].output.rotate #=> String
    #   resp.jobs[0].output.preset_id #=> String
    #   resp.jobs[0].output.segment_duration #=> String
    #   resp.jobs[0].output.status #=> String
    #   resp.jobs[0].output.status_detail #=> String
    #   resp.jobs[0].output.duration #=> Integer
    #   resp.jobs[0].output.width #=> Integer
    #   resp.jobs[0].output.height #=> Integer
    #   resp.jobs[0].output.frame_rate #=> String
    #   resp.jobs[0].output.file_size #=> Integer
    #   resp.jobs[0].output.duration_millis #=> Integer
    #   resp.jobs[0].output.watermarks #=> Array
    #   resp.jobs[0].output.watermarks[0].preset_watermark_id #=> String
    #   resp.jobs[0].output.watermarks[0].input_key #=> String
    #   resp.jobs[0].output.watermarks[0].encryption.mode #=> String
    #   resp.jobs[0].output.watermarks[0].encryption.key #=> String
    #   resp.jobs[0].output.watermarks[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].output.watermarks[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].output.album_art.merge_policy #=> String
    #   resp.jobs[0].output.album_art.artwork #=> Array
    #   resp.jobs[0].output.album_art.artwork[0].input_key #=> String
    #   resp.jobs[0].output.album_art.artwork[0].max_width #=> String
    #   resp.jobs[0].output.album_art.artwork[0].max_height #=> String
    #   resp.jobs[0].output.album_art.artwork[0].sizing_policy #=> String
    #   resp.jobs[0].output.album_art.artwork[0].padding_policy #=> String
    #   resp.jobs[0].output.album_art.artwork[0].album_art_format #=> String
    #   resp.jobs[0].output.album_art.artwork[0].encryption.mode #=> String
    #   resp.jobs[0].output.album_art.artwork[0].encryption.key #=> String
    #   resp.jobs[0].output.album_art.artwork[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].output.album_art.artwork[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].output.composition #=> Array
    #   resp.jobs[0].output.composition[0].time_span.start_time #=> String
    #   resp.jobs[0].output.composition[0].time_span.duration #=> String
    #   resp.jobs[0].output.captions.merge_policy #=> String
    #   resp.jobs[0].output.captions.caption_sources #=> Array
    #   resp.jobs[0].output.captions.caption_sources[0].key #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].language #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].time_offset #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].label #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].encryption.mode #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].encryption.key #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].output.captions.caption_formats #=> Array
    #   resp.jobs[0].output.captions.caption_formats[0].format #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].pattern #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].encryption.mode #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].encryption.key #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].output.encryption.mode #=> String
    #   resp.jobs[0].output.encryption.key #=> String
    #   resp.jobs[0].output.encryption.key_md_5 #=> String
    #   resp.jobs[0].output.encryption.initialization_vector #=> String
    #   resp.jobs[0].output.applied_color_space_conversion #=> String
    #   resp.jobs[0].outputs #=> Array
    #   resp.jobs[0].outputs[0].id #=> String
    #   resp.jobs[0].outputs[0].key #=> String
    #   resp.jobs[0].outputs[0].thumbnail_pattern #=> String
    #   resp.jobs[0].outputs[0].thumbnail_encryption.mode #=> String
    #   resp.jobs[0].outputs[0].thumbnail_encryption.key #=> String
    #   resp.jobs[0].outputs[0].thumbnail_encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].thumbnail_encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].rotate #=> String
    #   resp.jobs[0].outputs[0].preset_id #=> String
    #   resp.jobs[0].outputs[0].segment_duration #=> String
    #   resp.jobs[0].outputs[0].status #=> String
    #   resp.jobs[0].outputs[0].status_detail #=> String
    #   resp.jobs[0].outputs[0].duration #=> Integer
    #   resp.jobs[0].outputs[0].width #=> Integer
    #   resp.jobs[0].outputs[0].height #=> Integer
    #   resp.jobs[0].outputs[0].frame_rate #=> String
    #   resp.jobs[0].outputs[0].file_size #=> Integer
    #   resp.jobs[0].outputs[0].duration_millis #=> Integer
    #   resp.jobs[0].outputs[0].watermarks #=> Array
    #   resp.jobs[0].outputs[0].watermarks[0].preset_watermark_id #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].input_key #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].album_art.merge_policy #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork #=> Array
    #   resp.jobs[0].outputs[0].album_art.artwork[0].input_key #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].max_width #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].max_height #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].sizing_policy #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].padding_policy #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].album_art_format #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].composition #=> Array
    #   resp.jobs[0].outputs[0].composition[0].time_span.start_time #=> String
    #   resp.jobs[0].outputs[0].composition[0].time_span.duration #=> String
    #   resp.jobs[0].outputs[0].captions.merge_policy #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources #=> Array
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].key #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].language #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].time_offset #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].label #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats #=> Array
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].format #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].pattern #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].applied_color_space_conversion #=> String
    #   resp.jobs[0].output_key_prefix #=> String
    #   resp.jobs[0].playlists #=> Array
    #   resp.jobs[0].playlists[0].name #=> String
    #   resp.jobs[0].playlists[0].format #=> String
    #   resp.jobs[0].playlists[0].output_keys #=> Array
    #   resp.jobs[0].playlists[0].output_keys[0] #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.method #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.key #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.key_md_5 #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.initialization_vector #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.license_acquisition_url #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.key_storage_policy #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.format #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.key #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.key_md_5 #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.key_id #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.initialization_vector #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.license_acquisition_url #=> String
    #   resp.jobs[0].playlists[0].status #=> String
    #   resp.jobs[0].playlists[0].status_detail #=> String
    #   resp.jobs[0].status #=> String
    #   resp.jobs[0].user_metadata #=> Hash
    #   resp.jobs[0].user_metadata["String"] #=> String
    #   resp.jobs[0].timing.submit_time_millis #=> Integer
    #   resp.jobs[0].timing.start_time_millis #=> Integer
    #   resp.jobs[0].timing.finish_time_millis #=> Integer
    #   resp.next_page_token #=> String
    #
    # @overload list_jobs_by_pipeline(params = {})
    # @param [Hash] params ({})
    def list_jobs_by_pipeline(params = {}, options = {})
      req = build_request(:list_jobs_by_pipeline, params)
      req.send_request(options)
    end

    # The ListJobsByStatus operation gets a list of jobs that have a
    # specified status. The response body contains one element for each job
    # that satisfies the search criteria.
    #
    # @option params [required, String] :status
    #   To get information about all of the jobs associated with the current
    #   AWS account that have a given status, specify the following status:
    #   `Submitted`, `Progressing`, `Complete`, `Canceled`, or `Error`.
    #
    # @option params [String] :ascending
    #   To list jobs in chronological order by the date and time that they
    #   were submitted, enter `true`. To list jobs in reverse chronological
    #   order, enter `false`.
    #
    # @option params [String] :page_token
    #   When Elastic Transcoder returns more than one page of results, use
    #   `pageToken` in subsequent `GET` requests to get each successive page
    #   of results.
    #
    # @return [Types::ListJobsByStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListJobsByStatusResponse#jobs #jobs} => Array&lt;Types::Job&gt;
    #   * {Types::ListJobsByStatusResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_jobs_by_status({
    #     status: "JobStatus", # required
    #     ascending: "Ascending",
    #     page_token: "Id",
    #   })
    #
    # @example Response structure
    #
    #   resp.jobs #=> Array
    #   resp.jobs[0].id #=> String
    #   resp.jobs[0].arn #=> String
    #   resp.jobs[0].pipeline_id #=> String
    #   resp.jobs[0].input.key #=> String
    #   resp.jobs[0].input.frame_rate #=> String
    #   resp.jobs[0].input.resolution #=> String
    #   resp.jobs[0].input.aspect_ratio #=> String
    #   resp.jobs[0].input.interlaced #=> String
    #   resp.jobs[0].input.container #=> String
    #   resp.jobs[0].input.encryption.mode #=> String
    #   resp.jobs[0].input.encryption.key #=> String
    #   resp.jobs[0].input.encryption.key_md_5 #=> String
    #   resp.jobs[0].input.encryption.initialization_vector #=> String
    #   resp.jobs[0].input.time_span.start_time #=> String
    #   resp.jobs[0].input.time_span.duration #=> String
    #   resp.jobs[0].input.input_captions.merge_policy #=> String
    #   resp.jobs[0].input.input_captions.caption_sources #=> Array
    #   resp.jobs[0].input.input_captions.caption_sources[0].key #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].language #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].time_offset #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].label #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].encryption.mode #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].encryption.key #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].input.input_captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].input.detected_properties.width #=> Integer
    #   resp.jobs[0].input.detected_properties.height #=> Integer
    #   resp.jobs[0].input.detected_properties.frame_rate #=> String
    #   resp.jobs[0].input.detected_properties.file_size #=> Integer
    #   resp.jobs[0].input.detected_properties.duration_millis #=> Integer
    #   resp.jobs[0].inputs #=> Array
    #   resp.jobs[0].inputs[0].key #=> String
    #   resp.jobs[0].inputs[0].frame_rate #=> String
    #   resp.jobs[0].inputs[0].resolution #=> String
    #   resp.jobs[0].inputs[0].aspect_ratio #=> String
    #   resp.jobs[0].inputs[0].interlaced #=> String
    #   resp.jobs[0].inputs[0].container #=> String
    #   resp.jobs[0].inputs[0].encryption.mode #=> String
    #   resp.jobs[0].inputs[0].encryption.key #=> String
    #   resp.jobs[0].inputs[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].inputs[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].inputs[0].time_span.start_time #=> String
    #   resp.jobs[0].inputs[0].time_span.duration #=> String
    #   resp.jobs[0].inputs[0].input_captions.merge_policy #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources #=> Array
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].key #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].language #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].time_offset #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].label #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].encryption.mode #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].encryption.key #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].inputs[0].input_captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].inputs[0].detected_properties.width #=> Integer
    #   resp.jobs[0].inputs[0].detected_properties.height #=> Integer
    #   resp.jobs[0].inputs[0].detected_properties.frame_rate #=> String
    #   resp.jobs[0].inputs[0].detected_properties.file_size #=> Integer
    #   resp.jobs[0].inputs[0].detected_properties.duration_millis #=> Integer
    #   resp.jobs[0].output.id #=> String
    #   resp.jobs[0].output.key #=> String
    #   resp.jobs[0].output.thumbnail_pattern #=> String
    #   resp.jobs[0].output.thumbnail_encryption.mode #=> String
    #   resp.jobs[0].output.thumbnail_encryption.key #=> String
    #   resp.jobs[0].output.thumbnail_encryption.key_md_5 #=> String
    #   resp.jobs[0].output.thumbnail_encryption.initialization_vector #=> String
    #   resp.jobs[0].output.rotate #=> String
    #   resp.jobs[0].output.preset_id #=> String
    #   resp.jobs[0].output.segment_duration #=> String
    #   resp.jobs[0].output.status #=> String
    #   resp.jobs[0].output.status_detail #=> String
    #   resp.jobs[0].output.duration #=> Integer
    #   resp.jobs[0].output.width #=> Integer
    #   resp.jobs[0].output.height #=> Integer
    #   resp.jobs[0].output.frame_rate #=> String
    #   resp.jobs[0].output.file_size #=> Integer
    #   resp.jobs[0].output.duration_millis #=> Integer
    #   resp.jobs[0].output.watermarks #=> Array
    #   resp.jobs[0].output.watermarks[0].preset_watermark_id #=> String
    #   resp.jobs[0].output.watermarks[0].input_key #=> String
    #   resp.jobs[0].output.watermarks[0].encryption.mode #=> String
    #   resp.jobs[0].output.watermarks[0].encryption.key #=> String
    #   resp.jobs[0].output.watermarks[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].output.watermarks[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].output.album_art.merge_policy #=> String
    #   resp.jobs[0].output.album_art.artwork #=> Array
    #   resp.jobs[0].output.album_art.artwork[0].input_key #=> String
    #   resp.jobs[0].output.album_art.artwork[0].max_width #=> String
    #   resp.jobs[0].output.album_art.artwork[0].max_height #=> String
    #   resp.jobs[0].output.album_art.artwork[0].sizing_policy #=> String
    #   resp.jobs[0].output.album_art.artwork[0].padding_policy #=> String
    #   resp.jobs[0].output.album_art.artwork[0].album_art_format #=> String
    #   resp.jobs[0].output.album_art.artwork[0].encryption.mode #=> String
    #   resp.jobs[0].output.album_art.artwork[0].encryption.key #=> String
    #   resp.jobs[0].output.album_art.artwork[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].output.album_art.artwork[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].output.composition #=> Array
    #   resp.jobs[0].output.composition[0].time_span.start_time #=> String
    #   resp.jobs[0].output.composition[0].time_span.duration #=> String
    #   resp.jobs[0].output.captions.merge_policy #=> String
    #   resp.jobs[0].output.captions.caption_sources #=> Array
    #   resp.jobs[0].output.captions.caption_sources[0].key #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].language #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].time_offset #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].label #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].encryption.mode #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].encryption.key #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].output.captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].output.captions.caption_formats #=> Array
    #   resp.jobs[0].output.captions.caption_formats[0].format #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].pattern #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].encryption.mode #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].encryption.key #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].output.captions.caption_formats[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].output.encryption.mode #=> String
    #   resp.jobs[0].output.encryption.key #=> String
    #   resp.jobs[0].output.encryption.key_md_5 #=> String
    #   resp.jobs[0].output.encryption.initialization_vector #=> String
    #   resp.jobs[0].output.applied_color_space_conversion #=> String
    #   resp.jobs[0].outputs #=> Array
    #   resp.jobs[0].outputs[0].id #=> String
    #   resp.jobs[0].outputs[0].key #=> String
    #   resp.jobs[0].outputs[0].thumbnail_pattern #=> String
    #   resp.jobs[0].outputs[0].thumbnail_encryption.mode #=> String
    #   resp.jobs[0].outputs[0].thumbnail_encryption.key #=> String
    #   resp.jobs[0].outputs[0].thumbnail_encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].thumbnail_encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].rotate #=> String
    #   resp.jobs[0].outputs[0].preset_id #=> String
    #   resp.jobs[0].outputs[0].segment_duration #=> String
    #   resp.jobs[0].outputs[0].status #=> String
    #   resp.jobs[0].outputs[0].status_detail #=> String
    #   resp.jobs[0].outputs[0].duration #=> Integer
    #   resp.jobs[0].outputs[0].width #=> Integer
    #   resp.jobs[0].outputs[0].height #=> Integer
    #   resp.jobs[0].outputs[0].frame_rate #=> String
    #   resp.jobs[0].outputs[0].file_size #=> Integer
    #   resp.jobs[0].outputs[0].duration_millis #=> Integer
    #   resp.jobs[0].outputs[0].watermarks #=> Array
    #   resp.jobs[0].outputs[0].watermarks[0].preset_watermark_id #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].input_key #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].watermarks[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].album_art.merge_policy #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork #=> Array
    #   resp.jobs[0].outputs[0].album_art.artwork[0].input_key #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].max_width #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].max_height #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].sizing_policy #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].padding_policy #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].album_art_format #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].album_art.artwork[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].composition #=> Array
    #   resp.jobs[0].outputs[0].composition[0].time_span.start_time #=> String
    #   resp.jobs[0].outputs[0].composition[0].time_span.duration #=> String
    #   resp.jobs[0].outputs[0].captions.merge_policy #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources #=> Array
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].key #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].language #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].time_offset #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].label #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats #=> Array
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].format #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].pattern #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].captions.caption_formats[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].encryption.mode #=> String
    #   resp.jobs[0].outputs[0].encryption.key #=> String
    #   resp.jobs[0].outputs[0].encryption.key_md_5 #=> String
    #   resp.jobs[0].outputs[0].encryption.initialization_vector #=> String
    #   resp.jobs[0].outputs[0].applied_color_space_conversion #=> String
    #   resp.jobs[0].output_key_prefix #=> String
    #   resp.jobs[0].playlists #=> Array
    #   resp.jobs[0].playlists[0].name #=> String
    #   resp.jobs[0].playlists[0].format #=> String
    #   resp.jobs[0].playlists[0].output_keys #=> Array
    #   resp.jobs[0].playlists[0].output_keys[0] #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.method #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.key #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.key_md_5 #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.initialization_vector #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.license_acquisition_url #=> String
    #   resp.jobs[0].playlists[0].hls_content_protection.key_storage_policy #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.format #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.key #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.key_md_5 #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.key_id #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.initialization_vector #=> String
    #   resp.jobs[0].playlists[0].play_ready_drm.license_acquisition_url #=> String
    #   resp.jobs[0].playlists[0].status #=> String
    #   resp.jobs[0].playlists[0].status_detail #=> String
    #   resp.jobs[0].status #=> String
    #   resp.jobs[0].user_metadata #=> Hash
    #   resp.jobs[0].user_metadata["String"] #=> String
    #   resp.jobs[0].timing.submit_time_millis #=> Integer
    #   resp.jobs[0].timing.start_time_millis #=> Integer
    #   resp.jobs[0].timing.finish_time_millis #=> Integer
    #   resp.next_page_token #=> String
    #
    # @overload list_jobs_by_status(params = {})
    # @param [Hash] params ({})
    def list_jobs_by_status(params = {}, options = {})
      req = build_request(:list_jobs_by_status, params)
      req.send_request(options)
    end

    # The ListPipelines operation gets a list of the pipelines associated
    # with the current AWS account.
    #
    # @option params [String] :ascending
    #   To list pipelines in chronological order by the date and time that
    #   they were created, enter `true`. To list pipelines in reverse
    #   chronological order, enter `false`.
    #
    # @option params [String] :page_token
    #   When Elastic Transcoder returns more than one page of results, use
    #   `pageToken` in subsequent `GET` requests to get each successive page
    #   of results.
    #
    # @return [Types::ListPipelinesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPipelinesResponse#pipelines #pipelines} => Array&lt;Types::Pipeline&gt;
    #   * {Types::ListPipelinesResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pipelines({
    #     ascending: "Ascending",
    #     page_token: "Id",
    #   })
    #
    # @example Response structure
    #
    #   resp.pipelines #=> Array
    #   resp.pipelines[0].id #=> String
    #   resp.pipelines[0].arn #=> String
    #   resp.pipelines[0].name #=> String
    #   resp.pipelines[0].status #=> String
    #   resp.pipelines[0].input_bucket #=> String
    #   resp.pipelines[0].output_bucket #=> String
    #   resp.pipelines[0].role #=> String
    #   resp.pipelines[0].aws_kms_key_arn #=> String
    #   resp.pipelines[0].notifications.progressing #=> String
    #   resp.pipelines[0].notifications.completed #=> String
    #   resp.pipelines[0].notifications.warning #=> String
    #   resp.pipelines[0].notifications.error #=> String
    #   resp.pipelines[0].content_config.bucket #=> String
    #   resp.pipelines[0].content_config.storage_class #=> String
    #   resp.pipelines[0].content_config.permissions #=> Array
    #   resp.pipelines[0].content_config.permissions[0].grantee_type #=> String
    #   resp.pipelines[0].content_config.permissions[0].grantee #=> String
    #   resp.pipelines[0].content_config.permissions[0].access #=> Array
    #   resp.pipelines[0].content_config.permissions[0].access[0] #=> String
    #   resp.pipelines[0].thumbnail_config.bucket #=> String
    #   resp.pipelines[0].thumbnail_config.storage_class #=> String
    #   resp.pipelines[0].thumbnail_config.permissions #=> Array
    #   resp.pipelines[0].thumbnail_config.permissions[0].grantee_type #=> String
    #   resp.pipelines[0].thumbnail_config.permissions[0].grantee #=> String
    #   resp.pipelines[0].thumbnail_config.permissions[0].access #=> Array
    #   resp.pipelines[0].thumbnail_config.permissions[0].access[0] #=> String
    #   resp.next_page_token #=> String
    #
    # @overload list_pipelines(params = {})
    # @param [Hash] params ({})
    def list_pipelines(params = {}, options = {})
      req = build_request(:list_pipelines, params)
      req.send_request(options)
    end

    # The ListPresets operation gets a list of the default presets included
    # with Elastic Transcoder and the presets that you've added in an AWS
    # region.
    #
    # @option params [String] :ascending
    #   To list presets in chronological order by the date and time that they
    #   were created, enter `true`. To list presets in reverse chronological
    #   order, enter `false`.
    #
    # @option params [String] :page_token
    #   When Elastic Transcoder returns more than one page of results, use
    #   `pageToken` in subsequent `GET` requests to get each successive page
    #   of results.
    #
    # @return [Types::ListPresetsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListPresetsResponse#presets #presets} => Array&lt;Types::Preset&gt;
    #   * {Types::ListPresetsResponse#next_page_token #next_page_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_presets({
    #     ascending: "Ascending",
    #     page_token: "Id",
    #   })
    #
    # @example Response structure
    #
    #   resp.presets #=> Array
    #   resp.presets[0].id #=> String
    #   resp.presets[0].arn #=> String
    #   resp.presets[0].name #=> String
    #   resp.presets[0].description #=> String
    #   resp.presets[0].container #=> String
    #   resp.presets[0].audio.codec #=> String
    #   resp.presets[0].audio.sample_rate #=> String
    #   resp.presets[0].audio.bit_rate #=> String
    #   resp.presets[0].audio.channels #=> String
    #   resp.presets[0].audio.audio_packing_mode #=> String
    #   resp.presets[0].audio.codec_options.profile #=> String
    #   resp.presets[0].audio.codec_options.bit_depth #=> String
    #   resp.presets[0].audio.codec_options.bit_order #=> String
    #   resp.presets[0].audio.codec_options.signed #=> String
    #   resp.presets[0].video.codec #=> String
    #   resp.presets[0].video.codec_options #=> Hash
    #   resp.presets[0].video.codec_options["CodecOption"] #=> String
    #   resp.presets[0].video.keyframes_max_dist #=> String
    #   resp.presets[0].video.fixed_gop #=> String
    #   resp.presets[0].video.bit_rate #=> String
    #   resp.presets[0].video.frame_rate #=> String
    #   resp.presets[0].video.max_frame_rate #=> String
    #   resp.presets[0].video.resolution #=> String
    #   resp.presets[0].video.aspect_ratio #=> String
    #   resp.presets[0].video.max_width #=> String
    #   resp.presets[0].video.max_height #=> String
    #   resp.presets[0].video.display_aspect_ratio #=> String
    #   resp.presets[0].video.sizing_policy #=> String
    #   resp.presets[0].video.padding_policy #=> String
    #   resp.presets[0].video.watermarks #=> Array
    #   resp.presets[0].video.watermarks[0].id #=> String
    #   resp.presets[0].video.watermarks[0].max_width #=> String
    #   resp.presets[0].video.watermarks[0].max_height #=> String
    #   resp.presets[0].video.watermarks[0].sizing_policy #=> String
    #   resp.presets[0].video.watermarks[0].horizontal_align #=> String
    #   resp.presets[0].video.watermarks[0].horizontal_offset #=> String
    #   resp.presets[0].video.watermarks[0].vertical_align #=> String
    #   resp.presets[0].video.watermarks[0].vertical_offset #=> String
    #   resp.presets[0].video.watermarks[0].opacity #=> String
    #   resp.presets[0].video.watermarks[0].target #=> String
    #   resp.presets[0].thumbnails.format #=> String
    #   resp.presets[0].thumbnails.interval #=> String
    #   resp.presets[0].thumbnails.resolution #=> String
    #   resp.presets[0].thumbnails.aspect_ratio #=> String
    #   resp.presets[0].thumbnails.max_width #=> String
    #   resp.presets[0].thumbnails.max_height #=> String
    #   resp.presets[0].thumbnails.sizing_policy #=> String
    #   resp.presets[0].thumbnails.padding_policy #=> String
    #   resp.presets[0].type #=> String
    #   resp.next_page_token #=> String
    #
    # @overload list_presets(params = {})
    # @param [Hash] params ({})
    def list_presets(params = {}, options = {})
      req = build_request(:list_presets, params)
      req.send_request(options)
    end

    # The ReadJob operation returns detailed information about a job.
    #
    # @option params [required, String] :id
    #   The identifier of the job for which you want to get detailed
    #   information.
    #
    # @return [Types::ReadJobResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReadJobResponse#job #job} => Types::Job
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.read_job({
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.job.id #=> String
    #   resp.job.arn #=> String
    #   resp.job.pipeline_id #=> String
    #   resp.job.input.key #=> String
    #   resp.job.input.frame_rate #=> String
    #   resp.job.input.resolution #=> String
    #   resp.job.input.aspect_ratio #=> String
    #   resp.job.input.interlaced #=> String
    #   resp.job.input.container #=> String
    #   resp.job.input.encryption.mode #=> String
    #   resp.job.input.encryption.key #=> String
    #   resp.job.input.encryption.key_md_5 #=> String
    #   resp.job.input.encryption.initialization_vector #=> String
    #   resp.job.input.time_span.start_time #=> String
    #   resp.job.input.time_span.duration #=> String
    #   resp.job.input.input_captions.merge_policy #=> String
    #   resp.job.input.input_captions.caption_sources #=> Array
    #   resp.job.input.input_captions.caption_sources[0].key #=> String
    #   resp.job.input.input_captions.caption_sources[0].language #=> String
    #   resp.job.input.input_captions.caption_sources[0].time_offset #=> String
    #   resp.job.input.input_captions.caption_sources[0].label #=> String
    #   resp.job.input.input_captions.caption_sources[0].encryption.mode #=> String
    #   resp.job.input.input_captions.caption_sources[0].encryption.key #=> String
    #   resp.job.input.input_captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.job.input.input_captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.job.input.detected_properties.width #=> Integer
    #   resp.job.input.detected_properties.height #=> Integer
    #   resp.job.input.detected_properties.frame_rate #=> String
    #   resp.job.input.detected_properties.file_size #=> Integer
    #   resp.job.input.detected_properties.duration_millis #=> Integer
    #   resp.job.inputs #=> Array
    #   resp.job.inputs[0].key #=> String
    #   resp.job.inputs[0].frame_rate #=> String
    #   resp.job.inputs[0].resolution #=> String
    #   resp.job.inputs[0].aspect_ratio #=> String
    #   resp.job.inputs[0].interlaced #=> String
    #   resp.job.inputs[0].container #=> String
    #   resp.job.inputs[0].encryption.mode #=> String
    #   resp.job.inputs[0].encryption.key #=> String
    #   resp.job.inputs[0].encryption.key_md_5 #=> String
    #   resp.job.inputs[0].encryption.initialization_vector #=> String
    #   resp.job.inputs[0].time_span.start_time #=> String
    #   resp.job.inputs[0].time_span.duration #=> String
    #   resp.job.inputs[0].input_captions.merge_policy #=> String
    #   resp.job.inputs[0].input_captions.caption_sources #=> Array
    #   resp.job.inputs[0].input_captions.caption_sources[0].key #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].language #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].time_offset #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].label #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].encryption.mode #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].encryption.key #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.job.inputs[0].input_captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.job.inputs[0].detected_properties.width #=> Integer
    #   resp.job.inputs[0].detected_properties.height #=> Integer
    #   resp.job.inputs[0].detected_properties.frame_rate #=> String
    #   resp.job.inputs[0].detected_properties.file_size #=> Integer
    #   resp.job.inputs[0].detected_properties.duration_millis #=> Integer
    #   resp.job.output.id #=> String
    #   resp.job.output.key #=> String
    #   resp.job.output.thumbnail_pattern #=> String
    #   resp.job.output.thumbnail_encryption.mode #=> String
    #   resp.job.output.thumbnail_encryption.key #=> String
    #   resp.job.output.thumbnail_encryption.key_md_5 #=> String
    #   resp.job.output.thumbnail_encryption.initialization_vector #=> String
    #   resp.job.output.rotate #=> String
    #   resp.job.output.preset_id #=> String
    #   resp.job.output.segment_duration #=> String
    #   resp.job.output.status #=> String
    #   resp.job.output.status_detail #=> String
    #   resp.job.output.duration #=> Integer
    #   resp.job.output.width #=> Integer
    #   resp.job.output.height #=> Integer
    #   resp.job.output.frame_rate #=> String
    #   resp.job.output.file_size #=> Integer
    #   resp.job.output.duration_millis #=> Integer
    #   resp.job.output.watermarks #=> Array
    #   resp.job.output.watermarks[0].preset_watermark_id #=> String
    #   resp.job.output.watermarks[0].input_key #=> String
    #   resp.job.output.watermarks[0].encryption.mode #=> String
    #   resp.job.output.watermarks[0].encryption.key #=> String
    #   resp.job.output.watermarks[0].encryption.key_md_5 #=> String
    #   resp.job.output.watermarks[0].encryption.initialization_vector #=> String
    #   resp.job.output.album_art.merge_policy #=> String
    #   resp.job.output.album_art.artwork #=> Array
    #   resp.job.output.album_art.artwork[0].input_key #=> String
    #   resp.job.output.album_art.artwork[0].max_width #=> String
    #   resp.job.output.album_art.artwork[0].max_height #=> String
    #   resp.job.output.album_art.artwork[0].sizing_policy #=> String
    #   resp.job.output.album_art.artwork[0].padding_policy #=> String
    #   resp.job.output.album_art.artwork[0].album_art_format #=> String
    #   resp.job.output.album_art.artwork[0].encryption.mode #=> String
    #   resp.job.output.album_art.artwork[0].encryption.key #=> String
    #   resp.job.output.album_art.artwork[0].encryption.key_md_5 #=> String
    #   resp.job.output.album_art.artwork[0].encryption.initialization_vector #=> String
    #   resp.job.output.composition #=> Array
    #   resp.job.output.composition[0].time_span.start_time #=> String
    #   resp.job.output.composition[0].time_span.duration #=> String
    #   resp.job.output.captions.merge_policy #=> String
    #   resp.job.output.captions.caption_sources #=> Array
    #   resp.job.output.captions.caption_sources[0].key #=> String
    #   resp.job.output.captions.caption_sources[0].language #=> String
    #   resp.job.output.captions.caption_sources[0].time_offset #=> String
    #   resp.job.output.captions.caption_sources[0].label #=> String
    #   resp.job.output.captions.caption_sources[0].encryption.mode #=> String
    #   resp.job.output.captions.caption_sources[0].encryption.key #=> String
    #   resp.job.output.captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.job.output.captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.job.output.captions.caption_formats #=> Array
    #   resp.job.output.captions.caption_formats[0].format #=> String
    #   resp.job.output.captions.caption_formats[0].pattern #=> String
    #   resp.job.output.captions.caption_formats[0].encryption.mode #=> String
    #   resp.job.output.captions.caption_formats[0].encryption.key #=> String
    #   resp.job.output.captions.caption_formats[0].encryption.key_md_5 #=> String
    #   resp.job.output.captions.caption_formats[0].encryption.initialization_vector #=> String
    #   resp.job.output.encryption.mode #=> String
    #   resp.job.output.encryption.key #=> String
    #   resp.job.output.encryption.key_md_5 #=> String
    #   resp.job.output.encryption.initialization_vector #=> String
    #   resp.job.output.applied_color_space_conversion #=> String
    #   resp.job.outputs #=> Array
    #   resp.job.outputs[0].id #=> String
    #   resp.job.outputs[0].key #=> String
    #   resp.job.outputs[0].thumbnail_pattern #=> String
    #   resp.job.outputs[0].thumbnail_encryption.mode #=> String
    #   resp.job.outputs[0].thumbnail_encryption.key #=> String
    #   resp.job.outputs[0].thumbnail_encryption.key_md_5 #=> String
    #   resp.job.outputs[0].thumbnail_encryption.initialization_vector #=> String
    #   resp.job.outputs[0].rotate #=> String
    #   resp.job.outputs[0].preset_id #=> String
    #   resp.job.outputs[0].segment_duration #=> String
    #   resp.job.outputs[0].status #=> String
    #   resp.job.outputs[0].status_detail #=> String
    #   resp.job.outputs[0].duration #=> Integer
    #   resp.job.outputs[0].width #=> Integer
    #   resp.job.outputs[0].height #=> Integer
    #   resp.job.outputs[0].frame_rate #=> String
    #   resp.job.outputs[0].file_size #=> Integer
    #   resp.job.outputs[0].duration_millis #=> Integer
    #   resp.job.outputs[0].watermarks #=> Array
    #   resp.job.outputs[0].watermarks[0].preset_watermark_id #=> String
    #   resp.job.outputs[0].watermarks[0].input_key #=> String
    #   resp.job.outputs[0].watermarks[0].encryption.mode #=> String
    #   resp.job.outputs[0].watermarks[0].encryption.key #=> String
    #   resp.job.outputs[0].watermarks[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].watermarks[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].album_art.merge_policy #=> String
    #   resp.job.outputs[0].album_art.artwork #=> Array
    #   resp.job.outputs[0].album_art.artwork[0].input_key #=> String
    #   resp.job.outputs[0].album_art.artwork[0].max_width #=> String
    #   resp.job.outputs[0].album_art.artwork[0].max_height #=> String
    #   resp.job.outputs[0].album_art.artwork[0].sizing_policy #=> String
    #   resp.job.outputs[0].album_art.artwork[0].padding_policy #=> String
    #   resp.job.outputs[0].album_art.artwork[0].album_art_format #=> String
    #   resp.job.outputs[0].album_art.artwork[0].encryption.mode #=> String
    #   resp.job.outputs[0].album_art.artwork[0].encryption.key #=> String
    #   resp.job.outputs[0].album_art.artwork[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].album_art.artwork[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].composition #=> Array
    #   resp.job.outputs[0].composition[0].time_span.start_time #=> String
    #   resp.job.outputs[0].composition[0].time_span.duration #=> String
    #   resp.job.outputs[0].captions.merge_policy #=> String
    #   resp.job.outputs[0].captions.caption_sources #=> Array
    #   resp.job.outputs[0].captions.caption_sources[0].key #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].language #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].time_offset #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].label #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].encryption.mode #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].encryption.key #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].captions.caption_sources[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].captions.caption_formats #=> Array
    #   resp.job.outputs[0].captions.caption_formats[0].format #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].pattern #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].encryption.mode #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].encryption.key #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].captions.caption_formats[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].encryption.mode #=> String
    #   resp.job.outputs[0].encryption.key #=> String
    #   resp.job.outputs[0].encryption.key_md_5 #=> String
    #   resp.job.outputs[0].encryption.initialization_vector #=> String
    #   resp.job.outputs[0].applied_color_space_conversion #=> String
    #   resp.job.output_key_prefix #=> String
    #   resp.job.playlists #=> Array
    #   resp.job.playlists[0].name #=> String
    #   resp.job.playlists[0].format #=> String
    #   resp.job.playlists[0].output_keys #=> Array
    #   resp.job.playlists[0].output_keys[0] #=> String
    #   resp.job.playlists[0].hls_content_protection.method #=> String
    #   resp.job.playlists[0].hls_content_protection.key #=> String
    #   resp.job.playlists[0].hls_content_protection.key_md_5 #=> String
    #   resp.job.playlists[0].hls_content_protection.initialization_vector #=> String
    #   resp.job.playlists[0].hls_content_protection.license_acquisition_url #=> String
    #   resp.job.playlists[0].hls_content_protection.key_storage_policy #=> String
    #   resp.job.playlists[0].play_ready_drm.format #=> String
    #   resp.job.playlists[0].play_ready_drm.key #=> String
    #   resp.job.playlists[0].play_ready_drm.key_md_5 #=> String
    #   resp.job.playlists[0].play_ready_drm.key_id #=> String
    #   resp.job.playlists[0].play_ready_drm.initialization_vector #=> String
    #   resp.job.playlists[0].play_ready_drm.license_acquisition_url #=> String
    #   resp.job.playlists[0].status #=> String
    #   resp.job.playlists[0].status_detail #=> String
    #   resp.job.status #=> String
    #   resp.job.user_metadata #=> Hash
    #   resp.job.user_metadata["String"] #=> String
    #   resp.job.timing.submit_time_millis #=> Integer
    #   resp.job.timing.start_time_millis #=> Integer
    #   resp.job.timing.finish_time_millis #=> Integer
    #
    # @overload read_job(params = {})
    # @param [Hash] params ({})
    def read_job(params = {}, options = {})
      req = build_request(:read_job, params)
      req.send_request(options)
    end

    # The ReadPipeline operation gets detailed information about a pipeline.
    #
    # @option params [required, String] :id
    #   The identifier of the pipeline to read.
    #
    # @return [Types::ReadPipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReadPipelineResponse#pipeline #pipeline} => Types::Pipeline
    #   * {Types::ReadPipelineResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.read_pipeline({
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.id #=> String
    #   resp.pipeline.arn #=> String
    #   resp.pipeline.name #=> String
    #   resp.pipeline.status #=> String
    #   resp.pipeline.input_bucket #=> String
    #   resp.pipeline.output_bucket #=> String
    #   resp.pipeline.role #=> String
    #   resp.pipeline.aws_kms_key_arn #=> String
    #   resp.pipeline.notifications.progressing #=> String
    #   resp.pipeline.notifications.completed #=> String
    #   resp.pipeline.notifications.warning #=> String
    #   resp.pipeline.notifications.error #=> String
    #   resp.pipeline.content_config.bucket #=> String
    #   resp.pipeline.content_config.storage_class #=> String
    #   resp.pipeline.content_config.permissions #=> Array
    #   resp.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.pipeline.content_config.permissions[0].access #=> Array
    #   resp.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.pipeline.thumbnail_config.bucket #=> String
    #   resp.pipeline.thumbnail_config.storage_class #=> String
    #   resp.pipeline.thumbnail_config.permissions #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].grantee #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].access #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].access[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].code #=> String
    #   resp.warnings[0].message #=> String
    #
    # @overload read_pipeline(params = {})
    # @param [Hash] params ({})
    def read_pipeline(params = {}, options = {})
      req = build_request(:read_pipeline, params)
      req.send_request(options)
    end

    # The ReadPreset operation gets detailed information about a preset.
    #
    # @option params [required, String] :id
    #   The identifier of the preset for which you want to get detailed
    #   information.
    #
    # @return [Types::ReadPresetResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ReadPresetResponse#preset #preset} => Types::Preset
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.read_preset({
    #     id: "Id", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.preset.id #=> String
    #   resp.preset.arn #=> String
    #   resp.preset.name #=> String
    #   resp.preset.description #=> String
    #   resp.preset.container #=> String
    #   resp.preset.audio.codec #=> String
    #   resp.preset.audio.sample_rate #=> String
    #   resp.preset.audio.bit_rate #=> String
    #   resp.preset.audio.channels #=> String
    #   resp.preset.audio.audio_packing_mode #=> String
    #   resp.preset.audio.codec_options.profile #=> String
    #   resp.preset.audio.codec_options.bit_depth #=> String
    #   resp.preset.audio.codec_options.bit_order #=> String
    #   resp.preset.audio.codec_options.signed #=> String
    #   resp.preset.video.codec #=> String
    #   resp.preset.video.codec_options #=> Hash
    #   resp.preset.video.codec_options["CodecOption"] #=> String
    #   resp.preset.video.keyframes_max_dist #=> String
    #   resp.preset.video.fixed_gop #=> String
    #   resp.preset.video.bit_rate #=> String
    #   resp.preset.video.frame_rate #=> String
    #   resp.preset.video.max_frame_rate #=> String
    #   resp.preset.video.resolution #=> String
    #   resp.preset.video.aspect_ratio #=> String
    #   resp.preset.video.max_width #=> String
    #   resp.preset.video.max_height #=> String
    #   resp.preset.video.display_aspect_ratio #=> String
    #   resp.preset.video.sizing_policy #=> String
    #   resp.preset.video.padding_policy #=> String
    #   resp.preset.video.watermarks #=> Array
    #   resp.preset.video.watermarks[0].id #=> String
    #   resp.preset.video.watermarks[0].max_width #=> String
    #   resp.preset.video.watermarks[0].max_height #=> String
    #   resp.preset.video.watermarks[0].sizing_policy #=> String
    #   resp.preset.video.watermarks[0].horizontal_align #=> String
    #   resp.preset.video.watermarks[0].horizontal_offset #=> String
    #   resp.preset.video.watermarks[0].vertical_align #=> String
    #   resp.preset.video.watermarks[0].vertical_offset #=> String
    #   resp.preset.video.watermarks[0].opacity #=> String
    #   resp.preset.video.watermarks[0].target #=> String
    #   resp.preset.thumbnails.format #=> String
    #   resp.preset.thumbnails.interval #=> String
    #   resp.preset.thumbnails.resolution #=> String
    #   resp.preset.thumbnails.aspect_ratio #=> String
    #   resp.preset.thumbnails.max_width #=> String
    #   resp.preset.thumbnails.max_height #=> String
    #   resp.preset.thumbnails.sizing_policy #=> String
    #   resp.preset.thumbnails.padding_policy #=> String
    #   resp.preset.type #=> String
    #
    # @overload read_preset(params = {})
    # @param [Hash] params ({})
    def read_preset(params = {}, options = {})
      req = build_request(:read_preset, params)
      req.send_request(options)
    end

    # The TestRole operation tests the IAM role used to create the pipeline.
    #
    # The `TestRole` action lets you determine whether the IAM role you are
    # using has sufficient permissions to let Elastic Transcoder perform
    # tasks associated with the transcoding process. The action attempts to
    # assume the specified IAM role, checks read access to the input and
    # output buckets, and tries to send a test notification to Amazon SNS
    # topics that you specify.
    #
    # @option params [required, String] :role
    #   The IAM Amazon Resource Name (ARN) for the role that you want Elastic
    #   Transcoder to test.
    #
    # @option params [required, String] :input_bucket
    #   The Amazon S3 bucket that contains media files to be transcoded. The
    #   action attempts to read from this bucket.
    #
    # @option params [required, String] :output_bucket
    #   The Amazon S3 bucket that Elastic Transcoder writes transcoded media
    #   files to. The action attempts to read from this bucket.
    #
    # @option params [required, Array<String>] :topics
    #   The ARNs of one or more Amazon Simple Notification Service (Amazon
    #   SNS) topics that you want the action to send a test notification to.
    #
    # @return [Types::TestRoleResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::TestRoleResponse#success #success} => String
    #   * {Types::TestRoleResponse#messages #messages} => Array&lt;String&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_role({
    #     role: "Role", # required
    #     input_bucket: "BucketName", # required
    #     output_bucket: "BucketName", # required
    #     topics: ["SnsTopic"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.success #=> String
    #   resp.messages #=> Array
    #   resp.messages[0] #=> String
    #
    # @overload test_role(params = {})
    # @param [Hash] params ({})
    def test_role(params = {}, options = {})
      req = build_request(:test_role, params)
      req.send_request(options)
    end

    # Use the `UpdatePipeline` operation to update settings for a pipeline.
    #
    # When you change pipeline settings, your changes take effect
    # immediately. Jobs that you have already submitted and that Elastic
    # Transcoder has not started to process are affected in addition to jobs
    # that you submit after you change settings.
    #
    # @option params [required, String] :id
    #   The ID of the pipeline that you want to update.
    #
    # @option params [String] :name
    #   The name of the pipeline. We recommend that the name be unique within
    #   the AWS account, but uniqueness is not enforced.
    #
    #   Constraints: Maximum 40 characters
    #
    # @option params [String] :input_bucket
    #   The Amazon S3 bucket in which you saved the media files that you want
    #   to transcode and the graphics that you want to use as watermarks.
    #
    # @option params [String] :role
    #   The IAM Amazon Resource Name (ARN) for the role that you want Elastic
    #   Transcoder to use to transcode jobs for this pipeline.
    #
    # @option params [String] :aws_kms_key_arn
    #   The AWS Key Management Service (AWS KMS) key that you want to use with
    #   this pipeline.
    #
    #   If you use either `s3` or `s3-aws-kms` as your `Encryption:Mode`, you
    #   don't need to provide a key with your job because a default key,
    #   known as an AWS-KMS key, is created for you automatically. You need to
    #   provide an AWS-KMS key only if you want to use a non-default AWS-KMS
    #   key, or if you are using an `Encryption:Mode` of `aes-cbc-pkcs7`,
    #   `aes-ctr`, or `aes-gcm`.
    #
    # @option params [Types::Notifications] :notifications
    #   The topic ARN for the Amazon Simple Notification Service (Amazon SNS)
    #   topic that you want to notify to report job status.
    #
    #   To receive notifications, you must also subscribe to the new topic in
    #   the Amazon SNS console.
    #
    #   * **Progressing**\: The topic ARN for the Amazon Simple Notification
    #     Service (Amazon SNS) topic that you want to notify when Elastic
    #     Transcoder has started to process jobs that are added to this
    #     pipeline. This is the ARN that Amazon SNS returned when you created
    #     the topic.
    #
    #   * **Complete**\: The topic ARN for the Amazon SNS topic that you want
    #     to notify when Elastic Transcoder has finished processing a job.
    #     This is the ARN that Amazon SNS returned when you created the topic.
    #
    #   * **Warning**\: The topic ARN for the Amazon SNS topic that you want
    #     to notify when Elastic Transcoder encounters a warning condition.
    #     This is the ARN that Amazon SNS returned when you created the topic.
    #
    #   * **Error**\: The topic ARN for the Amazon SNS topic that you want to
    #     notify when Elastic Transcoder encounters an error condition. This
    #     is the ARN that Amazon SNS returned when you created the topic.
    #
    # @option params [Types::PipelineOutputConfig] :content_config
    #   The optional `ContentConfig` object specifies information about the
    #   Amazon S3 bucket in which you want Elastic Transcoder to save
    #   transcoded files and playlists: which bucket to use, which users you
    #   want to have access to the files, the type of access you want users to
    #   have, and the storage class that you want to assign to the files.
    #
    #   If you specify values for `ContentConfig`, you must also specify
    #   values for `ThumbnailConfig`.
    #
    #   If you specify values for `ContentConfig` and `ThumbnailConfig`, omit
    #   the `OutputBucket` object.
    #
    #   * **Bucket**\: The Amazon S3 bucket in which you want Elastic
    #     Transcoder to save transcoded files and playlists.
    #
    #   * **Permissions** (Optional): The Permissions object specifies which
    #     users you want to have access to transcoded files and the type of
    #     access you want them to have. You can grant permissions to a maximum
    #     of 30 users and/or predefined Amazon S3 groups.
    #
    #   * **Grantee Type**\: Specify the type of value that appears in the
    #     `Grantee` object:
    #
    #     * **Canonical**\: The value in the `Grantee` object is either the
    #       canonical user ID for an AWS account or an origin access identity
    #       for an Amazon CloudFront distribution. For more information about
    #       canonical user IDs, see Access Control List (ACL) Overview in the
    #       Amazon Simple Storage Service Developer Guide. For more
    #       information about using CloudFront origin access identities to
    #       require that users use CloudFront URLs instead of Amazon S3 URLs,
    #       see Using an Origin Access Identity to Restrict Access to Your
    #       Amazon S3 Content.
    #
    #       A canonical user ID is not the same as an AWS account number.
    #
    #     * **Email**\: The value in the `Grantee` object is the registered
    #       email address of an AWS account.
    #
    #     * **Group**\: The value in the `Grantee` object is one of the
    #       following predefined Amazon S3 groups: `AllUsers`,
    #       `AuthenticatedUsers`, or `LogDelivery`.
    #
    #   * **Grantee**\: The AWS user or group that you want to have access to
    #     transcoded files and playlists. To identify the user or group, you
    #     can specify the canonical user ID for an AWS account, an origin
    #     access identity for a CloudFront distribution, the registered email
    #     address of an AWS account, or a predefined Amazon S3 group
    #
    #   * **Access**\: The permission that you want to give to the AWS user
    #     that you specified in `Grantee`. Permissions are granted on the
    #     files that Elastic Transcoder adds to the bucket, including
    #     playlists and video files. Valid values include:
    #
    #     * `READ`\: The grantee can read the objects and metadata for objects
    #       that Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `READ_ACP`\: The grantee can read the object ACL for objects that
    #       Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `WRITE_ACP`\: The grantee can write the ACL for the objects that
    #       Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `FULL_CONTROL`\: The grantee has `READ`, `READ_ACP`, and
    #       `WRITE_ACP` permissions for the objects that Elastic Transcoder
    #       adds to the Amazon S3 bucket.
    #
    #   * **StorageClass**\: The Amazon S3 storage class, `Standard` or
    #     `ReducedRedundancy`, that you want Elastic Transcoder to assign to
    #     the video files and playlists that it stores in your Amazon S3
    #     bucket.
    #
    # @option params [Types::PipelineOutputConfig] :thumbnail_config
    #   The `ThumbnailConfig` object specifies several values, including the
    #   Amazon S3 bucket in which you want Elastic Transcoder to save
    #   thumbnail files, which users you want to have access to the files, the
    #   type of access you want users to have, and the storage class that you
    #   want to assign to the files.
    #
    #   If you specify values for `ContentConfig`, you must also specify
    #   values for `ThumbnailConfig` even if you don't want to create
    #   thumbnails.
    #
    #   If you specify values for `ContentConfig` and `ThumbnailConfig`, omit
    #   the `OutputBucket` object.
    #
    #   * **Bucket**\: The Amazon S3 bucket in which you want Elastic
    #     Transcoder to save thumbnail files.
    #
    #   * **Permissions** (Optional): The `Permissions` object specifies which
    #     users and/or predefined Amazon S3 groups you want to have access to
    #     thumbnail files, and the type of access you want them to have. You
    #     can grant permissions to a maximum of 30 users and/or predefined
    #     Amazon S3 groups.
    #
    #   * **GranteeType**\: Specify the type of value that appears in the
    #     Grantee object:
    #
    #     * **Canonical**\: The value in the `Grantee` object is either the
    #       canonical user ID for an AWS account or an origin access identity
    #       for an Amazon CloudFront distribution.
    #
    #       A canonical user ID is not the same as an AWS account number.
    #
    #     * **Email**\: The value in the `Grantee` object is the registered
    #       email address of an AWS account.
    #
    #     * **Group**\: The value in the `Grantee` object is one of the
    #       following predefined Amazon S3 groups: `AllUsers`,
    #       `AuthenticatedUsers`, or `LogDelivery`.
    #
    #   * **Grantee**\: The AWS user or group that you want to have access to
    #     thumbnail files. To identify the user or group, you can specify the
    #     canonical user ID for an AWS account, an origin access identity for
    #     a CloudFront distribution, the registered email address of an AWS
    #     account, or a predefined Amazon S3 group.
    #
    #   * **Access**\: The permission that you want to give to the AWS user
    #     that you specified in `Grantee`. Permissions are granted on the
    #     thumbnail files that Elastic Transcoder adds to the bucket. Valid
    #     values include:
    #
    #     * `READ`\: The grantee can read the thumbnails and metadata for
    #       objects that Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `READ_ACP`\: The grantee can read the object ACL for thumbnails
    #       that Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `WRITE_ACP`\: The grantee can write the ACL for the thumbnails
    #       that Elastic Transcoder adds to the Amazon S3 bucket.
    #
    #     * `FULL_CONTROL`\: The grantee has `READ`, `READ_ACP`, and
    #       `WRITE_ACP` permissions for the thumbnails that Elastic Transcoder
    #       adds to the Amazon S3 bucket.
    #
    #   * **StorageClass**\: The Amazon S3 storage class, `Standard` or
    #     `ReducedRedundancy`, that you want Elastic Transcoder to assign to
    #     the thumbnails that it stores in your Amazon S3 bucket.
    #
    # @return [Types::UpdatePipelineResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePipelineResponse#pipeline #pipeline} => Types::Pipeline
    #   * {Types::UpdatePipelineResponse#warnings #warnings} => Array&lt;Types::Warning&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline({
    #     id: "Id", # required
    #     name: "Name",
    #     input_bucket: "BucketName",
    #     role: "Role",
    #     aws_kms_key_arn: "KeyArn",
    #     notifications: {
    #       progressing: "SnsTopic",
    #       completed: "SnsTopic",
    #       warning: "SnsTopic",
    #       error: "SnsTopic",
    #     },
    #     content_config: {
    #       bucket: "BucketName",
    #       storage_class: "StorageClass",
    #       permissions: [
    #         {
    #           grantee_type: "GranteeType",
    #           grantee: "Grantee",
    #           access: ["AccessControl"],
    #         },
    #       ],
    #     },
    #     thumbnail_config: {
    #       bucket: "BucketName",
    #       storage_class: "StorageClass",
    #       permissions: [
    #         {
    #           grantee_type: "GranteeType",
    #           grantee: "Grantee",
    #           access: ["AccessControl"],
    #         },
    #       ],
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.id #=> String
    #   resp.pipeline.arn #=> String
    #   resp.pipeline.name #=> String
    #   resp.pipeline.status #=> String
    #   resp.pipeline.input_bucket #=> String
    #   resp.pipeline.output_bucket #=> String
    #   resp.pipeline.role #=> String
    #   resp.pipeline.aws_kms_key_arn #=> String
    #   resp.pipeline.notifications.progressing #=> String
    #   resp.pipeline.notifications.completed #=> String
    #   resp.pipeline.notifications.warning #=> String
    #   resp.pipeline.notifications.error #=> String
    #   resp.pipeline.content_config.bucket #=> String
    #   resp.pipeline.content_config.storage_class #=> String
    #   resp.pipeline.content_config.permissions #=> Array
    #   resp.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.pipeline.content_config.permissions[0].access #=> Array
    #   resp.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.pipeline.thumbnail_config.bucket #=> String
    #   resp.pipeline.thumbnail_config.storage_class #=> String
    #   resp.pipeline.thumbnail_config.permissions #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].grantee #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].access #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].access[0] #=> String
    #   resp.warnings #=> Array
    #   resp.warnings[0].code #=> String
    #   resp.warnings[0].message #=> String
    #
    # @overload update_pipeline(params = {})
    # @param [Hash] params ({})
    def update_pipeline(params = {}, options = {})
      req = build_request(:update_pipeline, params)
      req.send_request(options)
    end

    # With the UpdatePipelineNotifications operation, you can update Amazon
    # Simple Notification Service (Amazon SNS) notifications for a pipeline.
    #
    # When you update notifications for a pipeline, Elastic Transcoder
    # returns the values that you specified in the request.
    #
    # @option params [required, String] :id
    #   The identifier of the pipeline for which you want to change
    #   notification settings.
    #
    # @option params [required, Types::Notifications] :notifications
    #   The topic ARN for the Amazon Simple Notification Service (Amazon SNS)
    #   topic that you want to notify to report job status.
    #
    #   To receive notifications, you must also subscribe to the new topic in
    #   the Amazon SNS console.
    #
    #   * **Progressing**\: The topic ARN for the Amazon Simple Notification
    #     Service (Amazon SNS) topic that you want to notify when Elastic
    #     Transcoder has started to process jobs that are added to this
    #     pipeline. This is the ARN that Amazon SNS returned when you created
    #     the topic.
    #
    #   * **Complete**\: The topic ARN for the Amazon SNS topic that you want
    #     to notify when Elastic Transcoder has finished processing a job.
    #     This is the ARN that Amazon SNS returned when you created the topic.
    #
    #   * **Warning**\: The topic ARN for the Amazon SNS topic that you want
    #     to notify when Elastic Transcoder encounters a warning condition.
    #     This is the ARN that Amazon SNS returned when you created the topic.
    #
    #   * **Error**\: The topic ARN for the Amazon SNS topic that you want to
    #     notify when Elastic Transcoder encounters an error condition. This
    #     is the ARN that Amazon SNS returned when you created the topic.
    #
    # @return [Types::UpdatePipelineNotificationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePipelineNotificationsResponse#pipeline #pipeline} => Types::Pipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline_notifications({
    #     id: "Id", # required
    #     notifications: { # required
    #       progressing: "SnsTopic",
    #       completed: "SnsTopic",
    #       warning: "SnsTopic",
    #       error: "SnsTopic",
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.id #=> String
    #   resp.pipeline.arn #=> String
    #   resp.pipeline.name #=> String
    #   resp.pipeline.status #=> String
    #   resp.pipeline.input_bucket #=> String
    #   resp.pipeline.output_bucket #=> String
    #   resp.pipeline.role #=> String
    #   resp.pipeline.aws_kms_key_arn #=> String
    #   resp.pipeline.notifications.progressing #=> String
    #   resp.pipeline.notifications.completed #=> String
    #   resp.pipeline.notifications.warning #=> String
    #   resp.pipeline.notifications.error #=> String
    #   resp.pipeline.content_config.bucket #=> String
    #   resp.pipeline.content_config.storage_class #=> String
    #   resp.pipeline.content_config.permissions #=> Array
    #   resp.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.pipeline.content_config.permissions[0].access #=> Array
    #   resp.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.pipeline.thumbnail_config.bucket #=> String
    #   resp.pipeline.thumbnail_config.storage_class #=> String
    #   resp.pipeline.thumbnail_config.permissions #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].grantee #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].access #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].access[0] #=> String
    #
    # @overload update_pipeline_notifications(params = {})
    # @param [Hash] params ({})
    def update_pipeline_notifications(params = {}, options = {})
      req = build_request(:update_pipeline_notifications, params)
      req.send_request(options)
    end

    # The UpdatePipelineStatus operation pauses or reactivates a pipeline,
    # so that the pipeline stops or restarts the processing of jobs.
    #
    # Changing the pipeline status is useful if you want to cancel one or
    # more jobs. You can't cancel jobs after Elastic Transcoder has started
    # processing them; if you pause the pipeline to which you submitted the
    # jobs, you have more time to get the job IDs for the jobs that you want
    # to cancel, and to send a CancelJob request.
    #
    # @option params [required, String] :id
    #   The identifier of the pipeline to update.
    #
    # @option params [required, String] :status
    #   The desired status of the pipeline:
    #
    #   * `Active`\: The pipeline is processing jobs.
    #
    #   * `Paused`\: The pipeline is not currently processing jobs.
    #
    # @return [Types::UpdatePipelineStatusResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::UpdatePipelineStatusResponse#pipeline #pipeline} => Types::Pipeline
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pipeline_status({
    #     id: "Id", # required
    #     status: "PipelineStatus", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.pipeline.id #=> String
    #   resp.pipeline.arn #=> String
    #   resp.pipeline.name #=> String
    #   resp.pipeline.status #=> String
    #   resp.pipeline.input_bucket #=> String
    #   resp.pipeline.output_bucket #=> String
    #   resp.pipeline.role #=> String
    #   resp.pipeline.aws_kms_key_arn #=> String
    #   resp.pipeline.notifications.progressing #=> String
    #   resp.pipeline.notifications.completed #=> String
    #   resp.pipeline.notifications.warning #=> String
    #   resp.pipeline.notifications.error #=> String
    #   resp.pipeline.content_config.bucket #=> String
    #   resp.pipeline.content_config.storage_class #=> String
    #   resp.pipeline.content_config.permissions #=> Array
    #   resp.pipeline.content_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.content_config.permissions[0].grantee #=> String
    #   resp.pipeline.content_config.permissions[0].access #=> Array
    #   resp.pipeline.content_config.permissions[0].access[0] #=> String
    #   resp.pipeline.thumbnail_config.bucket #=> String
    #   resp.pipeline.thumbnail_config.storage_class #=> String
    #   resp.pipeline.thumbnail_config.permissions #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].grantee_type #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].grantee #=> String
    #   resp.pipeline.thumbnail_config.permissions[0].access #=> Array
    #   resp.pipeline.thumbnail_config.permissions[0].access[0] #=> String
    #
    # @overload update_pipeline_status(params = {})
    # @param [Hash] params ({})
    def update_pipeline_status(params = {}, options = {})
      req = build_request(:update_pipeline_status, params)
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
      context[:gem_name] = 'aws-sdk-elastictranscoder'
      context[:gem_version] = '1.4.0'
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
    # | waiter_name  | params      | :delay   | :max_attempts |
    # | ------------ | ----------- | -------- | ------------- |
    # | job_complete | {#read_job} | 30       | 120           |
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
        job_complete: Waiters::JobComplete
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
