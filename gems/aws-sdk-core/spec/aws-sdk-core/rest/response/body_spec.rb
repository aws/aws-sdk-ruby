# frozen_string_literal: true

require 'stringio'
require_relative '../../../spec_helper'

module Aws
  module Core
    module Rest
      module Response
        describe Body do
          it 'parses query-bound output members from the response body' do
            shape = Smithy::Schema::Shapes::StructureShape.new
            shape.add_member(
              :baz,
              Smithy::Schema::Shapes::MemberShape.new(
                target: Smithy::Schema::Shapes::StringShape.new,
                traits: { 'smithy.api#httpQuery' => 'baz' }
              )
            )
            codec = double('XML codec')
            target = {}

            expect(codec).to receive(:parse).with(shape, '<Output><baz>bam</baz></Output>', target) do
              target[:baz] = 'bam'
            end

            described_class.new(codec, shape).apply(StringIO.new('<Output><baz>bam</baz></Output>'), target)

            expect(target).to eq(baz: 'bam')
          end

          it 'keeps an empty streaming blob response body' do
            shape = Smithy::Schema::Shapes::StructureShape.new
            streaming_blob = Smithy::Schema::Shapes::BlobShape.new(
              traits: { 'smithy.api#streaming' => {} }
            )
            shape.add_member(
              :blob,
              Smithy::Schema::Shapes::MemberShape.new(
                target: streaming_blob,
                traits: { 'smithy.api#httpPayload' => {} }
              )
            )
            body = StringIO.new
            target = {}

            described_class.new(double('codec'), shape).apply(body, target)

            expect(target[:blob]).to be(body)
          end
        end
      end
    end
  end
end
