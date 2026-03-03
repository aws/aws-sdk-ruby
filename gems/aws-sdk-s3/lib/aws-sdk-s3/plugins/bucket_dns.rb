# frozen_string_literal: true

module Aws
  module S3
    module Plugins
      # Amazon S3 requires DNS style addressing for buckets outside the classic region when possible.
      class BucketDns < Smithy::Client::Plugin
        # When set to `false` DNS compatible bucket names are moved from
        # the request URI path to the host as a subdomain, unless the request
        # is using SSL and the bucket name contains a dot.
        #
        # When set to `true`, the bucket name is always forced to be part
        # of the request URI path.  This will not work with buckets outside
        # the classic region.
        option(
          :s3_force_path_style,
          default: false,
          doc_type: 'Boolean',
          docstring: <<~DOCS)
            When set to `true`, the bucket name is always left in the
            request URI and never moved to the host as a sub-domain.
          DOCS
      end
    end
  end
end
