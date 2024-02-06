# frozen_string_literal: true

module Aws
  module S3
    # @api private
    ACCESS_GRANTS_CREDENTIALS_CACHE = LRUCache.new
    # @api private
    ACCESS_GRANTS_ACCOUNT_ID_CACHE = LRUCache.new(expiration: 60 * 10)

    # Returns Credentials class for S3 Access Grants. Accepts GetDataAccess
    # params and other configuration as options. See
    # {Aws::S3Control::Client#get_data_access} for details.
    class AccessGrantsCredentialsProvider
      # @param [Hash] options
      # @option options [Hash] :s3_control_client_options The S3 Control
      #  client options used to create regional S3 Control clients to
      #  create the session. Region will be set to the region of the
      #  bucket.
      # @option options [Aws::STS::Client] :sts_client The STS client used for
      #  fetching the Account ID for the credentials if credentials do not
      #  include an Account ID.
      # @option options [Aws::S3::Client] :s3_client The S3 client used for
      #  fetching the location of the bucket so that a regional S3 Control
      #  client can be created. Defaults to the S3 client from the access
      #  grants plugin.
      # @option options [String] :privilege ('Default') The privilege to use
      #  when requesting credentials. (see: {Aws::S3Control::Client#get_data_access})
      # @option options [Boolean] :fallback (false) When true, if access is
      #  denied, the provider will fall back to the configured credentials.
      # @option options [Boolean] :caching (true) When true, credentials and
      #  bucket account ids will be cached.
      # @option options [Callable] :before_refresh Proc called before
      #  credentials are refreshed.
      def initialize(options = {})
        @s3_control_options = options.delete(:s3_control_client_options) || {}
        @s3_client = options.delete(:s3_client)
        @sts_client = options.delete(:sts_client)
        @fallback = options.delete(:fallback) || false
        @caching = options.delete(:caching) || true
        @options = options
        return unless @caching

        @credentials_cache = ACCESS_GRANTS_CREDENTIALS_CACHE
        @account_id_cache = ACCESS_GRANTS_ACCOUNT_ID_CACHE
        @bucket_region_cache = BUCKET_REGIONS # shared cache with s3_signer
        @s3_control_client_cache = {}
      end

      def access_grants_credentials_for(options = {})
        target = target_prefix(
          options[:bucket],
          options[:key],
          options[:prefix]
        )
        credentials = s3_client.config.credentials.credentials # resolves

        if @caching
          cached_credentials_for(target, options[:permission], credentials)
        else
          new_credentials_for(target, options[:permission], credentials)
        end
      rescue Aws::S3Control::Errors::AccessDenied
        raise unless @fallback

        warn 'Access denied for S3 Access Grants. Falling back to ' \
             'configured credentials.'
        s3_client.config.credentials
      end

      attr_accessor :s3_client

      private

      def s3_control_client(bucket_region)
        @s3_control_client_cache[bucket_region] ||= begin
          credentials = s3_client.config.credentials
          config = { credentials: credentials }.merge(@s3_control_options)
          Aws::S3Control::Client.new(config.merge(region: bucket_region))
        end
      end

      def cached_credentials_for(target, permission, credentials)
        key = credentials_cache_key(target, permission, credentials)

        if @credentials_cache.key?(key)
          @credentials_cache[key]
        else
          @credentials_cache[key] = new_credentials_for(
            target,
            permission,
            credentials
          )
        end
      end

      def new_credentials_for(target, permission, credentials)
        bucket_region = bucket_region_for_access_grants(target)
        client = s3_control_client(bucket_region)

        AccessGrantsCredentials.new(
          target: target,
          account_id: account_id_for_access_grants(target, credentials),
          permission: permission,
          client: client,
          **@options
        )
      end

      def account_id_for_access_grants(target, credentials)
        if @caching
          cached_account_id_for(target, credentials)
        else
          new_account_id_for(target, credentials)
        end
      end

      def cached_account_id_for(target, credentials)
        bucket = bucket_name_from(target)

        if @account_id_cache.key?(bucket)
          @account_id_cache[bucket]
        else
          @account_id_cache[bucket] = new_account_id_for(target, credentials)
        end
      end

      # returns the account id associated with the access grants instance
      def new_account_id_for(target, credentials)
        bucket_region = bucket_region_for_access_grants(target)
        s3_control_client = s3_control_client(bucket_region)
        resp = s3_control_client.get_access_grants_instance_for_prefix(
          s3_prefix: target,
          account_id: account_id_for_credentials(bucket_region, credentials)
        )
        ARNParser.parse(resp.access_grants_instance_arn).account_id
      end

      def bucket_region_for_access_grants(target)
        bucket = bucket_name_from(target)
        if @caching
          cached_bucket_region_for(bucket)
        else
          new_bucket_region_for(bucket)
        end
      end

      def cached_bucket_region_for(bucket)
        if @bucket_region_cache.key?(bucket)
          @bucket_region_cache[bucket]
        else
          @bucket_region_cache[bucket] = new_bucket_region_for(bucket)
        end
      end

      def new_bucket_region_for(bucket)
        @s3_client.head_bucket(bucket: bucket).bucket_region
      rescue Aws::S3::Errors::Http301Error => e
        e.data.region
      end

      # returns the account id for the configured credentials
      def account_id_for_credentials(region, credentials)
        # use resolved credentials to check for account id
        if credentials.respond_to?(:account_id) && credentials.account_id &&
           !credentials.account_id.empty?
          credentials.account_id
        else
          @sts_client ||= Aws::STS::Client.new(
            credentials: s3_client.config.credentials,
            region: region
          )
          @sts_client.get_caller_identity.account
        end
      end

      def target_prefix(bucket, key, prefix)
        if key && !key.empty?
          "s3://#{bucket}/#{key}"
        elsif prefix && !prefix.empty?
          "s3://#{bucket}/#{prefix}"
        else
          "s3://#{bucket}/*"
        end
      end

      # TODO - should check multiple targets and permissions in a smart way
      def credentials_cache_key(target, permission, credentials)
        "#{credentials.access_key_id}-#{credentials.secret_access_key}" \
        "-#{permission}-#{target}"
      end

      # extracts bucket name from target prefix
      def bucket_name_from(target)
        URI(target).host
      end
    end
  end
end
