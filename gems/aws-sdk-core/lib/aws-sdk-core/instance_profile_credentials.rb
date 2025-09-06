# frozen_string_literal: true

module Aws
  module Core
    # An auto-refreshing credential provider that loads credentials from EC2 instances.
    #
    #     creds = Aws::Core::InstanceProfileCredentials.new
    #     ec2 = Aws::EC2::Client.new(credentials: creds)
    #
    # @see https://docs.aws.amazon.com/sdkref/latest/guide/feature-imds-credentials.html
    class InstanceProfileCredentials
      include CredentialsProvider
      include Smithy::Client::RefreshingIdentityProvider

      # Raised when InstanceProfileCredentialsProvider fails to parse the metadata response after retries
      class MetadataParserError < RuntimeError
        def initialize(*_args)
          msg = 'Failed to parse metadata service response.'
          super(msg)
        end
      end

      # Path base for GET request for profile and credentials
      # @api private
      METADATA_PATH_BASE = '/latest/meta-data/iam/security-credentials/'

      # @option (see EC2Metadata#initialize)
      # @option options [String] :ec2_instance_profile_name (nil) The specified IAM instance profile name to use.
      def initialize(options = {})
        @ec2_instance_profile_name = options.delete(:ec2_instance_profile_name)
        @ec2_metadata = EC2Metadata.new(options)
        @async_refresh = false
        @no_refresh_until = nil
        @features = ['CREDENTIALS_IMDS']
        super()
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
            raise MetadataParserError
          end

        if existing_credentials_set?(@identity) && new_credentials_empty?(new_creds)
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
        expiration = creds['Expiration'] ? Time.iso8601(creds['Expiration']) : nil
        @identity = Credentials.new(
          access_key_id: creds['AccessKeyId'],
          secret_access_key: creds['SecretAccessKey'],
          session_token: creds['Token'],
          expiration: expiration
        )
        return unless expiration && expiration < Time.now

        @no_refresh_until = Time.now + rand(300..360)
        warn_expired_credentials
      end

      def warn_expired_credentials
        warn('Attempting credential expiration extension due to a credential service availability issue. ' \
             'A refresh of these credentials will be attempted again in 5 minutes.')
      end

      def existing_credentials_set?(identity)
        return false unless identity

        !identity.access_key_id.nil? &&
          !identity.access_key_id.empty? &&
          !identity.secret_access_key.nil? &&
          !identity.secret_access_key.empty?
      end

      def new_credentials_empty?(creds_json)
        !creds_json['AccessKeyId'] || creds_json['AccessKeyId'].empty?
      end
    end
  end
end
