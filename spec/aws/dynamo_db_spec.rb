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

  describe DynamoDB do

    let(:config) { stub_config }

    let(:dynamo_db) { DynamoDB.new(:config => config) }

    it_behaves_like 'a class that accepts configuration',
      :dynamo_db_client

    context '#tables' do

      it 'should return a tables collection' do
        tables = dynamo_db.tables
        tables.should be_a(DynamoDB::TableCollection)
        tables.config.should be(dynamo_db.config)
      end

    end

  end

end
