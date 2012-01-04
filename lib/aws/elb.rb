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
require 'aws/elb/config'

module AWS

  # Provides an expressive, object-oriented interface to Elastic Load 
  # Balancing (ELB).
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
  # Or you can set them directly on the ELB interface:
  #
  #   elb = AWS::ELB.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  class ELB

    AWS.register_autoloads(self) do
      autoload :AvailabilityZoneCollection,    'availability_zone_collection'
      autoload :BackendServerPolicyCollection, 'backend_server_policy_collection'
      autoload :Client,                        'client'
      autoload :Errors,                        'errors'
      autoload :InstanceCollection,            'instance_collection'
      autoload :ListenerOpts,                  'listener_opts'
      autoload :Listener,                      'listener'
      autoload :ListenerCollection,            'listener_collection'
      autoload :LoadBalancer,                  'load_balancer'
      autoload :LoadBalancerCollection,        'load_balancer_collection'
      autoload :LoadBalancerPolicy,            'load_balancer_policy'
      autoload :LoadBalancerPolicyCollection,  'load_balancer_policy_collection'
      autoload :Request,                       'request'
    end

    include Core::ServiceInterface

    # @return [LoadBalancerCollection] Returns a collection that represents
    #   all of your load balancers.
    def load_balancers
      LoadBalancerCollection.new(:config => config)
    end

  end

end
