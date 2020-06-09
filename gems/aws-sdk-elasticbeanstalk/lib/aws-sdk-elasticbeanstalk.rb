# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-elasticbeanstalk/types'
require_relative 'aws-sdk-elasticbeanstalk/client_api'
require_relative 'aws-sdk-elasticbeanstalk/client'
require_relative 'aws-sdk-elasticbeanstalk/errors'
require_relative 'aws-sdk-elasticbeanstalk/resource'
require_relative 'aws-sdk-elasticbeanstalk/customizations'

# This module provides support for AWS Elastic Beanstalk. This module is available in the
# `aws-sdk-elasticbeanstalk` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elastic_beanstalk = Aws::ElasticBeanstalk::Client.new
#     resp = elastic_beanstalk.abort_environment_update(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Elastic Beanstalk are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElasticBeanstalk::Errors::ServiceError
#       # rescues all AWS Elastic Beanstalk API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::ElasticBeanstalk

  GEM_VERSION = '1.31.0'

end
