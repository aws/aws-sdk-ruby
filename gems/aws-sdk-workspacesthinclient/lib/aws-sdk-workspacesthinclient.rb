# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WorkSpacesThinClient', Module.new) unless Aws.const_defined?('WorkSpacesThinClient')

# @title Amazon WorkSpaces Thin Client
# <p>Amazon WorkSpaces Thin Client is an affordable device built to work with Amazon Web Services End User Computing (EUC) virtual desktops to provide users with a complete cloud desktop solution. WorkSpaces Thin Client is a compact device designed to connect up to two monitors and USB devices like a keyboard, mouse, headset, and webcam. To maximize endpoint security, WorkSpaces Thin Client devices do not allow local data storage or installation of unapproved applications. The WorkSpaces Thin Client device ships preloaded with device management software.</p> <p>You can use these APIs to complete WorkSpaces Thin Client tasks, such as creating environments or viewing devices. For more information about WorkSpaces Thin Client, including the required permissions to use the service, see the <a href="https://docs.aws.amazon.com/workspaces-thin-client/latest/ag/">Amazon WorkSpaces Thin Client Administrator Guide</a>. For more information about using the Command Line Interface (CLI) to manage your WorkSpaces Thin Client resources, see the <a href="https://docs.aws.amazon.com/cli/latest/reference/workspaces-thin-client/index.html">WorkSpaces Thin Client section of the CLI Reference</a>.</p>
module Aws::WorkSpacesThinClient
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-workspacesthinclient/types'
require_relative 'aws-sdk-workspacesthinclient/paginators'
require_relative 'aws-sdk-workspacesthinclient/schema'
require_relative 'aws-sdk-workspacesthinclient/auth_parameters'
require_relative 'aws-sdk-workspacesthinclient/auth_resolver'
require_relative 'aws-sdk-workspacesthinclient/client'
require_relative 'aws-sdk-workspacesthinclient/customizations'
require_relative 'aws-sdk-workspacesthinclient/errors'
require_relative 'aws-sdk-workspacesthinclient/endpoint_parameters'
require_relative 'aws-sdk-workspacesthinclient/endpoint_provider'
require_relative 'aws-sdk-workspacesthinclient/waiters'
