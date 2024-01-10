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
      # @option options [Client] :client The S3 Control client used to create
      #  the session.
      # @option options [String] :privilege ('Default') The privilege to use
      #  when requesting credentials. (see: {Aws::S3Control::Client#get_data_access})
      # @option options [Boolean] :fallback (false) When true, if access is
      #  denied, the provider will fall back to the configured credentials.
      # @option options [Boolean] :caching (true) When true, credentials and
      #  bucket account ids will be cached.
      # @option options [Callable] :before_refresh Proc called before
      #  credentials are refreshed.
      def initialize(options = {})
        @client = options.delete(:client) || S3Control::Client.new
        @fallback = options.delete(:fallback) || false
        @caching = options.delete(:caching) || true
        @options = options
        return unless @caching

        @credentials_cache = ACCESS_GRANTS_CREDENTIALS_CACHE
        @account_id_cache = ACCESS_GRANTS_ACCOUNT_ID_CACHE
      end

      def access_grants_credentials_for(options = {})
        target = target_prefix(
          options[:bucket],
          options[:key],
          options[:prefix]
        )

        if @caching
          cached_credentials_for(
            target,
            options[:credentials],
            options[:permission]
          )
        else
          new_credentials_for(
            target,
            options[:credentials],
            options[:permission]
          )
        end
      rescue Aws::S3Control::Errors::AccessDenied
        raise unless @fallback

        warn 'Access denied for S3 Access Grants. Falling back to ' \
             'configured credentials.'
        options[:credentials]
      end

      private

      def cached_credentials_for(target, credentials, permission)
        key = credentials_cache_key(target, credentials, permission)

        if @credentials_cache.key?(key)
          @credentials_cache[key]
        else
          @credentials_cache[key] = new_credentials_for(
            target,
            credentials,
            permission
          )
        end
      end

      def new_credentials_for(target, credentials, permission)
        AccessGrantsCredentials.new(
          target: target,
          account_id: account_id_for_access_grants(target, credentials),
          permission: permission,
          client: @client,
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
        key = account_id_cache_key(target)

        if @account_id_cache.key?(key)
          @account_id_cache[key]
        else
          @account_id_cache[key] = new_account_id_for(target, credentials)
        end
      end

      # returns the account id associated with the access grants instance
      def new_account_id_for(target, credentials)
        resp = @client.get_access_grants_instance_for_prefix(
          s3_prefix: target,
          account_id: account_id_for_credentials(credentials),
        )
        ARNParser.parse(resp.access_grants_instance_arn).account_id
      end

      # returns the account id for the configured credentials
      def account_id_for_credentials(credentials)
        if credentials.respond_to?(:account_id) && credentials.account_id &&
           !credentials.account_id.empty?
          credentials.account_id
        else
          Aws::STS::Client.new.get_caller_identity.account
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
      def credentials_cache_key(target, credentials, permission)
        "#{credentials.access_key_id}-#{credentials.secret_access_key}" \
        "-#{permission}-#{target}"
      end

      # uses bucket name from target prefix
      def account_id_cache_key(target)
        URI(target).host
      end
    end
  end
end
