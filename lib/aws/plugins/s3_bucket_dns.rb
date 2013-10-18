module Aws
  module Plugins

    # Amazon S3 requires DNS style addressing for buckets outside of
    # the classic region when possible.
    #
    # @seahorse_client_option [Boolean] :force_path_style (false)
    #   When set to `true`, the bucket name is always left in the
    #   request URI and never moved to the host as a sub-domain.
    #
    class S3BucketDns < Seahorse::Client::Plugin

      # When set to `false` DNS compatible bucket names are moved from
      # the request URI path to the host as a subdomain, unless the request
      # is using SSL and the bucket name contains a dot.
      #
      # When set to `true`, the bucket name is always forced to be part
      # of the request URI path.  This will not work with buckets outside
      # the classic region.
      option(:force_path_style, false)

      # @api private
      class Handler < Seahorse::Client::Handler

        def call(context)
          unless context.config.force_path_style
            move_dns_compat_bucket_to_subdomain(context)
          end
          @handler.call(context)
        end

        private

        def move_dns_compat_bucket_to_subdomain(context)
          if bucket_name = context.params[:bucket]
            req = context.http_request
            if S3BucketDns.dns_compatible?(bucket_name, req.endpoint.https?)
              move_bucket_to_subdomain(bucket_name, req)
            end
          end
        end

        def move_bucket_to_subdomain(bucket_name, req)
          req.endpoint.host = "#{bucket_name}.#{req.endpoint.host}"
          req.path = req.path[(bucket_name.size + 1)..-1]
          req.path = "/#{req.path}" unless req.path.match(/^\//)
        end

      end

      handler(Handler)

      class << self

        # @param [String] bucket_name
        # @param [Boolean] ssl
        # @return [Boolean]
        def dns_compatible?(bucket_name, ssl)
          if valid_subdomain?(bucket_name)
            bucket_name.match(/\./) && ssl ? false : true
          else
            false
          end
        end

        private

        def valid_subdomain?(bucket_name)
          bucket_name.size < 64 &&
          bucket_name =~ /^[a-z0-9][a-z0-9.-]+[a-z0-9]$/ &&
          bucket_name !~ /(\d+\.){3}\d+/ &&
          bucket_name !~ /[.-]{2}/
        end

      end
    end
  end
end
