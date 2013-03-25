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

  describe GameConnect do

    let(:client) do
      double('GameConnect::Client')
    end

    let(:game_connect) do
      GameConnect.new(:game_connect_client => client)
    end

    it_behaves_like 'a class that accepts configuration', :game_connect_client

    context '#inspect' do
      
      it 'returns a simple string' do
        game_connect.inspect.should == "<AWS::GameConnect>"
      end

    end

  end

end
