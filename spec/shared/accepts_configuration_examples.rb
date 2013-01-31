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

  shared_examples_for 'a class that accepts configuration' do |*used_config|

    it 'accepts and returns a :config option' do
      config = double('config').as_null_object
      config.stub(:with).and_return(config)
      described_class.new(:config => config).config.should == config
    end

    it 'constructor passes options to Configuration#with' do
      config = AWS.config.with(:access_key_id => 'a', :secret_access_key => 'b')
      config.max_retries.should_not eq(123)
      described_class.new(:config => config, :max_retries => 123).
        config.max_retries.should eq(123)
    end

    it 'returns the merged config' do
      new_config = double('new-config').as_null_object
      config = double('config', :with => new_config).as_null_object
      described_class.new(:config => config).config.should == new_config
    end

  end

end
