# frozen_string_literal: true

require_relative '../../spec_helper'
require 'ostruct'
require 'base64'

module Aws
  module Xml
    describe DocBuilder do

      let(:result) { String.new }

      let(:options) { { target: result, indent: '' } }

      let(:xml) { DocBuilder.new(options) }

      it 'creates empty xml documents' do
        xml.node('Xml')
        expect(result).to eq('<Xml/>')
      end

      it 'nests elements' do
        xml.node('xml') do
          xml.node('element')
        end
        expect(result).to eq('<xml><element/></xml>')
      end

      it 'nests elements deeply' do
        xml.node('xml') do
          xml.node('a') do
            xml.node('b') do
              xml.node('c')
            end
          end
        end
        expect(result).to eq('<xml><a><b><c/></b></a></xml>')
      end

      it 'supports flat elements with nested elements' do
        xml.node('xml') do
          xml.node('a') do
            xml.node('b')
          end
          xml.node('c')
        end
        expect(result).to eq('<xml><a><b/></a><c/></xml>')
      end

      it 'accepts element values' do
        xml.node('xml') do
          xml.node('element', 'value')
        end
        expect(result).to eq('<xml><element>value</element></xml>')
      end

      it 'accepts element attributes' do
        xml.node('xml') do
          xml.node('el', abc: 123, mno: 'xyz')
        end
        expect(result).to eq('<xml><el abc="123" mno="xyz"/></xml>')
      end

      it 'accepts element values and attributes at the same time' do
        xml.node('xml') do
          xml.node('el', 'value', abc: 'xyz')
        end
        expect(result).to eq('<xml><el abc="xyz">value</el></xml>')
      end

      it 'accepts attributes on outer elements' do
        xml.node('xml', xmlns: 'abc') do
          xml.node('out', a: 'b') do
            xml.node('c')
          end
        end
        expect(result).to eq('<xml xmlns="abc"><out a="b"><c/></out></xml>')
      end

      it 'escapes attribute values and element text' do
        xml.node('xml', xmlns: 'a"b') do
          xml.node('this & that')
        end
        expect(result).to eq('<xml xmlns="a&quot;b"><this & that/></xml>')
      end

      it 'escapes carriage return in attributes' do
        xml.node('xml', key: "my\rkey")
        expect(result).to include("my&#xD;key")
      end

      context 'End Of Line Characters' do
        # human readable input is tricky for these - so use a base64 encoded
        # string to ensure we get exactly what should be tested
        it 'encodes line feeds' do
          # "\n \n"
          input = Base64.decode64('CiAK').force_encoding('utf-8')
          xml.node('xml', input)
          expect(result).to include('&#xA; &#xA;')
        end

        it 'encodes line feeds and carriage returns' do
          # "a\r\n b\n c\r"
          input = Base64.decode64('YQ0KIGIKIGMN').force_encoding('utf-8')
          xml.node('xml', input)
          expect(result).to include('a&#xD;&#xA; b&#xA; c&#xD;')
        end

        it 'encodes next lines' do
          # "a\r\u0085 b\u0085"
          input = Base64.decode64('YQ3ChSBiwoU=').force_encoding('utf-8')
          xml.node('xml', input)
          expect(result).to include('a&#xD;&#x85; b&#x85;')
        end

        it 'encodes line separators' do
          # "a\r\u2028 b\u0085 c\u2028"
          input = Base64.decode64('YQ3igKggYsKFIGPigKg=').force_encoding('utf-8')
          xml.node('xml', input)
          expect(result).to include('a&#xD;&#x2028; b&#x85; c&#x2028;')
        end
      end

      it 'accepts :indent and initial :pad options' do
        options[:indent] = '  '
        options[:pad] = '  ' * 5
        xml.node('xml', xmlns: 'http://example.com') do
          xml.node('empty')
          xml.node('attributes', a: 'b', c: 'd')
          xml.node('value', 'content')
          xml.node('both', 'content', m: 'n')
          xml.node('branch') do
            xml.node('leaf')
            xml.node('branch') do
              xml.node('leaf', 'abc')
              xml.node('leaf', 'mno')
            end
            xml.node('branch') do
              xml.node('leaf', 'xyz')
            end
            xml.node('leaf')
          end
        end
        expect(result).to eq(<<-XML)
          <xml xmlns="http://example.com">
            <empty/>
            <attributes a="b" c="d"/>
            <value>content</value>
            <both m="n">content</both>
            <branch>
              <leaf/>
              <branch>
                <leaf>abc</leaf>
                <leaf>mno</leaf>
              </branch>
              <branch>
                <leaf>xyz</leaf>
              </branch>
              <leaf/>
            </branch>
          </xml>
        XML
      end

      it 'can build xml to any object that responds to #<<' do
        options[:indent] = '  '
        options[:pad] = '  ' * 5
        options[:target] = []
        xml.node('xml') do
          xml.node('el', 'value')
        end
        expect(xml.target.join).to eq(<<-XML)
          <xml>
            <el>value</el>
          </xml>
        XML
      end

    end
  end
end
