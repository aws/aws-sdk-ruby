# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('NetworkSecurityManager', Module.new) unless Aws.const_defined?('NetworkSecurityManager')

# @title AWS Network Security Manager Customer API
# <p>AWS Network Security Manager helps you centrally configure and deploy network security protections across your organization. Supported protections include AWS WAF and AWS Shield Advanced. This centralized approach reduces the overhead of managing protections individually across accounts and ensures consistent security at scale.</p> <p>You define reusable <i>rules</i> and <i>templates</i>, then combine them into <i>policies</i>. Next, you select the accounts and resources to protect with <i>scopes</i> and roll the protections out with <i>deployments</i>. For example, you can define a set of AWS WAF rules and group them into a policy. Then deploy that policy across all accounts in your organization with a single deployment.</p> <p>This API reference describes the operations and data types for AWS Network Security Manager.</p> <p>For conceptual information, tutorials, and guidance on writing rule configurations, see the <a href="https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html">AWS Network Security Manager Developer Guide</a>. For the default quotas that apply to your account, see <a href="https://docs.aws.amazon.com/network-security-manager/latest/devguide/quotas.html">Quotas</a>. For the service endpoints available in each Region, see <a href="https://docs.aws.amazon.com/general/latest/gr/network-security-manager.html">AWS Network Security Manager endpoints and quotas</a> in the <i>AWS General Reference</i>.</p>
module Aws::NetworkSecurityManager
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-networksecuritymanager/types'
require_relative 'aws-sdk-networksecuritymanager/paginators'
require_relative 'aws-sdk-networksecuritymanager/schema'
require_relative 'aws-sdk-networksecuritymanager/auth_parameters'
require_relative 'aws-sdk-networksecuritymanager/auth_resolver'
require_relative 'aws-sdk-networksecuritymanager/client'
require_relative 'aws-sdk-networksecuritymanager/errors'
require_relative 'aws-sdk-networksecuritymanager/endpoint_parameters'
require_relative 'aws-sdk-networksecuritymanager/endpoint_provider'
require_relative 'aws-sdk-networksecuritymanager/waiters'
require_relative 'aws-sdk-networksecuritymanager/customizations'
