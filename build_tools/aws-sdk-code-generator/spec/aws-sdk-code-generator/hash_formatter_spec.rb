# frozen_string_literal: true

require_relative '../spec_helper'

module AwsSdkCodeGenerator
  describe HashFormatter do

    it 'can serialize an empty hash' do
      str = HashFormatter.new.format({})
      expect(str).to eq(<<-HASH.strip)
{}
      HASH
    end

    it 'can serialize an empty hash to an empty string' do
      str = HashFormatter.new(wrap: false).format({})
      expect(str).to eq('')
    end

    it 'can serialize a simple hash' do
      str = HashFormatter.new.format(abc: 'xyz'.inspect )
      expect(str).to eq(<<-HASH.strip)
{
  abc: "xyz"
}
      HASH
    end

    it 'can auto-quote strings' do
      str = HashFormatter.new(quote_strings: true).format(abc: 'xyz')
      expect(str).to eq(<<-HASH.strip)
{
  abc: "xyz"
}
      HASH
    end

    it 'leaves indentation when not wrapping' do
      hash = {
        nested: {
          single: '"param"'
        }
      }
      expect(HashFormatter.new(wrap: true).format(hash)).to eq(<<-HASH.strip)
{
  nested: {
    single: "param"
  }
}
      HASH
      expect(HashFormatter.new(wrap: false).format(hash)).to eq(<<-HASH.strip)
nested: {
  single: "param"
}
      HASH
    end

    it 'can serialize a simple hash inline' do
      # wrapped
      str = HashFormatter.new(inline:true).format(abc: 'xyz'.inspect )
      expect(str).to eq('{ abc: "xyz" }')
      # non-wrapped
      str = HashFormatter.new(wrap:false, inline:true).format(abc: 'xyz'.inspect )
      expect(str).to eq('abc: "xyz"')
    end

    it 'can omit curly braces' do
      str = HashFormatter.new(wrap:false).format(abc: '"xyz"')
      expect("(#{str})\n").to eq(<<-CODE)
(abc: "xyz")
      CODE
      str = HashFormatter.new(wrap:false).format(abc: '"xyz"', mno: 123)
      expect("(#{str})\n").to eq(<<-CODE)
(
  abc: "xyz",
  mno: 123
)
      CODE
    end

    it 'can inline and omit curly braces' do
      str = HashFormatter.new(inline: true, wrap:false).format(abc: 'xyz'.inspect )
      expect(str).to eq('abc: "xyz"')
    end

    it 'serializes hashes with a single complex on a separate line' do
      str = HashFormatter.new.format(abc: { mno: 'xyz'.inspect })
      expect(str).to eq(<<-HASH.strip)
{
  abc: {
    mno: "xyz"
  }
}
      HASH
    end

    it 'puts multiple hash values on different lines' do
      str = HashFormatter.new.format(
        abc: 'hjk'.inspect,
        mno: 'xyz'.inspect,
      )
      expect(str).to eq(<<-HASH.strip)
{
  abc: "hjk",
  mno: "xyz"
}
      HASH
    end

    it 'can serialize nested hashes' do
      str = HashFormatter.new.format(
        double: {
          first: '1',
          second: '2',
          third: {
            fourth: 'abc'.inspect,
            fifth: { key: 'value'.inspect }
          }
        },
        single: {
          key: 'value'.inspect
        },
      )
      expect(str).to eq(<<-HASH.strip)
{
  double: {
    first: 1,
    second: 2,
    third: {
      fourth: "abc",
      fifth: {
        key: "value"
      }
    }
  },
  single: {
    key: "value"
  }
}
      HASH
    end

    it 'supports hashes with string keys' do
      str = HashFormatter.new.format(
        symbol: {
          symbol: 'value'.inspect,
          "string" => 'value'.inspect,
        },
        "string" => 'value'.inspect
      )
      expect(str).to eq(<<-HASH.strip)
{
  symbol: {
    symbol: "value",
    "string" => "value"
  },
  "string" => "value"
}
      HASH
    end

    it 'can serialize empty lists' do
      str = HashFormatter.new.format(
        items: []
      )
      expect(str).to eq(<<-HASH.strip)
{
  items: []
}
      HASH
    end

    it 'serializes arrays with 1 scalar element on a single line' do
      str = HashFormatter.new.format(
        items: ['abc'.inspect]
      )
      expect(str).to eq(<<-HASH.strip)
{
  items: ["abc"]
}
      HASH
    end

    it 'serializes arrays with multiple scalar element on multiple lines' do
      str = HashFormatter.new.format(
        items: ['abc'.inspect, 'mno'.inspect]
      )
      expect(str).to eq(<<-HASH.strip)
{
  items: [
    "abc",
    "mno"
  ]
}
      HASH
    end

    it 'serializes arrays with 1 complex element on multiple lines' do
      str = HashFormatter.new.format(
        items: [{ key: 'value'.inspect }]
      )
      expect(str).to eq(<<-HASH.strip)
{
  items: [{ key: "value" }]
}
      HASH
    end

    it 'serializes arrays with 1 complex element on multiple lines' do
      str = HashFormatter.new.format(
        items: [{ key1: '"value-1"', key2: '"value-2"' }]
      )
      expect(str).to eq(<<-HASH.strip)
{
  items: [{
    key1: "value-1",
    key2: "value-2"
  }]
}
      HASH
    end

    it 'serializes simple hashes each on their own line in arrays' do
      str = HashFormatter.new.format(
        items: [
          { key: 'value-1'.inspect },
          { key: 'value-2'.inspect },
        ]
      )
      expect(str).to eq(<<-HASH.strip)
{
  items: [
    { key: "value-1" },
    { key: "value-2" }
  ]
}
      HASH
    end

    it 'serializes multi-line hashes separately in arrays' do
      str = HashFormatter.new.format(
        items: [
          { abc: 'abc-1'.inspect, xyz: 'xyz-1'.inspect },
          { abc: 'abc-2'.inspect, xyz: 'xyz-2'.inspect },
        ]
      )
      expect(str).to eq(<<-HASH.strip)
{
  items: [
    {
      abc: "abc-1",
      xyz: "xyz-1"
    },
    {
      abc: "abc-2",
      xyz: "xyz-2"
    }
  ]
}
      HASH
    end

    it 'raises an error for non-String scalars' do
      expect {
        HashFormatter.new.format(foo: double('value'))
      }.to raise_error(ArgumentError)
    end

  end
end
