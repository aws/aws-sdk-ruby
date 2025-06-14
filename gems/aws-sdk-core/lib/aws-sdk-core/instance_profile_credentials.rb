# frozen_string_literal: true

require 'time'
require 'net/http'

module Aws
  # An auto-refreshing credential provider that loads credentials from EC2 instances using IMDSv2.
  # By default, this provider attempts the following steps:
  #
  #  * First tries the extended endpoint to retrieve credentials with account id.
  #  * IF a `404` response is received, falls back to legacy endpoint to retrieve credentials without account id.
  #
  # In addition, this provider will cache the previously successful endpoint and profile name for next refresh.
  #
  #     ec2_metadata = Aws::EC2Metadata.new(retries: 4)
  #     creds = Aws::InstanceProfileCredentials.new(ec2_metadata: ec2_metadata)
  #     ec2_client = Aws::EC2::Client.new(credentials: creds)
  #
  # If you omit the `:ec2_metadata` option, a new {Aws::EC2Metadata} will be created with options provided.
  # @see https://docs.aws.amazon.com/sdkref/latest/guide/feature-imds-credentials.html IMDS Credential Provider
  class InstanceProfileCredentials
    include CredentialProvider
    include RefreshingCredentials

    # Raised when the metadata path with profile name was not found.
    # @api private
    class InvalidProfile < RuntimeError; end

    # Legacy path base for GET request for profile and credentials
    # @api private
    METADATA_LEGACY_PATH = '/latest/meta-data/iam/security-credentials/'

    # Extended path base for GET request for profile and credentials
    # @api private
    METADATA_EXTENDED_PATH = '/latest/meta-data/iam/security-credentials-extended/'

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
    # @param (see Aws::EC2Metadata#initialize)
    # @option options [Callable] :before_refresh Proc called before
    #   credentials are refreshed. `before_refresh` is called
    #   with an instance of this object when AWS credentials are required
    #   and need to be refreshed.
    def initialize(options = {})
      @ec2_metadata = options.delete(:ec2_metadata) || build_ec2_metadata_client(options)

      @ec2_instance_profile_name = resolve_ec2_instance_profile_name(options)
      @api_version = :unknown
      @resolved_profile = nil

      @no_refresh_until = nil
      @async_refresh = false
      @metrics = ['CREDENTIALS_IMDS']
      super
    end

    # @return [Aws::EC2Metadata]
    attr_reader :ec2_metadata

    # @return [String, nil] The name of the EC2 instance profile.
    attr_reader :ec2_instance_profile_name

    private

    def build_ec2_metadata_client(options)
      opts = options.merge(
        endpoint_mode: resolve_endpoint_mode(options),
        endpoint: resolve_endpoint(options)
      )
      if (delay = opts.delete(:delay))
        warn('The `:delay` option is deprecated. Use `:backoff` instead.')
        opts[:backoff] = delay
      end
      EC2Metadata.new(opts)
    end

    def resolve_endpoint_mode(options)
      options[:endpoint_mode] ||
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE'] ||
        Aws.shared_config.ec2_metadata_service_endpoint_mode(profile: options[:profile]) ||
        'IPv4'
    end

    def resolve_endpoint(options)
      if (value = options.delete(:ip_address))
        warn('The `:ip_address` option is deprecated. Use `:endpoint` instead.')
        return value
      end

      options[:endpoint] ||
        ENV['AWS_EC2_METADATA_SERVICE_ENDPOINT'] ||
        Aws.shared_config.ec2_metadata_service_endpoint(profile: options[:profile]) ||
        nil
    end

    def resolve_ec2_instance_profile_name(options)
      value =
        options[:ec2_instance_profile_name] ||
        ENV['AWS_EC2_INSTANCE_PROFILE_NAME'] ||
        Aws.shared_config.ec2_instance_profile_name(profile: options[:profile])
      return value if value.nil?
      raise ArgumentError, 'EC2 instance profile name cannot be empty' if value.strip.empty?

      value
    end

    def empty_credentials?(creds)
      creds.nil? || !creds.set?
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

      new_creds =
        begin
          retry_errors([Aws::Json::ParseError]) do
            Aws::Json.load(fetch_credentials)
          end
        rescue Aws::Json::ParseError
          raise Aws::Errors::MetadataParserError
        rescue InvalidProfile # unable to find profile name with already resolved api-version
          raise
        rescue StandardError => e
          warn("Error retrieving instance profile credentials: #{e}")
          '{}'
        end

      if !empty_credentials?(@credentials) && (!new_creds['AccessKeyId'] || new_creds['AccessKeyId'].empty?)
        # credentials are already set, but there was an error getting new credentials
        # so don't update the credentials and use stale ones (static stability)
        @no_refresh_until = Time.now + rand(300..360)
        warn_expired_credentials
      else
        # credentials are empty or successfully retrieved, update them
        update_credentials(new_creds)
      end
    end

    def fetch_credentials
      profile_name = resolve_profile_name

      begin
        creds = @ec2_metadata.get(metadata_path + profile_name)
        @api_version = :extended if @api_version == :unknown
        creds
      rescue EC2Metadata::MetadataNotFoundError
        if @api_version == :unknown
          @api_version = :legacy
          fetch_credentials
        elsif @ec2_instance_profile_name.nil?
          # cache profile may have been replaced
          @resolved_profile = nil
          fetch_credentials
        else
          raise InvalidProfile, "invalid profile name - unable to find metadata path for #{profile_name}"
        end
      end
    end

    def resolve_url_base
      if @api_version == :legacy
        METADATA_LEGACY_PATH
      else
        METADATA_EXTENDED_PATH
      end
    end

    def resolve_profile_name
      if @ec2_instance_profile_name
        @ec2_instance_profile_name
      elsif @resolved_profile
        @resolved_profile
      else
        fetch_profile_name
      end
    end

    def fetch_profile_name
      metadata = @ec2_metadata.get(metadata_path)
      @api_version = :extended if @api_version == :unknown
      @resolved_profile = metadata.strip
      @resolved_profile
    rescue EC2Metadata::MetadataNotFoundError
      raise InvalidProfile, "invalid profile name #{metadata}" unless @api_version == :unknown

      @api_version = :legacy
      fetch_profile_name
    end

    def update_credentials(creds)
      @credentials = Credentials.new(
        creds['AccessKeyId'],
        creds['SecretAccessKey'],
        creds['Token'],
        account_id: creds['AccountId']
      )
      @expiration = creds['Expiration'] ? Time.iso8601(creds['Expiration']) : nil
      return unless @expiration && @expiration < Time.now

      @no_refresh_until = Time.now + rand(300..360)
      warn_expired_credentials
    end

    def warn_expired_credentials
      warn(
        'Attempting credential expiration extension due to a credential service availability issue. '\
        'A refresh of these credentials will be attempted again in 5 minutes.'
      )
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
