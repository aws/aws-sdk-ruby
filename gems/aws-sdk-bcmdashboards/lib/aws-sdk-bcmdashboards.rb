# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BCMDashboards', Module.new) unless Aws.const_defined?('BCMDashboards')

# @title AWS Billing and Cost Management Dashboards
# <p>Amazon Web Services Billing and Cost Management Dashboards is a service that enables you to create, manage, and share dashboards that combine multiple visualizations of your Amazon Web Services cost and usage data. You can combine multiple data sources including Cost Explorer, Savings Plans, and Reserved Instance metrics into unified dashboards, helping you analyze spending patterns and share cost insights across your organization.</p> <p>You can use the Amazon Web Services Billing and Cost Management Dashboards API to programmatically create, manage, and share dashboards. This includes creating custom dashboards, configuring widgets, managing dashboard permissions, and sharing dashboards across accounts in your organization.</p>
module Aws::BCMDashboards
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-bcmdashboards/types'
require_relative 'aws-sdk-bcmdashboards/paginators'
require_relative 'aws-sdk-bcmdashboards/schema'
require_relative 'aws-sdk-bcmdashboards/auth_parameters'
require_relative 'aws-sdk-bcmdashboards/auth_resolver'
require_relative 'aws-sdk-bcmdashboards/client'
require_relative 'aws-sdk-bcmdashboards/customizations'
require_relative 'aws-sdk-bcmdashboards/errors'
require_relative 'aws-sdk-bcmdashboards/endpoint_parameters'
require_relative 'aws-sdk-bcmdashboards/endpoint_provider'
require_relative 'aws-sdk-bcmdashboards/waiters'
