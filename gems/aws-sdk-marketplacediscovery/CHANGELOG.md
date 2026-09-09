Unreleased Changes
------------------

1.7.0 (2026-09-01)
------------------

* Feature - GetOfferTerms now returns renewalTerm for offers with pre-authorized renewals, exposing maxRenewals, lockoutPeriod, adjustmentDeadline, priceIncrease (fixed percentage or percentage range), and termTemplates (renewal payment schedules). Enables buyers to view renewal pricing and terms.

1.6.0 (2026-08-06)
------------------

* Feature - GetOfferTerms now returns netPaymentTerm in offerTerms, specifying payment due period after invoice date. The paymentDuePeriod field uses ISO 8601 duration format (e.g., "P30D" for net 30 days). This is a backward-compatible addition. See API documentation for full structure and examples.

1.5.0 (2026-07-09)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.4.0 (2026-05-22)
------------------

* Feature - Adding new BDD representation of endpoint ruleset

1.3.0 (2026-05-21)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.2.0 (2026-05-19)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.1.0 (2026-05-13)
------------------

* Feature - Code Generated Changes, see `./build_tools` or `aws-sdk-core`'s CHANGELOG.md for details.

1.0.0 (2026-04-08)
------------------

* Feature - Initial release of `aws-sdk-marketplacediscovery`.

