# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PartnerCentralSelling
  module Types

    # This error occurs when you don't have permission to perform the
    # requested action.
    #
    # You don’t have access to this action or resource. Review IAM policies
    # or contact your AWS administrator for assistance.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the `Customer`'s account details associated with the
    # `Opportunity`.
    #
    # @!attribute [rw] address
    #   Specifies the end `Customer`'s address details associated with the
    #   `Opportunity`.
    #   @return [Types::Address]
    #
    # @!attribute [rw] aws_account_id
    #   Specifies the `Customer` Amazon Web Services account ID associated
    #   with the `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] company_name
    #   Specifies the end `Customer`'s company name associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] duns
    #   Indicates the `Customer` DUNS number, if available.
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   Specifies the industry the end `Customer` belongs to that's
    #   associated with the `Opportunity`. It refers to the category or
    #   sector where the customer's business operates. This is a required
    #   field.
    #   @return [String]
    #
    # @!attribute [rw] other_industry
    #   Specifies the end `Customer`'s industry associated with the
    #   `Opportunity`, when the selected value in the `Industry` field is
    #   `Other`.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   Specifies the end customer's company website URL associated with
    #   the `Opportunity`. This value is crucial to map the customer within
    #   the Amazon Web Services CRM system. This field is required in all
    #   cases except when the opportunity is related to national security.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Account AWS API Documentation
    #
    class Account < Struct.new(
      :address,
      :aws_account_id,
      :company_name,
      :duns,
      :industry,
      :other_industry,
      :website_url)
      SENSITIVE = [:aws_account_id, :company_name, :duns, :website_url]
      include Aws::Structure
    end

    # Contains the account details of the partner who received the
    # Engagement Invitation, including the AWS account ID and company name.
    #
    # @!attribute [rw] alias
    #   Represents the alias of the partner account receiving the Engagement
    #   Invitation, making it easier to identify and track the recipient in
    #   reports or logs.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   Indicates the AWS account ID of the partner who received the
    #   Engagement Invitation. This is a unique identifier for managing
    #   engagements with specific AWS accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AccountReceiver AWS API Documentation
    #
    class AccountReceiver < Struct.new(
      :alias,
      :aws_account_id)
      SENSITIVE = [:aws_account_id]
      include Aws::Structure
    end

    # An object that contains an `Account`'s subset of fields.
    #
    # @!attribute [rw] address
    #   Specifies the end `Customer`'s address details associated with the
    #   `Opportunity`.
    #   @return [Types::AddressSummary]
    #
    # @!attribute [rw] company_name
    #   Specifies the end `Customer`'s company name associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   Specifies which industry the end `Customer` belongs to associated
    #   with the `Opportunity`. It refers to the category or sector that the
    #   customer's business operates in.
    #
    #   To submit a value outside the picklist, use `Other`.
    #
    #   Conditionally mandatory if `Other` is selected for Industry Vertical
    #   in LOVs.
    #   @return [String]
    #
    # @!attribute [rw] other_industry
    #   Specifies the end `Customer`'s industry associated with the `
    #   Opportunity`, when the selected value in the `Industry` field is
    #   `Other`. This field is relevant when the customer's industry
    #   doesn't fall under the predefined picklist values and requires a
    #   custom description.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   Specifies the end customer's company website URL associated with
    #   the `Opportunity`. This value is crucial to map the customer within
    #   the Amazon Web Services CRM system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AccountSummary AWS API Documentation
    #
    class AccountSummary < Struct.new(
      :address,
      :company_name,
      :industry,
      :other_industry,
      :website_url)
      SENSITIVE = [:company_name, :website_url]
      include Aws::Structure
    end

    # Specifies the end `Customer`'s address details associated with the
    # `Opportunity`.
    #
    # @!attribute [rw] city
    #   Specifies the end `Customer`'s city associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Specifies the end `Customer`'s country associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   Specifies the end `Customer`'s postal code associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] state_or_region
    #   Specifies the end `Customer`'s state or region associated with the
    #   `Opportunity`.
    #
    #   Valid values: `Alabama | Alaska | American Samoa | Arizona |
    #   Arkansas | California | Colorado | Connecticut | Delaware | Dist. of
    #   Columbia | Federated States of Micronesia | Florida | Georgia | Guam
    #   | Hawaii | Idaho | Illinois | Indiana | Iowa | Kansas | Kentucky |
    #   Louisiana | Maine | Marshall Islands | Maryland | Massachusetts |
    #   Michigan | Minnesota | Mississippi | Missouri | Montana | Nebraska |
    #   Nevada | New Hampshire | New Jersey | New Mexico | New York | North
    #   Carolina | North Dakota | Northern Mariana Islands | Ohio | Oklahoma
    #   | Oregon | Palau | Pennsylvania | Puerto Rico | Rhode Island | South
    #   Carolina | South Dakota | Tennessee | Texas | Utah | Vermont |
    #   Virginia | Virgin Islands | Washington | West Virginia | Wisconsin |
    #   Wyoming | APO/AE | AFO/FPO | FPO, AP`
    #   @return [String]
    #
    # @!attribute [rw] street_address
    #   Specifies the end `Customer`'s street address associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Address AWS API Documentation
    #
    class Address < Struct.new(
      :city,
      :country_code,
      :postal_code,
      :state_or_region,
      :street_address)
      SENSITIVE = [:city, :country_code, :postal_code, :state_or_region, :street_address]
      include Aws::Structure
    end

    # An object that contains an `Address` object's subset of fields.
    #
    # @!attribute [rw] city
    #   Specifies the end `Customer`'s city associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Specifies the end `Customer`'s country associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   Specifies the end `Customer`'s postal code associated with the
    #   `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] state_or_region
    #   Specifies the end `Customer`'s state or region associated with the
    #   `Opportunity`.
    #
    #   Valid values: `Alabama | Alaska | American Samoa | Arizona |
    #   Arkansas | California | Colorado | Connecticut | Delaware | Dist. of
    #   Columbia | Federated States of Micronesia | Florida | Georgia | Guam
    #   | Hawaii | Idaho | Illinois | Indiana | Iowa | Kansas | Kentucky |
    #   Louisiana | Maine | Marshall Islands | Maryland | Massachusetts |
    #   Michigan | Minnesota | Mississippi | Missouri | Montana | Nebraska |
    #   Nevada | New Hampshire | New Jersey | New Mexico | New York | North
    #   Carolina | North Dakota | Northern Mariana Islands | Ohio | Oklahoma
    #   | Oregon | Palau | Pennsylvania | Puerto Rico | Rhode Island | South
    #   Carolina | South Dakota | Tennessee | Texas | Utah | Vermont |
    #   Virginia | Virgin Islands | Washington | West Virginia | Wisconsin |
    #   Wyoming | APO/AE | AFO/FPO | FPO, AP`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AddressSummary AWS API Documentation
    #
    class AddressSummary < Struct.new(
      :city,
      :country_code,
      :postal_code,
      :state_or_region)
      SENSITIVE = [:city, :country_code, :postal_code, :state_or_region]
      include Aws::Structure
    end

    # @!attribute [rw] assignee
    #   Specifies the user or team member responsible for managing the
    #   assigned opportunity. This field identifies the *Assignee* based on
    #   the partner's internal team structure. Ensure that the email
    #   address is associated with a registered user in your Partner Central
    #   account.
    #   @return [Types::AssigneeContact]
    #
    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the opportunity is assigned in.
    #   Use `AWS` to assign real opportunities in the Amazon Web Services
    #   catalog, and `Sandbox` for testing in secure, isolated environments.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Requires the `Opportunity`'s unique identifier when you want to
    #   assign it to another user. Provide the correct identifier so the
    #   intended opportunity is reassigned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AssignOpportunityRequest AWS API Documentation
    #
    class AssignOpportunityRequest < Struct.new(
      :assignee,
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the contact details of the individual assigned to manage
    # the opportunity within the partner organization. This helps to ensure
    # that there is a point of contact for the opportunity's progress.
    #
    # @!attribute [rw] business_title
    #   Specifies the business title of the assignee managing the
    #   opportunity. This helps clarify the individual's role and
    #   responsibilities within the organization. Use the value
    #   `PartnerAccountManager` to update details of the opportunity owner.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Provides the email address of the assignee. This email is used for
    #   communications and notifications related to the opportunity.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   Specifies the first name of the assignee managing the opportunity.
    #   The system automatically retrieves this value from the user profile
    #   by referencing the associated email address.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   Specifies the last name of the assignee managing the opportunity.
    #   The system automatically retrieves this value from the user profile
    #   by referencing the associated email address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AssigneeContact AWS API Documentation
    #
    class AssigneeContact < Struct.new(
      :business_title,
      :email,
      :first_name,
      :last_name)
      SENSITIVE = [:business_title, :email, :first_name, :last_name]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the opportunity association is
    #   made in. Use `AWS` to associate opportunities in the Amazon Web
    #   Services catalog, and `Sandbox` for testing in secure, isolated
    #   environments.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_identifier
    #   Requires the `Opportunity`'s unique identifier when you want to
    #   associate it with a related entity. Provide the correct identifier
    #   so the intended opportunity is updated with the association.
    #   @return [String]
    #
    # @!attribute [rw] related_entity_identifier
    #   Requires the related entity's unique identifier when you want to
    #   associate it with the ` Opportunity`. For Amazon Web Services
    #   Marketplace entities, provide the Amazon Resource Name (ARN). Use
    #   the [ Amazon Web Services Marketplace API][1] to obtain the ARN.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html
    #   @return [String]
    #
    # @!attribute [rw] related_entity_type
    #   Specifies the entity type that you're associating with the `
    #   Opportunity`. This helps to categorize and properly process the
    #   association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AssociateOpportunityRequest AWS API Documentation
    #
    class AssociateOpportunityRequest < Struct.new(
      :catalog,
      :opportunity_identifier,
      :related_entity_identifier,
      :related_entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the customer associated with the AWS opportunity. This
    # field captures key details about the customer that are necessary for
    # managing the opportunity.
    #
    # @!attribute [rw] contacts
    #   Provides a list of customer contacts involved in the opportunity.
    #   These contacts may include decision makers, influencers, and other
    #   stakeholders within the customer's organization.
    #   @return [Array<Types::Contact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsOpportunityCustomer AWS API Documentation
    #
    class AwsOpportunityCustomer < Struct.new(
      :contacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains insights provided by AWS for the opportunity, offering
    # recommendations and analysis that can help the partner optimize their
    # engagement and strategy.
    #
    # @!attribute [rw] engagement_score
    #   Represents a score assigned by AWS to indicate the level of
    #   engagement and potential success for the opportunity. This score
    #   helps partners prioritize their efforts.
    #   @return [String]
    #
    # @!attribute [rw] next_best_actions
    #   Provides recommendations from AWS on the next best actions to take
    #   in order to move the opportunity forward and increase the likelihood
    #   of success.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsOpportunityInsights AWS API Documentation
    #
    class AwsOpportunityInsights < Struct.new(
      :engagement_score,
      :next_best_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Tracks the lifecycle of the AWS opportunity, including stages such as
    # qualification, validation, and closure. This field helps partners
    # understand the current status and progression of the opportunity.
    #
    # @!attribute [rw] closed_lost_reason
    #   Indicates the reason why an opportunity was marked as `Closed Lost`.
    #   This helps in understanding the context behind the lost opportunity
    #   and aids in refining future strategies.
    #   @return [String]
    #
    # @!attribute [rw] next_steps
    #   Specifies the immediate next steps required to progress the
    #   opportunity. These steps are based on AWS guidance and the current
    #   stage of the opportunity.
    #   @return [String]
    #
    # @!attribute [rw] next_steps_history
    #   Provides a historical log of previous next steps that were taken to
    #   move the opportunity forward. This helps in tracking the
    #   decision-making process and identifying any delays or obstacles
    #   encountered.
    #   @return [Array<Types::ProfileNextStepsHistory>]
    #
    # @!attribute [rw] stage
    #   Represents the current stage of the opportunity in its lifecycle,
    #   such as `Qualification`, `Validation`, or `Closed Won`. This helps
    #   in understanding the opportunity's progress.
    #   @return [String]
    #
    # @!attribute [rw] target_close_date
    #   Indicates the expected date by which the opportunity is projected to
    #   close. This field helps in planning resources and timelines for both
    #   the partner and AWS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsOpportunityLifeCycle AWS API Documentation
    #
    class AwsOpportunityLifeCycle < Struct.new(
      :closed_lost_reason,
      :next_steps,
      :next_steps_history,
      :stage,
      :target_close_date)
      SENSITIVE = [:next_steps]
      include Aws::Structure
    end

    # Captures details about the project associated with the opportunity,
    # including objectives, scope, and customer requirements.
    #
    # @!attribute [rw] expected_customer_spend
    #   Indicates the expected spending by the customer over the course of
    #   the project. This value helps partners and AWS estimate the
    #   financial impact of the opportunity. Use the [AWS Pricing
    #   Calculator][1] to create an estimate of the customer’s total spend.
    #   If only annual recurring revenue (ARR) is available, distribute it
    #   across 12 months to provide an average monthly value.
    #
    #
    #
    #   [1]: https://calculator.aws/#/
    #   @return [Array<Types::ExpectedCustomerSpend>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsOpportunityProject AWS API Documentation
    #
    class AwsOpportunityProject < Struct.new(
      :expected_customer_spend)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents other entities related to the AWS opportunity, such as AWS
    # products, partner solutions, and marketplace offers. These
    # associations help build a complete picture of the solution being sold.
    #
    # @!attribute [rw] aws_products
    #   Specifies the AWS products associated with the opportunity. This
    #   field helps track the specific products that are part of the
    #   proposed solution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] solutions
    #   Specifies the partner solutions related to the opportunity. These
    #   solutions represent the partner's offerings that are being
    #   positioned as part of the overall AWS opportunity.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsOpportunityRelatedEntities AWS API Documentation
    #
    class AwsOpportunityRelatedEntities < Struct.new(
      :aws_products,
      :solutions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the level of AWS involvement in the opportunity. This field
    # helps track AWS participation throughout the engagement, such as
    # providing technical support, deal assistance, and sales support.
    #
    # @!attribute [rw] involvement_type
    #   Specifies the type of AWS involvement in the opportunity, such as
    #   coselling, deal support, or technical consultation. This helps
    #   categorize the nature of AWS participation.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   Determines who can view AWS involvement in the opportunity.
    #   Typically, this field is set to `Full` for most cases, but it may be
    #   restricted based on special program requirements or confidentiality
    #   needs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsSubmission AWS API Documentation
    #
    class AwsSubmission < Struct.new(
      :involvement_type,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an Amazon Web Services team member for the engagement. This
    # structure includes details such as name, email, and business title.
    #
    # @!attribute [rw] business_title
    #   Specifies the Amazon Web Services team member's business title and
    #   indicates their organizational role.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   Provides the Amazon Web Services team member's email address.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   Provides the Amazon Web Services team member's first name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   Provides the Amazon Web Services team member's last name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/AwsTeamMember AWS API Documentation
    #
    class AwsTeamMember < Struct.new(
      :business_title,
      :email,
      :first_name,
      :last_name)
      SENSITIVE = [:email, :first_name, :last_name]
      include Aws::Structure
    end

    # This error occurs when the request can’t be processed due to a
    # conflict with the target resource's current state, which could result
    # from updating or deleting the resource.
    #
    # Suggested action: Fetch the latest state of the resource, verify the
    # state, and retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains a `Customer Partner`'s contact details.
    #
    # @!attribute [rw] business_title
    #   The partner contact's title (job title or role) associated with the
    #   `Opportunity`. `BusinessTitle` supports either
    #   `PartnerAccountManager` or `OpportunityOwner`.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The contact's email address associated with the `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The contact's first name associated with the `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The contact's last name associated with the `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   The contact's phone number associated with the `Opportunity`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :business_title,
      :email,
      :first_name,
      :last_name,
      :phone)
      SENSITIVE = [:business_title, :email, :first_name, :last_name, :phone]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the opportunity is created in.
    #   Use `AWS` to create opportunities in the Amazon Web Services
    #   catalog, and `Sandbox` for testing in secure, isolated environments.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Required to be unique, and should be unchanging, it can be randomly
    #   generated or a meaningful string.
    #
    #   Default: None
    #
    #   Best practice: To help ensure uniqueness and avoid conflicts, use a
    #   Universally Unique Identifier (UUID) as the `ClientToken`. You can
    #   use standard libraries from most programming languages to generate
    #   this. If you use the same client token, the API returns the
    #   following error: "Conflicting client token submitted for a new
    #   request body."
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] customer
    #   Specifies customer details associated with the `Opportunity`.
    #   @return [Types::Customer]
    #
    # @!attribute [rw] life_cycle
    #   An object that contains lifecycle details for the `Opportunity`.
    #   @return [Types::LifeCycle]
    #
    # @!attribute [rw] marketing
    #   This object contains marketing details and is optional for an
    #   opportunity.
    #   @return [Types::Marketing]
    #
    # @!attribute [rw] national_security
    #   Indicates whether the `Opportunity` pertains to a national security
    #   project. This field must be set to `true` only when the customer's
    #   industry is *Government*. Additional privacy and security measures
    #   apply during the review and management process for opportunities
    #   marked as `NationalSecurity`.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_team
    #   Represents the internal team handling the opportunity. Specify
    #   collaborating members of this opportunity who are within the
    #   partner's organization.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] opportunity_type
    #   Specifies the opportunity type as a renewal, new, or expansion.
    #
    #   Opportunity types:
    #
    #   * New opportunity: Represents a new business opportunity with a
    #     potential customer that's not previously engaged with your
    #     solutions or services.
    #
    #   * Renewal opportunity: Represents an opportunity to renew an
    #     existing contract or subscription with a current customer,
    #     ensuring continuity of service.
    #
    #   * Expansion opportunity: Represents an opportunity to expand the
    #     scope of an existing contract or subscription, either by adding
    #     new services or increasing the volume of existing services for a
    #     current customer.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Specifies the origin of the opportunity, indicating if it was
    #   sourced from Amazon Web Services or the partner. For all
    #   opportunities created with `Catalog: AWS`, this field must only be
    #   `Partner Referral`. However, when using `Catalog: Sandbox`, you can
    #   set this field to `AWS Referral` to simulate Amazon Web Services
    #   referral creation. This allows Amazon Web Services-originated flows
    #   testing in the sandbox catalog.
    #   @return [String]
    #
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload to the partner.
    #
    #   This field allows partners to link an opportunity to their CRM,
    #   which helps to ensure seamless integration and accurate
    #   synchronization between the Partner Central API and the partner's
    #   internal systems.
    #   @return [String]
    #
    # @!attribute [rw] primary_needs_from_aws
    #   Identifies the type of support the partner needs from Amazon Web
    #   Services.
    #
    #   Valid values:
    #
    #   * Cosell—Architectural Validation: Confirmation from Amazon Web
    #     Services that the partner's proposed solution architecture is
    #     aligned with Amazon Web Services best practices and poses minimal
    #     architectural risks.
    #
    #   * Cosell—Business Presentation: Request Amazon Web Services
    #     seller's participation in a joint customer presentation.
    #
    #   * Cosell—Competitive Information: Access to Amazon Web Services
    #     competitive resources and support for the partner's proposed
    #     solution.
    #
    #   * Cosell—Pricing Assistance: Connect with an Amazon Web Services
    #     seller for support situations where a partner may be receiving an
    #     upfront discount on a service (for example: EDP deals).
    #
    #   * Cosell—Technical Consultation: Connect with an Amazon Web Services
    #     Solutions Architect to address the partner's questions about the
    #     proposed solution.
    #
    #   * Cosell—Total Cost of Ownership Evaluation: Assistance with quoting
    #     different cost savings of proposed solutions on Amazon Web
    #     Services versus on-premises or a traditional hosting environment.
    #
    #   * Cosell—Deal Support: Request Amazon Web Services seller's support
    #     to progress the opportunity (for example: joint customer call,
    #     strategic positioning).
    #
    #   * Cosell—Support for Public Tender/RFx: Opportunity related to the
    #     public sector where the partner needs Amazon Web Services RFx
    #     support.
    #
    #   * Do Not Need Support from AWS Sales Rep: Indicates that a partner
    #     doesn't need support from an Amazon Web Services sales
    #     representative, and the partner solely manages the opportunity.
    #     It's possible to request coselling support on these opportunities
    #     at any stage during their lifecycles. This is also known as a
    #     for-visibility-only (FVO) opportunity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] project
    #   An object that contains project details for the `Opportunity`.
    #   @return [Types::Project]
    #
    # @!attribute [rw] software_revenue
    #   Specifies details of a customer's procurement terms. This is
    #   required only for partners in eligible programs.
    #   @return [Types::SoftwareRevenue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateOpportunityRequest AWS API Documentation
    #
    class CreateOpportunityRequest < Struct.new(
      :catalog,
      :client_token,
      :customer,
      :life_cycle,
      :marketing,
      :national_security,
      :opportunity_team,
      :opportunity_type,
      :origin,
      :partner_opportunity_identifier,
      :primary_needs_from_aws,
      :project,
      :software_revenue)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Read-only, system-generated `Opportunity` unique identifier. Amazon
    #   Web Services creates this identifier, and it's used for all
    #   subsequent opportunity actions, such as updates, associations, and
    #   submissions. It helps to ensure that each opportunity is accurately
    #   tracked and managed.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the opportunity was last modified. When the
    #   `Opportunity` is created, its value is `CreatedDate`.
    #   @return [Time]
    #
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload sent back to the partner.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CreateOpportunityResponse AWS API Documentation
    #
    class CreateOpportunityResponse < Struct.new(
      :id,
      :last_modified_date,
      :partner_opportunity_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the customer's `Account` and `Contact`.
    #
    # @!attribute [rw] account
    #   An object that contains the customer's account details.
    #   @return [Types::Account]
    #
    # @!attribute [rw] contacts
    #   Represents the contact details for individuals associated with the
    #   customer of the `Opportunity`. This field captures relevant
    #   contacts, including decision-makers, influencers, and technical
    #   stakeholders within the customer organization. These contacts are
    #   key to progressing the opportunity.
    #   @return [Array<Types::Contact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Customer AWS API Documentation
    #
    class Customer < Struct.new(
      :account,
      :contacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains a `Customer` object's subset of fields.
    #
    # @!attribute [rw] account
    #   An object that contains a customer's account details.
    #   @return [Types::AccountSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/CustomerSummary AWS API Documentation
    #
    class CustomerSummary < Struct.new(
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the opportunity disassociation
    #   is made in. Use `AWS` to disassociate opportunities in the Amazon
    #   Web Services catalog, and `Sandbox` for testing in secure, isolated
    #   environments.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_identifier
    #   The opportunity's unique identifier for when you want to
    #   disassociate it from related entities. This identifier helps to
    #   ensure that the correct opportunity is updated.
    #
    #   Validation: Ensure that the provided identifier corresponds to an
    #   existing opportunity in the Amazon Web Services system because
    #   incorrect identifiers result in an error and no changes are made.
    #   @return [String]
    #
    # @!attribute [rw] related_entity_identifier
    #   The related entity's identifier that you want to disassociate from
    #   the opportunity. Depending on the type of entity, this could be a
    #   simple identifier or an Amazon Resource Name (ARN) for entities
    #   managed through Amazon Web Services Marketplace.
    #
    #   For Amazon Web Services Marketplace entities, use the Amazon Web
    #   Services Marketplace API to obtain the necessary ARNs. For guidance
    #   on retrieving these ARNs, see [ Amazon Web Services MarketplaceUsing
    #   the Amazon Web Services Marketplace Catalog API][1].
    #
    #   Validation: Ensure the identifier or ARN is valid and corresponds to
    #   an existing entity. An incorrect or invalid identifier results in an
    #   error.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/welcome.html
    #   @return [String]
    #
    # @!attribute [rw] related_entity_type
    #   The type of the entity that you're disassociating from the
    #   opportunity. When you specify the entity type, it helps the system
    #   correctly process the disassociation request to ensure that the
    #   right connections are removed.
    #
    #   Examples of entity types include Partner Solution, Amazon Web
    #   Services product, and Amazon Web Services Marketplaceoffer. Ensure
    #   that the value matches one of the expected entity types.
    #
    #   Validation: Provide a valid entity type to help ensure successful
    #   disassociation. An invalid or incorrect entity type results in an
    #   error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/DisassociateOpportunityRequest AWS API Documentation
    #
    class DisassociateOpportunityRequest < Struct.new(
      :catalog,
      :opportunity_identifier,
      :related_entity_identifier,
      :related_entity_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about the customer associated with the Engagement
    # Invitation, including company information and industry.
    #
    # @!attribute [rw] company_name
    #   Represents the name of the customer’s company associated with the
    #   Engagement Invitation. This field is used to identify the customer.
    #   @return [String]
    #
    # @!attribute [rw] country_code
    #   Indicates the country in which the customer’s company operates. This
    #   field is useful for understanding regional requirements or
    #   compliance needs.
    #   @return [String]
    #
    # @!attribute [rw] industry
    #   Specifies the industry to which the customer’s company belongs. This
    #   field helps categorize the opportunity based on the customer’s
    #   business sector.
    #   @return [String]
    #
    # @!attribute [rw] website_url
    #   Provides the website URL of the customer’s company. This field helps
    #   partners verify the legitimacy and size of the customer
    #   organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementCustomer AWS API Documentation
    #
    class EngagementCustomer < Struct.new(
      :company_name,
      :country_code,
      :industry,
      :website_url)
      SENSITIVE = [:country_code, :website_url]
      include Aws::Structure
    end

    # Provides a summarized view of the Engagement Invitation, including
    # details like the identifier, status, and sender. This summary helps
    # partners track and manage AWS originated opportunities.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Engagement Invitation. The ARN
    #   is a unique identifier that allows partners to reference the
    #   invitation in their system and manage its lifecycle.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   Specifies the catalog in which the Engagement Invitation resides.
    #   This can be either the `AWS` or `Sandbox` catalog, indicating
    #   whether the opportunity is live or being tested.
    #   @return [String]
    #
    # @!attribute [rw] engagement_title
    #   Provides a short title or description of the Engagement Invitation.
    #   This title helps partners quickly identify and differentiate between
    #   multiple engagement opportunities.
    #   @return [String]
    #
    # @!attribute [rw] expiration_date
    #   Indicates the date and time when the Engagement Invitation will
    #   expire. After this date, the invitation can no longer be accepted,
    #   and the opportunity will be unavailable to the partner.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   Represents the unique identifier of the Engagement Invitation. This
    #   identifier is used to track the invitation and to manage responses
    #   like acceptance or rejection.
    #   @return [String]
    #
    # @!attribute [rw] invitation_date
    #   Indicates the date when the Engagement Invitation was sent to the
    #   partner. This provides context for when the opportunity was shared
    #   and helps in tracking the timeline for engagement.
    #   @return [Time]
    #
    # @!attribute [rw] payload_type
    #   Describes the type of payload associated with the Engagement
    #   Invitation, such as `Opportunity` or `MarketplaceOffer`. This helps
    #   partners understand the nature of the engagement request from AWS.
    #   @return [String]
    #
    # @!attribute [rw] receiver
    #   Specifies the partner company or individual that received the
    #   Engagement Invitation. This field is important for tracking who the
    #   invitation was sent to within the partner organization.
    #   @return [Types::Receiver]
    #
    # @!attribute [rw] sender_aws_account_id
    #   Specifies the AWS account ID of the sender who initiated the
    #   Engagement Invitation. This allows the partner to identify the AWS
    #   entity or representative responsible for sharing the opportunity.
    #   @return [String]
    #
    # @!attribute [rw] sender_company_name
    #   Indicates the name of the company or AWS division that sent the
    #   Engagement Invitation. This information is useful for partners to
    #   know which part of AWS is requesting engagement.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Represents the current status of the Engagement Invitation, such as
    #   `Pending`, `Accepted`, or `Rejected`. The status helps track the
    #   progress and response to the invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/EngagementInvitationSummary AWS API Documentation
    #
    class EngagementInvitationSummary < Struct.new(
      :arn,
      :catalog,
      :engagement_title,
      :expiration_date,
      :id,
      :invitation_date,
      :payload_type,
      :receiver,
      :sender_aws_account_id,
      :sender_company_name,
      :status)
      SENSITIVE = [:sender_aws_account_id]
      include Aws::Structure
    end

    # Provides an estimate of the revenue that the partner is expected to
    # generate from the opportunity. This information helps partners assess
    # the financial value of the project.
    #
    # @!attribute [rw] amount
    #   Represents the estimated monthly revenue that the partner expects to
    #   earn from the opportunity. This helps in forecasting financial
    #   returns.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Indicates the currency in which the revenue estimate is provided.
    #   This helps in understanding the financial impact across different
    #   markets.
    #   @return [String]
    #
    # @!attribute [rw] frequency
    #   Indicates how frequently the customer is expected to spend the
    #   projected amount. This can include values such as `Monthly`,
    #   `Quarterly`, or `Annually`. The default value is `Monthly`,
    #   representing recurring monthly spend.
    #   @return [String]
    #
    # @!attribute [rw] target_company
    #   Specifies the name of the partner company that is expected to
    #   generate revenue from the opportunity. This field helps track the
    #   partner’s involvement in the opportunity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ExpectedCustomerSpend AWS API Documentation
    #
    class ExpectedCustomerSpend < Struct.new(
      :amount,
      :currency_code,
      :frequency,
      :target_company)
      SENSITIVE = [:currency_code]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog in which the AWS Opportunity is located.
    #   Accepted values include `AWS` for production opportunities or
    #   `Sandbox` for testing purposes. The catalog determines which
    #   environment the opportunity data is pulled from.
    #   @return [String]
    #
    # @!attribute [rw] related_opportunity_identifier
    #   The unique identifier for the related partner opportunity. Use this
    #   field to correlate an AWS opportunity with its corresponding partner
    #   opportunity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetAwsOpportunitySummaryRequest AWS API Documentation
    #
    class GetAwsOpportunitySummaryRequest < Struct.new(
      :catalog,
      :related_opportunity_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog in which the AWS Opportunity exists. This is
    #   the environment (e.g., `AWS` or `Sandbox`) where the opportunity is
    #   being managed.
    #   @return [String]
    #
    # @!attribute [rw] customer
    #   Provides details about the customer associated with the AWS
    #   Opportunity, including account information, industry, and other
    #   customer data. These details help partners understand the business
    #   context of the opportunity.
    #   @return [Types::AwsOpportunityCustomer]
    #
    # @!attribute [rw] insights
    #   Provides insights into the AWS Opportunity, including engagement
    #   score and recommended actions that AWS suggests for the partner.
    #   @return [Types::AwsOpportunityInsights]
    #
    # @!attribute [rw] involvement_type
    #   Specifies the type of involvement AWS has in the opportunity, such
    #   as direct cosell or advisory support. This field helps partners
    #   understand the role AWS plays in advancing the opportunity.
    #   @return [String]
    #
    # @!attribute [rw] involvement_type_change_reason
    #   Provides a reason for any changes in the involvement type of AWS in
    #   the opportunity. This field is used to track why the level of AWS
    #   engagement has changed from `For Visibility Only` to `Co-sell`
    #   offering transparency into the partnership dynamics.
    #   @return [String]
    #
    # @!attribute [rw] life_cycle
    #   Contains lifecycle information for the AWS Opportunity, including
    #   review status, stage, and target close date. This field is crucial
    #   for partners to monitor the progression of the opportunity.
    #   @return [Types::AwsOpportunityLifeCycle]
    #
    # @!attribute [rw] opportunity_team
    #   Details the AWS opportunity team, including members involved. This
    #   information helps partners know who from AWS is engaged and what
    #   their role is.
    #   @return [Array<Types::AwsTeamMember>]
    #
    # @!attribute [rw] origin
    #   Specifies whether the AWS Opportunity originated from AWS or the
    #   partner. This helps distinguish between opportunities that were
    #   sourced by AWS and those referred by the partner.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   Provides details about the project associated with the AWS
    #   Opportunity, including the customer’s business problem, expected
    #   outcomes, and project scope. This information is crucial for
    #   understanding the broader context of the opportunity.
    #   @return [Types::AwsOpportunityProject]
    #
    # @!attribute [rw] related_entity_ids
    #   Lists related entity identifiers, such as AWS products or partner
    #   solutions, associated with the AWS Opportunity. These identifiers
    #   provide additional context and help partners understand which AWS
    #   services are involved.
    #   @return [Types::AwsOpportunityRelatedEntities]
    #
    # @!attribute [rw] related_opportunity_id
    #   Provides the unique identifier of the related partner opportunity,
    #   allowing partners to link the AWS Opportunity to their corresponding
    #   opportunity in their CRM system.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   Defines the visibility level for the AWS Opportunity. Use `Full`
    #   visibility for most cases, while `Limited` visibility is reserved
    #   for special programs or sensitive opportunities.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetAwsOpportunitySummaryResponse AWS API Documentation
    #
    class GetAwsOpportunitySummaryResponse < Struct.new(
      :catalog,
      :customer,
      :insights,
      :involvement_type,
      :involvement_type_change_reason,
      :life_cycle,
      :opportunity_team,
      :origin,
      :project,
      :related_entity_ids,
      :related_opportunity_id,
      :visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. The field accepts
    #   values from the predefined set: `AWS` for live operations or
    #   `Sandbox` for testing environments.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Specifies the unique identifier for the retrieved engagement
    #   invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetEngagementInvitationRequest AWS API Documentation
    #
    class GetEngagementInvitationRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that identifies the engagement
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] catalog
    #   Indicates the catalog from which the engagement invitation details
    #   are retrieved. This field helps in identifying the appropriate
    #   catalog (e.g., `AWS` or `Sandbox`) used in the request.
    #   @return [String]
    #
    # @!attribute [rw] engagement_title
    #   The title of the engagement invitation, summarizing the purpose or
    #   objectives of the opportunity shared by AWS.
    #   @return [String]
    #
    # @!attribute [rw] expiration_date
    #   Indicates the date on which the engagement invitation will expire if
    #   not accepted by the partner.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   Unique identifier assigned to the engagement invitation being
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] invitation_date
    #   The date when the engagement invitation was sent to the partner.
    #   @return [Time]
    #
    # @!attribute [rw] payload
    #   Details of the engagement invitation payload, including specific
    #   data relevant to the invitation's contents, such as customer
    #   information and opportunity insights.
    #   @return [Types::Payload]
    #
    # @!attribute [rw] payload_type
    #   The type of payload contained in the engagement invitation,
    #   indicating what data or context the payload covers.
    #   @return [String]
    #
    # @!attribute [rw] receiver
    #   Information about the partner organization or team that received the
    #   engagement invitation, including contact details and identifiers.
    #   @return [Types::Receiver]
    #
    # @!attribute [rw] rejection_reason
    #   If the engagement invitation was rejected, this field specifies the
    #   reason provided by the partner for the rejection.
    #   @return [String]
    #
    # @!attribute [rw] sender_aws_account_id
    #   Specifies the AWS Account ID of the sender, which identifies the AWS
    #   team responsible for sharing the engagement invitation.
    #   @return [String]
    #
    # @!attribute [rw] sender_company_name
    #   The name of the AWS organization or team that sent the engagement
    #   invitation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the engagement invitation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetEngagementInvitationResponse AWS API Documentation
    #
    class GetEngagementInvitationResponse < Struct.new(
      :arn,
      :catalog,
      :engagement_title,
      :expiration_date,
      :id,
      :invitation_date,
      :payload,
      :payload_type,
      :receiver,
      :rejection_reason,
      :sender_aws_account_id,
      :sender_company_name,
      :status)
      SENSITIVE = [:sender_aws_account_id]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the opportunity is fetched
    #   from. Use `AWS` to retrieve opportunities in the Amazon Web Services
    #   catalog, and `Sandbox` to retrieve opportunities in a secure,
    #   isolated testing environment.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Read-only, system generated `Opportunity` unique identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetOpportunityRequest AWS API Documentation
    #
    class GetOpportunityRequest < Struct.new(
      :catalog,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the opportunity information is
    #   retrieved from. Use `AWS` to retrieve opportunities in the Amazon
    #   Web Services catalog, and `Sandbox` to retrieve opportunities in a
    #   secure and isolated testing environment.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   `DateTime` when the `Opportunity` was last created.
    #   @return [Time]
    #
    # @!attribute [rw] customer
    #   Specifies details of the customer associated with the `Opportunity`.
    #   @return [Types::Customer]
    #
    # @!attribute [rw] id
    #   Read-only, system generated `Opportunity` unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the opportunity was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] life_cycle
    #   An object that contains lifecycle details for the `Opportunity`.
    #   @return [Types::LifeCycle]
    #
    # @!attribute [rw] marketing
    #   An object that contains marketing details for the `Opportunity`.
    #   @return [Types::Marketing]
    #
    # @!attribute [rw] national_security
    #   Indicates whether the `Opportunity` pertains to a national security
    #   project. This field must be set to `true` only when the customer's
    #   industry is *Government*. Additional privacy and security measures
    #   apply during the review and management process for opportunities
    #   marked as `NationalSecurity`.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_team
    #   Represents the internal team handling the opportunity. Specify the
    #   members involved in collaborating on this opportunity within the
    #   partner's organization.
    #   @return [Array<Types::Contact>]
    #
    # @!attribute [rw] opportunity_type
    #   Specifies the opportunity type as renewal, new, or expansion.
    #
    #   Opportunity types:
    #
    #   * New opportunity: Represents a new business opportunity with a
    #     potential customer that's not previously engaged with your
    #     solutions or services.
    #
    #   * Renewal opportunity: Represents an opportunity to renew an
    #     existing contract or subscription with a current customer, which
    #     helps to ensure service continuity.
    #
    #   * Expansion opportunity: Represents an opportunity to expand the
    #     scope of a customer's contract or subscription, either by adding
    #     new services or increasing the volume of existing services.
    #   @return [String]
    #
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload sent back to the partner.
    #   @return [String]
    #
    # @!attribute [rw] primary_needs_from_aws
    #   Identifies the type of support the partner needs from Amazon Web
    #   Services.
    #
    #   Valid values:
    #
    #   * Cosell—Architectural Validation: Confirmation from Amazon Web
    #     Services that the partner's proposed solution architecture is
    #     aligned with Amazon Web Services best practices and poses minimal
    #     architectural risks.
    #
    #   * Cosell—Business Presentation: Request Amazon Web Services
    #     seller's participation in a joint customer presentation.
    #
    #   * Cosell—Competitive Information: Access to Amazon Web Services
    #     competitive resources and support for the partner's proposed
    #     solution.
    #
    #   * Cosell—Pricing Assistance: Connect with an Amazon Web Services
    #     seller for support situations where a partner may be receiving an
    #     upfront discount on a service (for example: EDP deals).
    #
    #   * Cosell—Technical Consultation: Connect with an Amazon Web Services
    #     Solutions Architect to address the partner's questions about the
    #     proposed solution.
    #
    #   * Cosell—Total Cost of Ownership Evaluation: Assistance with quoting
    #     different cost savings of proposed solutions on Amazon Web
    #     Services versus on-premises or a traditional hosting environment.
    #
    #   * Cosell—Deal Support: Request Amazon Web Services seller's support
    #     to progress the opportunity (for example: joint customer call,
    #     strategic positioning).
    #
    #   * Cosell—Support for Public Tender/RFx: Opportunity related to the
    #     public sector where the partner needs Amazon Web Services RFx
    #     support.
    #
    #   * Do Not Need Support from Amazon Web Services Sales Rep: Indicates
    #     that a partner doesn't need support from an Amazon Web Services
    #     sales representative, and the partner solely manages the
    #     opportunity. It's possible to request coselling support on these
    #     opportunities at any stage during their lifecycle. Also known as,
    #     for-visibility-only (FVO) opportunity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] project
    #   An object that contains project details summary for the
    #   `Opportunity`.
    #   @return [Types::Project]
    #
    # @!attribute [rw] related_entity_identifiers
    #   Provides information about the associations of other entities with
    #   the opportunity. These entities include identifiers for
    #   `AWSProducts`, `Partner Solutions`, and `AWSMarketplaceOffers`.
    #   @return [Types::RelatedEntityIdentifiers]
    #
    # @!attribute [rw] software_revenue
    #   Specifies details of a customer's procurement terms. Required only
    #   for partners in eligible programs.
    #   @return [Types::SoftwareRevenue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/GetOpportunityResponse AWS API Documentation
    #
    class GetOpportunityResponse < Struct.new(
      :catalog,
      :created_date,
      :customer,
      :id,
      :last_modified_date,
      :life_cycle,
      :marketing,
      :national_security,
      :opportunity_team,
      :opportunity_type,
      :partner_opportunity_identifier,
      :primary_needs_from_aws,
      :project,
      :related_entity_identifiers,
      :software_revenue)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error occurs when the specified resource can’t be found or
    # doesn't exist. Resource ID and type might be incorrect.
    #
    # Suggested action: This is usually a transient error. Retry after the
    # provided retry delay or a short interval. If the problem persists,
    # contact AWS support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a filter to retrieve opportunities based on the last modified
    # date. This filter is useful for tracking changes or updates to
    # opportunities over time.
    #
    # @!attribute [rw] after_last_modified_date
    #   Specifies the date after which the opportunities were modified. Use
    #   this filter to retrieve only those opportunities that were modified
    #   after a given timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] before_last_modified_date
    #   Specifies the date before which the opportunities were modified. Use
    #   this filter to retrieve only those opportunities that were modified
    #   before a given timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/LastModifiedDate AWS API Documentation
    #
    class LastModifiedDate < Struct.new(
      :after_last_modified_date,
      :before_last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the `Opportunity` lifecycle's details.
    #
    # @!attribute [rw] closed_lost_reason
    #   Specifies the reason code when an opportunity is marked as *Closed
    #   Lost*. When you select an appropriate reason code, you communicate
    #   the context for closing the `Opportunity`, and aid in accurate
    #   reports and analysis of opportunity outcomes. The possible values
    #   are:
    #
    #   * Customer Deficiency: The customer lacked necessary resources or
    #     capabilities.
    #
    #   * Delay/Cancellation of Project: The project was delayed or
    #     canceled.
    #
    #   * Legal/Tax/Regulatory: Legal, tax, or regulatory issues prevented
    #     progress.
    #
    #   * Lost to Competitor—Google: The opportunity was lost to Google.
    #
    #   * Lost to Competitor—Microsoft: The opportunity was lost to
    #     Microsoft.
    #
    #   * Lost to Competitor—SoftLayer: The opportunity was lost to
    #     SoftLayer.
    #
    #   * Lost to Competitor—VMWare: The opportunity was lost to VMWare.
    #
    #   * Lost to Competitor—Other: The opportunity was lost to a competitor
    #     not listed above.
    #
    #   * No Opportunity: There was no opportunity to pursue.
    #
    #   * On Premises Deployment: The customer chose an on-premises
    #     solution.
    #
    #   * Partner Gap: The partner lacked necessary resources or
    #     capabilities.
    #
    #   * Price: The price was not competitive or acceptable to the
    #     customer.
    #
    #   * Security/Compliance: Security or compliance issues prevented
    #     progress.
    #
    #   * Technical Limitations: Technical limitations prevented progress.
    #
    #   * Customer Experience: Issues related to the customer's experience
    #     impacted the decision.
    #
    #   * Other: Any reason not covered by the other values.
    #
    #   * People/Relationship/Governance: Issues related to people,
    #     relationships, or governance.
    #
    #   * Product/Technology: Issues related to the product or technology.
    #
    #   * Financial/Commercial: Financial or commercial issues impacted the
    #     decision.
    #   @return [String]
    #
    # @!attribute [rw] next_steps
    #   Specifies the upcoming actions or tasks for the `Opportunity`. Use
    #   this field to communicate with Amazon Web Services about the next
    #   actions required for the `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] next_steps_history
    #   Captures a chronological record of the next steps or actions planned
    #   or taken for the current opportunity, along with the timestamp.
    #   @return [Array<Types::NextStepsHistory>]
    #
    # @!attribute [rw] review_comments
    #   Indicates why an opportunity was sent back for further details.
    #   Partners must take corrective action based on the `ReviewComments`.
    #   @return [String]
    #
    # @!attribute [rw] review_status
    #   Indicates the review status of an opportunity referred by a partner.
    #   This field is read-only and only applicable for partner referrals.
    #   The possible values are:
    #
    #   * Pending Submission: Not submitted for validation (editable).
    #
    #   * Submitted: Submitted for validation, and Amazon Web Services
    #     hasn't reviewed it (read-only).
    #
    #   * In Review: Amazon Web Services is validating (read-only).
    #
    #   * Action Required: Issues that Amazon Web Services highlights need
    #     to be addressed. Partners should use the `UpdateOpportunity` API
    #     action to update the opportunity and helps to ensure that all
    #     required changes are made. Only the following fields are editable
    #     when the `Lifecycle.ReviewStatus` is `Action Required`:
    #
    #     * Customer.Account.Address.City
    #
    #     * Customer.Account.Address.CountryCode
    #
    #     * Customer.Account.Address.PostalCode
    #
    #     * Customer.Account.Address.StateOrRegion
    #
    #     * Customer.Account.Address.StreetAddress
    #
    #     * Customer.Account.WebsiteUrl
    #
    #     * LifeCycle.TargetCloseDate
    #
    #     * Project.ExpectedMonthlyAWSRevenue.Amount
    #
    #     * Project.ExpectedMonthlyAWSRevenue.CurrencyCode
    #
    #     * Project.CustomerBusinessProblem
    #
    #     * PartnerOpportunityIdentifier
    #     After updates, the opportunity re-enters the validation phase.
    #     This process repeats until all issues are resolved, and the
    #     opportunity's `Lifecycle.ReviewStatus` is set to `Approved` or
    #     `Rejected`.
    #
    #   * Approved: Validated and converted into the Amazon Web Services
    #     seller's pipeline (editable).
    #
    #   * Rejected: Disqualified (read-only).
    #   @return [String]
    #
    # @!attribute [rw] review_status_reason
    #   Indicates the reason a decision was made during the opportunity
    #   review process. This field combines the reasons for both
    #   disqualified and action required statuses, and provide clarity for
    #   why an opportunity was disqualified or requires further action.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Specifies the current stage of the `Opportunity`'s lifecycle as it
    #   maps to Amazon Web Services stages from the current stage in the
    #   partner CRM. This field provides a translated value of the stage,
    #   and offers insight into the `Opportunity`'s progression in the
    #   sales cycle, according to Amazon Web Services definitions.
    #
    #   <note markdown="1"> A lead and a prospect must be further matured to a `Qualified`
    #   opportunity before submission. Opportunities that were closed/lost
    #   before submission aren't suitable for submission.
    #
    #    </note>
    #
    #   The descriptions of each sales stage are:
    #
    #   * Prospect: Amazon Web Services identifies the opportunity. It can
    #     be active (Comes directly from the end customer through a lead) or
    #     latent (Your account team believes it exists based on research,
    #     account plans, sales plays).
    #
    #   * Qualified: Your account team engaged with the customer to discuss
    #     viability and requirements. The customer agreed that the
    #     opportunity is real, of interest, and may solve business/technical
    #     needs.
    #
    #   * Technical Validation: All parties understand the implementation
    #     plan.
    #
    #   * Business Validation: Pricing was proposed, and all parties agree
    #     to the steps to close.
    #
    #   * Committed: The customer signed the contract, but Amazon Web
    #     Services hasn't started billing.
    #
    #   * Launched: The workload is complete, and Amazon Web Services has
    #     started billing.
    #
    #   * Closed Lost: The opportunity is lost, and there are no steps to
    #     move forward.
    #   @return [String]
    #
    # @!attribute [rw] target_close_date
    #   Specifies the date when Amazon Web Services expects to start
    #   significant billing, when the project finishes, and when it moves
    #   into production. This field informs the Amazon Web Services seller
    #   about when the opportunity launches and starts to incur Amazon Web
    #   Services usage.
    #
    #   Ensure the `Target Close Date` isn't in the past.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/LifeCycle AWS API Documentation
    #
    class LifeCycle < Struct.new(
      :closed_lost_reason,
      :next_steps,
      :next_steps_history,
      :review_comments,
      :review_status,
      :review_status_reason,
      :stage,
      :target_close_date)
      SENSITIVE = [:next_steps]
      include Aws::Structure
    end

    # An object that contains a `LifeCycle` object's subset of fields.
    #
    # @!attribute [rw] closed_lost_reason
    #   Specifies the reason code when an opportunity is marked as *Closed
    #   Lost*. When you select an appropriate reason code, you communicate
    #   the context for closing the `Opportunity`, and aid in accurate
    #   reports and analysis of opportunity outcomes.
    #   @return [String]
    #
    # @!attribute [rw] next_steps
    #   Specifies the upcoming actions or tasks for the `Opportunity`. This
    #   field is utilized to communicate to Amazon Web Services the next
    #   actions required for the `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] review_comments
    #   Indicates why an opportunity was sent back for further details.
    #   Partners must take corrective action based on the `ReviewComments`.
    #   @return [String]
    #
    # @!attribute [rw] review_status
    #   Indicates the review status of a partner referred opportunity. This
    #   field is read-only and only applicable for partner referrals. Valid
    #   values:
    #
    #   * Pending Submission: Not submitted for validation (editable).
    #
    #   * Submitted: Submitted for validation and not yet Amazon Web
    #     Services reviewed (read-only).
    #
    #   * In Review: Undergoing Amazon Web Services validation (read-only).
    #
    #   * Action Required: Address any issues Amazon Web Services
    #     highlights. Use the `UpdateOpportunity` API action to update the
    #     opportunity, and ensure you make all required changes. Only these
    #     fields are editable when the `Lifecycle.ReviewStatus` is `Action
    #     Required`:
    #
    #     * Customer.Account.Address.City
    #
    #     * Customer.Account.Address.CountryCode
    #
    #     * Customer.Account.Address.PostalCode
    #
    #     * Customer.Account.Address.StateOrRegion
    #
    #     * Customer.Account.Address.StreetAddress
    #
    #     * Customer.Account.WebsiteUrl
    #
    #     * LifeCycle.TargetCloseDate
    #
    #     * Project.ExpectedCustomerSpend.Amount
    #
    #     * Project.ExpectedCustomerSpend.CurrencyCode
    #
    #     * Project.CustomerBusinessProblem
    #
    #     * PartnerOpportunityIdentifier
    #     After updates, the opportunity re-enters the validation phase.
    #     This process repeats until all issues are resolved, and the
    #     opportunity's `Lifecycle.ReviewStatus` is set to `Approved` or
    #     `Rejected`.
    #
    #   * Approved: Validated and converted into the Amazon Web Services
    #     seller's pipeline (editable).
    #
    #   * Rejected: Disqualified (read-only).
    #   @return [String]
    #
    # @!attribute [rw] review_status_reason
    #   Indicates the reason a specific decision was taken during the
    #   opportunity review process. This field combines the reasons for both
    #   disqualified and action required statuses, and provides clarity for
    #   why an opportunity was disqualified or required further action.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Specifies the current stage of the `Opportunity`'s lifecycle as it
    #   maps to Amazon Web Services stages from the current stage in the
    #   partner CRM. This field provides a translated value of the stage,
    #   and offers insight into the `Opportunity`'s progression in the
    #   sales cycle, according to Amazon Web Services definitions.
    #
    #   <note markdown="1"> A lead and a prospect must be further matured to a `Qualified`
    #   opportunity before submission. Opportunities that were closed/lost
    #   before submission aren't suitable for submission.
    #
    #    </note>
    #
    #   The descriptions of each sales stage are:
    #
    #   * Prospect: Amazon Web Services identifies the opportunity. It can
    #     be active (Comes directly from the end customer through a lead) or
    #     latent (Your account team believes it exists based on research,
    #     account plans, sales plays).
    #
    #   * Qualified: Your account team engaged with the customer to discuss
    #     viability and understand requirements. The customer agreed that
    #     the opportunity is real, of interest, and may solve
    #     business/technical needs.
    #
    #   * Technical Validation: All parties understand the implementation
    #     plan.
    #
    #   * Business Validation: Pricing was proposed, and all parties agree
    #     to the steps to close.
    #
    #   * Committed: The customer signed the contract, but Amazon Web
    #     Services hasn't started billing.
    #
    #   * Launched: The workload is complete, and Amazon Web Services has
    #     started billing.
    #
    #   * Closed Lost: The opportunity is lost, and there are no steps to
    #     move forward.
    #   @return [String]
    #
    # @!attribute [rw] target_close_date
    #   Specifies the date when Amazon Web Services expects to start
    #   significant billing, when the project finishes, and when it moves
    #   into production. This field informs the Amazon Web Services seller
    #   about when the opportunity launches and starts to incur Amazon Web
    #   Services usage.
    #
    #   Ensure the `Target Close Date` isn't in the past.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/LifeCycleSummary AWS API Documentation
    #
    class LifeCycleSummary < Struct.new(
      :closed_lost_reason,
      :next_steps,
      :review_comments,
      :review_status,
      :review_status_reason,
      :stage,
      :target_close_date)
      SENSITIVE = [:next_steps]
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog from which to list the engagement invitations.
    #   Use `AWS` for production invitations or `Sandbox` for testing
    #   environments.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of engagement invitations to return in
    #   the response. If more results are available, a pagination token will
    #   be provided.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to retrieve additional pages of results when
    #   the response to a previous request was truncated. Pass this token to
    #   continue listing invitations from where the previous call left off.
    #   @return [String]
    #
    # @!attribute [rw] participant_type
    #   Specifies the type of participant for which to list engagement
    #   invitations. Identifies the role of the participant.
    #   @return [String]
    #
    # @!attribute [rw] payload_type
    #   Defines the type of payload associated with the engagement
    #   invitations to be listed. The attributes in this payload help decide
    #   on acceptance or rejection of the invitation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sort
    #   Specifies the sorting options for listing engagement invitations.
    #   Invitations can be sorted by fields such as `InvitationDate` or
    #   `Status` to help partners view results in their preferred order.
    #   @return [Types::OpportunityEngagementInvitationSort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementInvitationsRequest AWS API Documentation
    #
    class ListEngagementInvitationsRequest < Struct.new(
      :catalog,
      :max_results,
      :next_token,
      :participant_type,
      :payload_type,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engagement_invitation_summaries
    #   An array containing summaries of engagement invitations. Each
    #   summary includes information such as the invitation title,
    #   invitation date, and the current status of the invitation.
    #   @return [Array<Types::EngagementInvitationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned when there are more results available
    #   than can be returned in a single call. Use this token to retrieve
    #   additional pages of engagement invitation summaries.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListEngagementInvitationsResponse AWS API Documentation
    #
    class ListEngagementInvitationsResponse < Struct.new(
      :engagement_invitation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the opportunities are listed
    #   in. Use `AWS` for listing real opportunities in the Amazon Web
    #   Services catalog, and `Sandbox` for testing in secure, isolated
    #   environments.
    #   @return [String]
    #
    # @!attribute [rw] customer_company_name
    #   Filters the opportunities based on the customer's company name.
    #   This allows partners to search for opportunities associated with a
    #   specific customer by matching the provided company name string.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifier
    #   Filters the opportunities based on the opportunity identifier. This
    #   allows partners to retrieve specific opportunities by providing
    #   their unique identifiers, ensuring precise results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_modified_date
    #   Filters the opportunities based on their last modified date. This
    #   filter helps retrieve opportunities that were updated after the
    #   specified date, allowing partners to track recent changes or
    #   updates.
    #   @return [Types::LastModifiedDate]
    #
    # @!attribute [rw] life_cycle_review_status
    #   Filters the opportunities based on their current lifecycle approval
    #   status. Use this filter to retrieve opportunities with statuses such
    #   as `Pending Submission`, `In Review`, `Action Required`, or
    #   `Approved`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] life_cycle_stage
    #   Filters the opportunities based on their lifecycle stage. This
    #   filter allows partners to retrieve opportunities at various stages
    #   in the sales cycle, such as `Qualified`, `Technical Validation`,
    #   `Business Validation`, or `Closed Won`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Specifies the maximum number of results to return in a single call.
    #   This limits the number of opportunities returned in the response to
    #   avoid providing too many results at once.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to retrieve the next set of results in
    #   subsequent calls. This token is included in the response only if
    #   there are additional result pages available.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   An object that specifies how the response is sorted. The default
    #   `Sort.SortBy` value is `LastModifiedDate`.
    #   @return [Types::OpportunitySort]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListOpportunitiesRequest AWS API Documentation
    #
    class ListOpportunitiesRequest < Struct.new(
      :catalog,
      :customer_company_name,
      :identifier,
      :last_modified_date,
      :life_cycle_review_status,
      :life_cycle_stage,
      :max_results,
      :next_token,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used to retrieve the next set of results in
    #   subsequent calls. This token is included in the response only if
    #   there are additional result pages available.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_summaries
    #   An array that contains minimal details for opportunities that match
    #   the request criteria. This summary view provides a quick overview of
    #   relevant opportunities.
    #   @return [Array<Types::OpportunitySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListOpportunitiesResponse AWS API Documentation
    #
    class ListOpportunitiesResponse < Struct.new(
      :next_token,
      :opportunity_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the solutions are listed in.
    #   Use `AWS` to list solutions in the Amazon Web Services catalog, and
    #   `Sandbox` to list solutions in a secure and isolated testing
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Filters the solutions based on the category to which they belong.
    #   This allows partners to search for solutions within specific
    #   categories, such as `Software`, `Consulting`, or `Managed Services`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identifier
    #   Filters the solutions based on their unique identifier. Use this
    #   filter to retrieve specific solutions by providing the solution's
    #   identifier for accurate results.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results returned by a single call. This value
    #   must be provided in the next call to retrieve the next set of
    #   results.
    #
    #   Default: 20
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to retrieve the next set of results in
    #   subsequent calls. This token is included in the response only if
    #   there are additional result pages available.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Object that configures sorting done on the response. Default
    #   `Sort.SortBy` is `Identifier`.
    #   @return [Types::SolutionSort]
    #
    # @!attribute [rw] status
    #   Filters solutions based on their status. This filter helps partners
    #   manage their solution portfolios effectively.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListSolutionsRequest AWS API Documentation
    #
    class ListSolutionsRequest < Struct.new(
      :catalog,
      :category,
      :identifier,
      :max_results,
      :next_token,
      :sort,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A pagination token used to retrieve the next set of results in
    #   subsequent calls. This token is included in the response only if
    #   there are additional result pages available.
    #   @return [String]
    #
    # @!attribute [rw] solution_summaries
    #   An array with minimal details for solutions matching the request
    #   criteria.
    #   @return [Array<Types::SolutionBase>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ListSolutionsResponse AWS API Documentation
    #
    class ListSolutionsResponse < Struct.new(
      :next_token,
      :solution_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains marketing details for the `Opportunity`.
    #
    # @!attribute [rw] aws_funding_used
    #   Indicates if the `Opportunity` is a marketing development fund (MDF)
    #   funded activity.
    #   @return [String]
    #
    # @!attribute [rw] campaign_name
    #   Specifies the `Opportunity` marketing campaign code. The Amazon Web
    #   Services campaign code is a reference to specific marketing
    #   initiatives, promotions, or activities. This field captures the
    #   identifier used to track and categorize the `Opportunity` within
    #   marketing campaigns. If you don't have a campaign code, contact
    #   your Amazon Web Services point of contact to obtain one.
    #   @return [String]
    #
    # @!attribute [rw] channels
    #   Specifies the `Opportunity`'s channel that the marketing activity
    #   is associated with or was contacted through. This field provides
    #   information about the specific marketing channel that contributed to
    #   the generation of the lead or contact.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source
    #   Indicates if the `Opportunity` was sourced from an Amazon Web
    #   Services marketing activity. Use the value `Marketing Activity`. Use
    #   `None` if it's not associated with an Amazon Web Services marketing
    #   activity. This field helps Amazon Web Services track the return on
    #   marketing investments and enables better distribution of marketing
    #   budgets among partners.
    #   @return [String]
    #
    # @!attribute [rw] use_cases
    #   Specifies the marketing activity use case or purpose that led to the
    #   `Opportunity`'s creation or contact. This field captures the
    #   context or marketing activity's execution's intention and the
    #   direct correlation to the generated opportunity or contact. Must be
    #   empty when `Marketing.AWSFundingUsed = No`.
    #
    #   Valid values: `AI/ML | Analytics | Application Integration |
    #   Blockchain | Business Applications | Cloud Financial Management |
    #   Compute | Containers | Customer Engagement | Databases | Developer
    #   Tools | End User Computing | Front End Web & Mobile | Game Tech |
    #   IoT | Management & Governance | Media Services | Migration &
    #   Transfer | Networking & Content Delivery | Quantum Technologies |
    #   Robotics | Satellite | Security | Serverless | Storage | VR & AR`
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Marketing AWS API Documentation
    #
    class Marketing < Struct.new(
      :aws_funding_used,
      :campaign_name,
      :channels,
      :source,
      :use_cases)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies payments details.
    #
    # @!attribute [rw] amount
    #   Specifies the payment amount.
    #   @return [String]
    #
    # @!attribute [rw] currency_code
    #   Specifies the payment currency.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/MonetaryValue AWS API Documentation
    #
    class MonetaryValue < Struct.new(
      :amount,
      :currency_code)
      SENSITIVE = [:currency_code]
      include Aws::Structure
    end

    # Read-only; shows the last 50 values and change dates for the
    # `NextSteps` field.
    #
    # @!attribute [rw] time
    #   Indicates the step execution time.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   Indicates the step's execution details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/NextStepsHistory AWS API Documentation
    #
    class NextStepsHistory < Struct.new(
      :time,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines sorting options for retrieving Engagement Invitations. Sorting
    # can be done based on various criteria like the invitation date or
    # status.
    #
    # @!attribute [rw] sort_by
    #   Specifies the field by which the Engagement Invitations are sorted.
    #   Common values include `InvitationDate` and `Status`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Defines the order in which the Engagement Invitations are sorted.
    #   The values can be `ASC` (ascending) or `DESC` (descending).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/OpportunityEngagementInvitationSort AWS API Documentation
    #
    class OpportunityEngagementInvitationSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the data payload of an Engagement Invitation for a specific
    # opportunity. This contains detailed information that partners use to
    # evaluate the engagement.
    #
    # @!attribute [rw] customer
    #   Contains information about the customer related to the opportunity
    #   in the Engagement Invitation. This data helps partners understand
    #   the customer’s profile and requirements.
    #   @return [Types::EngagementCustomer]
    #
    # @!attribute [rw] project
    #   Describes the project details associated with the opportunity,
    #   including the customer’s needs and the scope of work expected to be
    #   performed.
    #   @return [Types::ProjectDetails]
    #
    # @!attribute [rw] receiver_responsibilities
    #   Outlines the responsibilities or expectations of the receiver in the
    #   context of the invitation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sender_contacts
    #   Represents the contact details of the AWS representatives involved
    #   in sending the Engagement Invitation. These contacts are opportunity
    #   stakeholders.
    #   @return [Array<Types::SenderContact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/OpportunityInvitationPayload AWS API Documentation
    #
    class OpportunityInvitationPayload < Struct.new(
      :customer,
      :project,
      :receiver_responsibilities,
      :sender_contacts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that configures response sorting.
    #
    # @!attribute [rw] sort_by
    #   Field name to sort by.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Sort order.
    #
    #   Default: `Descending`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/OpportunitySort AWS API Documentation
    #
    class OpportunitySort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains an `Opportunity`'s subset of fields.
    #
    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the opportunity, either `AWS`
    #   or `Sandbox`. This indicates the environment in which the
    #   opportunity is managed.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   `DateTime` when the `Opportunity` was last created.
    #   @return [Time]
    #
    # @!attribute [rw] customer
    #   An object that contains the `Opportunity`'s customer details.
    #   @return [Types::CustomerSummary]
    #
    # @!attribute [rw] id
    #   Read-only, system-generated `Opportunity` unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the `Opportunity` was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] life_cycle
    #   An object that contains the `Opportunity`'s lifecycle details.
    #   @return [Types::LifeCycleSummary]
    #
    # @!attribute [rw] opportunity_type
    #   Specifies opportunity type as a renewal, new, or expansion.
    #
    #   Opportunity types:
    #
    #   * New Opportunity: Represents a new business opportunity with a
    #     potential customer that's not previously engaged with your
    #     solutions or services.
    #
    #   * Renewal Opportunity: Represents an opportunity to renew an
    #     existing contract or subscription with a current customer,
    #     ensuring continuity of service.
    #
    #   * Expansion Opportunity: Represents an opportunity to expand the
    #     scope of an existing contract or subscription, either by adding
    #     new services or increasing the volume of existing services for a
    #     current customer.
    #   @return [String]
    #
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the `Opportunity`'s unique identifier in the partner's
    #   CRM system. This value is essential to track and reconcile because
    #   it's included in the outbound payload sent back to the partner. It
    #   allows partners to link an opportunity to their CRM.
    #   @return [String]
    #
    # @!attribute [rw] project
    #   An object that contains the `Opportunity`'s project details
    #   summary.
    #   @return [Types::ProjectSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/OpportunitySummary AWS API Documentation
    #
    class OpportunitySummary < Struct.new(
      :catalog,
      :created_date,
      :customer,
      :id,
      :last_modified_date,
      :life_cycle,
      :opportunity_type,
      :partner_opportunity_identifier,
      :project)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the data payload associated with the Engagement Invitation.
    # This payload includes essential details related to the AWS opportunity
    # and is used by partners to evaluate whether to accept or reject the
    # engagement.
    #
    # @note Payload is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Payload corresponding to the set member.
    #
    # @!attribute [rw] opportunity_invitation
    #   Specifies the details of the opportunity invitation within the
    #   Engagement Invitation payload. This data helps partners understand
    #   the context, scope, and expected involvement for the opportunity
    #   from AWS.
    #   @return [Types::OpportunityInvitationPayload]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Payload AWS API Documentation
    #
    class Payload < Struct.new(
      :opportunity_invitation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class OpportunityInvitation < Payload; end
      class Unknown < Payload; end
    end

    # Tracks the history of next steps associated with the opportunity. This
    # field captures the actions planned for the future and their timeline.
    #
    # @!attribute [rw] time
    #   Indicates the date and time when a particular next step was recorded
    #   or planned. This helps in managing the timeline for the opportunity.
    #   @return [Time]
    #
    # @!attribute [rw] value
    #   Represents the details of the next step recorded, such as follow-up
    #   actions or decisions made. This field helps in tracking progress and
    #   ensuring alignment with project goals.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ProfileNextStepsHistory AWS API Documentation
    #
    class ProfileNextStepsHistory < Struct.new(
      :time,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the `Opportunity`'s project details.
    #
    # @!attribute [rw] additional_comments
    #   Captures additional comments or information for the `Opportunity`
    #   that weren't captured in other fields.
    #   @return [String]
    #
    # @!attribute [rw] apn_programs
    #   Specifies the Amazon Partner Network (APN) program that influenced
    #   the `Opportunity`. APN programs refer to specific partner programs
    #   or initiatives that can impact the `Opportunity`.
    #
    #   Valid values: `APN Immersion Days | APN Solution Space | ATO
    #   (Authority to Operate) | AWS Marketplace Campaign | IS Immersion Day
    #   SFID Program | ISV Workload Migration | Migration Acceleration
    #   Program | P3 | Partner Launch Initiative | Partner Opportunity
    #   Acceleration Funded | The Next Smart | VMware Cloud on AWS |
    #   Well-Architected | Windows | Workspaces/AppStream Accelerator
    #   Program | WWPS NDPP`
    #   @return [Array<String>]
    #
    # @!attribute [rw] competitor_name
    #   Name of the `Opportunity`'s competitor (if any). Use `Other` to
    #   submit a value not in the picklist.
    #   @return [String]
    #
    # @!attribute [rw] customer_business_problem
    #   Describes the problem the end customer has, and how the partner is
    #   helping. Utilize this field to provide a concise narrative that
    #   outlines the customer's business challenge or issue. Elaborate on
    #   how the partner's solution or offerings align to resolve the
    #   customer's business problem. Include relevant information about the
    #   partner's value proposition, unique selling points, and expertise
    #   to tackle the issue. Offer insights on how the proposed solution
    #   meets the customer's needs and provides value. Use concise language
    #   and precise descriptions to convey the context and significance of
    #   the `Opportunity`. The content in this field helps Amazon Web
    #   Services understand the nature of the `Opportunity` and the
    #   strategic fit of the partner's solution.
    #   @return [String]
    #
    # @!attribute [rw] customer_use_case
    #   Specifies the proposed solution focus or type of workload for the
    #   Opportunity. This field captures the primary use case or objective
    #   of the proposed solution, and provides context and clarity to the
    #   addressed workload.
    #
    #   Valid values: `AI Machine Learning and Analytics | Archiving | Big
    #   Data: Data Warehouse/Data Integration/ETL/Data Lake/BI | Blockchain
    #   | Business Applications: Mainframe Modernization | Business
    #   Applications & Contact Center | Business Applications & SAP
    #   Production | Centralized Operations Management | Cloud Management
    #   Tools | Cloud Management Tools & DevOps with Continuous Integration
    #   & Continuous Delivery (CICD) | Configuration, Compliance & Auditing
    #   | Connected Services | Containers & Serverless | Content Delivery &
    #   Edge Services | Database | Edge Computing/End User Computing |
    #   Energy | Enterprise Governance & Controls | Enterprise Resource
    #   Planning | Financial Services | Healthcare and Life Sciences | High
    #   Performance Computing | Hybrid Application Platform | Industrial
    #   Software | IOT | Manufacturing, Supply Chain and Operations | Media
    #   & High performance computing (HPC) | Migration/Database Migration |
    #   Monitoring, logging and performance | Monitoring & Observability |
    #   Networking | Outpost | SAP | Security & Compliance | Storage &
    #   Backup | Training | VMC | VMWare | Web development & DevOps`
    #   @return [String]
    #
    # @!attribute [rw] delivery_models
    #   Specifies the deployment or consumption model for your solution or
    #   service in the `Opportunity`'s context. You can select multiple
    #   options.
    #
    #   Options' descriptions from the `Delivery Model` field are:
    #
    #   * SaaS or PaaS: Your Amazon Web Services based solution deployed as
    #     SaaS or PaaS in your Amazon Web Services environment.
    #
    #   * BYOL or AMI: Your Amazon Web Services based solution deployed as
    #     BYOL or AMI in the end customer's Amazon Web Services
    #     environment.
    #
    #   * Managed Services: The end customer's Amazon Web Services business
    #     management (For example: Consulting, design, implementation,
    #     billing support, cost optimization, technical support).
    #
    #   * Professional Services: Offerings to help enterprise end customers
    #     achieve specific business outcomes for enterprise cloud adoption
    #     (For example: Advisory or transformation planning).
    #
    #   * Resell: Amazon Web Services accounts and billing management for
    #     your customers.
    #
    #   * Other: Delivery model not described above.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expected_customer_spend
    #   Represents the estimated amount that the customer is expected to
    #   spend on AWS services related to the opportunity. This helps in
    #   evaluating the potential financial value of the opportunity for AWS.
    #   @return [Array<Types::ExpectedCustomerSpend>]
    #
    # @!attribute [rw] other_competitor_names
    #   Only allowed when `CompetitorNames` has `Other` selected.
    #   @return [String]
    #
    # @!attribute [rw] other_solution_description
    #   Specifies the offered solution for the customer's business problem
    #   when the ` RelatedEntityIdentifiers.Solutions` field value is
    #   `Other`.
    #   @return [String]
    #
    # @!attribute [rw] related_opportunity_identifier
    #   Specifies the current opportunity's parent opportunity identifier.
    #   @return [String]
    #
    # @!attribute [rw] sales_activities
    #   Specifies the `Opportunity`'s sales activities conducted with the
    #   end customer. These activities help drive Amazon Web Services
    #   assignment priority.
    #
    #   Valid values:
    #
    #   * Initialized discussions with customer: Initial conversations with
    #     the customer to understand their needs and introduce your
    #     solution.
    #
    #   * Customer has shown interest in solution: After initial
    #     discussions, the customer is interested in your solution.
    #
    #   * Conducted POC/demo: You conducted a proof of concept (POC) or
    #     demonstration of the solution for the customer.
    #
    #   * In evaluation/planning stage: The customer is evaluating the
    #     solution and planning potential implementation.
    #
    #   * Agreed on solution to Business Problem: Both parties agree on how
    #     the solution addresses the customer's business problem.
    #
    #   * Completed Action Plan: A detailed action plan is complete and
    #     outlines the steps for implementation.
    #
    #   * Finalized Deployment Need: Both parties agree with and finalized
    #     the deployment needs.
    #
    #   * SOW Signed: Both parties signed a statement of work (SOW), and
    #     formalize the agreement and detail the project scope and
    #     deliverables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] title
    #   Specifies the `Opportunity`'s title or name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Project AWS API Documentation
    #
    class Project < Struct.new(
      :additional_comments,
      :apn_programs,
      :competitor_name,
      :customer_business_problem,
      :customer_use_case,
      :delivery_models,
      :expected_customer_spend,
      :other_competitor_names,
      :other_solution_description,
      :related_opportunity_identifier,
      :sales_activities,
      :title)
      SENSITIVE = [:customer_business_problem, :other_solution_description, :title]
      include Aws::Structure
    end

    # Contains details about the project associated with the Engagement
    # Invitation, including the business problem and expected outcomes.
    #
    # @!attribute [rw] business_problem
    #   Describes the business problem that the project aims to solve. This
    #   information is crucial for understanding the project’s goals and
    #   objectives.
    #   @return [String]
    #
    # @!attribute [rw] expected_customer_spend
    #   Contains revenue estimates for the partner related to the project.
    #   This field provides an idea of the financial potential of the
    #   opportunity for the partner.
    #   @return [Array<Types::ExpectedCustomerSpend>]
    #
    # @!attribute [rw] target_completion_date
    #   Specifies the estimated date of project completion. This field helps
    #   track the project timeline and manage expectations.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   Specifies the title of the project. This title helps partners
    #   quickly identify and understand the focus of the project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ProjectDetails AWS API Documentation
    #
    class ProjectDetails < Struct.new(
      :business_problem,
      :expected_customer_spend,
      :target_completion_date,
      :title)
      SENSITIVE = [:business_problem]
      include Aws::Structure
    end

    # An object that contains a `Project` object's subset of fields.
    #
    # @!attribute [rw] delivery_models
    #   Specifies your solution or service's deployment or consumption
    #   model in the `Opportunity`'s context. You can select multiple
    #   options.
    #
    #   Options' descriptions from the `Delivery Model` field are:
    #
    #   * SaaS or PaaS: Your Amazon Web Services based solution deployed as
    #     SaaS or PaaS in your Amazon Web Services environment.
    #
    #   * BYOL or AMI: Your Amazon Web Services based solution deployed as
    #     BYOL or AMI in the end customer's Amazon Web Services
    #     environment.
    #
    #   * Managed Services: The end customer's Amazon Web Services business
    #     management (For example: Consulting, design, implementation,
    #     billing support, cost optimization, technical support).
    #
    #   * Professional Services: Offerings to help enterprise end customers
    #     achieve specific business outcomes for enterprise cloud adoption
    #     (For example: Advisory or transformation planning).
    #
    #   * Resell: Amazon Web Services accounts and billing management for
    #     your customers.
    #
    #   * Other: Delivery model not described above.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expected_customer_spend
    #   Provides a summary of the expected customer spend for the project,
    #   offering a high-level view of the potential financial impact.
    #   @return [Array<Types::ExpectedCustomerSpend>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ProjectSummary AWS API Documentation
    #
    class ProjectSummary < Struct.new(
      :delivery_models,
      :expected_customer_spend)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the entity that received the Engagement Invitation,
    # including account and company details. This field is essential for
    # tracking the partner who is being invited to collaborate.
    #
    # @note Receiver is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Receiver corresponding to the set member.
    #
    # @!attribute [rw] account
    #   Specifies the AWS account of the partner who received the Engagement
    #   Invitation. This field is used to track the invitation recipient
    #   within the AWS ecosystem.
    #   @return [Types::AccountReceiver]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/Receiver AWS API Documentation
    #
    class Receiver < Struct.new(
      :account,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Account < Receiver; end
      class Unknown < Receiver; end
    end

    # @!attribute [rw] catalog
    #   This is the catalog that's associated with the engagement
    #   invitation. Acceptable values are `AWS` or `Sandbox`, and these
    #   values determine the environment in which the opportunity is
    #   managed.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   This is the unique identifier of the rejected
    #   `EngagementInvitation`. Providing the correct identifier helps to
    #   ensure that the intended invitation is rejected.
    #   @return [String]
    #
    # @!attribute [rw] rejection_reason
    #   This describes the reason for rejecting the engagement invitation,
    #   which helps AWS track usage patterns. Acceptable values include the
    #   following:
    #
    #   * *Customer problem unclear:* The customer's problem isn't
    #     understood.
    #
    #   * *Next steps unclear:* The next steps required to proceed aren't
    #     understood.
    #
    #   * *Unable to support:* The partner is unable to provide support due
    #     to resource or capability constraints.
    #
    #   * *Duplicate of partner referral:* The opportunity is a duplicate of
    #     an existing referral.
    #
    #   * *Other:* Any reason not covered by other values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/RejectEngagementInvitationRequest AWS API Documentation
    #
    class RejectEngagementInvitationRequest < Struct.new(
      :catalog,
      :identifier,
      :rejection_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # This field provides the associations' information for other entities
    # with the opportunity. These entities include identifiers for
    # `AWSProducts`, `Partner Solutions`, and `AWSMarketplaceOffers`.
    #
    # @!attribute [rw] aws_marketplace_offers
    #   Takes one value per opportunity. Each value is an Amazon Resource
    #   Name (ARN), in this format: `"offers":
    #   ["arn:aws:aws-marketplace:us-east-1:999999999999:AWSMarketplace/Offer/offer-sampleOffer32"]`.
    #
    #   Use the [ListEntities][1] action in the Marketplace Catalog APIs for
    #   a list of offers in the associated Marketplace seller account.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/marketplace-catalog/latest/api-reference/API_ListEntities.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] aws_products
    #   Enables the association of specific Amazon Web Services products
    #   with the `Opportunity`. Partners can indicate the relevant Amazon
    #   Web Services products for the `Opportunity`'s solution and align
    #   with the customer's needs. Returns multiple values separated by
    #   commas. For example, `"AWSProducts" : ["AmazonRedshift",
    #   "AWSAppFabric", "AWSCleanRooms"]`.
    #
    #   Use the file with the list of Amazon Web Services products hosted on
    #   GitHub: [ Amazon Web Services products][1].
    #
    #
    #
    #   [1]: https://github.com/aws-samples/partner-crm-integration-samples/blob/main/resources/aws_products.json
    #   @return [Array<String>]
    #
    # @!attribute [rw] solutions
    #   Enables partner solutions or offerings' association with an
    #   opportunity. To associate a solution, provide the solution's unique
    #   identifier, which you can obtain with the `ListSolutions` operation.
    #
    #   If the specific solution identifier is not available, you can use
    #   the value `Other` and provide details about the solution in the
    #   `otherSolutionOffered` field. But when the opportunity reaches the
    #   `Committed` stage or beyond, the `Other` value cannot be used, and a
    #   valid solution identifier must be provided.
    #
    #   By associating the relevant solutions with the opportunity, you can
    #   communicate the offerings that are being considered or implemented
    #   to address the customer's business problem.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/RelatedEntityIdentifiers AWS API Documentation
    #
    class RelatedEntityIdentifiers < Struct.new(
      :aws_marketplace_offers,
      :aws_products,
      :solutions)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error occurs when the specified resource can't be found. The
    # resource might not exist, or isn't visible with the current
    # credentials.
    #
    # Suggested action: Verify that the resource ID is correct and the
    # resource is in the expected AWS region. Check IAM permissions for
    # accessing the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the details of the sender-provided contact
    # person for the `EngagementInvitation`.
    #
    # @!attribute [rw] business_title
    #   The sender-provided contact's title (job title or role) associated
    #   with the `EngagementInvitation`.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The sender-provided contact's email address associated with the
    #   `EngagementInvitation`.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The sender-provided contact's last name associated with the
    #   `EngagementInvitation`.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The sender-provided contact's first name associated with the
    #   `EngagementInvitation`.
    #   @return [String]
    #
    # @!attribute [rw] phone
    #   The sender-provided contact's phone number associated with the
    #   `EngagementInvitation`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SenderContact AWS API Documentation
    #
    class SenderContact < Struct.new(
      :business_title,
      :email,
      :first_name,
      :last_name,
      :phone)
      SENSITIVE = [:business_title, :email, :first_name, :last_name, :phone]
      include Aws::Structure
    end

    # This error occurs when the request would cause a service quota to be
    # exceeded. Service quotas represent the maximum allowed use of a
    # specific resource, and this error indicates that the request would
    # surpass that limit.
    #
    # Suggested action: Review the [Quotas][1] for the resource, and either
    # reduce usage or request a quota increase.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/partner-central/latest/selling-api/quotas.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a customer's procurement terms details. Required only for
    # partners in eligible programs.
    #
    # @!attribute [rw] delivery_model
    #   Specifies the customer's intended payment type agreement or
    #   procurement method to acquire the solution or service outlined in
    #   the `Opportunity`.
    #   @return [String]
    #
    # @!attribute [rw] effective_date
    #   Specifies the `Opportunity`'s customer engagement start date for
    #   the contract's effectiveness.
    #   @return [String]
    #
    # @!attribute [rw] expiration_date
    #   Specifies the expiration date for the contract between the customer
    #   and Amazon Web Services partner. It signifies the termination date
    #   of the agreed-upon engagement period between both parties.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Specifies the payment value (amount and currency).
    #   @return [Types::MonetaryValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SoftwareRevenue AWS API Documentation
    #
    class SoftwareRevenue < Struct.new(
      :delivery_model,
      :effective_date,
      :expiration_date,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies minimal information for the solution offered to solve the
    # customer's business problem.
    #
    # @!attribute [rw] catalog
    #   Specifies the catalog in which the solution is hosted, either `AWS`
    #   or `Sandbox`. This helps partners differentiate between live
    #   solutions and those in testing environments.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   Specifies the solution category, which helps to categorize and
    #   organize the solutions partners offer. Valid values: `Software
    #   Product` \| `Consulting Service` \| `Hardware Product` \|
    #   `Communications Product` \| `Professional Service` \| `Managed
    #   Service` \| `Value-Added Resale Amazon Web Services Service` \|
    #   `Distribution Service` \| `Training Service` \| `Merger and
    #   Acquisition Advising Service`.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   Indicates the solution creation date. This is useful to track and
    #   audit.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   Enables the association of solutions (offerings) to opportunities.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Specifies the solution name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the solution's current status, which indicates its state
    #   in the system. Valid values: `Active` \| `Inactive` \| `Draft`. The
    #   status helps partners and Amazon Web Services track the solution's
    #   lifecycle and availability. Filter for `Active` solutions for
    #   association to an opportunity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SolutionBase AWS API Documentation
    #
    class SolutionBase < Struct.new(
      :catalog,
      :category,
      :created_date,
      :id,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures the solutions' response sorting that enables partners to
    # order solutions based on specified attributes.
    #
    # @!attribute [rw] sort_by
    #   Specifies the attribute to sort by, such as `Name`, `CreatedDate`,
    #   or `Status`.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Specifies the sorting order, either `Ascending` or `Descending`. The
    #   default is `Descending`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/SolutionSort AWS API Documentation
    #
    class SolutionSort < Struct.new(
      :sort_by,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog related to the task. Use `AWS` for production
    #   engagements and `Sandbox` for testing scenarios.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier provided by the client that
    #   helps to ensure the idempotency of the request. This can be a random
    #   or meaningful string but must be unique for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   Specifies the unique identifier of the `EngagementInvitation` to be
    #   accepted. Providing the correct identifier helps ensure that the
    #   correct engagement is processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementByAcceptingInvitationTaskRequest AWS API Documentation
    #
    class StartEngagementByAcceptingInvitationTaskRequest < Struct.new(
      :catalog,
      :client_token,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engagement_invitation_id
    #   Returns the identifier of the engagement invitation that was
    #   accepted and used to create the opportunity.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   If the task fails, this field contains a detailed message describing
    #   the failure and possible recovery steps.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_id
    #   Returns the original opportunity identifier passed in the request.
    #   This is the unique identifier for the opportunity.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   Indicates the reason for task failure using an enumerated code.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp indicating when the task was initiated. The format
    #   follows RFC 3339 section 5.6.
    #   @return [Time]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task, used for tracking and
    #   managing the task within AWS.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task, used to track the task’s
    #   progress.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   Indicates the current status of the task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementByAcceptingInvitationTaskResponse AWS API Documentation
    #
    class StartEngagementByAcceptingInvitationTaskResponse < Struct.new(
      :engagement_invitation_id,
      :message,
      :opportunity_id,
      :reason_code,
      :start_time,
      :task_arn,
      :task_id,
      :task_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] aws_submission
    #   Indicates the level of AWS involvement in the opportunity. This
    #   field helps track AWS participation throughout the engagement, such
    #   as providing technical support, deal assistance, and sales support.
    #   @return [Types::AwsSubmission]
    #
    # @!attribute [rw] catalog
    #   Specifies the catalog in which the engagement is tracked. Acceptable
    #   values include `AWS` for production and `Sandbox` for testing
    #   environments.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token provided by the client to help ensure the idempotency
    #   of the request. It helps prevent the same task from being performed
    #   multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The unique identifier of the opportunity from which the engagement
    #   task is to be initiated. This helps ensure that the task is applied
    #   to the correct opportunity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementFromOpportunityTaskRequest AWS API Documentation
    #
    class StartEngagementFromOpportunityTaskRequest < Struct.new(
      :aws_submission,
      :catalog,
      :client_token,
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   If the task fails, this field contains a detailed message describing
    #   the failure and possible recovery steps.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_id
    #   Returns the original opportunity identifier passed in the request,
    #   which is the unique identifier for the opportunity created in the
    #   partner’s system.
    #   @return [String]
    #
    # @!attribute [rw] reason_code
    #   Indicates the reason for task failure using an enumerated code.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp indicating when the task was initiated. The format
    #   follows RFC 3339 section 5.6.
    #   @return [Time]
    #
    # @!attribute [rw] task_arn
    #   The Amazon Resource Name (ARN) of the task, used for tracking and
    #   managing the task within AWS.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The unique identifier of the task, used to track the task’s
    #   progress. This value follows a specific pattern:
    #   `^oit-[0-9a-z]{13}$`.
    #   @return [String]
    #
    # @!attribute [rw] task_status
    #   Indicates the current status of the task. Valid values include
    #   `IN_PROGRESS`, `COMPLETE`, and `FAILED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/StartEngagementFromOpportunityTaskResponse AWS API Documentation
    #
    class StartEngagementFromOpportunityTaskResponse < Struct.new(
      :message,
      :opportunity_id,
      :reason_code,
      :start_time,
      :task_arn,
      :task_id,
      :task_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error occurs when there are too many requests sent. Review the
    # provided quotas and adapt your usage to avoid throttling.
    #
    # This error occurs when there are too many requests sent. Review the
    # provided [Quotas][1] and retry after the provided delay.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/partner-central/latest/selling-api/quotas.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] catalog
    #   Specifies the catalog associated with the request. This field takes
    #   a string value from a predefined list: `AWS` or `Sandbox`. The
    #   catalog determines which environment the opportunity is updated in.
    #   Use `AWS` to update real opportunities in the production
    #   environment, and `Sandbox` for testing in secure, isolated
    #   environments. When you use the `Sandbox` catalog, it allows you to
    #   simulate and validate your interactions with Amazon Web Services
    #   services without affecting live data or operations.
    #   @return [String]
    #
    # @!attribute [rw] customer
    #   Specifies details of the customer associated with the `Opportunity`.
    #   @return [Types::Customer]
    #
    # @!attribute [rw] identifier
    #   Read-only, system generated `Opportunity` unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the opportunity was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] life_cycle
    #   An object that contains lifecycle details for the `Opportunity`.
    #   @return [Types::LifeCycle]
    #
    # @!attribute [rw] marketing
    #   An object that contains marketing details for the `Opportunity`.
    #   @return [Types::Marketing]
    #
    # @!attribute [rw] national_security
    #   Specifies if the opportunity is associated with national security
    #   concerns. This flag is only applicable when the industry is
    #   `Government`. For national-security-related opportunities,
    #   validation and compliance rules may apply, impacting the
    #   opportunity's visibility and processing.
    #   @return [String]
    #
    # @!attribute [rw] opportunity_type
    #   Specifies the opportunity type as a renewal, new, or expansion.
    #
    #   Opportunity types:
    #
    #   * New opportunity: Represents a new business opportunity with a
    #     potential customer that's not previously engaged with your
    #     solutions or services.
    #
    #   * Renewal opportunity: Represents an opportunity to renew an
    #     existing contract or subscription with a current customer,
    #     ensuring continuity of service.
    #
    #   * Expansion opportunity: Represents an opportunity to expand the
    #     scope of an existing contract or subscription, either by adding
    #     new services or increasing the volume of existing services for a
    #     current customer.
    #   @return [String]
    #
    # @!attribute [rw] partner_opportunity_identifier
    #   Specifies the opportunity's unique identifier in the partner's CRM
    #   system. This value is essential to track and reconcile because it's
    #   included in the outbound payload sent back to the partner.
    #   @return [String]
    #
    # @!attribute [rw] primary_needs_from_aws
    #   Identifies the type of support the partner needs from Amazon Web
    #   Services.
    #
    #   Valid values:
    #
    #   * Cosell—Architectural Validation: Confirmation from Amazon Web
    #     Services that the partner's proposed solution architecture is
    #     aligned with Amazon Web Services best practices and poses minimal
    #     architectural risks.
    #
    #   * Cosell—Business Presentation: Request Amazon Web Services
    #     seller's participation in a joint customer presentation.
    #
    #   * Cosell—Competitive Information: Access to Amazon Web Services
    #     competitive resources and support for the partner's proposed
    #     solution.
    #
    #   * Cosell—Pricing Assistance: Connect with an AWS seller for support
    #     situations where a partner may be receiving an upfront discount on
    #     a service (for example: EDP deals).
    #
    #   * Cosell—Technical Consultation: Connection with an Amazon Web
    #     Services Solutions Architect to address the partner's questions
    #     about the proposed solution.
    #
    #   * Cosell—Total Cost of Ownership Evaluation: Assistance with quoting
    #     different cost savings of proposed solutions on Amazon Web
    #     Services versus on-premises or a traditional hosting environment.
    #
    #   * Cosell—Deal Support: Request Amazon Web Services seller's support
    #     to progress the opportunity (for example: joint customer call,
    #     strategic positioning).
    #
    #   * Cosell—Support for Public Tender/RFx: Opportunity related to the
    #     public sector where the partner needs RFx support from Amazon Web
    #     Services.
    #
    #   * Do Not Need Support from AWS Sales Rep: Indicates that a partner
    #     doesn't need support from an Amazon Web Services Sales
    #     representative. The opportunity is managed solely by the partner.
    #     It's possible to request coselling support on these opportunities
    #     at any stage during their lifecycle. Also known as,
    #     for-visibility-only (FVO) opportunity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] project
    #   An object that contains project details summary for the
    #   `Opportunity`.
    #   @return [Types::Project]
    #
    # @!attribute [rw] software_revenue
    #   Specifies details of a customer's procurement terms. Required only
    #   for partners in eligible programs.
    #   @return [Types::SoftwareRevenue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/UpdateOpportunityRequest AWS API Documentation
    #
    class UpdateOpportunityRequest < Struct.new(
      :catalog,
      :customer,
      :identifier,
      :last_modified_date,
      :life_cycle,
      :marketing,
      :national_security,
      :opportunity_type,
      :partner_opportunity_identifier,
      :primary_needs_from_aws,
      :project,
      :software_revenue)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   Read-only, system generated `Opportunity` unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_date
    #   `DateTime` when the opportunity was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/UpdateOpportunityResponse AWS API Documentation
    #
    class UpdateOpportunityResponse < Struct.new(
      :id,
      :last_modified_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by the service or
    # business validation rules.
    #
    # Suggested action: Review the error message, including the failed
    # fields and reasons, to correct the request payload.
    #
    # @!attribute [rw] error_list
    #   A list of issues that were discovered in the submitted request or
    #   the resource state.
    #   @return [Array<Types::ValidationExceptionError>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The primary reason for this validation exception to occur.
    #
    #   * *REQUEST\_VALIDATION\_FAILED:* The request format is not valid.
    #
    #     Fix: Verify your request payload includes all required fields,
    #     uses correct data types and string formats.
    #
    #   * *BUSINESS\_VALIDATION\_FAILED:* The requested change doesn't pass
    #     the business validation rules.
    #
    #     Fix: Check that your change aligns with the business rules defined
    #     by AWS Partner Central.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :error_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates an invalid value for a field.
    #
    # * *REQUIRED\_FIELD\_MISSING:* The request is missing a required field.
    #
    #   Fix: Verify your request payload includes all required fields.
    #
    # * *INVALID\_ENUM\_VALUE:* The enum field value isn't an accepted
    #   values.
    #
    #   Fix: Check the documentation for the list of valid enum values, and
    #   update your request with a valid value.
    #
    # * *INVALID\_STRING\_FORMAT:* The string format is invalid.
    #
    #   Fix: Confirm that the string is in the expected format (For example:
    #   email address, date).
    #
    # * *INVALID\_VALUE:* The value isn't valid.
    #
    #   Fix: Confirm that the value meets the expected criteria and is
    #   within the allowable range or set.
    #
    # * *TOO\_MANY\_VALUES:* There are too many values in a field that
    #   expects fewer entries.
    #
    #   Fix: Reduce the number of values to match the expected limit.
    #
    # * *ACTION\_NOT\_PERMITTED:* The action isn't permitted due to current
    #   state or permissions.
    #
    #   Fix: Verify that the action is appropriate for the current state,
    #   and that you have the necessary permissions to perform it.
    #
    # * *DUPLICATE\_KEY\_VALUE:* The value in a field duplicates a value
    #   that must be unique.
    #
    #   Fix: Verify that the value is unique and doesn't duplicate an
    #   existing value in the system.
    #
    # @!attribute [rw] code
    #   Specifies the error code for the invalid field value.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   Specifies the field name with the invalid value.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies the detailed error message for the invalid field value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling-2022-07-26/ValidationExceptionError AWS API Documentation
    #
    class ValidationExceptionError < Struct.new(
      :code,
      :field_name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

