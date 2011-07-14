# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
require 'aws/configurable'

module AWS

  describe Configurable do

    context '#make_configurable' do

      class DummyParameterType
        include Configurable
      end

      it 'should add the class as a configuration parameter' do
        Configuration.should_receive(:add_parameter_type).with do |*args|
          args.should == [DummyParameterType, :foo, {}]
        end
        DummyParameterType.make_configurable(:foo)
      end

      it 'should pass along the hash args' do
        Configuration.should_receive(:add_parameter_type).with do |*args|
          args.should == [DummyParameterType,
                          :foo,
                          { :needs => [:bar] }]
        end
        DummyParameterType.make_configurable(:foo, :needs => [:bar])
      end

    end

  end

end
