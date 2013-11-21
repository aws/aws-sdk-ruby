require 'stringio'

module Seahorse
  module Client
    describe ParamConverter do

      describe 'convert' do

        it 'performs a deeply nested conversion of values' do
          rules = Model::Shapes::Shape.from_hash({
            'type' => 'input',
            'members' => {
              'username' => { 'type' => 'string' },
              'config' => {
                'type' => 'structure',
                'members' => {
                  'enabled' => { 'type' => 'boolean' },
                  'settings' => {
                    'type' => 'map',
                    'keys' => { 'type' => 'string' },
                    'members' => { 'type' => 'string' },
                  },
                  'counts' => {
                    'type' => 'list',
                    'members' => { 'type' => 'integer' },
                  }
                }
              }
            }
          })

          data = double('data')

          config = Struct.new(:enabled, :settings, :counts, :unknown)
          config = config.new(true, { color: :red }, [1, 2.0, '3'], data)

          params = {
            username: :johndoe,
            config: config
          }

          converted = ParamConverter.convert(rules, params)
          expect(converted).to eq({
            username: 'johndoe',
            config: {
              enabled: true,
              settings: { 'color' => 'red' },
              counts: [1, 2, 3],
              unknown: data
            }
          })
        end

      end

      describe 'default converstions' do

        describe 'undescribed' do

          it 'returns the value unmodified if the shape class is unknown' do
            shape_class = Class.new
            value = 'raw'
            expect(ParamConverter.c(shape_class, value)).to be(value)
          end

          it 'returns the value unmodified if the value class is unknown' do
            shape_class = Model::Shapes::StringShape
            value = double('raw')
            expect(ParamConverter.c(shape_class, value)).to be(value)
          end

        end

        describe 'structures' do

          let(:shape_class) { Model::Shapes::StructureShape }

          it 'returns duplicate hashes' do
            value = { a: 1 }
            converted = ParamConverter.c(shape_class, value)
            expect(converted).to eq(value)
            expect(converted).not_to be(value)
          end

          it 'creates a hash from a struct' do
            value = Struct.new(:a).new(1)
            converted = ParamConverter.c(shape_class, value)
            expect(converted).to eq(a: 1)
          end

        end

        describe 'maps' do

          let(:shape_class) { Model::Shapes::MapShape }

          it 'returns duplicate hashes' do
            value = { a: 1 }
            converted = ParamConverter.c(shape_class, value)
            expect(converted).to eq(value)
            expect(converted).not_to be(value)
          end

          it 'creates a hash from a struct' do
            value = Struct.new(:a).new(1)
            converted = ParamConverter.c(shape_class, value)
            expect(converted).to eq(a: 1)
          end

        end

        describe 'lists' do

          let(:shape_class) { Model::Shapes::ListShape }

          it 'duplicates arrays' do
            value = [1,2,3]
            converted = ParamConverter.c(shape_class, value)
            expect(converted).to eq(value)
            expect(converted).not_to be(value)
          end

          it 'converts enumerables into arrays' do
            value = [1,2,3].enum_for(:each)
            converted = ParamConverter.c(shape_class, value)
            expect(converted).to eq([1,2,3])
          end

        end

        describe 'strings' do

          let(:shape_class) { Model::Shapes::StringShape }

          it 'returns strings unmodified' do
            expect(ParamConverter.c(shape_class, 'abc')).to eq('abc')
          end

          it 'converts symbols to strings' do
            expect(ParamConverter.c(shape_class, :abc)).to eq('abc')
          end

        end

        describe 'integers' do

          let(:shape_class) { Model::Shapes::IntegerShape }

          it 'returns integers unmodified' do
            expect(ParamConverter.c(shape_class, 123)).to eq(123)
          end

          it 'converts floats to integers' do
            expect(ParamConverter.c(shape_class, 12.34)).to eq(12)
          end

          it 'casts strings to integers' do
            expect(ParamConverter.c(shape_class, '123')).to eq(123)
          end

          it 'returns strings unmodified if cast fails' do
            expect(ParamConverter.c(shape_class, 'abc')).to eq('abc')
          end

        end

        describe 'floats' do

          let(:shape_class) { Model::Shapes::FloatShape }

          it 'returns floats unmodified' do
            expect(ParamConverter.c(shape_class, 12.34)).to eq(12.34)
          end

          it 'converts integers to floats' do
            expect(ParamConverter.c(shape_class, 12)).to eq(12.0)
          end

          it 'casts strings to floats' do
            expect(ParamConverter.c(shape_class, '12.34')).to eq(12.34)
          end

          it 'returns strings unmodified if cast fails' do
            expect(ParamConverter.c(shape_class, 'abc')).to eq('abc')
          end

        end

        describe 'timestamps' do

          [
            Model::Shapes::TimestampShape,
            Model::Shapes::Iso8601TimestampShape,
            Model::Shapes::Rfc822TimestampShape,
            Model::Shapes::UnixTimestampShape,
          ].each do |shape_class|

            describe(shape_class.name.split('::').last) do

              it 'returns Time objects unmodfied' do
                time = Time.now
                expect(ParamConverter.c(shape_class, time)).to be(time)
              end

              it 'returns DateTime objects as a Time object' do
                time = DateTime.now
                expect(ParamConverter.c(shape_class, time)).to eq(time.to_time)
              end

              it 'returns Date objects as a Time object' do
                time = Date.new
                expect(ParamConverter.c(shape_class, time)).to eq(time.to_time)
              end

              it 'converts integers to Time objects' do
                time = Time.now.to_i
                expect(ParamConverter.c(shape_class, time)).to eq(Time.at(time))
              end

              it 'parses strings as time objets' do
                t1 = Time.now.utc.iso8601
                t2 = Time.now.rfc822
                t3 = Time.now.to_s
                t4 = '2013-01-02'
                expect(ParamConverter.c(shape_class, t1)).to eq(Time.parse(t1))
                expect(ParamConverter.c(shape_class, t2)).to eq(Time.parse(t2))
                expect(ParamConverter.c(shape_class, t3)).to eq(Time.parse(t3))
                expect(ParamConverter.c(shape_class, t4)).to eq(Time.parse(t4))
              end

              it 'returns strings unmodified if they can not be parsed' do
                expect(ParamConverter.c(shape_class, 'abc')).to eq('abc')
              end

            end

          end

        end

        describe 'booleans' do

          let(:shape_class) { Model::Shapes::BooleanShape }

          it 'returns true and false' do
            expect(ParamConverter.c(shape_class, true)).to be(true)
            expect(ParamConverter.c(shape_class, false)).to be(false)
          end

          it 'does not translate nil' do
            expect(ParamConverter.c(shape_class, nil)).to be(nil)
          end

        end

        describe 'blobs' do

          let(:shape_class) { Model::Shapes::BlobShape }

          it 'accepts io objects (like file)' do
            file = File.open(__FILE__, 'r')
            expect(ParamConverter.c(shape_class, file)).to be(file)
            file.close
          end

          it 'accepts io objects (like stringio)' do
            io = StringIO.new('abc')
            expect(ParamConverter.c(shape_class, io)).to be(io)
          end

          it 'accepts io objects (like tempfiles)' do
            file = Tempfile.new('abc')
            expect(ParamConverter.c(shape_class, file)).to be(file)
            file.close
            file.delete
          end

          it 'accepts and returns strings' do
            expect(ParamConverter.c(shape_class, 'abc')).to eq('abc')
          end

        end

      end

      describe '.add' do

        it 'registers a new converter' do
          shape_class = Class.new
          ParamConverter.add(shape_class, String) { |s| s.to_sym }
          expect(ParamConverter.c(shape_class, 'abc')).to eq(:abc)
        end

        it 'can convert values based on parent value classes' do
          shape_class = Class.new
          special_string = Class.new(String)
          str = special_string.new('raw')
          ParamConverter.add(shape_class, special_string) { |s| 'converted' }
          expect(ParamConverter.c(shape_class, str)).to eq('converted')
        end

        it 'can convert values based on parent shape classes' do
          base = Class.new
          extended = Class.new(base)
          ParamConverter.add(base, String) { |s| 'converted' }
          expect(ParamConverter.c(extended, 'raw')).to eq('converted')
        end

        it 'replaces an existing converter' do
          shape_class = Class.new
          ParamConverter.add(shape_class, String) { |s| 'first' }
          ParamConverter.add(shape_class, String) { |s| 'second' }
          expect(ParamConverter.c(shape_class, 'value')).to eq('second')
        end

      end
    end
  end
end
