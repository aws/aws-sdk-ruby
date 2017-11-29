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

Aws::Plugins::GlobalConfiguration.add_identifier(:kinesisvideoarchivedmedia)

module Aws::KinesisVideoArchivedMedia
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :kinesisvideoarchivedmedia

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

    # Gets media for a list of fragments (specified by fragment number) from
    # the archived data in a Kinesis video stream.
    #
    # <note markdown="1"> This operation is only available for the AWS SDK for Java. It is not
    # supported in AWS SDKs for other languages.
    #
    #  </note>
    #
    # The following limits apply when using the `GetMediaForFragmentList`
    # API:
    #
    # * A client can call `GetMediaForFragmentList` up to five times per
    #   second per stream.
    #
    # * Kinesis Video Streams sends media data at a rate of up to 25
    #   megabytes per second (or 200 megabits per second) during a
    #   `GetMediaForFragmentList` session.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream from which to retrieve fragment media.
    #
    # @option params [required, Array<String>] :fragments
    #   A list of the numbers of fragments for which to retrieve media. You
    #   retrieve these values with ListFragments.
    #
    # @return [Types::GetMediaForFragmentListOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetMediaForFragmentListOutput#content_type #content_type} => String
    #   * {Types::GetMediaForFragmentListOutput#payload #payload} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_media_for_fragment_list({
    #     stream_name: "StreamName", # required
    #     fragments: ["FragmentNumberString"], # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.payload #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/GetMediaForFragmentList AWS API Documentation
    #
    # @overload get_media_for_fragment_list(params = {})
    # @param [Hash] params ({})
    def get_media_for_fragment_list(params = {}, options = {}, &block)
      req = build_request(:get_media_for_fragment_list, params)
      req.send_request(options, &block)
    end

    # Returns a list of Fragment objects from the specified stream and start
    # location within the archived data.
    #
    # @option params [required, String] :stream_name
    #   The name of the stream from which to retrieve a fragment list.
    #
    # @option params [Integer] :max_results
    #   The total number of fragments to return. If the total number of
    #   fragments available is more than the value specified in `max-results`,
    #   then a ListFragmentsOutput$NextToken is provided in the output that
    #   you can use to resume pagination.
    #
    # @option params [String] :next_token
    #   A token to specify where to start paginating. This is the
    #   ListFragmentsOutput$NextToken from a previously truncated response.
    #
    # @option params [Types::FragmentSelector] :fragment_selector
    #   Describes the time stamp range and time stamp origin for the range of
    #   fragments to return.
    #
    # @return [Types::ListFragmentsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::ListFragmentsOutput#fragments #fragments} => Array&lt;Types::Fragment&gt;
    #   * {Types::ListFragmentsOutput#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_fragments({
    #     stream_name: "StreamName", # required
    #     max_results: 1,
    #     next_token: "String",
    #     fragment_selector: {
    #       fragment_selector_type: "PRODUCER_TIMESTAMP", # required, accepts PRODUCER_TIMESTAMP, SERVER_TIMESTAMP
    #       timestamp_range: { # required
    #         start_timestamp: Time.now, # required
    #         end_timestamp: Time.now, # required
    #       },
    #     },
    #   })
    #
    # @example Response structure
    #
    #   resp.fragments #=> Array
    #   resp.fragments[0].fragment_number #=> String
    #   resp.fragments[0].fragment_size_in_bytes #=> Integer
    #   resp.fragments[0].producer_timestamp #=> Time
    #   resp.fragments[0].server_timestamp #=> Time
    #   resp.fragments[0].fragment_length_in_milliseconds #=> Integer
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-archived-media-2017-09-30/ListFragments AWS API Documentation
    #
    # @overload list_fragments(params = {})
    # @param [Hash] params ({})
    def list_fragments(params = {}, options = {})
      req = build_request(:list_fragments, params)
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
      context[:gem_name] = 'aws-sdk-kinesisvideoarchivedmedia'
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
