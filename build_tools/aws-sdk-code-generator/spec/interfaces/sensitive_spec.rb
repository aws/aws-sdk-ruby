# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Types Interface:' do
  describe 'Sensitive members' do
    before(:all) do
      SpecHelper.generate_service(['Sensitive'], multiple_files: false)
    end

    let(:client) do
      Sensitive::Client.new(
        stub_responses: true,
      )
    end

    describe '#kitchen_sink' do
      it 'filters all sensitive members' do
        resp = client.kitchen_sink_operation
        expected = {
          blob: '[FILTERED]',
          boolean: '[FILTERED]',
          double: '[FILTERED]',
          empty_struct: {},
          float: '[FILTERED]',
          integer: '[FILTERED]',
          json_value: '[FILTERED]',
          list_of_strings: '[FILTERED]',
          list_of_structs: '[FILTERED]',
          long: '[FILTERED]',
          map_of_lists_of_strings: '[FILTERED]',
          map_of_maps: '[FILTERED]',
          map_of_strings: '[FILTERED]',
          map_of_structs: '[FILTERED]',
          simple_struct: '[FILTERED]',
          string: '[FILTERED]',
          struct_with_json_name: { value: '[FILTERED]' },
          timestamp: '[FILTERED]'
        }

        expect(resp.to_s).to eq(expected.to_s)
      end
    end

    describe '#nested_collections' do
      it 'filters members that reach a sensitive shape through lists and maps' do
        expect(Sensitive::Types::NestedCollections::SENSITIVE).to contain_exactly(
          :list_of_list_of_strings, :map_of_maps_of_lists, :sensitive_key_map,
          :member_sensitive_lists
        )

        client.stub_responses(
          :nested_collections_operation,
          list_of_list_of_strings: [['secret']],
          map_of_maps_of_lists: { 'a' => { 'b' => ['secret'] } },
          sensitive_key_map: { 'secret' => 'value' },
          plain_list: ['visible'],
          plain_map_of_lists: { 'c' => ['visible'] },
          member_sensitive_lists: [['member-secret']]
        )
        resp = client.nested_collections_operation
        expected = {
          list_of_list_of_strings: '[FILTERED]',
          map_of_maps_of_lists: '[FILTERED]',
          sensitive_key_map: '[FILTERED]',
          plain_list: ['visible'],
          plain_map_of_lists: { 'c' => ['visible'] },
          member_sensitive_lists: '[FILTERED]'
        }

        expect(resp.to_s).to eq(expected.to_s)
      end

      it 'filters collections inside structures while keeping ordinary members visible' do
        expect(Sensitive::Types::CollectionMemberStruct::SENSITIVE).to eq([:values])
        expect(Sensitive::Types::NestedStructures::SENSITIVE).to be_empty

        inner = { values: [['nested-secret']], plain_value: 'visible' }
        params = {
          inner: inner,
          inner_list: [inner],
          inner_map: { 'a' => inner }
        }
        client.stub_responses(:nested_structures_operation, params)
        resp = client.nested_structures_operation(params)
        filtered_inner = {
          values: '[FILTERED]', plain_value: 'visible',
          client_secret: nil, password: nil, private_key: nil, refresh_token: nil
        }
        expected = {
          inner: filtered_inner,
          inner_list: [filtered_inner],
          inner_map: { 'a' => filtered_inner }
        }

        expect(resp.to_s).to eq(expected.to_s)

        log = Aws::Log::Formatter.new(':request_params').format(resp)
        logged_inner = '{values:"[FILTERED]",plain_value:"visible"}'
        expect(log).to include("inner:#{logged_inner}")
        expect(log).to include("inner_list:[#{logged_inner}]")
        expect(log).to include("inner_map:{\"a\"=>#{logged_inner}}")
        expect(log).not_to include('nested-secret')
      end

      it 'filters globally sensitive names missing model traits from request logs' do
        expect(Sensitive::Types::CollectionMemberStruct::SENSITIVE).to eq([:values])

        inner = {
          values: [['modeled-secret']], plain_value: 'visible',
          client_secret: 'oidc-secret', password: 'mq-secret',
          private_key: 'apns-secret', refresh_token: 'salesforce-secret'
        }
        resp = client.nested_structures_operation(
          inner: inner,
          inner_list: [inner],
          inner_map: { 'a' => inner }
        )
        log = Aws::Log::Formatter.new(':request_params').format(resp)
        logged_inner = '{values:"[FILTERED]",plain_value:"visible",' \
                       'client_secret:"[FILTERED]",password:"[FILTERED]",' \
                       'private_key:"[FILTERED]",refresh_token:"[FILTERED]"}'
        expect(log).to eq(
          "inner:#{logged_inner}," \
          "inner_list:[#{logged_inner}]," \
          "inner_map:{\"a\"=>#{logged_inner}}"
        )
      end

      it 'uses the same sensitive members in the RBS types' do
        api = JSON.parse(File.read(File.expand_path(
          '../fixtures/interfaces/sensitive/api.json', __dir__
        )))
        service = AwsSdkCodeGenerator::Service.new(
          name: 'Sensitive', module_name: 'Sensitive', api: api,
          gem_version: '1.0.0'
        )
        view = AwsSdkCodeGenerator::Views::RBS::TypesModule.new(service: service)
        structs = view.structures.select do |struct|
          %w[KitchenSink NestedCollections NestedStructures CollectionMemberStruct].include?(struct.class_name)
        end
        expect(structs.size).to eq(4)
        structs.each do |struct|
          expected = Sensitive::Types.const_get(struct.class_name)::SENSITIVE
          expect(struct.sensitive_params).to match_array(expected)
        end
      end
    end
  end
end
