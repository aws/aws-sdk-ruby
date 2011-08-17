# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'rubygems/package_task'

namespace :gems do

  spec = Gem::Specification.new do |gem|

    gem.name = "aws-sdk"
    gem.version = AWS::VERSION
    gem.summary = "AWS SDK for Ruby"
    gem.description = gem.summary
    gem.license = 'Apache 2.0'
    gem.author = 'Amazon Web Services'
    gem.homepage = 'http://aws.amazon.com/sdkforruby'

    gem.add_dependency('uuidtools', '~> 2.1')
    gem.add_dependency('httparty', '~> 0.7')
    gem.add_dependency('nokogiri', '>= 1.4.4')
    gem.add_dependency('json', '~> 1.4')

    gem.files = FileList[
      "ca-bundle.crt",
      "rails/init.rb",    # for compatability with older versions of rails
      "lib/**/*.rb",
      "lib/**/*.yml",
      "lib/**/.document",
      ".yardopts",
      "README.rdoc",
      "NOTICE.txt",
      "LICENSE.txt",
    ]

  end

  Gem::PackageTask.new(spec) {|pkg|}

end
