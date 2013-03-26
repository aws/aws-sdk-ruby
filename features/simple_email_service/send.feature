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

# language: en
@ses @send
Feature: Sending email with SES

  I want to be able to send email using Amazon Simple Email Service

  Scenario: Send an email
    When I send email to a verified email address
    Then a request should have been made like:
    | TYPE        | NAME                             | VALUE               |
    | param       | Action                           | SendEmail           |
    | param       | Message.Subject.Data             | A Sample Email      |
    | param       | Message.Body.Text.Data           | sample text         |
    | param_match | Destination.ToAddresses.member.1 | noreply@example.com |
    | param_match | Source                           | noreply@example.com |

  Scenario: Send a raw email
    When I send a raw email like:
    """
    Subject: A Sample Email
    From: noreply@example.com
    To: noreply@example.com
    Content-Type: text/plain; charset="utf-8"
    Content-Transfer-Encoding: base64
    MIME-Version: 1.0

    c2FtcGxlIHRleHQNCg==
    """
    Then a request should have been made like:
    | TYPE        | NAME                 | VALUE               |
    | param       | Action               | SendRawEmail        |

  Scenario: Send a raw email
    When I send a raw email to "foo@bar.com" from "bar@foo.com" like:
    """
    Subject: A Sample Email

    test email message
    """
    Then a request should have been made like:
    | TYPE        | NAME                  | VALUE        |
    | param       | Action                | SendRawEmail |
    | param_match | Source                | bar@foo.com  |
    | param_match | Destinations.member.1 | foo@bar.com  |
