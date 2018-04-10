require_relative 'spec_helper'

module Aws
  module EventStream

    describe Decoder do

      describe "#decode" do
        
        Dir.glob(File.expand_path('../fixtures/encoded/positive/*', __FILE__)).each do |path|

          suit_name = File.basename(path)
          expect_path = File.join(File.expand_path('../fixtures/decoded/positive', __FILE__), suit_name)
          expect_msg = SpecHelper.convert_msg(expect_path)

          it "decodes suit: #{suit_name} correctly" do
            decoder = Decoder.new(format: false)
            decoder.decode(File.new(path)) do |msg|
              expect(msg.payload.read).to eq(expect_msg.payload.read)
              expect(msg.headers.size).to eq(expect_msg.headers.size)
              expect(msg.headers.keys).to eq(expect_msg.headers.keys)
              msg.headers.each do |k, v|
                expect(v.value).to eq(expect_msg.headers[k].value)
                expect(v.type).to eq(expect_msg.headers[k].type)
              end
            end
          end

        end

        Dir.glob(File.expand_path('../fixtures/encoded/negative/*', __FILE__)).each do |path|

          suit_name = File.basename(path)
          expect_path = File.join(File.expand_path('../fixtures/decoded/negative', __FILE__), suit_name)
          expect_error = SpecHelper.convert_error(expect_path)

          it "detects error for suit: #{suit_name} correctly" do
            decoder = Decoder.new
            expect {
              decoder.decode(File.new(path)).to_a
            }.to raise_error(expect_error)
          end
        end

      end
    end

  end
end
