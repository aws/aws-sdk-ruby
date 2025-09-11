# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ApplicationInsights', Module.new) unless Aws.const_defined?('ApplicationInsights')

# @title Amazon CloudWatch Application Insights
# <fullname>Amazon CloudWatch Application Insights</fullname>
#          <p> Amazon CloudWatch Application Insights is a service that helps you detect common
#          problems with your applications. It enables you to pinpoint the source of issues in your
#          applications (built with technologies such as Microsoft IIS, .NET, and Microsoft SQL
#          Server), by providing key insights into detected problems.</p>
#          <p>After you onboard your application, CloudWatch Application Insights identifies,
#          recommends, and sets up metrics and logs. It continuously analyzes and correlates your
#          metrics and logs for unusual behavior to surface actionable problems with your application.
#          For example, if your application is slow and unresponsive and leading to HTTP 500 errors in
#          your Application Load Balancer (ALB), Application Insights informs you that a memory
#          pressure problem with your SQL Server database is occurring. It bases this analysis on
#          impactful metrics and log errors. </p>
module Aws::ApplicationInsights
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-applicationinsights/types'
require_relative 'aws-sdk-applicationinsights/paginators'
require_relative 'aws-sdk-applicationinsights/schema'
require_relative 'aws-sdk-applicationinsights/auth_parameters'
require_relative 'aws-sdk-applicationinsights/auth_resolver'
require_relative 'aws-sdk-applicationinsights/client'
require_relative 'aws-sdk-applicationinsights/customizations'
require_relative 'aws-sdk-applicationinsights/errors'
require_relative 'aws-sdk-applicationinsights/endpoint_parameters'
require_relative 'aws-sdk-applicationinsights/endpoint_provider'
require_relative 'aws-sdk-applicationinsights/waiters'
