# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
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

module Aws
  # @service
  # This module provides support for AWS Elastic Beanstalk, which shipped in `aws-sdk-elasticbeanstalk` gem.
  #
  # # Aws::ElasticBeanstalk::Client
  #
  # The {Aws::ElasticBeanstalk::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     elasticbeanstalk = Aws::ElasticBeanstalk::Client.new
  #     resp = elasticbeanstalk.abort_environment_update(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ElasticBeanstalk::Errors
  #
  # Errors returned from AWS Elastic Beanstalk all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticBeanstalk::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ElasticBeanstalk

    GEM_VERSION = '1.0.0'

  end
end
