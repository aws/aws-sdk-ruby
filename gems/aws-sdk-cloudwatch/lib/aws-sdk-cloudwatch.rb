# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('CloudWatch', Module.new) unless Aws.const_defined?('CloudWatch')

# @title Amazon CloudWatch
# <p>Amazon CloudWatch enables you to publish, monitor, and manage various metrics, as well
#             as configure alarm actions based on data from metrics. This guide provides detailed
#             information about CloudWatch actions, data types, parameters, and errors. For
#             more information about CloudWatch features, see <a href="https://aws.amazon.com/cloudwatch">Amazon CloudWatch</a> and the
#                 <i>Amazon CloudWatch User Guide</i>.</p>
#          <p>For information about the metrics that other Amazon Web Services products send to
#                 CloudWatch, see the <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/aws-services-cloudwatch-metrics.html">Amazon CloudWatch
#                 Metrics and Dimensions Reference</a> in the <i>Amazon CloudWatch User
#                 Guide</i>.</p>
#          <p>Use the following links to get started using the CloudWatch Query API:</p>
#          <p>: An alphabetical list of all CloudWatch
#             actions.</p>
#          <p>: An alphabetical list of all CloudWatch data
#             types.</p>
#          <p>
#             <a>CommonParameters</a>: Parameters that all Query actions can use.</p>
#          <p>
#             <a>CommonErrors</a>: Client and server errors that all actions can
#             return.</p>
#          <p>
#             <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#cw_region">Regions and Endpoints</a>: Supported regions and endpoints for all Amazon Web
#             Services products.</p>
#          <p>Alternatively, you can use one of the <a href="https://aws.amazon.com/tools/#sdk">Amazon Web Services SDKs</a> to access CloudWatch using an API tailored
#             to your programming language or platform.</p>
#          <p>Developers in the Amazon Web Services developer community also provide their own
#             libraries, which you can find at the following Amazon Web Services developer
#             centers:</p>
#          <p>
#             <a href="http://aws.amazon.com/java/">Java Developer Center</a>
#          </p>
#          <p>
#             <a href="http://aws.amazon.com/javascript/">JavaScript Developer
#             Center</a>
#          </p>
#          <p>
#             <a href="http://aws.amazon.com/mobile/">Amazon Web Services Mobile
#             Services</a>
#          </p>
#          <p>
#             <a href="http://aws.amazon.com/php/">PHP Developer Center</a>
#          </p>
#          <p>
#             <a href="http://aws.amazon.com/python/">Python Developer Center</a>
#          </p>
#          <p>
#             <a href="http://aws.amazon.com/ruby/">Ruby Developer Center</a>
#          </p>
#          <p>
#             <a href="http://aws.amazon.com/net/">Windows and .NET Developer
#             Center</a>
#          </p>
module Aws::CloudWatch
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-cloudwatch/types'
require_relative 'aws-sdk-cloudwatch/paginators'
require_relative 'aws-sdk-cloudwatch/schema'
require_relative 'aws-sdk-cloudwatch/auth_parameters'
require_relative 'aws-sdk-cloudwatch/auth_resolver'
require_relative 'aws-sdk-cloudwatch/client'
require_relative 'aws-sdk-cloudwatch/errors'
require_relative 'aws-sdk-cloudwatch/endpoint_parameters'
require_relative 'aws-sdk-cloudwatch/endpoint_provider'
require_relative 'aws-sdk-cloudwatch/waiters'
require_relative 'aws-sdk-cloudwatch/customizations'
