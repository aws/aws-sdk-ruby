# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CognitoSync', Module.new) unless Aws.const_defined?('CognitoSync')

# @title Amazon Cognito Sync
# <fullname>Amazon Cognito Sync</fullname>
#       <p>Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of
#          application-related user data. High-level client libraries are available for both iOS and
#          Android. You can use these libraries to persist data locally so that it's available even if
#          the device is offline. Developer credentials don't need to be stored on the mobile device
#          to access the service. You can use Amazon Cognito to obtain a normalized user ID and
#          credentials. User data is persisted in a dataset that can store up to 1 MB of key-value
#          pairs, and you can have up to 20 datasets per user identity.</p>
#       <p>With Amazon Cognito Sync, the data stored for each identity is accessible only to
#          credentials assigned to that identity. In order to use the Cognito Sync service, you need
#          to make API calls using credentials retrieved with <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html">Amazon Cognito Identity service</a>.</p>
#       <p>If you want to use Cognito Sync in an Android or iOS application, you will probably want to
#          make API calls via the AWS Mobile SDK. To learn more, see the <a href="http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html">Developer Guide for Android</a> and the <a href="http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html">Developer Guide for iOS</a>.</p>
module Aws::CognitoSync
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cognitosync/types'
require_relative 'aws-sdk-cognitosync/paginators'
require_relative 'aws-sdk-cognitosync/schema'
require_relative 'aws-sdk-cognitosync/auth_parameters'
require_relative 'aws-sdk-cognitosync/auth_resolver'
require_relative 'aws-sdk-cognitosync/client'
require_relative 'aws-sdk-cognitosync/errors'
require_relative 'aws-sdk-cognitosync/endpoint_parameters'
require_relative 'aws-sdk-cognitosync/endpoint_provider'
require_relative 'aws-sdk-cognitosync/waiters'
require_relative 'aws-sdk-cognitosync/customizations'
