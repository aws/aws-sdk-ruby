# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AppRunner', Module.new) unless Aws.const_defined?('AppRunner')

# @title AWS App Runner
# <fullname>App Runner</fullname>
#          <p>App Runner is an application service that provides a fast, simple, and cost-effective way to go directly from an existing container image or source code
#       to a running service in the Amazon Web Services Cloud in seconds. You don't need to learn new technologies, decide which compute service to use, or understand how to
#       provision and configure Amazon Web Services resources.</p>
#          <p>App Runner connects directly to your container registry or source code repository. It provides an automatic delivery pipeline with fully managed operations,
#       high performance, scalability, and security.</p>
#          <p>For more information about App Runner, see the <a href="https://docs.aws.amazon.com/apprunner/latest/dg/">App Runner Developer Guide</a>.
#       For release information, see the <a href="https://docs.aws.amazon.com/apprunner/latest/relnotes/">App Runner Release Notes</a>.</p>
#          <p>
#        To install the Software Development Kits (SDKs), Integrated
#       Development Environment (IDE) Toolkits, and command line tools that you can use to access the API, see <a href="http://aws.amazon.com/tools/">Tools for
#         Amazon Web Services</a>.</p>
#          <p>
#             <b>Endpoints</b>
#          </p>
#          <p>For a list of Region-specific endpoints that App Runner supports, see <a href="https://docs.aws.amazon.com/general/latest/gr/apprunner.html">App Runner
#         endpoints and quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
module Aws::AppRunner
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-apprunner/types'
require_relative 'aws-sdk-apprunner/paginators'
require_relative 'aws-sdk-apprunner/schema'
require_relative 'aws-sdk-apprunner/auth_parameters'
require_relative 'aws-sdk-apprunner/auth_resolver'
require_relative 'aws-sdk-apprunner/client'
require_relative 'aws-sdk-apprunner/customizations'
require_relative 'aws-sdk-apprunner/errors'
require_relative 'aws-sdk-apprunner/endpoint_parameters'
require_relative 'aws-sdk-apprunner/endpoint_provider'
require_relative 'aws-sdk-apprunner/waiters'
