require 'spec_helper'
require 'ostruct'

module Seahorse
  module Client
    module Xml
      class Builder
        describe XmlDoc do

          let(:result) { '' }

          let(:options) { { target: result, indent: '' } }

          let(:xml) { XmlDoc.new(options) }

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

          #it 'escapes node values'

          #it 'escapes attribute values'

          it 'accepts :indent and initial :pad options' do
            options[:indent] = '  '
            options[:pad] = '  ' * 7
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
            options[:pad] = '  ' * 7
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
  end
end
