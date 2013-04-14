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
  module Record
    describe Base do
      it_behaves_like 'aws record' do

        context 'timestamps' do

          before(:each) { klass.timestamps }

          context 'new record' do

            it 'auto populates created_at and updated_at' do

              now = Time.now
              Time.stub(:now).and_return(now)

              obj = klass.new
              obj.save!
              obj.created_at.should == DateTime.parse(now.to_s)
              obj.updated_at.should == DateTime.parse(now.to_s)

            end

            it 'will not replace manually assigned create / update values' do
              yesterday = Time.now - (60 * 60 * 24)
              obj = klass.new
              obj.created_at = yesterday
              obj.updated_at = yesterday
              obj.save!
              obj.created_at.should == DateTime.parse(yesterday.to_s)
              obj.updated_at.should == DateTime.parse(yesterday.to_s)
            end

          end

          context 'existing record' do

            let(:yesterday) {
              (Time.now - (60 * 60 * 24)).strftime('%Y-%m-%dT%H:%M:%SZ')
            }

            before(:each) do
              sdb_data.stub(:attributes).and_return({
                'created_at' => [yesterday],
                'updated_at' => [yesterday],
              })
            end

            it 'touches updated at, but leaves created at alone' do

              # save does nothing to unchagned objects, so we will force
              # a change
              klass.string_attr :name

              obj = klass['item-id']
              obj.name = 'new name'
              obj.save!
              obj.created_at.should == DateTime.parse(yesterday)
              obj.updated_at.should > DateTime.parse(yesterday)

            end

            it 'does not touch manually modified updated_at values' do

              tomorrow = DateTime.parse((Time.now + (60 * 60 * 24)).to_s)

              obj = klass['item-id']
              obj.updated_at = tomorrow
              obj.save!
              obj.created_at.should == DateTime.parse(yesterday)
              obj.updated_at.should == tomorrow

            end

          end

        end

      end
    end
  end
end
