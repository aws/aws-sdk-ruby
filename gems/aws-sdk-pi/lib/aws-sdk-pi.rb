# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('PI', Module.new) unless Aws.const_defined?('PI')

# @title AWS Performance Insights
# <fullname>Amazon RDS Performance Insights</fullname>
#          <p>Amazon RDS Performance Insights enables you to monitor and explore different dimensions of database load based on data captured from a running DB instance. The guide
#             provides detailed information about Performance Insights data types, parameters and errors.</p>
#          <p>When Performance Insights is enabled, the Amazon RDS Performance Insights API provides visibility into the performance of your DB instance. Amazon CloudWatch provides the
#             authoritative source for Amazon Web Services service-vended monitoring metrics. Performance Insights offers a domain-specific view of DB load.</p>
#          <p>DB load is measured as average active sessions. Performance Insights provides the data to API consumers as a two-dimensional time-series dataset. The time dimension
#             provides DB load data for each time point in the queried time range. Each time point decomposes overall load in relation to the requested
#             dimensions, measured at that time point. Examples include SQL, Wait event, User, and Host.</p>
#          <ul>
#             <li>
#                <p>To learn more about Performance Insights and Amazon Aurora DB instances, go to the <i>
#                      <a href="https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html"> Amazon Aurora User Guide</a>
#                   </i>. </p>
#             </li>
#             <li>
#                <p>To learn more about Performance Insights and Amazon RDS DB instances, go to the <i>
#                      <a href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html"> Amazon RDS User Guide</a>
#                   </i>. </p>
#             </li>
#             <li>
#                <p>To learn more about Performance Insights and Amazon DocumentDB clusters, go to the <i>
#                      <a href="https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html"> Amazon DocumentDB Developer Guide</a>
#                   </i>.</p>
#             </li>
#          </ul>
module Aws::PI
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-pi/types'
require_relative 'aws-sdk-pi/paginators'
require_relative 'aws-sdk-pi/schema'
require_relative 'aws-sdk-pi/auth_parameters'
require_relative 'aws-sdk-pi/auth_resolver'
require_relative 'aws-sdk-pi/client'
require_relative 'aws-sdk-pi/errors'
require_relative 'aws-sdk-pi/endpoint_parameters'
require_relative 'aws-sdk-pi/endpoint_provider'
require_relative 'aws-sdk-pi/waiters'
require_relative 'aws-sdk-pi/customizations'
