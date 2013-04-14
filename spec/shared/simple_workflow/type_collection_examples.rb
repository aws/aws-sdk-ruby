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

    shared_examples_for "a simple workflow type collection" do

      let(:register_opts) {{
        :domain => domain.name,
        :name => 'name',
        :version => 'version',
      }}

      context '#register' do

        it 'calls register_workflow_type on the client' do
          client.should_receive(register_method).with(register_opts)
          types.register('name','version')
        end

        it 'returns a type' do
          types.register('name','version').should be_a(type_class)
        end

        it 'returns a type with the proper name' do
          types.register('name','version').name.should == 'name'
        end

        it 'returns a type with the proper version' do
          types.register('name','version').version.should == 'version'
        end

        it 'returns a type with the proper domain' do
          types.register('name','version').domain.should == domain
        end

        it 'returns a type with the proper config' do
          types.register('name','version').config.should == config
        end

      end

      context '#[]' do

        it 'returns a type' do
          types['name','version'].should be_a(type_class)
        end

        it 'returns a type with the proper name' do
          types['name','version'].name.should == 'name'
        end

        it 'returns a type with the proper version' do
          types['name','version'].version.should == 'version'
        end

        it 'returns a type with the proper domain' do
          types['name','version'].domain.should == domain
        end

        it 'returns a type with the proper config' do
          types['name','version'].config.should == config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { types }
        let(:client_method)   { list_method }
        let(:next_token_key)  { :next_page_token }
        let(:limit_key)       { :maximum_page_size }
        let(:now)             { Time.now }
        let(:one_hour_ago)    { now - 3600 }
        let(:request_options) {{
          :registration_status => 'REGISTERED',
          :reverse_order => false,
          :domain => domain.name,
        }}
        let(:type_key) {
          key = described_class.name.split(/::/).last
          key = key.sub /Collection/, ''
          key[0] = key[0,1].downcase
          key
        }

        def stub_next_token(response, token)
          response.data['nextPageToken'] = token
        end

        def stub_n_members response, n
          response.data['typeInfos'] = (1..n).collect do |i|
            {
              'creationDate' => one_hour_ago.to_i,
              'deprecationDate' => i % 2 == 0 ? now.to_i : nil,
              type_key => {
                'name' => "name-#{i}",
                'version' => "version-#{i}",
              },
              'description' => i % 2 == 0 ? "description-#{i}" : nil,
              'status' => i % 2 == 0 ? 'DEPRECATED' : 'REGISTERED',
            }
          end
        end

        it_should_behave_like "a collection that yields models" do
          let(:member_class)  { type_class }
        end

        it 'defaults to registered types in alphabetical order' do
          client.should_receive(list_method).with(request_options)
          types.to_a
        end

        it 'can request only deprecated types' do
          client.should_receive(list_method).
            with(request_options.merge(:registration_status => 'DEPRECATED'))
          types.deprecated.to_a
        end

        it 'accepts registration status order as an option to #each' do
          client.should_receive(list_method).
            with(request_options.merge(:registration_status => 'DEPRECATED'))
          types.each(:registration_status => 'DEPRECATED') {|d|}
        end

        it 'can request types in reserse alphabetical order' do
          client.should_receive(list_method).
            with(request_options.merge(:reverse_order => true))
          types.reverse_order.to_a
        end

        it 'accepts reverse order as an option to #each' do
          client.should_receive(list_method).
            with(request_options.merge(:reverse_order => true))
          types.each(:reverse_order => true) {|d|}
        end

        it 'can mix filters' do
          client.should_receive(list_method).with(request_options.merge(
            :registration_status => 'DEPRECATED',
            :reverse_order => true,
            :name => 'name'))
          types.deprecated.reverse_order.named('name').to_a
        end

        it 'can request workflwo types with a given name' do
          client.should_receive(list_method).
            with(request_options.merge(:name => 'name'))
          types.named('name').to_a
        end

        it 'accepts :name to #each' do
          client.should_receive(list_method).
            with(request_options.merge(:name => 'name'))
          types.each(:name => 'name') {|t|}
        end

        it_behaves_like "a collection that yields models" do

          let(:member_class) { type_class }

          it 'yields types with populated names' do
            types.collect(&:name).should == %w(name-1 name-2)
          end

          it 'yields types with populated versions' do
            types.collect(&:version).should == %w(version-1 version-2)
          end

          it 'yields types with populated descriptions' do
            types.collect(&:description).should == [nil, 'description-2']
          end

          it 'yields types with populated creation dates' do
            types.map(&:creation_date).map(&:to_s).should == [one_hour_ago.to_s, one_hour_ago.to_s]
          end

        end

      end
    end
  end
end
