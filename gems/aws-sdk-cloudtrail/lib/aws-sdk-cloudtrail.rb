# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudTrail', Module.new) unless Aws.const_defined?('CloudTrail')

# @title AWS CloudTrail
# <fullname>CloudTrail</fullname>
#          <p>This is the CloudTrail API Reference. It provides descriptions of actions, data
#          types, common parameters, and common errors for CloudTrail.</p>
#          <p>CloudTrail is a web service that records Amazon Web Services API calls for your
#             Amazon Web Services account and delivers log files to an Amazon S3 bucket. The
#          recorded information includes the identity of the user, the start time of the Amazon Web Services API call, the source IP address, the request parameters, and the response
#          elements returned by the service.</p>
#          <note>
#             <p>As an alternative to the API, you can use one of the Amazon Web Services SDKs, which
#             consist of libraries and sample code for various programming languages and platforms
#             (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide programmatic access to CloudTrail. For example, the SDKs handle cryptographically signing requests,
#             managing errors, and retrying requests automatically. For more information about the
#                Amazon Web Services SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools to Build on Amazon Web Services</a>.</p>
#          </note>
#          <p>See the <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html">CloudTrail
#          User Guide</a> for information about the data that is included with each Amazon Web Services API call listed in the log files.</p>
module Aws::CloudTrail
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudtrail/types'
require_relative 'aws-sdk-cloudtrail/paginators'
require_relative 'aws-sdk-cloudtrail/schema'
require_relative 'aws-sdk-cloudtrail/auth_parameters'
require_relative 'aws-sdk-cloudtrail/auth_resolver'
require_relative 'aws-sdk-cloudtrail/client'
require_relative 'aws-sdk-cloudtrail/errors'
require_relative 'aws-sdk-cloudtrail/endpoint_parameters'
require_relative 'aws-sdk-cloudtrail/endpoint_provider'
require_relative 'aws-sdk-cloudtrail/waiters'
require_relative 'aws-sdk-cloudtrail/customizations'
