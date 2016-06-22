require 'spec_helper'

module AwsSdkCodeGenerator
  module Dsl
    describe Main do

      it 'can be empty' do
        dsl = Dsl::Main.new
        expect(dsl.to_s).to eq(<<-CODE)
        CODE
      end

      it 'can be commented' do
        dsl = Dsl::Main.new
        dsl.comments("GENERATED CODE")
        expect(dsl.to_s).to eq(<<-CODE)
# GENERATED CODE

        CODE
      end

    end
  end
end
