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
  describe Credentials do

    it 'provides access to the access key id' do
      Credentials.new('akid', 'secret').access_key_id.should eq('akid')
    end

    it 'provides access to the secret access key' do
      Credentials.new('akid', 'secret').secret_access_key.should eq('secret')
    end

    it 'provides access to the session tokey' do
      creds = Credentials.new('akid', 'secret', 'token')
      creds.session_token.should eq('token')
    end

    it 'defaults the session token to nil' do
      Credentials.new('akid', 'secret').session_token.should be(nil)
    end

    describe '#set?' do

      it 'returns true when the key and secret are both non nil values' do
        Credentials.new('akid', 'secret').set?.should be(true)
      end

      it 'returns false if the key is nil' do
        Credentials.new(nil, 'secret').set?.should be(false)
      end

      it 'returns false if the secret is nil' do
        Credentials.new('akid', nil).set?.should be(false)
      end

    end
  end
end
