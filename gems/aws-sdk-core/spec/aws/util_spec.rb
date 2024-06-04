# frozen_string_literal: true

require_relative '../spec_helper'

module Aws
  describe Util do
    describe '.deserialize_time' do
      it 'correctly parses when given value is nil' do
        expect(Util.deserialize_time(nil)).to be_nil
      end

      it 'correctly parses when given value is a numeric string' do
        expect(Util.deserialize_time('946702800').to_s)
          .to eq('2000-01-01 05:00:00 UTC')
      end

      it 'correctly parses when given value is a string' do
        expect(Util.deserialize_time('2000-01-02T20:34:56.123Z').to_s)
          .to eq('2000-01-02 20:34:56 UTC')
      end
    end
  end
end
