# frozen_string_literal: true

module Enumerable
  class Enumerator; end
end
require_relative '../../spec_helper'

module Aws
  module Resources
    describe Collection do

      describe '#each' do
        it 'wont raise a NoMethodError error about an undefined each method' do
          expect { Collection.new([]).each {} }.not_to raise_error
        end
      end

      describe '#first' do
        it 'wont raise a NoMethodError error about an undefined next method' do
          expect { Collection.new([]).first }.not_to raise_error
        end
      end

    end
  end
end
