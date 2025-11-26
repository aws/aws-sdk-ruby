# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CodeBuild', Module.new) unless Aws.const_defined?('CodeBuild')

# @title AWS CodeBuild
# <fullname>CodeBuild</fullname>
#          <p>CodeBuild is a fully managed build service in the cloud. CodeBuild compiles your source code,
#             runs unit tests, and produces artifacts that are ready to deploy. CodeBuild eliminates the
#             need to provision, manage, and scale your own build servers. It provides prepackaged
#             build environments for the most popular programming languages and build tools, such as
#             Apache Maven, Gradle, and more. You can also fully customize build environments in CodeBuild
#             to use your own build tools. CodeBuild scales automatically to meet peak build requests. You
#             pay only for the build time you consume. For more information about CodeBuild, see the <i>
#                <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html">CodeBuild User
#                     Guide</a>.</i>
#          </p>
module Aws::CodeBuild
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-codebuild/types'
require_relative 'aws-sdk-codebuild/paginators'
require_relative 'aws-sdk-codebuild/schema'
require_relative 'aws-sdk-codebuild/auth_parameters'
require_relative 'aws-sdk-codebuild/auth_resolver'
require_relative 'aws-sdk-codebuild/client'
require_relative 'aws-sdk-codebuild/errors'
require_relative 'aws-sdk-codebuild/endpoint_parameters'
require_relative 'aws-sdk-codebuild/endpoint_provider'
require_relative 'aws-sdk-codebuild/waiters'
require_relative 'aws-sdk-codebuild/customizations'
