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

task :flog do

  # This affects how many methods we report on.  A THRESHOLD of  0.25 will
  # cause the report to display the most painful methods until 25% of the
  # total score is represented.  Example:
  #
  #   Given a total flog score of 400
  #   And a threshold of 0.25
  #   If the most painful methods each score 20 points
  #   Then 4 methods will be reported (representing 100 points, 25% of 400)
  #
  #Flog::THRESHOLD = (ENV['THRESHOLD'].to_f || 0.40)

  flog = Flog.new(:methods => true, :blame => true)
  flog.flog(['lib'])
  flog.report

  #
  # Understanding individual flog scores
  #
  # Flog essentially scores an ABC metric: assignments, branches, calls, 
  # with particular attention placed on calls.
  #
  # Score of    Roughly Means
  # --------------------------
  # 0-10        Awesome
  # 11-20       Good enough
  # 21-40       Might need refactoring
  # 41-60       Possible to justify
  # 61-100      Danger
  # 100-200     Whoop, whoop, whoop
  # 200+        Someone please think of the children
  #

end
