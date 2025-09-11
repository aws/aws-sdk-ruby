# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WAFRegional', Module.new) unless Aws.const_defined?('WAFRegional')

# @title AWS WAF Regional
# <note>
#             <p>This is <b>AWS WAF Classic Regional</b> documentation. For
#       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
#       WAF Classic</a> in the developer guide.</p>
#             <p>
#                <b>For the latest version of AWS
#       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
#          </note> 
#          <p>This is the <i>AWS WAF Regional Classic API Reference</i> for using AWS WAF Classic with the AWS resources, Elastic Load Balancing (ELB) Application Load Balancers and API Gateway APIs. The AWS WAF Classic actions and data types listed in the reference are available for protecting Elastic Load Balancing (ELB) Application Load Balancers and API Gateway APIs. You can use these actions and data types by means of the endpoints listed in <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#waf_region">AWS Regions and Endpoints</a>. This guide is for developers who need detailed information about the AWS WAF Classic API actions, data types, and errors. For detailed information about AWS WAF Classic features and an overview of how to use the AWS WAF Classic API, see the 
#       <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
#         WAF Classic</a> in the developer guide.</p>
module Aws::WAFRegional
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-wafregional/types'
require_relative 'aws-sdk-wafregional/paginators'
require_relative 'aws-sdk-wafregional/schema'
require_relative 'aws-sdk-wafregional/auth_parameters'
require_relative 'aws-sdk-wafregional/auth_resolver'
require_relative 'aws-sdk-wafregional/client'
require_relative 'aws-sdk-wafregional/customizations'
require_relative 'aws-sdk-wafregional/errors'
require_relative 'aws-sdk-wafregional/endpoint_parameters'
require_relative 'aws-sdk-wafregional/endpoint_provider'
require_relative 'aws-sdk-wafregional/waiters'
