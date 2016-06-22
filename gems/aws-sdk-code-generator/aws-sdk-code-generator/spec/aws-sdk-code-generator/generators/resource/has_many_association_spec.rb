require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe HasManyAssociation do

        let(:has_many) {{
          'request' => {
            'operation' => 'ListOperation',
          },
          'resource' => {
            'type' => 'Widget',
            'identifiers' => [
              {
                'target' => 'Name',
                'source' => 'response',
                'path' => 'Gadgets[].Config.Widgets[].Name',
              },
            ],
            'path' => 'Gadgets[].Config.Widgets[]'
          },
        }}

        let(:api) {{
          'operations' => {
            'ListOperation' => {
              'input' => { 'shape' => 'ListOperationInput' },
              'output' => { 'shape' => 'ListOperationOutput' },
            },
          },
          'shapes' => {
            'ListOperationInput' => {
              'type' => 'structure',
              'members' => {
                'Filter' => { 'shape' => 'String' },
                'NextToken' => { 'shape' => 'String' },
                'MaxResults' => { 'shape' => 'String' },
              }
            },
            'ListOperationOutput' => {
              'type' => 'structure',
              'members' => {
                'Gadgets' => { 'shape' => 'GadgetList' },
                'NextToken' => { 'shape' => 'String' },
              }
            },
            'GadgetList' => {
              'type' => 'list',
              'member' => { 'shape' => 'Gadget' },
            },
            'Gadget' => {
              'type' => 'structure',
              'members' => {
                'Config' => { 'shape' => 'GadgetConfig' },
              }
            },
            'GadgetConfig' => {
              'type' => 'structure',
              'members' => {
                'Widgets' => { 'shape' => 'WidgetList' },
              }
            },
            'WidgetList' => {
              'type' => 'list',
              'member' => { 'shape' => 'Widget' },
            },
            'Widget' => {
              'type' => 'structure',
              'members' => {
                'Name' => { 'shape' => 'String' },
              }
            },
            'String' => { 'type' => 'string' },
          }
        }}

        let(:paginators) {{
          'pagination' => {
            'ListOperation' => {
              'limit_key' => 'MaxResults',
              'input_token' => 'NextToken',
              'output_token' => 'NextToken',
            }
          }
        }}

        let(:assoc) {
          HasManyAssociation.new(
            name: 'Things',
            has_many: has_many,
            api: api,
            paginators: paginators
          )
        }

        describe 'documentation' do

          it 'documents the return type' do
            expect(SpecHelper.return_tags(assoc)).to eq(<<-CODE)
# @return [Widget::Collection]
            CODE
          end

          it 'documents client options except paging tokens' do
            api['shapes'] = {
              'ListOperationInput' => {
                'type' => 'structure',
                'members' => {
                  'Filter' => { 'shape' => 'String' },
                  'NextToken' => { 'shape' => 'String' },
                  'MaxResults' => { 'shape' => 'String' },
                }
              },
              'String' => { 'type' => 'string' }
            }
            expect(SpecHelper.option_tags(assoc)).to eq(<<-CODE)
# @option options [String] :filter
            CODE
          end

        end

        describe 'code' do

          it 'defines a method that accepts a hash of options' do
            expect(SpecHelper.method_signature(assoc)).to eq(<<-CODE)
def things(options = {})
            CODE
          end

          it 'generates an collection via an enumerator' do
            expect(SpecHelper.code(assoc)).to eq(<<-CODE)
def things(options = {})
  batches = Enumerator.new do |y|
    resp = @client.list_operation(options)
    resp.each_page do |page|
      batch = []
      page.data.gadgets.each do |g|
        g.config.widgets.each do |w|
          batch << Widget.new(
            name: w.name,
            data: w,
            client: @client
          )
        end
      end
      y.yield(batch)
    end
  end
  Widget::Collection.new(batches)
end
            CODE
          end

          it 'does not enumerate pages if there are no paginators' do
            paginators['pagination'].clear
            expect(SpecHelper.code(assoc)).to eq(<<-CODE)
def things(options = {})
  batches = Enumerator.new do |y|
    batch = []
    resp = @client.list_operation(options)
    resp.data.gadgets.each do |g|
      g.config.widgets.each do |w|
        batch << Widget.new(
          name: w.name,
          data: w,
          client: @client
        )
      end
    end
    y.yield(batch)
  end
  Widget::Collection.new(batches)
end
            CODE
          end

          it 'supports Aws::S3::Bucket#object_versions' do
            pending
            expect(SpecHelper.code(assoc)).to eq(<<-CODE)
def object_versions(options = {}) batches = Enumerator.new do |y|
    params = options.merge(bucket: @name)
    @client.list_object_versions(params).each_page do |page|
      batch = []
      page.data.versions.each do |v|
        batch << ObjectVersion.new(
          bucket_name: @name,
          object_key: v.key,
          id: v.version_id,
          data: v,
          client: @client
        )
      end
      page.data.delete_markers.each do |dm|
        batch << ObjectVersion.new(
          bucket_name: @name,
          object_key: dm.key,
          id: dm.version_id,
          data: dm,
          client: @client
        )
      end
      y.yield(batch)
    end
  end
  ObjectVersion::Collection.new(batches)
end
            CODE
          end

        end
      end
    end
  end
end
