# frozen_string_literal: true

require_relative '../../spec_helper'

module Aws
  module Core
    module Query
      describe Param do
        it 'preserves query-safe names and values' do
          expect(described_class.new('Filters.member.1_Name~', 'value-1.test').to_s)
            .to eq('Filters.member.1_Name~=value-1.test')
        end

        it 'escapes unsafe names and values' do
          expect(described_class.new('Filter name', 'a+b~').to_s)
            .to eq('Filter%20name=a%2Bb~')
        end
      end
    end
  end
end
