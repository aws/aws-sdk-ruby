# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'spec_helper'

module AWS

  describe ELB do

    let(:config) { stub_config }

    let(:client) { config.elb_client }

    let(:elb) { ELB.new(:config => config) }

    it_behaves_like 'a class that accepts configuration', :elb_client

    context '#load_balancers' do

      it 'returns a load balancer collection' do
        elb.load_balancers.should be_a(ELB::LoadBalancerCollection)
      end

      it 'returns a collection with the correct config' do
        elb.load_balancers.config.should == elb.config
      end

    end

  end

end
