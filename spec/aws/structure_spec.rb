require 'spec_helper'

module Aws
  describe Structure do

    it 'it is a Struct' do
      expect(Structure.new([:abc])).to be_kind_of(Struct)
    end

    it 'accpets positional members' do
      expect(Structure.new(:abc, :xyz).members).to eq([:abc, :xyz])
    end

    it 'accepts a list of members' do
      expect(Structure.new([:abc, :xyz]).members).to eq([:abc, :xyz])
    end

    it 'can be initialized with a data hash' do
      struct = Structure.new(:a => 1, :b => 2)
      expect(struct.members).to eq([:a, :b])
      expect(struct.a).to eq(1)
      expect(struct.b).to eq(2)
    end

    describe '#from_hash' do

      it 'converts nested hashes to Structure objects' do
        data = {
          :name => 'John',
          :parents => {
            :father => 'Jack',
            :mother => 'Jane',
          }
        }
        struct = Structure.from_hash(data)
        expect(struct.name).to eq('John')
        expect(struct.parents.father).to eq('Jack')
        expect(struct.parents.mother).to eq('Jane')
      end

      it 'converts arrays of hashes' do
        data = {
          :data => [
            { :value => 1 },
            { :value => 2 },
          ]
        }
        struct = Structure.from_hash(data)
        expect(struct.data[0].value).to eq(1)
        expect(struct.data[1].value).to eq(2)
      end

      it 'can be converted to structures and back to data' do
        data = {
          :name => 'John',
          :parents => {
            :father => 'Jack',
            :mother => 'Jane',
          },
          :data => [
            { :value => 1 },
            { :value => 2 },
          ],
          :empty => {}
        }
        expect(Structure.from_hash(data).to_hash).to eq(data)
      end

      it 'does not convert hashes of string keys to structures' do
        data = {
          :attributes => {
            'color' => 'red',
            'size' => 'large',
          },
          :tags => {
            'color' => { :value => 'red' },
            'size' => { :value => 'large' },
          }
        }
        struct = Structure.from_hash(data)
        expect(struct.attributes).to eq('color' => 'red', 'size' => 'large')
        expect(struct.tags).to be_kind_of(Hash)
        expect(struct.tags['color']).to be_kind_of(Structure)
        expect(struct.tags['color'].value).to eq('red')
        expect(struct.tags['size']).to be_kind_of(Structure)
        expect(struct.tags['size'].value).to eq('large')
        expect(struct.to_hash).to eq(data)
      end

    end

    describe '#to_hash' do

      it 'returns a hash' do
        expect(Structure.new([:abc]).to_hash).to eq({})
      end

      it 'only serializes non-nil members' do
        s = Structure.new([:abc, :mno])
        s.abc = 'abc'
        expect(s.to_hash).to eq(abc: 'abc')
      end

      it 'performs a deep to_hash' do
        birthday = Structure.new([:day, :month, :year])
        birthday.day = 1
        birthday.month = 2
        birthday.year = 2000

        aliases = %w(Doe Jon)

        mom = Structure.new([:first_name, :last_name])
        mom.first_name = 'Jane'
        mom.last_name = 'Smith'

        dad = Structure.new([:first_name, :last_name])
        dad.first_name = 'Jon'
        dad.last_name = 'Doe'

        person = Structure.new([:name, :birthday, :empty, :aliases, :parents])
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

    describe 'new' do

      it 'returns an empty constructed Struct' do
        struct = Structure.new([:abc, :mno])
        expect(struct.abc).to be(nil)
        expect(struct.mno).to be(nil)
      end

      it 'returns the same struct class given the same properties' do
        s1 = Structure.new([:abc, :mno])
        s2 = Structure.new([:abc, :mno])
        expect(s1.class).to be(s2.class)
      end

      it 'returns a new struct class given different properties' do
        s1 = Structure.new([:abc, :mno])
        s2 = Structure.new([:mno, :xyz])
        expect(s1.class).not_to be(s2.class)
      end

    end
  end
end
