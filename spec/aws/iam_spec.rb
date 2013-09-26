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

module Aws
  describe IAM do

    it 'does not require a region' do
      iam = IAM.new(region: nil)
      expect(iam.config.region).to be(nil)
    end

    it 'uses us-east-1 as the signing region' do
      iam = IAM.new(region: 'us-west-2')
      expect(iam.config.signing_region).to eq('us-east-1')
    end

    it 'forces the endpoint to iam.amazonaws.com despite region' do
      iam = IAM.new(region: 'us-west-2')
      expect(iam.config.endpoint).to eq('iam.amazonaws.com')
    end

  end
end
