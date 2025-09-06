# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CognitoIdentity', Module.new) unless Aws.const_defined?('CognitoIdentity')

# @title Amazon Cognito Identity
# <fullname>Amazon Cognito Federated Identities</fullname>
#          <p>Amazon Cognito Federated Identities is a web service that delivers scoped temporary
#          credentials to mobile devices and other untrusted environments. It uniquely identifies a
#          device and supplies the user with a consistent identity over the lifetime of an
#          application.</p>
#          <p>Using Amazon Cognito Federated Identities, you can enable authentication with one or
#          more third-party identity providers (Facebook, Google, or Login with Amazon) or an Amazon
#          Cognito user pool, and you can also choose to support unauthenticated access from your app.
#          Cognito delivers a unique identifier for each user and acts as an OpenID token provider
#          trusted by Security Token Service (STS) to access temporary, limited-privilege Amazon Web Services credentials.</p>
#          <p>For a description of the authentication flow from the Amazon Cognito Developer Guide
#          see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flow.html">Authentication
#          Flow</a>.</p>
#          <p>For more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-identity.html">Amazon Cognito Federated
#             Identities</a>.</p>
module Aws::CognitoIdentity
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cognitoidentity/types'
require_relative 'aws-sdk-cognitoidentity/paginators'
require_relative 'aws-sdk-cognitoidentity/schema'
require_relative 'aws-sdk-cognitoidentity/auth_parameters'
require_relative 'aws-sdk-cognitoidentity/auth_resolver'
require_relative 'aws-sdk-cognitoidentity/client'
require_relative 'aws-sdk-cognitoidentity/customizations'
require_relative 'aws-sdk-cognitoidentity/errors'
require_relative 'aws-sdk-cognitoidentity/endpoint_parameters'
require_relative 'aws-sdk-cognitoidentity/endpoint_provider'
require_relative 'aws-sdk-cognitoidentity/waiters'
