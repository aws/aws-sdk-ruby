# frozen_string_literal: true

require 'base64'
require 'json'
require 'openssl'
require 'time'
require 'uri'

module Aws
  module CloudFront
    # @api private
    module Signer
      # @option options [String] :key_pair_id
      # @option options [String] :private_key
      # @option options [String] :private_key_path
      def initialize(options = {})
        @key_pair_id = key_pair_id(options)
        @cipher = OpenSSL::Digest.new('SHA1')
        @private_key = OpenSSL::PKey.read(private_key(options))
      end

      private

      def key_pair_id(options)
        if options[:key_pair_id].nil? || options[:key_pair_id] == ''
          raise ArgumentError, ':key_pair_id must not be blank'
        end

        options[:key_pair_id]
      end

      def private_key(options)
        if options[:private_key]
          options[:private_key]
        elsif options[:private_key_path]
          File.binread(options[:private_key_path])
        else
          raise ArgumentError, ':private_key or :private_key_path should be provided'
        end
      end

      def scheme_and_uri(url)
        raise ArgumentError, "Invalid URL: #{url}" if url.nil? || url == ''

        url_sections = url.split('://', 2)
        raise ArgumentError, "Invalid URL: #{url}" if url_sections.length < 2

        scheme = url_sections[0].delete('*')
        uri = "#{scheme}://#{url_sections[1]}"
        [scheme, uri]
      end

      def time(expires)
        case expires
        when Time then expires.to_i
        when DateTime, Date then expires.to_time.to_i
        when String then Time.parse(expires).to_i
        when Integer, nil then expires
        else
          raise ArgumentError, "expected a time value for :expires, got `#{expires.class}'"
        end
      end

      def rtmp_url(uri)
        result = uri.path.gsub(' ', '/')
        result[0] = ''
        if uri.query
          "#{result}?#{uri.query}"
        else
          result
        end
      end

      def resource(scheme, url)
        case scheme
        when 'http', 'http*', 'https' then url
        when 'rtmp'
          url_info = URI.parse(url)
          path = url_info.path
          path[0] = ''
          resource_content = "#{File.dirname(path)}/#{File.basename(path)}".gsub(' ', '/')
          if url_info.query
            "#{resource_content}?#{uri.query}"
          else
            resource_content
          end
        else
          raise ArgumentError, "Invalid URI scheme:#{scheme}. Scheme must be one of: http, https or rtmp."
        end
      end

      # create signed values that used to construct signed URLs or Set-Cookie parameters
      # @option param [String] :resource
      # @option param [Integer<timestamp>] :expires
      # @option param [String<JSON>] :policy
      def signature(params = {}) # rubocop:disable Metrics/AbcSize
        signature_content = {}
        if params[:policy]
          policy = params[:policy].gsub('/\s/s', '')
          signature_content['Policy'] = encode(policy)
        elsif params[:resource] && params[:expires]
          policy = canned_policy(params[:resource], params[:expires])
          signature_content['Expires'] = params[:expires]
        else
          raise ArgumentError, 'Either a policy or a resource with an expiration time must be provided.'
        end

        signature_content['Signature'] = encode(sign_policy(policy))
        signature_content['Key-Pair-Id'] = @key_pair_id
        signature_content
      end

      def sign_policy(policy)
        @private_key.sign(@cipher, policy)
      end

      def canned_policy(resource, expires)
        JSON.dump(
          {
            'Statement' => [
              'Resource' => resource,
              'Condition' => { 'DateLessThan' => { 'AWS:EpochTime' => expires } }
            ]
          }
        )
      end

      def encode(policy)
        Base64.encode64(policy).gsub(%r{[+=/]}, '+' => '-', '=' => '_', '/' => '~')
      end
    end
  end
end
