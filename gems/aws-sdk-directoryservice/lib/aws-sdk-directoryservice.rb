# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DirectoryService', Module.new) unless Aws.const_defined?('DirectoryService')

# @title AWS Directory Service
# <fullname>Directory Service</fullname>
#          <p>Directory Service is a web service that makes it easy for you to setup and run directories in the
#          Amazon Web Services cloud, or connect your Amazon Web Services resources with an existing self-managed Microsoft Active
#          Directory. This guide provides detailed information about Directory Service operations, data types,
#          parameters, and errors. For information about Directory Services features, see <a href="https://aws.amazon.com/directoryservice/">Directory Service</a> and the <a href="http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html">Directory Service
#             Administration Guide</a>.</p>
#          <note>
#             <p>Amazon Web Services provides SDKs that consist of libraries and sample code for various
#             programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The SDKs
#             provide a convenient way to create programmatic access to Directory Service and other Amazon Web Services
#             services. For more information about the Amazon Web Services SDKs, including how to download and
#             install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web
#                Services</a>.</p>
#          </note>
module Aws::DirectoryService
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-directoryservice/types'
require_relative 'aws-sdk-directoryservice/paginators'
require_relative 'aws-sdk-directoryservice/schema'
require_relative 'aws-sdk-directoryservice/auth_parameters'
require_relative 'aws-sdk-directoryservice/auth_resolver'
require_relative 'aws-sdk-directoryservice/client'
require_relative 'aws-sdk-directoryservice/customizations'
require_relative 'aws-sdk-directoryservice/errors'
require_relative 'aws-sdk-directoryservice/endpoint_parameters'
require_relative 'aws-sdk-directoryservice/endpoint_provider'
require_relative 'aws-sdk-directoryservice/waiters'
