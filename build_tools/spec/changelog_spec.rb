# frozen_string_literal: true

require_relative 'spec_helper'

module BuildTools
  describe Changelog do

    let(:path) { Tempfile.create('file').path }
    let(:expected_changelog) { <<-LOG
Unreleased Changes
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

* Issue - Fixed an issue. See related Github issue #0000

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-s3` gem.

LOG
    }

    let(:expected_version) { <<-LOG
Unreleased Changes
------------------

foo.bar.baz (2017-02-08)
------------------

* Feature - API update.

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

* Issue - Fixed an issue. See related Github issue #0000

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-s3` gem.

LOG
    }

    let(:empty_changelog) { <<-LOG
Unreleased Changes
------------------

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-s3` gem.

LOG
    }

    let(:complete_log) { <<-LOG
Unreleased Changes
------------------

1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

* Issue - Fixed an issue. See related Github issue #0000

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-s3` gem.

LOG
    }

    let(:incomplete_log) { <<-LOG
1.0.0.rc2 (2016-12-09)
------------------

* Feature - API update.

* Issue - Fixed an issue. See related Github issue #0000

1.0.0.rc1 (2016-12-05)
------------------

* Feature - Initial preview release of the `aws-sdk-s3` gem.

LOG
    }

    it 'adds entries when unreleased changes section presents' do
      File.open(path, 'w', encoding: 'UTF-8') { |f| f.write(complete_log) }
      changelog = Changelog.new(path: path)
      changelog.add_entry(
        type: :feature,
        text: 'API update.'
      )
      new_changelog = File.open(path, 'r', encoding: 'UTF-8') { |f| f.read }
      expect(new_changelog).to eq(expected_changelog)
    end

    it 'adds entries under new unreleased section when not present' do
      File.open(path, 'w', encoding: 'UTF-8') { |f| f.write(incomplete_log) }
      changelog = Changelog.new(path: path)
      changelog.add_entry(
        type: :feature,
        text: 'API update.'
      )
      new_changelog = File.open(path, 'r', encoding: 'UTF-8') { |f| f.read }
      expect(new_changelog).to eq(expected_changelog)
    end

    it 'grabs unreleased changes correctly' do
      File.open(path, 'w', encoding: 'UTF-8') { |f| f.write(expected_changelog) }
      changelog = Changelog.new(path: path)
      expect(changelog.unreleased_changes.entries).not_to be_empty

      File.open(path, 'w', encoding: 'UTF-8') { |f| f.write(empty_changelog) }
      changelog = Changelog.new(path: path)
      expect(changelog.unreleased_changes.entries).to be_empty
    end

    it 'updates version number correctly' do
      File.open(path, 'w', encoding: 'UTF-8') { |f| f.write(expected_changelog) }

      changelog = Changelog.new(path: path)
      changelog.version_unreleased_changes(
        version: 'foo.bar.baz',
        date: '2017-02-08'
      )
      new_version = File.open(path, 'r', encoding: 'UTF-8') { |f| f.read }
      expect(new_version).to eq(expected_version)
    end

  end
end
