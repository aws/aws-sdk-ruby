# frozen_string_literal: true

require_relative '../../spec_helper'
require 'set'

module Seahorse
  module Model
    module Shapes
      describe ShapeRef do

        it 'defaults #shape to nil' do
          shape = double('shape')
          ref = ShapeRef.new
          expect(ref.shape).to be(nil)
          ref.shape = shape
          expect(ref.shape).to be(shape)
        end

        it 'defaults #location to nil' do
          ref = ShapeRef.new
          expect(ref.location).to be(nil)
          ref.location = 'value'
          expect(ref.location).to eq('value')
        end

        it 'defaults #location_name to nil' do
          ref = ShapeRef.new
          expect(ref.location_name).to be(nil)
          ref.location_name = 'value'
          expect(ref.location_name).to eq('value')
        end

        it 'defaults #deprecated to false' do
          ref = ShapeRef.new
          expect(ref.deprecated).to be(false)
          ref.deprecated = true
          expect(ref.deprecated).to be(true)
        end

        it 'provides metadata access via #[] and #[]=' do
          ref = ShapeRef.new
          ref[:key] = 'value'
          expect(ref[:key]).to eq('value')
          expect(ref['key']).to eq('value')
        end

        it 'provides read access to the shape metadata' do
          shape = Shape.new
          shape['key'] = 'value'
          ref = ShapeRef.new(shape: shape)
          expect(ref[:key]).to eq('value')
          expect(ref['key']).to eq('value')
        end

        it 'can be populated via .new' do
          shape = double('shape')
          ref = ShapeRef.new(
            shape: shape,
            location: 'location',
            location_name: 'location_name',
            deprecated: true,
            metadata: {
              key: 'value'
            }
          )
          expect(ref.shape).to be(shape)
          expect(ref.location).to eq('location')
          expect(ref.location_name).to eq('location_name')
          expect(ref.deprecated).to be(true)
          expect(ref[:key]).to eq('value')
        end

      end

      describe StructureShape do

        let(:shape_ref) {
          ShapeRef.new(shape: Shape.new, location_name: 'LocName')
        }

        it 'is a Shape' do
          expect(StructureShape.new).to be_kind_of(Shape)
        end

        it 'allows members to be added' do
          shape = StructureShape.new
          expect(shape.member_names).to eq([])
          shape_ref.required = true
          shape.add_member(:member_name, shape_ref)
          expect(shape.member?(:member_name)).to be(true)
          expect(shape.member?('member_name')).to be(true)
          expect(shape.member_names).to eq([:member_name])
          expect(shape.member(:member_name)).to be(shape_ref)
          expect(shape.member('member_name')).to be(shape_ref)
        end

        it 'provides a list of required members' do
          shape_ref.required = true
          shape = StructureShape.new
          expect(shape.required).to be_kind_of(Set)
          expect(shape.required).to be_empty
          shape.add_member(:member_name, shape_ref)
          expect(shape.required).to include(:member_name)
        end

        it 'provides access to members by their location name' do
          shape_ref.required = true
          shape = StructureShape.new
          shape.add_member(:member_name, shape_ref)
          expect(shape.member_by_location_name(shape_ref.location_name)).to eq([:member_name, shape_ref])
        end

      end

      describe ListShape do

        let(:shape_ref) {
          ShapeRef.new(shape: Shape.new, location_name: 'LocName')
        }

        it 'is a Shape' do
          expect(ListShape.new).to be_kind_of(Shape)
        end

        it 'defaults #min to nil' do
          shape = ListShape.new
          expect(shape.min).to be(nil)
          shape.min = 10
          expect(shape.min).to eq(10)
        end

        it 'defaults #max to nil' do
          shape = ListShape.new
          expect(shape.max).to be(nil)
          shape.max = 10
          expect(shape.max).to eq(10)
        end

        it 'has a #member reference' do
          shape = ListShape.new
          expect(shape.member).to be(nil)
          shape.member = shape_ref
          expect(shape.member).to be(shape_ref)
        end

      end

      describe MapShape do

        let(:shape_ref) {
          ShapeRef.new(shape: Shape.new, location_name: 'LocName')
        }

        it 'is a Shape' do
          expect(MapShape.new).to be_kind_of(Shape)
        end

        it 'defaults #min to nil' do
          shape = MapShape.new
          expect(shape.min).to be(nil)
          shape.min = 10
          expect(shape.min).to eq(10)
        end

        it 'defaults #max to nil' do
          shape = MapShape.new
          expect(shape.max).to be(nil)
          shape.max = 10
          expect(shape.max).to eq(10)
        end

        it 'has a #key reference' do
          shape = MapShape.new
          expect(shape.key).to be(nil)
          shape.key = shape_ref
          expect(shape.key).to be(shape_ref)
        end

        it 'has a #value reference' do
          shape = MapShape.new
          expect(shape.value).to be(nil)
          shape.value = shape_ref
          expect(shape.value).to be(shape_ref)
        end

      end

      describe BlobShape do

        it 'is a Shape' do
          expect(BlobShape.new).to be_kind_of(Shape)
        end

        it 'defaults #min to nil' do
          shape = BlobShape.new
          expect(shape.min).to be(nil)
          shape.min = 10
          expect(shape.min).to eq(10)
        end

        it 'defaults #max to nil' do
          shape = BlobShape.new
          expect(shape.max).to be(nil)
          shape.max = 10
          expect(shape.max).to eq(10)
        end

      end

      describe BooleanShape do

        it 'is a Shape' do
          expect(BooleanShape.new).to be_kind_of(Shape)
        end

      end

      describe FloatShape do

        it 'is a Shape' do
          expect(FloatShape.new).to be_kind_of(Shape)
        end

      end

      describe IntegerShape do

        it 'is a Shape' do
          expect(IntegerShape.new).to be_kind_of(Shape)
        end

        it 'defaults #min to nil' do
          shape = IntegerShape.new
          expect(shape.min).to be(nil)
          shape.min = 10
          expect(shape.min).to eq(10)
        end

        it 'defaults #max to nil' do
          shape = IntegerShape.new
          expect(shape.max).to be(nil)
          shape.max = 10
          expect(shape.max).to eq(10)
        end

      end

      describe StringShape do

        it 'is a Shape' do
          expect(StringShape.new).to be_kind_of(Shape)
        end

        it 'defaults #enum to nil' do
          shape = StringShape.new
          expect(shape.enum).to be(nil)
          shape.enum = Set.new(%w(a b c))
          expect(shape.enum).to eq(Set.new(%w(a b c)))
        end

        it 'defaults #min to nil' do
          shape = StringShape.new
          expect(shape.min).to be(nil)
          shape.min = 10
          expect(shape.min).to eq(10)
        end

        it 'defaults #max to nil' do
          shape = StringShape.new
          expect(shape.max).to be(nil)
          shape.max = 10
          expect(shape.max).to eq(10)
        end

      end

      describe TimestampShape do

        it 'is a Shape' do
          expect(TimestampShape.new).to be_kind_of(Shape)
        end

      end
    end
  end
end
