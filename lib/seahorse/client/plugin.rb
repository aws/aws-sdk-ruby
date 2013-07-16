# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module Seahorse
  class Client

    # Plugin is a simple base class that can be extended by any class
    # wishing to be a {Seahorse::Client} plugin.  A plugin does not need
    # to extend from this class.  This class provides a helpful starting
    # point as well as a location to document the plugin system.
    class Plugin
    end
  end
end
