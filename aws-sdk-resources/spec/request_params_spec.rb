require 'spec_helper'

module Aws
  module Resources
    module RequestParams
      describe 'Param#apply' do

        it 'supports simple param targets' do
          params = {}
          Literal.new(target:'param_name', value:'value').apply(params)
          expect(params).to eq(param_name:'value')
        end

        it 'supports nested param targets' do
          params = {}
          Literal.new(target:'person.name', value:'John Doe').apply(params)
          Literal.new(target:'person.age', value: 40).apply(params)
          expect(params).to eq(person: { name:'John Doe', age: 40})
        end

        it 'supports list param targets' do
          params = {}
          Literal.new(target:'params[]', value:'p1').apply(params)
          Literal.new(target:'params[]', value:'p2').apply(params)
          expect(params).to eq(params:['p1','p2'])
        end

        it 'supports nested lists of structures' do
          params = {}
          Literal.new(target:'delete.objects[].key', value:'k1').apply(params)
          Literal.new(target:'delete.objects[].key', value:'k2').apply(params)
          expect(params).to eq(delete: { objects: [{key:'k1'}, {key:'k2'}]})
        end

        it 'supports numbered list members' do
          params = {}
          Literal.new(target:'people[0].name', value:'name1').apply(params)
          Literal.new(target:'people[0].age', value:30).apply(params)
          Literal.new(target:'people[1].name', value:'name2').apply(params)
          Literal.new(target:'people[1].age', value:40).apply(params)
          expect(params).to eq(people:[{name:'name1',age:30},{name:'name2',age:40}])
        end

        it 'supports nested lists' do
          params = {}
          Literal.new(target:'params[0].name', value:'n1').apply(params)
          Literal.new(target:'params[0].values[]', value:'v1').apply(params)
          Literal.new(target:'params[0].values[]', value:'v2').apply(params)
          Literal.new(target:'params[1].name', value:'n2').apply(params)
          Literal.new(target:'params[1].values[]', value:'v3').apply(params)
          Literal.new(target:'params[1].values[]', value:'v4').apply(params)
          expect(params).to eq(params:[{name:'n1', values:['v1','v2']},{name:'n2', values:['v3','v4']}])
        end

        it 'supports grouped params' do
          params = {}
          3.times do |n|
            Literal.new(target:'entries[*].id', value:"id-#{n+1}").apply(params, n: n)
            Literal.new(target:'entries[*].value', value:"value-#{n+1}").apply(params, n:n)
          end
          expect(params).to eq({
            entries: [
              { id: 'id-1', value: 'value-1' },
              { id: 'id-2', value: 'value-2' },
              { id: 'id-3', value: 'value-3' },
            ]
          })
        end

      end

      describe RequestParams::Identifier do

        it 'extracts the identifier from the given resource' do
          params = {}
          resource = double('resource', id: 'abcmnoxyz')
          RequestParams::Identifier.new({
            target: 'name',
            name: 'id',
          }).apply(params, resource:resource)
          expect(params).to eq(name:'abcmnoxyz')
        end

      end

      describe RequestParams::DataMember do

        it 'extracts the data member value from the given resoruce' do
          params = {}
          resource = double('resource', data: { member_name: 'johndoe' })
          RequestParams::DataMember.new({
            target: 'name',
            data_path: 'member_name',
          }).apply(params, resource:resource)
          expect(params).to eq(name:'johndoe')
        end

      end

    end
  end
end
