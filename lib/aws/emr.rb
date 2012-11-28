# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws/core'
require 'aws/emr/config'
require 'time'

module AWS

  # Provides an expressive, object-oriented interface to Amazon Elastic
  # MapReduce.
  #
  # To use Amazon Elastic MapReduce you must first
  # {sign up here}[http://aws.amazon.com/elasticmapreduce/]
  #
  # For more information about Amazon Elastic MapReduce, see:
  #
  # * {Amazon Elastic MapReduce}[http://aws.amazon.com/elasticmapreduce/]
  # * {Amazon Elastic MapReduce Documentation}[http://aws.amazon.com/documentation/elasticmapreduce/]
  #
  # == Credentials
  #
  # You can setup default credentials for all AWS services via
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # Or you can set them directly on the EMR interface:
  #
  #   emr = AWS::EMR.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # = Job Flows
  #
  # The {#job_flows} method returns a collection you use to interact
  # with your job flows.
  #
  #   # creating a job flow
  #   job_flow = emr.job_flows.create(...)
  #
  #   # enumerating job flows
  #   emr.job_flows.each do |job_flow|
  #     puts job_flow.id
  #   end
  #
  # See {JobFlowCollection} and {JobFlow} for more information on working
  # with job flows.
  #
  class EMR

    AWS.register_autoloads(self) do
      autoload :Client, 'client'
      autoload :Errors, 'errors'
      autoload :InstanceGroup, 'instance_group'
      autoload :InstanceGroupCollection, 'instance_group_collection'
      autoload :JobFlow, 'job_flow'
      autoload :JobFlowCollection, 'job_flow_collection'
      autoload :Request, 'request'
    end

    include Core::ServiceInterface

    # @return [JobFlowCollection] Returns a collection that represents all
    #   job flows.
    def job_flows
      JobFlowCollection.new(:config => config)
    end
    alias_method :jobs, :job_flows

  end
end
