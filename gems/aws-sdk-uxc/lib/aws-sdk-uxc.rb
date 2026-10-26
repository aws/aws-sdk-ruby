# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Uxc', Module.new) unless Aws.const_defined?('Uxc')

# @title AWS User Experience Customization
# <p>This is the Amazon Web Services User Experience Customization (UXC) API Reference. Amazon Web Services User Experience Customization (UXC) is a utility that provides programmatic access to enable account administrators to customize the visual appearance of the Amazon Web Services Management Console and manage these settings at the account level.</p> <note> <p>The <code>visibleServices</code> and <code>visibleRegions</code> settings control only the appearance of services and Regions in the Amazon Web Services Management Console. They do not restrict access through the CLI, SDKs, or other APIs.</p> </note> <p>For more information about UXC features and console procedures, see <a href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/getting-started-uxc.html">Getting started with Amazon Web Services User Experience Customization</a>. For information about required permissions, see <a href="https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/security_iam.html">Identity and access management for Amazon Web Services Management Console</a>.</p>
module Aws::Uxc
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-uxc/types'
require_relative 'aws-sdk-uxc/paginators'
require_relative 'aws-sdk-uxc/schema'
require_relative 'aws-sdk-uxc/auth_parameters'
require_relative 'aws-sdk-uxc/auth_resolver'
require_relative 'aws-sdk-uxc/client'
require_relative 'aws-sdk-uxc/errors'
require_relative 'aws-sdk-uxc/endpoint_parameters'
require_relative 'aws-sdk-uxc/endpoint_provider'
require_relative 'aws-sdk-uxc/waiters'
require_relative 'aws-sdk-uxc/customizations'
