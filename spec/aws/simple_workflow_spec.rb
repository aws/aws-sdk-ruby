
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

  describe SimpleWorkflow do

    let(:config) { stub_config }

    let(:client) { config.simple_workflow_client }

    let(:swf) { SimpleWorkflow.new(:config => config) }

    it_behaves_like 'a class that accepts configuration', :simple_workflow_client

    context '#domains' do

      it 'returns a domain collection' do
        swf.domains.should be_a(SimpleWorkflow::DomainCollection)
      end

      it 'returns a collection with the correct config' do
        swf.domains.config.should == swf.config
      end

    end

  end

end
