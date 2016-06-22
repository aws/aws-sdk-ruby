require 'spec_helper'

module AwsSdkCodeGenerator
  module Dsl
    describe Method do

      describe '#intialize' do

        it 'requires only a name' do
          m = Dsl::Method.new(:method_name)
          expect(m.to_s).to eq(<<-CODE)
def method_name
end
          CODE
        end

        it 'yields self from the constructor' do
          method = Dsl::Method.new(:method_name) do |m|
            m.code('abc')
          end
          expect(method.to_s).to eq(<<-CODE)
def method_name
  abc
end
          CODE
        end

      end

      describe '#docstring' do

        it 'accepts a string' do
          m = Dsl::Method.new(:method_name)
          m.docstring('abc')
          expect(m.to_s).to eq(<<-CODE)
# abc
def method_name
end
          CODE
        end

        it 'yields when a block is given' do
          m = Dsl::Method.new(:method_name)
          m.docstring do |d|
            d << 'abc'
            d << 'mno'
          end
          expect(m.to_s).to eq(<<-CODE)
# abc
# mno
def method_name
end
          CODE
        end

        it 'returns the docstring' do
          m = Dsl::Method.new(:method_name)
          d = m.docstring
          d << 'abc'
          d << 'mno'
          expect(m.to_s).to eq(<<-CODE)
# abc
# mno
def method_name
end
          CODE
        end

        it 'can be populated in the constructor' do
          m = Dsl::Method.new(:method_name, docstring: 'abc')
          m.docstring('mno')
          expect(m.to_s).to eq(<<-CODE)
# abc
# mno
def method_name
end
          CODE
        end

      end

      it 'accepts code a strings' do
        m = Dsl::Method.new(:method_name)
        m.code("puts 'Hello'")
        m.code("puts 'World'")
        expect(m.to_s).to eq(<<-CODE)
def method_name
  puts 'Hello'
  puts 'World'
end
        CODE
      end

      it 'yields a code object' do
        m = Dsl::Method.new(:method_name)
        m.code do |c|
          c << "if this"
          c.indent do
            c << "true"
          end
          c << "else"
          c.indent do
            c << "false"
          end
          c << "end"
        end
        expect(m.to_s).to eq(<<-CODE)
def method_name
  if this
    true
  else
    false
  end
end
        CODE
      end

      it 'indents lines of code' do
        m = Dsl::Method.new(:method_name)
        m.code("puts 'Hello'\nputs 'World'")
        expect(m.to_s).to eq(<<-CODE)
def method_name
  puts 'Hello'
  puts 'World'
end
        CODE
      end

      it 'preserves blank lines without indentation' do
        m = Dsl::Method.new(:method_name)
        m.code("puts 'Hello'")
        m.code("\n")
        m.code("puts 'World'")
        expect(m.to_s).to eq(<<-CODE)
def method_name
  puts 'Hello'

  puts 'World'
end
        CODE
      end

      describe '#alias_as' do

        it 'adds an alias method statement to the end of the method' do
          m = Dsl::Method.new(:method_name)
          m.alias_as(:other_name)
          m.alias_as('yet_another_name')
          expect(m.to_s).to eq(<<-CODE)
def method_name
end
alias :other_name :method_name
alias :yet_another_name :method_name
          CODE
        end

      end

      describe 'parameters' do

        it 'supports positional params' do
          m = Dsl::Method.new(:method_name)
          m.param(:value)
          expect(m.to_s).to eq(<<-CODE)
def method_name(value)
end
          CODE
        end

        it 'supports multiple positional params' do
          m = Dsl::Method.new(:method_name)
          m.param(:value1)
          m.param(:value2)
          expect(m.to_s).to eq(<<-CODE)
def method_name(value1, value2)
end
          CODE
        end

        it 'accepts a docstring' do
          m = Dsl::Method.new(:method_name)
          m.docstring("Does something cool.")
          expect(m.to_s).to eq(<<-CODE)
# Does something cool.
def method_name
end
          CODE
        end

        it 'accepts a docstring with a trailing newline' do
          m = Dsl::Method.new(:method_name)
          m.docstring("Does something\ncool.\n")
          expect(m.to_s).to eq(<<-CODE)
# Does something
# cool.
def method_name
end
          CODE
        end

        it 'preserves docstring formatting' do
          m = Dsl::Method.new(:method_name)
          m.docstring(<<-DOCSTRING)
Formatted docstring with an example:

    # code example with comment
    code.example

And more!
          DOCSTRING
          expect(m.to_s).to eq(<<-CODE)
# Formatted docstring with an example:
#
#     # code example with comment
#     code.example
#
# And more!
def method_name
end
          CODE
        end

        it 'documents params' do
          m = Dsl::Method.new(:method_name)
          m.param(:value1, type:String)
          m.param(:value2, type:[Integer, 'Boolean'])
          expect(m.to_s).to eq(<<-CODE)
# @param [String] value1
# @param [Integer, Boolean] value2
def method_name(value1, value2)
end
          CODE
        end

        it 'supports defaults' do
          m = Dsl::Method.new(:method_name)
          m.param(:value, type:String, default:'default-value')
          expect(m.to_s).to eq(<<-CODE)
# @param [String] value ("default-value")
def method_name(value = "default-value")
end
          CODE
        end

        it 'support block params' do
          m = Dsl::Method.new(:method_name)
          m.block_param
          expect(m.to_s).to eq(<<-CODE)
def method_name(&block)
end
          CODE
        end

        it 'supports docstrings' do
          m = Dsl::Method.new(:method_name)
          m.param(:value, type:String, docstring:"Parameter documentation.")
          expect(m.to_s).to eq(<<-CODE)
# @param [String] value
#   Parameter documentation.
def method_name(value)
end
          CODE
        end

        it 'Nests multiline docstrings' do
          m = Dsl::Method.new(:method_name)
          m.param(:value, type:String, docstring:"Parameter\ndocumentation.")
          expect(m.to_s).to eq(<<-CODE)
# @param [String] value
#   Parameter
#   documentation.
def method_name(value)
end
          CODE
        end

        it 'supports return tags' do
          m = Dsl::Method.new(:method_name)
          m.returns([String, 'Array<String>'])
          expect(m.to_s).to eq(<<-CODE)
# @return [String, Array<String>]
def method_name
end
          CODE
        end

        it 'supports return tags with docstrings' do
          m = Dsl::Method.new(:method_name)
          m.returns(String, docstring: 'Returns something.')
          expect(m.to_s).to eq(<<-CODE)
# @return [String]
#   Returns something.
def method_name
end
          CODE
        end

      end
    end
  end
end
