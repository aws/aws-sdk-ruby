# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('WAF', Module.new) unless Aws.const_defined?('WAF')

# @title AWS WAF
# <note>
#             <p>This is <b>AWS WAF Classic</b> documentation. For
#       more information, see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS
#       WAF Classic</a> in the developer guide.</p>
#             <p>
#                <b>For the latest version of AWS
#       WAF</b>, use the AWS WAFV2 API and see the <a href="https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html">AWS WAF Developer Guide</a>. With the latest version, AWS WAF has a single set of endpoints for regional and global use. </p>
#          </note> 
# 	        <p>This is the <i>AWS WAF Classic API Reference</i> for using AWS WAF Classic with Amazon CloudFront. The AWS WAF Classic actions and data types listed in the reference are available for protecting Amazon CloudFront distributions. You can use these actions and data types via the endpoint <i>waf.amazonaws.com</i>. This guide is for developers who need detailed information about the AWS WAF Classic API actions, 
# 	      data types, and errors. For detailed information about AWS WAF Classic features and an overview of how to use the AWS WAF Classic API, see the 
# 	      <a href="https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html">AWS WAF Classic</a> in the developer guide.</p>
module Aws::WAF
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-waf/types'
require_relative 'aws-sdk-waf/paginators'
require_relative 'aws-sdk-waf/schema'
require_relative 'aws-sdk-waf/auth_parameters'
require_relative 'aws-sdk-waf/auth_resolver'
require_relative 'aws-sdk-waf/client'
require_relative 'aws-sdk-waf/errors'
require_relative 'aws-sdk-waf/endpoint_parameters'
require_relative 'aws-sdk-waf/endpoint_provider'
require_relative 'aws-sdk-waf/waiters'
require_relative 'aws-sdk-waf/customizations'
