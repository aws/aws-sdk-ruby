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
  describe SimpleDB do

    let(:client) { double('SimpleDB::Client') }

    let(:sdb) { SimpleDB.new(:simple_db_client => client) }

    it_behaves_like 'a class that accepts configuration', :simple_db_client

    context '#domains' do

      it 'returns a domain collection' do
        sdb.domains.should be_a(SimpleDB::DomainCollection)
      end

      it 'has the same config' do
        sdb.domains.config.should == sdb.config
      end

    end

    context '#inspect' do

      it 'returns a simple string' do
        sdb.inspect.should == '<AWS::SimpleDB>'
      end

    end

    context 'class methods' do

      context 'consistent reads block' do

        it '#in_consistent_reads_block? returns false outside cr blocks' do
          SimpleDB.in_consistent_reads_block?.should == false
        end

        it '#in_consistent_reads_block? returns true inside cr blocks' do
          SimpleDB.consistent_reads do
            SimpleDB.in_consistent_reads_block?.should == true
          end
        end

        it 'a consistent read block defaults to true' do
          SimpleDB.consistent_reads do
            SimpleDB.consistent_reads_state.should == true
          end
        end

        it 'a consistent read block accepts a true value' do
          SimpleDB.consistent_reads(true) do
            SimpleDB.consistent_reads_state.should == true
          end
        end

        it 'a consistent read block accepts a false value' do
          SimpleDB.consistent_reads(false) do
            SimpleDB.consistent_reads_state.should == false
          end
        end

        it 'can be nested' do
          SimpleDB.consistent_reads(false) do
            SimpleDB.consistent_reads_state.should == false
            SimpleDB.consistent_reads(true) do
              SimpleDB.consistent_reads_state.should == true
            end
            SimpleDB.consistent_reads_state.should == false
          end
        end

      end

    end

  end
end
