require 'spec_helper'

module AwsSdkCodeGenerator
  module Dsl
    describe CodeLiteral do
      describe '#initialize' do

        it 'is empty by default' do
          c = Dsl::CodeLiteral.new
          expect(c.to_s).to eq("")
        end

        it 'accepts a string literal' do
          code = Dsl::CodeLiteral.new('abc')
          expect(code.to_s).to eq(<<-CODE)
abc
          CODE
        end

        it 'yields self' do
          code = Dsl::CodeLiteral.new do |c|
            c << "abc"
          end
          expect(code.to_s).to eq(<<-CODE)
abc
          CODE
        end

      end

      describe "#<<" do

        it 'appends a line of text' do
          c = Dsl::CodeLiteral.new
          c << "abc"
          c << "xyz"
          expect(c.to_s).to eq(<<-CODE)
abc
xyz
          CODE
        end

        it 'is aliased as #<<' do
          c = Dsl::CodeLiteral.new
          c.append("abc")
          c.append("xyz")
          expect(c.to_s).to eq(<<-CODE)
abc
xyz
          CODE
        end

        it 'accepts multiline strings' do
          c = Dsl::CodeLiteral.new
          c << "abc\nmno\n\nxyz"
          expect(c.to_s).to eq(<<-CODE)
abc
mno

xyz
          CODE
        end

        it 'removes trailing newlines' do
          c = Dsl::CodeLiteral.new
          c << "abc\n"
          c << "xyz\n"
          expect(c.to_s).to eq(<<-CODE)
abc
xyz
          CODE
        end

        it 'accepts a CodeLiteral' do
          c = Dsl::CodeLiteral.new
          c << "abc"
          c << CodeLiteral.new('mno')
          c << "xyz"
          expect(c.to_s).to eq(<<-CODE)
abc
mno
xyz
          CODE
        end

        it 'accepts a nested CodeLiteral' do
          c = Dsl::CodeLiteral.new
          c << "abc"
          c << CodeLiteral.new('mno', nesting:1)
          c << "xyz"
          expect(c.to_s).to eq(<<-CODE)
abc
  mno
xyz
          CODE
        end

        it 'defers resolving CodeLiteral objects' do
          c1 = Dsl::CodeLiteral.new
          c2 = Dsl::CodeLiteral.new
          c1 << "line1"
          c1 << c2
          c2 << "line2"
          expect(c1.to_s).to eq(<<-CODE)
line1
line2
          CODE
        end

      end

      describe '#indent' do

        it 'accepts a string of code to indent' do
          c = Dsl::CodeLiteral.new
          c << "if true"
          c.indent('do_something')
          c << "end"
          expect(c.to_s).to eq(<<-CODE)
if true
  do_something
end
          CODE
        end

        it 'accepts a multiline strings of code to indent' do
          c = Dsl::CodeLiteral.new
          c << "if true"
          c.indent("do_something\ndo_something_else")
          c << "end"
          expect(c.to_s).to eq(<<-CODE)
if true
  do_something
  do_something_else
end
          CODE
        end

        it 'yields a new CodeLiteral' do
          c = Dsl::CodeLiteral.new
          c << "if true"
          c.indent do |c2|
            c2 << "do_something"
          end
          c << "end"
          expect(c.to_s).to eq(<<-CODE)
if true
  do_something
end
          CODE
        end

        it 'can nest multiple times' do
          c = Dsl::CodeLiteral.new
          c << "abc"
          c.indent do |c2|
            c2 << "mno"
            c2.indent('xyz1') do |c3|
              c3 << "xyz2"
            end
          end
          expect(c.to_s).to eq(<<-CODE)
abc
  mno
    xyz1
    xyz2
          CODE

        end

        it 'indents appended CodeLiteral objects' do
          c1 = Dsl::CodeLiteral.new
          c1 << 'c1'

          c2 = Dsl::CodeLiteral.new
          c2 << 'c2'

          c3 = Dsl::CodeLiteral.new
          c3 << 'c3'

          c4 = Dsl::CodeLiteral.new
          c4 << Dsl::CodeLiteral.new('c4')

          c1.indent(c2)
          c2.indent(c3)
          c3.indent(c4)

          expect(c4.to_s).to eq(<<-CODE)
c4
          CODE
          expect(c3.to_s).to eq(<<-CODE)
c3
  c4
          CODE
          expect(c2.to_s).to eq(<<-CODE)
c2
  c3
    c4
          CODE
          expect(c1.to_s).to eq(<<-CODE)
c1
  c2
    c3
      c4
          CODE
        end

      end

      describe '#newline' do

        it 'inserts a blank line' do
          c = Dsl::CodeLiteral.new
          c << "abc"
          c.newline
          c << "xyz"
          expect(c.to_s).to eq(<<-CODE)
abc

xyz
          CODE
        end

      end
    end
  end
end
