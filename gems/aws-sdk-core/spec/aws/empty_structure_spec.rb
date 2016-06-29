require_relative '../spec_helper'

module Aws
  describe EmptyStructure do

    it 'can be constructed via .new' do
      expect(EmptyStructure.new).to be_kind_of(EmptyStructure)
    end

    it 'it is a Struct' do
      expect(EmptyStructure.new).to be_kind_of(Struct)
    end

    it 'raises an error if you attempt to access a member' do
      expect {
        EmptyStructure.new[:foo]
      }.to raise_error(NameError, "no member 'foo' in struct")
      expect {
        EmptyStructure.new['foo']
      }.to raise_error(NameError, "no member 'foo' in struct")
      expect {
        EmptyStructure.new.foo
      }.to raise_error(NoMethodError)
    end

    it 'raises an error if you attempt to set a member' do
      expect {
        EmptyStructure.new[:foo] = 'bar'
      }.to raise_error(NameError, "no member 'foo' in struct")
      expect {
        EmptyStructure.new['foo'] = 'bar'
      }.to raise_error(NameError, "no member 'foo' in struct")
      expect {
        EmptyStructure.new.foo = 'bar'
      }.to raise_error(NoMethodError)
    end

    it 'can be enumerated, but yields no members' do
      yields = []
      EmptyStructure.new.each_pair { |member| yields << member }
      expect(yields).to be_empty
    end

    it 'returns an enumerable from #each_pair' do
      enum = EmptyStructure.new.each_pair
      expect(enum).to be_kind_of(Enumerable)
      expect(enum.to_a).to eq([])
    end

    it 'can be enumerated in pairs, but yields no members or values' do
      yields = []
      EmptyStructure.new.each_pair { |*args| yields << args }
      expect(yields).to be_empty
    end

    it 'equals other empty structures' do
      expect(EmptyStructure.new).to eq(EmptyStructure.new)
      expect(EmptyStructure.new == EmptyStructure.new).to be(true)
      expect(EmptyStructure.new.eql?(EmptyStructure.new)).to be(true)
    end

    it 'has a zero length' do
      expect(EmptyStructure.new.length).to be(0)
      expect(EmptyStructure.new.size).to be(0)
    end

    it 'has a no members' do
      expect(EmptyStructure.new.members).to eq([])
    end

    it 'selects nothing' do
      expect(EmptyStructure.new.select {|v| true }).to eq([])
    end

    it 'casts to an empty array' do
      expect(EmptyStructure.new.to_a).to eq([])
    end

    it 'casts to an empty hash' do
      expect(EmptyStructure.new.to_h).to eq({})
    end

    it 'has no values' do
      expect(EmptyStructure.new.values).to eq([])
    end

    it 'rejects selecting values at given members' do
      struct = EmptyStructure.new
      expect(struct.values_at(*[])).to eq([])
      expect {
        struct.values_at(0,1)
      }.to raise_error(IndexError)
    end

  end
end
