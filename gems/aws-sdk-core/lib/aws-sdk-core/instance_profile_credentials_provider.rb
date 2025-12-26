# frozen_string_literal: true

module Aws
  module Core
    # An auto-refreshing credential provider that loads credentials from EC2 instances.
    #
    #     credentials = Aws::Core::InstanceProfileCredentialsProvider.new
    #     ec2 = Aws::EC2::Client.new(credentials_provider: credentials)
    #
    # Automatically handles refreshing credentials if an Expiration time is provided in the credentials payload.
    #
    # @see https://docs.aws.amazon.com/sdkref/latest/guide/feature-imds-credentials.html
    class InstanceProfileCredentialsProvider
      include IdentityProvider
      include Smithy::Client::RefreshingIdentityProvider

      # Path base for GET request for profile and credentials
      # @api private
      METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'

      # @option (see EC2Metadata#initialize)
      # @option options [String] :ec2_instance_profile_name (nil) The specified IAM instance profile name to use.
      # @option options [Proc] :before_refresh A Proc called before credentials are refreshed. `before_refresh` is
      #   called when AWS credentials are required and need to be refreshed.
      def initialize(options = {})
        @ec2_instance_profile_name = options.delete(:ec2_instance_profile_name)

        @ec2_metadata = EC2Metadata.new(options)
        @no_refresh_until = nil

        @async_refresh = false
        @features = ['CREDENTIALS_IMDS']
        super
      end

      # @return [String]
      attr_reader :ec2_instance_profile_name

      # @return [EC2Metadata]
      attr_reader :ec2_metadata

      private

      def refresh
        if @no_refresh_until && @no_refresh_until > Time.now
          warn_expired_credentials
          return
        end

        new_creds =
          begin
            JSON.parse(retrieve_credentials.to_s)
          rescue JSON::ParserError
            raise 'Failed to parse IMDS service response'
          end

        if @identity&.set? && new_credentials_empty?(new_creds)
          # credentials are already set, but there was an error getting new credentials
          # so don't update the credentials and use stale ones (static stability)
          @no_refresh_until = Time.now + rand(300..360)
          warn_expired_credentials
        else
          # credentials are empty or successfully retrieved, update them
          update_credentials(new_creds)
        end
      end

      def retrieve_credentials
        @resolved_profile = resolve_profile_name
        @ec2_metadata.get(METADATA_PATH_BASE + @resolved_profile)
      rescue StandardError => e
        warn("Error retrieving instance profile credentials: #{e}")
        '{}'
      end

      def resolve_profile_name
        # Use previously resolved profile name first.
        # Use the user supplied profile name next, if it exists.
        # Otherwise, retrieve the profile name metadata.
        if !@resolved_profile.nil?
          @resolved_profile
        elsif !@ec2_instance_profile_name.nil?
          @ec2_instance_profile_name
        else
          @ec2_metadata.get(METADATA_PATH_BASE)
        end
      end

      def update_credentials(creds)
        @expiration = Time.parse(creds['Expiration']) if creds['Expiration']
        @identity = Credentials.new(
          access_key_id: creds['AccessKeyId'],
          secret_access_key: creds['SecretAccessKey'],
          session_token: creds['Token'],
          account_id: creds['AccountId']
        )
        return unless expiration && expiration < Time.now

        @no_refresh_until = Time.now + rand(300..360)
        warn_expired_credentials
      end

      def warn_expired_credentials
        warn('Attempting credential expiration extension due to a credential service availability issue. ' \
             'A refresh of these credentials will be attempted again in 5 minutes.')
      end

      def new_credentials_empty?(creds_json)
        !creds_json['AccessKeyId'] || creds_json['AccessKeyId'].empty?
      end
    end
  end
end
