# frozen_string_literal: true

require 'time'
require 'net/http'

module Aws
  # An auto-refreshing credential provider that loads credentials from
  # EC2 instances using IMDSv2.
  #
  #     instance_credentials = Aws::InstanceProfileCredentials.new(
  #       client: Aws::EC2Metadata.new(...)
  #     )
  #     ec2_client = Aws::EC2::Client.new(credentials: instance_credentials)
  #
  # If you omit the `:client` option, a new {Aws::EC2Metadata} will
  # be created.
  class InstanceProfileCredentials
    include CredentialProvider
    include RefreshingCredentials

    # Path base for GET request for profile and credentials
    # @api private
    METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'

    # @param [Hash] options
    # @option options [Aws::EC2Metadata] :client A custom EC2 metadata client to
    #  use for loading credentials from IMDSv2. If not provided, a default
    #  {Aws::EC2Metadata} client will be constructed with given options.
    # @option options [Integer] :retries (3) Number of times to retry
    #   when retrieving credentials.
    # @option options [String] :endpoint ('http://169.254.169.254') The IMDS
    #   endpoint. This option has precedence over the `:endpoint_mode`.
    # @option options [String] :endpoint_mode ('IPv4') The endpoint mode for
    #   the instance metadata service. This is either 'IPv4' ('169.254.169.254')
    #   or 'IPv6' ('[fd00:ec2::254]').
    # @option options [Boolean] :disable_imds_v1 (false) Deprecated. The legacy
    #   EC2 Metadata Service v1 has been retired. Only IMDSv2 is supported.
    # @option options [String] :ip_address ('169.254.169.254') Deprecated. Use
    #   `:endpoint` instead. The IP address for the endpoint.
    # @option options [Integer] :port (80)
    # @option options [Float] :http_open_timeout (1)
    # @option options [Float] :http_read_timeout (1)
    # @option options [Numeric, Proc] :backoff By default, failures are retried
    #   with exponential back-off, i.e. `sleep(1.2 ** num_failures)`. You can
    #   pass a number of seconds to sleep between failed attempts, or
    #   a Proc that accepts the number of failures.
    # @option options [IO] :http_debug_output (nil) HTTP wire
    #   traces are sent to this object.  You can specify something
    #   like `$stdout`.
    # @option options [Integer] :token_ttl Time-to-Live in seconds for EC2
    #   Metadata Token used for fetching Metadata Profile Credentials, defaults
    #   to 21600 seconds
    # @option options [Callable] before_refresh Proc called before
    #   credentials are refreshed. `before_refresh` is called
    #   with an instance of this object when AWS credentials are required
    #   and need to be refreshed.
    def initialize(options = {})
      @client = options[:client] || create_client(options)
      @disable_imds_v1 = resolve_disable_v1(options)
      # Flag for if v2 flow fails, skip future attempts
      @no_refresh_until = nil
      @async_refresh = false
      @metrics = ['CREDENTIALS_IMDS']
      super
    end

    # @return [Integer] Number of times to retry when retrieving credentials
    #   from the instance metadata service. Defaults to 0 when resolving from
    #   the default credential chain ({Aws::CredentialProviderChain}).
    def retries
      @client.retries
    end

    private

    def create_client(options)
      endpoint_mode = resolve_endpoint_mode(options)
      endpoint = resolve_endpoint(options)
      disable_imds_v1 = resolve_disable_v1(options)
      options.merge!(
        endpoint_mode: endpoint_mode,
        endpoint: endpoint,
        disable_imds_v1: disable_imds_v1
      )
      EC2Metadata.new(options)
    end

    def resolve_endpoint_mode(options)
      value = options[:endpoint_mode]
      value ||= ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE']
      value ||= Aws.shared_config.ec2_metadata_service_endpoint_mode(
        profile: options[:profile]
      )
      value || 'IPv4'
    end

    def resolve_endpoint(options)
      value = options[:endpoint]
      value ||= ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT']
      value || Aws.shared_config.ec2_metadata_service_endpoint(
        profile: options[:profile]
      )
    end

    def resolve_disable_v1(options)
      value = options[:disable_imds_v1]
      value ||= ENV['AWS_EC2_METADATA_V1_DISABLED']
      value ||= Aws.shared_config.ec2_metadata_v1_disabled(
        profile: options[:profile]
      )
      value = value.to_s.downcase if value
      Aws::Util.str_2_bool(value) || false
    end

    def refresh
      if @no_refresh_until && @no_refresh_until > Time.now
        warn_expired_credentials
        return
      end
      new_creds =
        begin
          retry_errors([Aws::Json::ParseError]) do
            Aws::Json.load(fetch_credentials)
          end
        rescue Aws::Json::ParseError
          raise Aws::Errors::MetadataParserError
        end

      if !empty_credentials?(@credentials) &&
         (!new_creds['AccessKeyId'] || new_creds['AccessKeyId'].empty?)
        @no_refresh_until = Time.now + refresh_offset
        warn_expired_credentials
      else
        update_credentials(new_creds)
      end
    end

    def fetch_credentials
      metadata = @client.get(METADATA_PATH_BASE)
      profile_name = metadata.lines.first.strip
      @client.get(METADATA_PATH_BASE + profile_name)
    rescue StandardError => e
      warn("Error retrieving instance profile credentials: #{e}")
      '{}'
    end

    def update_credentials(creds)
      @credentials = Credentials.new(
        creds['AccessKeyId'],
        creds['SecretAccessKey'],
        creds['Token']
      )
      @expiration =
        creds['Expiration'] ? Time.iso8601(creds['Expiration']) : nil
      return unless @expiration && @expiration < Time.now

      @no_refresh_until = Time.now + refresh_offset
      warn_expired_credentials
    end

    def warn_expired_credentials
      warn('Attempting credential expiration extension due to a credential '\
        'service availability issue. A refresh of these credentials '\
        'will be attempted again in 5 minutes.')
    end

    def empty_credentials?(creds)
      !creds || !creds.access_key_id || creds.access_key_id.empty?
    end

    # Compute an offset for refresh with jitter
    def refresh_offset
      rand(300..360)
    end

    def retry_errors(error_classes, max_retries: 3, &_block)
      retries = 0
      begin
        yield
      rescue *error_classes
        raise unless retries < max_retries

        retries += 1
        retry
      end
    end
  end
end
