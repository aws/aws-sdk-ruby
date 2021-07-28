# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Structure do

    it 'it is a Struct' do
      expect(Structure.new(:abc).new).to be_kind_of(Struct)
    end

    it 'accpets positional members' do
      expect(Structure.new(:abc, :xyz).members).to eq([:abc, :xyz])
    end

    it 'accepts values to its constructor as a hash, not, positional' do
      klass = Structure.new(:name)
      expect(klass.new(name:'value').name).to eq('value')
    end

    describe '#to_hash' do

      it 'returns a hash' do
        expect(Structure.new(:abc).new.to_hash).to eq({})
      end

      it 'accepts :members member' do
        s = Structure.new(:members, :foo).new(foo: 'bar', members: ['foo'])
        expect(s.to_hash).to eq({
          foo: 'bar',
          members: ['foo']
        })
      end

      it 'only serializes non-nil members' do
        s = Structure.new(:abc, :mno).new(abc:'abc')
        expect(s.to_hash).to eq(abc: 'abc')
      end

      it 'performs a deep to_hash' do
        birthday = Structure.new(:day, :month, :year).new
        birthday.day = 1
        birthday.month = 2
        birthday.year = 2000

        aliases = %w(Doe Jon)

        mom = Structure.new(:first_name, :last_name).new
        mom.first_name = 'Jane'
        mom.last_name = 'Smith'

        dad = Structure.new(:first_name, :last_name).new
        dad.first_name = 'Jon'
        dad.last_name = 'Doe'

        person = Structure.new(:name, :birthday, :empty, :aliases, :parents).new
        person.name = 'John Doe'
        person.birthday = birthday
        person.aliases = aliases
        person.parents = [mom, dad]

        expect(person.to_hash).to eq({
          name: 'John Doe',
          birthday: {
            day: 1,
            month: 2,
            year: 2000
          },
          # empty: nil, # intentionally omitted
          aliases: ['Doe', 'Jon'],
          parents: [
            { first_name: 'Jane', last_name: 'Smith' },
            { first_name: 'Jon', last_name: 'Doe' }
          ]
        })
      end

    end

    describe "#to_s" do
      it 'filters sensitive parameters' do
        class Type < Structure.new(
          :trait, :access_token)
          SENSITIVE = [:access_token]
          include Aws::Structure
        end
        struct = Type.new(trait: 'trait', access_token: 'secret')
        expect(struct.to_s).to eq("{:trait=>\"trait\", :access_token=>\"[FILTERED]\"}")
      end
    end

    describe 'Union' do
      class UnionType < Struct.new(
        :member_1,
        :member_2)
        include Aws::Structure
        include Aws::Structure::Union
      end

      let(:union) { UnionType.new(member_1: 'member_1') }

      describe '#member' do
        it 'returns the set member' do
          expect(union.member).to eq :member_1
        end

        it 'returns nil when no member is set' do
          expect(UnionType.new.member).to be_nil
        end
      end

      describe '#value' do
        it 'returns the set value' do
          expect(union.value).to eq 'member_1'
        end

        it 'returns nil when no member is set' do
          expect(UnionType.new.value).to be_nil
        end
      end
    end

  end
end
