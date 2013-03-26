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

  shared_examples_for("record class") do |base|

    let(:klass) { Class.new(base) }

    let(:raw_data) { { :name => 'name' } }

    let(:sdb_data) { raw_data }

    let(:ddb_data) { raw_data }

    let(:obj) { klass.new }

    before(:each) do

      klass.stub(:name).and_return('ExampleModel')

      klass.string_attr :name

      AWS.config(
        :access_key_id => "id",
        :secret_access_key => "secret",
        :stub_requests => true)

      klass.stub_chain(:sdb_domain, :items, :[], :data, :attributes).
        and_return(sdb_data)

      klass.stub_chain(:dynamo_db_table, :items, :[], :attributes, :to_h).
        and_return(ddb_data)

    end

    after(:each) do

      AWS.config(
        :access_key_id => nil,
        :secret_access_key => nil,
        :stub_requests => false)

    end

  end

  shared_examples_for("an aws record base class") do |base|

    it_should_behave_like("record class", base) do

      it 'is extendable' do
        klass.new.should be_a_kind_of(base)
      end

      it_should_behave_like("shardable")

      it_should_behave_like("optimistic lockable")

      # see the subclasses of AbstractBase for dirty-tracking specifics


      context '#create!' do

        it 'raises an exception when create returns false' do
          klass.any_instance.stub(:valid?).and_return(false)
          klass.any_instance.stub_chain(:errors, :full_messages).and_return(['Foo is bad'])
          lambda {
            klass.create!
          }.should raise_error(Record::InvalidRecordError)
        end

      end

      context '#create' do

        it 'returns an invalid object if the attributes are invlalid' do
          klass.any_instance.stub(:valid?).and_return(false)
          obj = klass.create
          obj.should_not be_persisted
          obj.should_not be_valid
        end

        context 'new records' do
          it 'delegates to #save of a newly created object' do
            klass.any_instance.should_receive(:save)
            klass.create
          end
        end

      end


      context 'standard attribute macros' do

        before(:each) do
          klass.string_attr :name
          klass.integer_attr :price
          klass.float_attr :score
          klass.datetime_attr :when
          klass.boolean_attr :bool_value
        end

        context 'string_attr' do

          it_behaves_like("attribute macro", true) do
            let(:macro) { :string_attr }
            let(:default_value) { 'abc' }
          end

          it 'returns strings unmodified' do
            obj.name = 'bar'
            obj.name.should == 'bar'
          end

          it 'calls to_s on everything else' do
            value = double('value')
            value.should_receive(:to_s).twice.and_return('abc')
            obj.name = value
            obj.name.should == 'abc'
          end

        end

        context 'integer_attr' do

          it_behaves_like("attribute macro", true) do
            let(:macro) { :integer_attr }
            let(:default_value) { 0 }
          end

          it 'returns integers unmodified' do
            obj.price = 123
            obj.price.should == 123
          end

          it 'calls to_i on everything else' do
            value = double('value')
            value.should_receive(:to_i).twice.and_return(123)
            obj.price = value
            obj.price.should == 123
          end

        end

        context 'float_attr' do

          it_behaves_like("attribute macro", true) do
            let(:macro) { :integer_attr }
            let(:default_value) { 0 }
          end

          it 'returns floats unmodified' do
            obj.score = 1.2
            obj.score.should == 1.2
          end

          it 'calls to_f on everything else' do
            value = double('float')
            value.should_receive(:to_f).twice.and_return(1.2)
            obj.score = value
            obj.score.should == 1.2
          end

        end

        context 'boolean_attr' do

          it_behaves_like("attribute macro", false) do
            let(:macro) { :boolean_attr }
            let(:default_value) { true }
          end

          it 'returns booleans unmodified' do
            obj.bool_value = true
            obj.bool_value.should == true
            obj.bool_value = false
            obj.bool_value.should == false
          end

          it 'returns nil unmodified' do
            obj.bool_value = nil
            obj.bool_value.should == nil
          end

          it 'adds a question mark method' do
            obj.bool_value = nil
            obj.bool_value?.should == false
            obj.bool_value = true
            obj.bool_value?.should == true
            obj.bool_value = false
            obj.bool_value?.should == false
          end

        end

        context 'datetime_attr' do

          it_behaves_like("attribute macro", true) do
            let(:macro) { :datetime_attr }
            let(:default_value) { nil }
          end

          it 'returns date time objects unmodified' do
            datetime = DateTime.now
            obj.when = datetime
            obj.when.should == datetime
          end

          it 'treats integers as timestamps' do
            timestamp = 123456789
            obj.when = timestamp
            obj.when.should == DateTime.parse(Time.at(timestamp).to_s)
          end

          it 'converts time objects' do
            time = Time.now
            obj.when = time
            obj.when.should == DateTime.parse(time.to_s)
          end

          it 'converts date objects' do
            date = Date.ordinal(2010, 100)
            obj.when = date
            obj.when.should == DateTime.parse(date.to_s)
          end

          it 'parses the string value of everything else' do
            value = double('value', :to_s => '2010-01-02T03:04:05z')
            obj.when = value
            obj.when.should == DateTime.parse(value.to_s)
          end

          context 'timestamps' do

            it 'adds 2 datetime_attr values' do
              klass.should_receive(:datetime_attr).with(:created_at)
              klass.should_receive(:datetime_attr).with(:updated_at)
              klass.timestamps
            end

          end

        end

      end

    end
  end
end
