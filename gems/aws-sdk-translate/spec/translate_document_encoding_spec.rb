# frozen_string_literal: true

require_relative 'spec_helper'

module Aws::Translate
  describe Client do
    let(:client) { Aws::Translate::Client.new(stub_responses: true) }

    let(:text_document) do
      { content_type: 'text/plain', content: 'plain text document' }
    end

    let(:translated_text_document) do
      Base64.encode64('translated text document')
    end

    let(:word_document) do
      {
        content_type: 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
        content: "ZmFrZSB3b3JkIGRvYw==\n"
      }
    end

    let(:translated_word_document) do
      "dHJhbnNsYXRlZCBmYWtlIHdvcmQgZG9j\n"
    end

    describe '#translate_document' do
      it 'preserves the encoding on text documents' do
        client.stub_responses(
          :translate_document,
          {
            translated_document: { content: translated_text_document },
            source_language_code: 'en',
            target_language_code: 'es'
          }
        )
        resp = client.translate_document(
          document: text_document,
          source_language_code: 'en',
          target_language_code: 'es'
        )
        expect(resp.translated_document.content.encoding).to eq(text_document[:content].encoding)
      end

      it 'does not change the encoding on non-text documents' do
        client.stub_responses(
          :translate_document,
          {
            translated_document: { content: translated_word_document },
            source_language_code: 'en',
            target_language_code: 'es'
          }
        )
        resp = client.translate_document(
          document: word_document,
          source_language_code: 'en',
          target_language_code: 'es'
        )
        expect(resp.translated_document.content.encoding).to eq(Encoding.find('binary'))
      end
    end
  end
end
