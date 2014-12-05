module Aws
  module S3
    # @api private
    module PublicUrl
      class << self

        # @option options [required, URI::HTTP, URI::HTTPS] :endpoint
        #   The Amazon S3 endpoint to generate the public URL against.
        #
        # @option options [required, String] :bucket_name Name of the bucket
        #   the object is in.
        #
        # @option options [required, String] :object_key Key of the object
        #   to generate a URL for.
        #
        # @option options [Boolean] :force_path_style (false) When `true`,
        #   the bucket name will always be part of the URI path. When `false`,
        #   DNS compatible bucket names will be the endpoint host subdomain.
        #
        #       # path style
        #       "https://s3.amazonaws.com/bucket-name/key"
        #
        #       # dns-style
        #       "https://bucket-name.s3.amazonaws.com/key"
        #
        # @return [String]
        def build(options = {})
          endpoint = options[:endpoint].dup
          apply_bucket_name(endpoint, options)
          apply_object_key(endpoint, options)
          endpoint.to_s
        end

        private

        def apply_bucket_name(endpoint, options)
          if path_style?(endpoint, options)
            endpoint.path += '/' unless endpoint.path[-1] == '/'
            endpoint.path += Seahorse::Util.uri_escape(options[:bucket_name])
          else
            endpoint.host = options[:bucket_name] + '.' + endpoint.host
          end
        end

        def apply_object_key(endpoint, options)
          key = options[:object_key]
          endpoint.path += '/' unless endpoint.path[-1] == '/'
          endpoint.path += key.split('/').map { |v| escape(v) }.join('/')
        end

        def path_style?(endpoint, options)
          options[:force_path_style] == true ||
          dns_compat?(endpoint, options) == false
        end

        def dns_compat?(endpoint, options)
          Aws::Plugins::S3BucketDns.dns_compatible?(
            options[:bucket_name],
            endpoint.scheme == 'https'
          )
        end

        def escape(string)
          Seahorse::Util.uri_escape(string)
        end


      end
    end
  end
end
