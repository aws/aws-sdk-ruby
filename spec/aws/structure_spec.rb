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

module Aws
  describe Structure do

    it 'it is a Struct' do
      expect(Structure.new([:abc])).to be_kind_of(Struct)
    end

    it 'accepts a list of members' do
      expect(Structure.new([:abc, :xyz]).members).to eq([:abc, :xyz])
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
