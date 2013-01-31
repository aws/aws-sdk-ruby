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
  describe Record do

    context 'domain prefix' do

      it 'defaults to nil' do
        Record.domain_prefix.should be_nil
      end

      it 'can be altered' do
        Record.domain_prefix = 'prod'
        Record.domain_prefix.should == 'prod'
        Record.domain_prefix = nil
      end

    end

    context 'table prefix' do

      it 'defaults to nil' do
        Record.table_prefix.should be_nil
      end

      it 'can be altered' do
        Record.table_prefix = 'prod'
        Record.table_prefix.should == 'prod'
        Record.table_prefix = nil
      end

    end

  end
end
