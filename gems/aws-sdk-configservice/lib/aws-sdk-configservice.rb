# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ConfigService', Module.new) unless Aws.const_defined?('ConfigService')

# @title AWS Config
# <fullname>Config</fullname>
#          <p>Config provides a way to keep track of the configurations
# 			of all the Amazon Web Services resources associated with your Amazon Web Services account. You can
# 			use Config to get the current and historical configurations of
# 			each Amazon Web Services resource and also to get information about the relationship
# 			between the resources. An Amazon Web Services resource can be an Amazon Compute
# 			Cloud (Amazon EC2) instance, an Elastic Block Store (EBS) volume, an
# 			elastic network Interface (ENI), or a security group. For a complete
# 			list of resources currently supported by Config, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/resource-config-reference.html#supported-resources">Supported Amazon Web Services resources</a>.</p>
#          <p>You can access and manage Config through the Amazon Web Services Management
# 			Console, the Amazon Web Services Command Line Interface (Amazon Web Services CLI), the Config
# 			API, or the Amazon Web Services SDKs for Config. This reference guide contains
# 			documentation for the Config API and the Amazon Web Services CLI commands that
# 			you can use to manage Config. The Config API uses the
# 			Signature Version 4 protocol for signing requests. For more
# 			information about how to sign a request with this protocol, see
# 				<a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature
# 				Version 4 Signing Process</a>. For detailed information
# 			about Config features and their associated actions or commands,
# 			as well as how to work with Amazon Web Services Management Console, see <a href="https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html">What Is Config</a> in the <i>Config Developer
# 				Guide</i>.</p>
module Aws::ConfigService
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-configservice/types'
require_relative 'aws-sdk-configservice/paginators'
require_relative 'aws-sdk-configservice/schema'
require_relative 'aws-sdk-configservice/auth_parameters'
require_relative 'aws-sdk-configservice/auth_resolver'
require_relative 'aws-sdk-configservice/client'
require_relative 'aws-sdk-configservice/customizations'
require_relative 'aws-sdk-configservice/errors'
require_relative 'aws-sdk-configservice/endpoint_parameters'
require_relative 'aws-sdk-configservice/endpoint_provider'
require_relative 'aws-sdk-configservice/waiters'
