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

require 'spec_helper'

module AWS

  shared_examples_for 'a class that accepts configuration' do |*used_config|

    it 'constructor passes options to Configuration#with' do
      AWS.config.should_receive(:with).
        with(:access_key_id => "foo",
             :secret_access_key => "bar").and_return(AWS.config)
      (used_config || []).each do |name|
        AWS.config.stub(name)
      end
      described_class.new(:access_key_id => "foo", :secret_access_key => "bar")
    end

  end

end
