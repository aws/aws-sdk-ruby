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

require 'digest/md5'
require 'base64'

module Aws
  module Plugins
    class S3Md5s < Seahorse::Client::Plugin

      # Amazon S3 requires these operations to have an MD5 checksum
      REQUIRED_OPERATIONS = [
        :delete_objects,
        :put_bucket_cors,
        :put_bucket_lifecycle,
        :put_bucket_policy,
        :put_bucket_tagging,
        #:put_bucket_logging,
        #:restore_object,
      ]

      # @api private
      class Handler < Seahorse::Client::Handler

        OneMB = 1024 * 1024

        def call(context)
          context.http_request.headers['Content-Md5'] = md5(context)
          @handler.call(context)
        end

        def md5(context)
          md5 = Digest::MD5.new
          body = context.http_request.body
          while chunk = body.read(OneMB)
            md5.update(chunk)
          end
          body.rewind
          Base64.encode64(md5.digest).strip
        end

      end

      option(:compute_optional_md5s, true)

      def add_handlers(handlers, config)
        options = {
          priority: 10, # set intentially low so the md5 is computed after
          step: :build, # the request is built but before it is signed
        }

        unless config.compute_optional_md5s
          options[:operations] = REQUIRED_OPERATIONS
        end

        handlers.add(Handler, options)
      end

    end
  end
end
