# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module Aws
  module Plugins

    # Amazon S3 requires DNS style addressing for buckets outside of
    # the classic region when possible.
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
            move_dns_buckets(context.params[:bucket], context.http_request)
          end
          @handler.call(context)
        end

        # Moves DNS compatible bucket names from the request uri path to
        # the endpoint host as a subdomain.  This is skipped for DNS
        # compatible bucket names that contain a dot if the request
        # uses SSL.
        def move_dns_buckets(bucket_name, req)
          if dns_compatible?(bucket_name.to_s)
            unless req.endpoint.https? && bucket_name.match(/\./)
              # strip the bucket (and its preceeding slash) from the request
              # path and move it in-front of the host as a subdomain.
              req.endpoint.host = "#{bucket_name}.#{req.endpoint.host}"
              req.path = req.path[(bucket_name.size + 1)..-1]
              req.path = "/#{req.path}" unless req.path.match(/^\//)
            end
          end
        end

        # DNS compatible bucket names must begin and end with a lower-cased
        # letter or number, must be 3..64 characters in length,
        # may not look like an IP address and may not contain consecutive
        # dots or dashes.
        # @param [String] bucket_name
        # @return [Boolean]
        def dns_compatible?(bucket_name)
          bucket_name.size < 64 &&
          bucket_name =~ /^[a-z0-9][a-z0-9.-]+[a-z0-9]$/ &&
          bucket_name !~ /(\d+\.){3}\d+/ &&
          bucket_name !~ /[.-]{2}/
        end

      end

      handler(Handler)

    end
  end
end
