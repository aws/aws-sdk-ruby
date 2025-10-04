# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AmplifyUIBuilder', Module.new) unless Aws.const_defined?('AmplifyUIBuilder')

# @title AWS Amplify UI Builder
# <p>The Amplify UI Builder API provides a programmatic interface for creating
#       and configuring user interface (UI) component libraries and themes for use in your Amplify applications. You can then connect these UI components to an application's
#       backend Amazon Web Services resources.</p>
#          <p>You can also use the Amplify Studio visual designer to create UI components
#       and model data for an app. For more information, see <a href="https://docs.amplify.aws/console/adminui/intro">Introduction</a> in the
#       <i>Amplify Docs</i>.</p>
#          <p>The Amplify Framework is a comprehensive set of SDKs, libraries, tools, and
#       documentation for client app development. For more information, see the <a href="https://docs.amplify.aws/">Amplify Framework</a>. For more information about
#       deploying an Amplify application to Amazon Web Services, see the <a href="https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html">Amplify User Guide</a>.</p>
module Aws::AmplifyUIBuilder
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-amplifyuibuilder/types'
require_relative 'aws-sdk-amplifyuibuilder/paginators'
require_relative 'aws-sdk-amplifyuibuilder/schema'
require_relative 'aws-sdk-amplifyuibuilder/auth_parameters'
require_relative 'aws-sdk-amplifyuibuilder/auth_resolver'
require_relative 'aws-sdk-amplifyuibuilder/client'
require_relative 'aws-sdk-amplifyuibuilder/customizations'
require_relative 'aws-sdk-amplifyuibuilder/errors'
require_relative 'aws-sdk-amplifyuibuilder/endpoint_parameters'
require_relative 'aws-sdk-amplifyuibuilder/endpoint_provider'
require_relative 'aws-sdk-amplifyuibuilder/waiters'
