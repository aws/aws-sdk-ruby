# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('RUM', Module.new) unless Aws.const_defined?('RUM')

# @title CloudWatch RUM
# <p>With Amazon CloudWatch RUM, you can perform real-user monitoring to collect client-side data about your web application performance from actual user sessions in real time. The data collected includes page load times, client-side errors, and user behavior. When you view this data, you can see it all aggregated together and also see breakdowns by the browsers and devices that your customers use.</p> <p>You can use the collected data to quickly identify and debug client-side performance issues. CloudWatch RUM helps you visualize anomalies in your application performance and find relevant debugging data such as error messages, stack traces, and user sessions. You can also use RUM to understand the range of end-user impact including the number of users, geolocations, and browsers used.</p>
module Aws::RUM
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-rum/types'
require_relative 'aws-sdk-rum/paginators'
require_relative 'aws-sdk-rum/schema'
require_relative 'aws-sdk-rum/auth_parameters'
require_relative 'aws-sdk-rum/auth_resolver'
require_relative 'aws-sdk-rum/client'
require_relative 'aws-sdk-rum/errors'
require_relative 'aws-sdk-rum/endpoint_parameters'
require_relative 'aws-sdk-rum/endpoint_provider'
require_relative 'aws-sdk-rum/waiters'
require_relative 'aws-sdk-rum/customizations'
