# frozen_string_literal: true

require_relative '../../../spec_helper'


module Aws
  module Rest
    module Response
      describe HeaderListParser do
        describe '.parser_string_list' do
          it 'parses an empty list' do
            expect(HeaderListParser.parse_string_list(''))
              .to eq([])
          end

          it 'parses a single item' do
            expect(HeaderListParser.parse_string_list('a'))
              .to eq(['a'])
          end

          it 'parses multiple unquoted items' do
            expect(HeaderListParser.parse_string_list('a, b, c'))
              .to eq(%w[a b c])
          end

          it 'parses multiple quoted items' do
            expect(HeaderListParser.parse_string_list("\"b,c\", \"\\\"def\\\"\", a"))
              .to eq(["b,c", "\"def\"", "a"])
          end
        end
      end
    end
  end
end
