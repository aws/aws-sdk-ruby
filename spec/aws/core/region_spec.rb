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
  module Core
    describe Region do

      let(:region) { Region.new('name') }

      let(:config) {
        config = double('config')
        config.stub(:with).and_return(config)
        config
      }

      it 'is constructed with a name' do
        Region.new('name').name.should eq('name')
      end

      it 'can be constructed with a configuration object' do
        Region.new('name', :config => config).config.should be(config)
      end

      it 'defaults config to AWS.config' do
        AWS.stub(:config).and_return(config)
        Region.new('name').config.should be(config)
      end

      it 'merges its name into the configuration' do
        Region.new('region-name').config.region.should eq('region-name')
      end

      AWS::SERVICES.each do |klass, svc|

        context "##{svc.method_name}" do

          it "returns an instance of AWS::#{klass}" do
            region.send(svc.method_name).should be_a(AWS.const_get(klass))
          end

          it "returns an AWS::#{klass} instance with the proper config" do
            region.send(svc.method_name).config.region.should eq(region.name)
          end

        end

      end

    end
  end
end
