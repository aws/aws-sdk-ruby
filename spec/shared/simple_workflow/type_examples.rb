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

module AWS
  class SimpleWorkflow

    shared_examples_for "a simple workflow type" do |config_attributes|

      let(:response) { client.stub_for(describe_method) }

      let(:now) { Time.now }

      let(:one_hour_ago) { now - 3600 }

      let(:configuration) {{}}

      let(:type_key) {
        key = described_class.name.split(/::/).last
        key[0] = key[0,1].downcase
        key
      }

      let(:type_symbol) {
        AWS::Core::Inflection.ruby_name(type_key).to_sym
      }

      let(:type_info) {{
        'creationDate' => one_hour_ago.to_i,
        'deprecationDate' => now.to_i,
        type_key => {
          'name' => 'name',
          'version' => 'version',
        },
        'description' => 'description',
        'status' => 'DEPRECATED',
      }}

      let(:response) { client.stub_for(describe_method) }

      before(:each) do
        response.data['typeInfo'] = type_info
        response.data['configuration'] = configuration
        client.stub(describe_method).and_return(response)
      end

      context '#domain' do

        it 'returns the domain it was constructed with' do
          type.domain.should == domain
        end

      end

      context '#name' do

        it 'is set in the constructor' do
          type.name.should == 'name'
        end

      end

      context '#version' do

        it 'is set in the constructor' do
          type.version.should == 'version'
        end

      end

      context '#exists?' do

        it 'returns true when the domain can be described' do
          type.exists?.should == true
        end

        it 'returns false when the domain can not be described' do
          client.should_receive(describe_method).with(
            :domain => domain.name,
            type_symbol => { :name => type.name, :version => type.version }
          ).and_raise(Errors::UnknownResourceFault)
          type.exists?.should == false
        end

      end

      context '#description' do

        it 'returns the description if set' do
          client.should_not_receive(describe_method)
          t = type_class.new(domain, 'name', 'version', :description => 'abc')
          t.description.should == 'abc'
        end

        it 'describes the type to get a description if not set' do
          client.should_receive(describe_method).with(
            :domain => domain.name,
            type_symbol => { :name => type.name, :version => type.version }
          ).and_return(response)
          type.description.should == 'description'
        end

        it 'returns nil when the description is not set' do
          type_info.delete('description')
          type.description.should == nil
        end

        it 'is static' do

          client.should_receive(describe_method).
            exactly(1).times.
            and_return(response)

          type.description.should == 'description'
          type.description.should == 'description'

        end

      end

      context '#status' do

        it 'describes the workflow type to get the status' do
          client.should_receive(describe_method).and_return(response)
          type.status.should == :deprecated
        end

        it 'is not static' do

          client.should_receive(describe_method).
            exactly(2).times.
            and_return(response)

          type.status.should == :deprecated
          type.status.should == :deprecated

        end

        it 'can be memoized' do

          client.should_receive(describe_method).
            exactly(1).times.
            and_return(response)

          AWS.memoize do
            type.status.should == :deprecated
            type.status.should == :deprecated
          end

        end

      end

      context '#creation_date' do

        it 'describes the workflow type to get the date' do
          client.should_receive(describe_method).and_return(response)
          type.creation_date
        end

        it 'casts the creation time to a time object' do
          type.creation_date.should be_a(Time)
          type.creation_date.to_i.should == one_hour_ago.to_i
        end

        it 'can be cached in the constructor' do
          client.should_not_receive(describe_method)
          t = type_class.new(domain, 'name', 'version', :creation_date => now)
          t.creation_date.should == now
        end

        it 'is static' do
          client.should_receive(describe_method).
            exactly(1).times.
            and_return(response)
          type.creation_date
          type.creation_date
        end

      end

      context '#deprecation_date' do

        it 'describes the workflow type to get the date' do
          client.should_receive(describe_method).and_return(response)
          type.deprecation_date
        end

        it 'casts the creation time to a time object' do
          type.deprecation_date.should be_a(Time)
          type.deprecation_date.to_i.should == now.to_i
        end

      end

      context 'configuration attributes' do
        config_attributes.each do |cfg_attr|

          let(:request_opts) {{
            :domain => domain.name,
            type_symbol => { :name => type.name, :version => type.version },
          }}

          json_name = cfg_attr.to_s.split(/_/).map(&:capitalize).join
          json_name[0] = json_name[0,1].downcase

          it "caches :#{cfg_attr} when passed to the constructor" do
            client.should_not_receive(describe_method)
            type = type_class.new(domain, 'name', 'version', cfg_attr => 'abc')
            type.send(cfg_attr)
          end

          it "describes the type to get :#{cfg_attr} when not available" do

            configuration[json_name] = 'abc'

            client.should_receive(describe_method).
              with(request_opts).
              and_return(response)

            type.send(cfg_attr).to_s.should == 'abc'

          end

          it ":#{cfg_attr} is static" do

            configuration[json_name] = 'abc'

            client.should_receive(describe_method).
              exactly(1).times.
              with(request_opts).
              and_return(response)

            type.send(cfg_attr).to_s.should == 'abc'
            type.send(cfg_attr).to_s.should == 'abc'

          end

        end
      end

      context '#deprecate' do

        it 'calls the deprecate type method on the client' do
          client.should_receive(deprecate_method).with(
            :domain => domain.name,
            type_symbol => { :name => type.name, :version => type.version })
          type.deprecate
        end

        it 'is aliased to #delete' do
          type.method(:delete).should == type.method(:deprecate)
        end

      end

      context "#deprecated?" do

        it 'returns true when the status is DEPRECATED' do
          type_info['status'] = 'DEPRECATED'
          type.deprecated?.should == true
        end

        it 'returns false when the status is REGISTERED' do
          type_info['status'] = 'REGISTERED'
          type.deprecated?.should == false
        end

      end

    end
  end
end
