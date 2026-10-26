# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-xml'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('ElasticBeanstalk', Module.new) unless Aws.const_defined?('ElasticBeanstalk')

# @title AWS Elastic Beanstalk
# <fullname>Elastic Beanstalk</fullname>
#          <p>Elastic Beanstalk makes it easy for you to create, deploy, and manage scalable, fault-tolerant applications running on
#    the Amazon Web Services Cloud.</p>
#          <p>For more information about this product, go to the <a href="http://aws.amazon.com/elasticbeanstalk/">Elastic Beanstalk</a> details page. The location of the
#       latest Elastic Beanstalk WSDL is <a href="https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl">https://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl</a>.
#       To install the Software Development Kits (SDKs), Integrated Development Environment (IDE)
#       Toolkits, and command line tools that enable you to access the API, go to <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p>
#          <p>
#             <b>Endpoints</b>
#          </p>
#          <p>For a list of region-specific endpoints that Elastic Beanstalk supports, go to
#         <a href="https://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region">Regions and Endpoints</a> in the <i>Amazon Web Services
#       Glossary</i>.</p>
module Aws::ElasticBeanstalk
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-elasticbeanstalk/types'
require_relative 'aws-sdk-elasticbeanstalk/paginators'
require_relative 'aws-sdk-elasticbeanstalk/schema'
require_relative 'aws-sdk-elasticbeanstalk/auth_parameters'
require_relative 'aws-sdk-elasticbeanstalk/auth_resolver'
require_relative 'aws-sdk-elasticbeanstalk/client'
require_relative 'aws-sdk-elasticbeanstalk/errors'
require_relative 'aws-sdk-elasticbeanstalk/endpoint_parameters'
require_relative 'aws-sdk-elasticbeanstalk/endpoint_provider'
require_relative 'aws-sdk-elasticbeanstalk/waiters'
require_relative 'aws-sdk-elasticbeanstalk/customizations'
