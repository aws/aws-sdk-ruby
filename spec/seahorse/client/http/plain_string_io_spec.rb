require 'spec_helper'

module Seahorse
  module Client
    module Http
      describe PlainStringIO do
        it 'is a StringIO object' do
          expect(PlainStringIO.new).to be_a(StringIO)
        end

        describe '#inspect' do
          it 'inspects as the string data object' do
            io = PlainStringIO.new
            io.write("first\n")
            io.write("last")
            expect(io.read).to eq ''
            expect(io.inspect).to eq '"first\nlast"'
          end
        end
      end
    end
  end
end
