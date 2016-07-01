# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'
require 'aws-sdk-kms'

require_relative 'aws-sdk-s3/types'
require_relative 'aws-sdk-s3/client_api'
require_relative 'aws-sdk-s3/client'
require_relative 'aws-sdk-s3/errors'
require_relative 'aws-sdk-s3/waiters'
require_relative 'aws-sdk-s3/resource'
require_relative 'aws-sdk-s3/bucket'
require_relative 'aws-sdk-s3/bucket_acl'
require_relative 'aws-sdk-s3/bucket_cors'
require_relative 'aws-sdk-s3/bucket_lifecycle'
require_relative 'aws-sdk-s3/bucket_logging'
require_relative 'aws-sdk-s3/bucket_notification'
require_relative 'aws-sdk-s3/bucket_policy'
require_relative 'aws-sdk-s3/bucket_request_payment'
require_relative 'aws-sdk-s3/bucket_tagging'
require_relative 'aws-sdk-s3/bucket_versioning'
require_relative 'aws-sdk-s3/bucket_website'
require_relative 'aws-sdk-s3/multipart_upload'
require_relative 'aws-sdk-s3/multipart_upload_part'
require_relative 'aws-sdk-s3/object'
require_relative 'aws-sdk-s3/object_acl'
require_relative 'aws-sdk-s3/object_summary'
require_relative 'aws-sdk-s3/object_version'

# customizations for generated code
require_relative 'aws-sdk-s3/customizations.rb'

module Aws
  # This module provides support for Amazon Simple Storage Service.
  #
  # # Aws::S3::Client
  #
  # The {Aws::S3::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     s3 = Aws::S3::Client.new
  #     resp = s3.abort_multipart_upload(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::S3::Errors
  #
  # Errors returned from Amazon Simple Storage Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::S3::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module S3

    GEM_VERSION = '1.0.0'

  end
end
