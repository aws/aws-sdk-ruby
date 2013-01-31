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
  class EC2

    shared_examples_for "ec2 collection array access" do

      let(:skip_config) { false }

      context '#[]' do

        it 'returns an object of the member class' do
          collection['abc'].should be_a(member_class)
        end

        it 'returns an object with the correct config' do
          unless skip_config
            collection['abc'].config.should == collection.config
          end
        end

      end

    end
  end
end
