# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('S3', Module.new) unless Aws.const_defined?('S3')

# @title Amazon Simple Storage Service
# <note>
#             <p>For information about using the Amazon S3 API—including authentication, signing requests, code examples, and error handling—see the <a href="https://docs.aws.amazon.com/AmazonS3/latest/developerguide/Welcome.html">Amazon S3 Developer Guide</a>.</p>
#          </note>
#          <p>Welcome to the <i>Amazon S3 API Reference</i>. This guide explains the Amazon Simple Storage Service (Amazon S3)
#       application programming interface (API).</p>
#          <p>Welcome to the <i>Amazon S3 API Reference</i>. This guide explains the Amazon Simple Storage Service (Amazon S3)
#       application programming interface (API).</p>
#          <p>You can use any toolkit that supports HTTP to use the REST API. You can even use a browser
#       to fetch objects, as long as they are anonymously readable.</p>
#          <p>The REST API uses the standard HTTP headers and status codes, so that standard browsers and toolkits work as expected. In some areas, we have added functionality to HTTP (for example, we added headers to support access control). In these cases, we have done our best to add the new functionality in a way that matched the style of standard HTTP usage.</p>
#          <p>The current version of the Amazon S3 API is <code>2006-03-01</code>.</p>
#          <p>Amazon S3 supports the REST API.</p>
#          <note>
#             <p>Support for SOAP over HTTP is deprecated, but it is still available over HTTPS.
#         However, new Amazon S3 features will not be supported for SOAP. We recommend that
#         you use either this REST API or the Amazon Web Services SDKs.</p>
#          </note>
module Aws::S3
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-s3/types'
require_relative 'aws-sdk-s3/paginators'
require_relative 'aws-sdk-s3/schema'
require_relative 'aws-sdk-s3/auth_parameters'
require_relative 'aws-sdk-s3/auth_resolver'
require_relative 'aws-sdk-s3/client'
require_relative 'aws-sdk-s3/errors'
require_relative 'aws-sdk-s3/endpoint_parameters'
require_relative 'aws-sdk-s3/endpoint_provider'
require_relative 'aws-sdk-s3/waiters'
require_relative 'aws-sdk-s3/customizations'
