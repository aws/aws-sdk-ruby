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
  describe Glacier do
    context '#initialize' do
      it 'accepts account_id' do
        glacier = Glacier.new(:account_id => 'account_id')
        expect(glacier.account_id).to eql('account_id')
      end

      it 'defaults to "-"' do
        expect(Glacier.new.account_id).to eql('-')
      end
    end
  end
end
