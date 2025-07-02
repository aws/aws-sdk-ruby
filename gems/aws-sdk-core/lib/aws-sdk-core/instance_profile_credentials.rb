# frozen_string_literal: true

require 'time'
require 'net/http'

module Aws
  # An auto-refreshing credential provider that loads credentials from
  # EC2 instances using IMDSv2.
  #
  #     ec2_metadata = Aws::EC2Metadata.new(retries: 4)
  #     creds = Aws::InstanceProfileCredentials.new(ec2_metadata: ec2_metadata)
  #     ec2_client = Aws::EC2::Client.new(credentials: creds)
  #
  # If you omit the `:ec2_metadata` option, a new {Aws::EC2Metadata} will be created with options provided.
  #
  # ## Retries
  # When initialized from the default credential chain, this provider's {EC2Metadata} client defaults to `0` retries.
  #   In addition to the {EC2Metadata} client's retry mechanism, this provider will retry failed JSON parsing up to
  #   `3` times before raising {Aws::Errors::MetadataParserError}.
  # @see https://docs.aws.amazon.com/sdkref/latest/guide/feature-imds-credentials.html IMDS Credential Provider
  class InstanceProfileCredentials
    include CredentialProvider
    include RefreshingCredentials

    # Path base for GET request for profile and credentials
    # @api private
    METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'

    # @param [Hash] options
    # @option options (see Aws::EC2Metadata#initialize)
    # @option options [Aws::EC2Metadata] :ec2_metadata A custom EC2 metadata client to use for loading credentials
    #   from IMDSv2. If not provided, a default {Aws::EC2Metadata} client will be constructed with passed options.
    # @option options [Boolean] :disable_imds_v1 (false) Deprecated. The legacy
    #   EC2 Metadata Service v1 has been retired. Only IMDSv2 is supported.
    # @option options [Callable] :before_refresh Proc called before credentials are refreshed. `before_refresh` is
    #   called with an instance of this object when AWS credentials are required and need to be refreshed.
    def initialize(options = {})
      @ec2_metadata = options.delete(:ec2_metadata) || build_ec2_metadata_client(options)
      @retries = options.delete(:retries) || 3
      @backoff = resolve_backoff(options[:backoff])
      @no_refresh_until = nil
      @async_refresh = false
      @metrics = ['CREDENTIALS_IMDS']
      super
    end

    # @return [Aws::EC2Metadata]
    attr_reader :ec2_metadata

    private

    def build_ec2_metadata_client(options)
      opts = options.merge(
        endpoint_mode: resolve_endpoint_mode(options),
        endpoint: resolve_endpoint(options),
        disable_imds_v1: resolve_disable_v1(options),
        retries: 0,
        backoff: 0
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

    def resolve_disable_v1(options)
      value = options[:disable_imds_v1] ||
              ENV['AWS_EC2_METADATA_V1_DISABLED'] ||
              Aws.shared_config.ec2_metadata_v1_disabled(profile: options[:profile]) ||
              'false'
      Aws::Util.str_2_bool(value.to_s.downcase)
    end

    def refresh
      if @no_refresh_until && @no_refresh_until > Time.now
        warn_expired_credentials
        return
      end

      new_creds = retry_errors { Aws::Json.load(fetch_credentials) }

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

    def empty_credentials?(creds)
      creds.nil? || !creds.set?
    end

    def fetch_credentials
      return '{}' if ec2_metadata_disabled?

      metadata = @ec2_metadata.get(METADATA_PATH_BASE)
      profile_name = metadata.lines.first.strip
      @ec2_metadata.get(METADATA_PATH_BASE + profile_name)
    end

    def update_credentials(creds)
      @credentials = Credentials.new(creds['AccessKeyId'], creds['SecretAccessKey'], creds['Token'])
      @expiration = creds['Expiration'] ? Time.iso8601(creds['Expiration']) : nil
      return unless @expiration && @expiration < Time.now

      @no_refresh_until = Time.now + rand(300..360)
      warn_expired_credentials
    end

    def warn_expired_credentials
      warn('Attempting credential expiration extension due to a credential service availability issue. '\
            'A refresh of these credentials will be attempted again in 5 minutes.')
    end

    def ec2_metadata_disabled?
      ENV.fetch('AWS_EC2_METADATA_DISABLED', 'false').downcase == 'true'
    end

    def resolve_backoff(backoff)
      case backoff
      when Proc then backoff
      when Numeric then ->(_) { Kernel.sleep(backoff) }
      else ->(num_failures) { Kernel.sleep(1.2**num_failures) }
      end
    end

    def retry_errors(&_block)
      attempts = 0
      unretryable_errors = [
        EC2Metadata::TokenRetrievalError,
        EC2Metadata::MetadataNotFoundError,
        EC2Metadata::RequestForbiddenError
      ]

      begin
        yield
      rescue Aws::Json::ParseError
        raise Aws::Errors::MetadataParserError unless attempts < @retries

        @backoff.call(attempts)
        attempts += 1
        retry
      rescue *unretryable_errors => e
        warn("Error retrieving instance profile credentials: #{e}")
        '{}'
      rescue StandardError
        if attempts < @retries
          @backoff.call(attempts)
          attempts += 1
          retry
        else
          warn("Error retrieving instance profile credentials: #{e}")
          '{}'
        end
      end
    end
  end
end
