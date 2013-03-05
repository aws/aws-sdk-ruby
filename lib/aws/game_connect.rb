# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/core'
require 'aws/game_connect/config'

module AWS

  # Provides an interface to Amazon GameConnect
  #
  # == Credentials
  #
  # You can setup default credentials for all AWS services via
  # AWS.config:
  #
  #   AWS.config(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # Or you can set them directly on the GameConnect interface:
  #
  #   ec = AWS::GameConnect.new(
  #     :access_key_id => 'YOUR_ACCESS_KEY_ID',
  #     :secret_access_key => 'YOUR_SECRET_ACCESS_KEY')
  #
  # To use the sandbox of GameConnect set the game_connect_endpoint value in the config
  #
  # AWS.config(
  #   :game_connect_endpoing => 'gameconnect-sandbox.us-east-1.amazonaws.com')
  #
  class GameConnect
    AWS.register_autoloads(self, 'aws/game_connect') do
      autoload :Client,                        'client'
      autoload :Errors,                        'errors'
      autoload :Request,                       'request'
    end

    include Core::ServiceInterface

  end

end