# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

# This module provides methods for scanning source files.  Their intent is
# to prevent the accidental publication of AWS account credentials
# (e.g. access key ids and secret access keys).
# @private
module SecretScanner

  CERTIFICATE = /BEGIN (CERTIFICATE|RSA PRIVATE KEY)/

  ACCESS_KEY_ID_REGEX = /[^A-Z0-9][A-Z0-9]{20}[^A-Z0-9]/

  SECRET_ACCESS_KEY_REGEX = /[^A-Za-z0-9\+][A-Za-z0-9\+]{40}[^A-Za-z0-9\+]/

  # patterns that match one of the regexes that are known safe values
  WHITELIST_PATTERNS = [
    /SignalExternalWorkflowExecutionRequested/,
    /workflowExecutionCanceledEventAttributes/,
    /workflowExecutionSignaledEventAttributes/,
    /ChangeMessageVisibilityBatchRequestEntry/,
    /WorkflowExecutionTimedOutEventAttributes/,
    /WorkflowExecutionCanceledEventAttributes/,
    /workflowExecutionTimedOutEventAttributes/,
    /CreateCloudFrontOriginAccessIdentity2012/,
    /DeleteCloudFrontOriginAccessIdentity2012/,
    /ListCloudFrontOriginAccessIdentities2012/,
    /UpdateCloudFrontOriginAccessIdentity2012/,
  ]

  WHITELIST_FILES = [
    'ca-bundle.crt',
    'features/elb/backend_server_policies.feature',
    'features/elb/step_definitions/backend_server_policies.rb',
    'features/iam/signing_certificates.feature',
    'features/iam/signing_certificates.feature',
    'features/iam/step_definitions/server_certificates.rb',
    'features/iam/step_definitions/server_certificates.rb',
    'lib/aws/elb/backend_server_policy_collection.rb',
    'lib/aws/iam/signing_certificate.rb',
    'lib/aws/iam/signing_certificate_collection.rb',
  ]

  def self.scan_dirs(directories, regexes = [CERTIFICATE, ACCESS_KEY_ID_REGEX], whitelists = WHITELIST_FILES)
    matches = []
    [directories].flatten.each do |dir_path|
      matches += scan_files(Dir.glob("#{dir_path}/**/*"))
    end
    matches
  end

  def self.scan_files(file_paths, regexes = [CERTIFICATE, ACCESS_KEY_ID_REGEX], whitelists = WHITELIST_FILES)

    matches = []

    [file_paths].flatten.each do |file_path|

      next if File.directory?(file_path)

      next if whitelists.any?{|path| file_path =~ /#{path}$/ }

      file = File.read(file_path)
      begin
        lines = file.split
      rescue
        next # don't bother scanning files that can't be split (e.g. images)
      end

      regexes.each do |regex|
        unless (matched_lines = lines.grep(regex)).empty?
          matched_lines.each do |line|
            next if WHITELIST_PATTERNS.any?{|pattern| line =~ pattern }
            matches << ("%s : %s" % [file_path, line])
          end
        end
      end

    end

    matches

  end

end
