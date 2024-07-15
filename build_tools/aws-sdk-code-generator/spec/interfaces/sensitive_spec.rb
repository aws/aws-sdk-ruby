# frozen_string_literal: true

require_relative '../spec_helper'

describe 'Types Interface:' do
  describe 'Sensitive members' do
    before(:all) do
      SpecHelper.generate_service(['Sensitive'], multiple_files: false)
    end

    let(:token) { 'token' }

    let(:token_provider) { Aws::StaticTokenProvider.new(token) }

    let(:client) do
      Sensitive::Client.new(
        stub_responses: true,
      )
    end

    describe '#kitchen_sink' do
      it 'filters all sensitive members' do
        resp = client.kitchen_sink_operation
        puts resp
        expect(resp.to_s).to eq(
          (<<-OUTPUT
{:blob=>"[FILTERED]", :boolean=>"[FILTERED]", :double=>"[FILTERED]", :empty_struct=>{}, :float=>"[FILTERED]", :integer=>"[FILTERED]", :json_value=>"[FILTERED]", :list_of_strings=>"[FILTERED]", :list_of_structs=>"[FILTERED]", :long=>"[FILTERED]", :map_of_lists_of_strings=>"[FILTERED]", :map_of_maps=>"[FILTERED]", :map_of_strings=>"[FILTERED]", :map_of_structs=>"[FILTERED]", :simple_struct=>"[FILTERED]", :string=>"[FILTERED]", :struct_with_json_name=>{:value=>"[FILTERED]"}, :timestamp=>"[FILTERED]"}
        OUTPUT
          ).strip
        )
      end
    end

  end
end
