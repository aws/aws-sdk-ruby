require 'spec_helper'

module AwsSdkCodeGenerator
  module Dsl
    describe Docstring do
      describe '#initialize' do

        it 'is empty by default' do
          d = Dsl::Docstring.new
          expect(d.to_s).to eq("")
        end

        it 'accepts a string literal' do
          d = Dsl::Docstring.new('abc')
          expect(d.to_s).to eq(<<-CODE)
# abc
          CODE
        end

        it 'yields self' do
          docstring = Dsl::Docstring.new do |d|
            d << "abc"
          end
          expect(docstring.to_s).to eq(<<-CODE)
# abc
          CODE
        end

      end

      describe "#append" do

        it 'appends a line of text' do
          d = Dsl::Docstring.new
          d.append("abc")
          d.append("xyz")
          expect(d.to_s).to eq(<<-CODE)
# abc
# xyz
          CODE
        end

        it 'is aliased as #<<' do
          d = Dsl::Docstring.new
          d << "abc"
          d << "xyz"
          expect(d.to_s).to eq(<<-CODE)
# abc
# xyz
          CODE
        end

        it 'accepts multiline strings' do
          d = Dsl::Docstring.new
          d << "abc\nmno\n\nxyz"
          expect(d.to_s).to eq(<<-CODE)
# abc
# mno
#
# xyz
          CODE
        end

        it 'removes trailing newlines' do
          d = Dsl::Docstring.new
          d << "abc\n"
          d << "xyz\n\n"
          expect(d.to_s).to eq(<<-CODE)
# abc
# xyz
          CODE
        end

      end

      describe '#empty?' do

        it 'returns true for empty docstrings' do
          expect(Docstring.new.empty?).to be(true)
        end

        it 'returns false for non-empty docstrings' do
          expect(Docstring.new('abc').empty?).to be(false)
        end

      end
    end
  end
end
