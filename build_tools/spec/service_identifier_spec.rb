# frozen_string_literal: true

require_relative 'spec_helper'
# Puts the repo's gems on the load path before the code generator requires aws-sdk-core;
# otherwise the installed gem loads too, and specs that run later see its plugins twice.
require_relative '../../gems/aws-sdk-core/spec/shared_spec_helper'

$GEMS_DIR ||= File.expand_path('../../gems', __dir__)
require_relative '../build_tools'

module BuildTools
  # Module and gem names come from the services.json key, never from serviceFullName or
  # serviceAbbreviation, which are documentation identifiers. Released names are never reused.
  describe 'service identifiers' do
    manifest = JSON.load_file(ServiceEnumerator::MANIFEST_PATH)
    deleted = JSON.load_file(File.expand_path('../../deleted_services.json', __dir__)).fetch('services')

    def names(enumerator)
      enumerator.map do |service|
        [service.name, service.identifier, service.module_name, service.gem_name, service.service_id]
      end
    end

    # Docs, examples and smoke tests don't name anything; skipping them keeps the spec fast.
    def enumerator
      ServiceEnumerator.new.tap do |services|
        allow(services).to receive_messages(load_docs: nil, load_examples: nil, load_smoke: nil)
      end
    end

    it 'does not derive names from documentation identifiers' do
      expected = names(enumerator)
      expect(expected.size).to eq(manifest.size)

      sentinel = enumerator
      allow(sentinel).to receive(:load_api).and_wrap_original do |load_api, *args|
        load_api.call(*args).tap do |api|
          %w[serviceFullName serviceAbbreviation].each do |key|
            api['metadata'][key] = 'SENTINEL Amazon AWS Display Name' if api['metadata'].key?(key)
          end
        end
      end

      expect(names(sentinel)).to eq(expected)
    end

    it 'does not give two services the same module or gem name' do
      module_names = manifest.keys.map(&:downcase)
      expect(module_names.tally.select { |_, count| count > 1 }.keys).to be_empty

      gem_names = manifest.reject { |_, config| config['gemName'] }.keys.map { |name| "aws-sdk-#{name.downcase}" }
      expect(gem_names.tally.select { |_, count| count > 1 }.keys).to be_empty
    end

    it 'does not reuse a removed service name' do
      expect(manifest.keys.map(&:downcase) & deleted.map(&:downcase)).to be_empty
    end

    it 'keeps deleted_services.json sorted and free of duplicates' do
      expect(deleted).to eq(deleted.uniq(&:downcase).sort_by(&:downcase))
    end
  end
end
