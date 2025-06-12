# frozen_string_literal: true

require 'time'
require 'net/http'

module Aws
  # An auto-refreshing credential provider that loads credentials from
  # EC2 instances using IMDSv2.
  #
  #     ec2_metadata = Aws::EC2Metadata.new(retries: 4)
  #     instance_creds = Aws::InstanceProfileCredentials.new(
  #       ec2_metadata: ec2_metadata
  #     )
  #     ec2_client = Aws::EC2::Client.new(credentials: instance_creds)
  #
  # If you omit the `:ec2_metadata` option, a new {Aws::EC2Metadata} will
  # be created with options provided.
  class InstanceProfileCredentials
    include CredentialProvider
    include RefreshingCredentials

    # Raised when the metadata path with profile name was not found.
    # @api private
    class InvalidProfile < RuntimeError; end

    # Path base for GET request for profile and credentials
    # @api private
    METADATA_LEGACY_PATH = '/latest/meta-data/iam/security-credentials/'

    # Extended path base for GET request for profile and credentials
    # @api private
    METADATA_EXTENDED_PATH =
      '/latest/meta-data/iam/security-credentials-extended/'

    # @param [Hash] options
    # @option options [Aws::EC2Metadata] :ec2_metadata A custom EC2 metadata
    #   client to use for loading credentials from IMDSv2. If not provided,
    #   a default {Aws::EC2Metadata} client will be constructed with
    #   passed options.
    # @option options [String] :ec2_instance_profile_name (nil) When set, this
    #   provider skips querying IMDS for the name of the active profile. When
    #   `:ec2_instance_profile_name` is not configured directly, the following
    #   locations will be searched before defaulting to `nil`:
    #
    #   * `ENV['AWS_EC2_INSTANCE_PROFILE_NAME']`
    #   * `~/.aws/config`
    #
    # @option options [Integer] :retries (3) Number of times to retry for the
    #   {Aws::EC2Metadata} when retrieving credentials. Defaults to `0` when
    #   resolving from the default credential chain.
    # @option options [String] :endpoint ('http://169.254.169.254') The IMDS
    #   endpoint. This option has precedence over the `:endpoint_mode`.
    # @option options [String] :endpoint_mode ('IPv4') The endpoint mode for the
    #   instance metadata service. This is either `'IPv4' ('169.254.169.254')`
    #   or `'IPv6' ('[fd00:ec2::254]')`.
    # @option options [String] :ip_address ('169.254.169.254') Deprecated. Use
    #   `:endpoint` instead. The IP address for the endpoint.
    # @option options [Integer] :port (80)
    # @option options [Float] :http_open_timeout (1)
    # @option options [Float] :http_read_timeout (1)
    # @option options [Numeric, Proc] :delay Deprecated. Use `:backoff` instead.
    # @option options [Numeric, Proc] :backoff By default, failures are retried
    #   with exponential back-off, i.e. `sleep(1.2 ** num_failures)`. You can
    #   pass a number of seconds to sleep between failed attempts, or
    #   a Proc that accepts the number of failures.
    # @option options [IO] :http_debug_output (nil) HTTP wire
    #   traces are sent to this object.  You can specify something
    #   like `$stdout`.
    # @option options [Integer] :token_ttl Time-to-Live in seconds for EC2
    #   Metadata Token used for fetching Metadata Profile Credentials, defaults
    #   to `21600` seconds.
    # @option options [Callable] :before_refresh Proc called before
    #   credentials are refreshed. `before_refresh` is called
    #   with an instance of this object when AWS credentials are required
    #   and need to be refreshed.
    def initialize(options = {})
      @ec2_metadata =
        options[:ec2_metadata] ||
        EC2Metadata.new(resolve_opts(options))
      options.delete(:ec2_metadata)
      @profile_name = nil
      @ec2_instance_profile_name = resolve_ec2_instance_profile_name(options)

      @no_refresh_until = nil
      @async_refresh = false
      @metrics = ['CREDENTIALS_IMDS']
      @api_version = :unknown
      @metadata_path = METADATA_EXTENDED_PATH
      super
    end

    # @return [Integer] Number of times to retry when retrieving credentials
    #   from the instance metadata service. Defaults to `0` when resolving from
    #   the default credential chain.
    def retries
      @ec2_metadata.retries
    end

    private

    # tracks which api version is used to call IMDS service
    # starts as :unknown and updated to either
    # :extended or :legacy after the first successful call
    attr_accessor :api_version

    def empty_credentials?(creds)
      creds.nil? || !creds.set?
    end

    def fetch_credentials
      resolve_profile_name

      begin
        creds = @ec2_metadata.get(metadata_path + @profile_name)
        @api_version = :extended if @api_version == :unknown
        creds
      rescue EC2Metadata::MetadataNotFoundError
        if @api_version == :unknown
          @api_version = :legacy
          fetch_credentials
        elsif @ec2_instance_profile_name.nil?
          # cache profile may have been replaced
          @profile_name = nil
          fetch_credentials
        else
          raise InvalidProfile
        end
      end
    rescue InvalidProfile
      raise
    rescue StandardError => e
      warn("Error retrieving instance profile credentials: #{e}")
      '{}'
    end

    def metadata_path
      case @api_version
      when :legacy then METADATA_LEGACY_PATH
      else METADATA_EXTENDED_PATH
      end
    end

    def refresh
      if @no_refresh_until && @no_refresh_until > Time.now
        warn_expired_credentials
        return
      end

      new_creds = Aws::Json.load(fetch_credentials)
      if !empty_credentials?(@credentials) &&
         (!new_creds['AccessKeyId'] || new_creds['AccessKeyId'].empty?)
        # credentials are already set
        # error getting new credentials
        # so don't update the credentials
        @no_refresh_until = Time.now + refresh_offset
        warn_expired_credentials
      else
        update_credentials(new_creds)
      end
    end

    # Compute an offset for refresh with jitter
    def refresh_offset
      rand(300..360)
    end

    def resolve_opts(options)
      ec2_metadata_opts = options.merge(
        endpoint_mode: resolve_endpoint_mode(options),
        endpoint: resolve_endpoint(options)
      )

      if ec2_metadata_opts[:delay]
        ec2_metadata_opts[:backoff] = ec2_metadata_opts[:delay]
        ec2_metadata_opts.delete(:delay)
        warn('The `:delay` option is deprecated. Use `:backoff` instead.')
      end

      # delete unnecessary configs for ec2 metadata client
      %i[client ec2_instance_profile_name].each { |k| opts.delete(k) }
      ec2_metadata_opts
    end

    def resolve_ec2_instance_profile_name(options)
      value =
        options[:ec2_instance_profile_name] ||
        ENV['AWS_EC2_INSTANCE_PROFILE_NAME'] ||
        Aws.shared_config.ec2_instance_profile_name(profile: options[:profile])
      return value if value.nil? || !value.strip.empty?

      raise ArgumentError, 'EC2 instance profile name cannot be a blank value.'
    end

    def resolve_endpoint(options)
      if (value = options[:ip_address])
        warn('The `:ip_address` option is deprecated. Use `:endpoint` instead.')
        return value
      end

      options[:endpoint] ||
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] ||
        Aws.shared_config.ec2_metadata_service_endpoint(
          profile: options[:profile]
        )
    end

    def resolve_endpoint_mode(options)
      options[:endpoint_mode] ||
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] ||
        Aws.shared_config.ec2_metadata_service_endpoint_mode(
          profile: options[:profile]
        ) || 'IPv4'
    end

    def resolve_profile_name
      return if @profile_name

      begin
        metadata = @ec2_metadata.get(metadata_path)
        @profile_name = metadata.lines.first.strip
        @api_version = :extended if @api_version == :unknown
      rescue EC2Metadata::MetadataNotFoundError
        raise unless @api_version == :unknown

        # fall back to legacy api
        @api_version = :legacy
        resolve_profile_name
      end
    end

    def update_credentials(creds)
      @credentials = Credentials.new(
        creds['AccessKeyId'],
        creds['SecretAccessKey'],
        creds['Token'],
        account_id: creds['AccountId']
      )
      @expiration =
        creds['Expiration'] ? Time.iso8601(creds['Expiration']) : nil
      return unless @expiration && @expiration < Time.now

      @no_refresh_until = Time.now + refresh_offset
      warn_expired_credentials
    end

    def warn_expired_credentials
      warn(
        'Attempting credential expiration extension due to a credential '\
        'service availability issue. A refresh of these credentials '\
        'will be attempted again in 5 minutes.'
      )
    end
  end
end
