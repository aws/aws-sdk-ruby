require 'spec_helper'

module Aws
  module DynamoDB
    describe Client do

      let(:opts) {{
        credentials: Credentials.new('akid', 'secret'),
        region: 'us-west-2',
      }}

      let(:ddb) { Client.new(opts) }

      describe ':simple_attributes' do

        it 'simple attributes mode is enabled by default' do
          expect(Client.new(opts).config.simple_attributes).to be(true)
        end

        it 'can be disabled' do
          ddb = Client.new(opts.merge(simple_attributes: false))
          expect(ddb.config.simple_attributes).to be(false)
        end

        it 'marshals given attribute values' do
          ddb.handle(step: :send) do |context|
            Seahorse::Client::Response.new(context: context)
          end
          resp = ddb.put_item(table_name: 'aws-sdk', item: { 'id' => 'guid' })
          expect(resp.context.params).to eq(
            table_name: 'aws-sdk',
            item: {"id"=>{:s=>"guid"}}
          )
        end

        it 'unmarshals returned attribute values' do
          ddb.handle(step: :send) do |context|
            context.http_response.status_code = 200
            context.http_response.body = <<-JSON
              { "Item": { "id": { "S": "guid" } } }
            JSON
            Seahorse::Client::Response.new(context: context)
          end
          resp = ddb.get_item(table_name: 'aws-sdk', key: { 'id' => 'guid' })
          expect(resp.data.item).to eq('id' => 'guid')
        end

      end
    end
  end
end
